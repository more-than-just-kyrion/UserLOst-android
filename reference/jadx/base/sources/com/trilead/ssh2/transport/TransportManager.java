package com.trilead.ssh2.transport;

import com.trilead.ssh2.ConnectionInfo;
import com.trilead.ssh2.ConnectionMonitor;
import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.ExtensionInfo;
import com.trilead.ssh2.ProxyData;
import com.trilead.ssh2.ServerHostKeyVerifier;
import com.trilead.ssh2.compression.ICompressor;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.digest.MAC;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketDisconnect;
import com.trilead.ssh2.packets.PacketExtInfo;
import com.trilead.ssh2.packets.TypesReader;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.SecureRandom;
import java.util.Vector;
import okio.Utf8;
import org.spongycastle.bcpg.SecretKeyPacket;

/* JADX INFO: loaded from: classes2.dex */
public class TransportManager {
    private static final Logger log = Logger.getLogger(TransportManager.class);
    String hostname;
    KexManager km;
    int port;
    Thread receiveThread;
    Socket sock;
    TransportConnection tc;
    private final Vector<byte[]> asynchronousQueue = new Vector<>();
    private Thread asynchronousThread = null;
    private final Object connectionSemaphore = new Object();
    boolean flagKexOngoing = false;
    boolean connectionClosed = false;
    boolean firstKexFinished = false;
    Throwable reasonClosedCause = null;
    Vector<HandlerEntry> messageHandlers = new Vector<>();
    Vector connectionMonitors = new Vector();
    boolean monitorsWereInformed = false;
    private volatile ExtensionInfo extensionInfo = ExtensionInfo.noExtInfoSeen();

    class HandlerEntry {
        int high;
        int low;
        MessageHandler mh;

        HandlerEntry() {
        }
    }

    class AsynchronousWorker extends Thread {
        AsynchronousWorker() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr;
            while (true) {
                synchronized (TransportManager.this.asynchronousQueue) {
                    if (TransportManager.this.asynchronousQueue.size() == 0) {
                        try {
                            TransportManager.this.asynchronousQueue.wait(2000L);
                        } catch (InterruptedException unused) {
                        }
                        if (TransportManager.this.asynchronousQueue.size() == 0) {
                            TransportManager.this.asynchronousThread = null;
                            return;
                        }
                    }
                    bArr = (byte[]) TransportManager.this.asynchronousQueue.remove(0);
                }
                try {
                    TransportManager.this.sendMessage(bArr);
                } catch (IOException unused2) {
                    return;
                }
            }
        }
    }

    public TransportManager(String str, int i) {
        this.hostname = str;
        this.port = i;
    }

    public int getPacketOverheadEstimate() {
        return this.tc.getPacketOverheadEstimate();
    }

    public ConnectionInfo getConnectionInfo(int i) throws IOException {
        return this.km.getOrWaitForConnectionInfo(i);
    }

    public ExtensionInfo getExtensionInfo() {
        return this.extensionInfo;
    }

    public Throwable getReasonClosedCause() {
        Throwable th;
        synchronized (this.connectionSemaphore) {
            th = this.reasonClosedCause;
        }
        return th;
    }

    public byte[] getSessionIdentifier() {
        return this.km.sessionId;
    }

    public void close(Throwable th, boolean z) {
        Vector vector;
        if (!z) {
            try {
                Socket socket = this.sock;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused) {
            }
        }
        synchronized (this.connectionSemaphore) {
            if (!this.connectionClosed) {
                if (z) {
                    try {
                        byte[] payload = new PacketDisconnect(11, th.getMessage(), "").getPayload();
                        TransportConnection transportConnection = this.tc;
                        if (transportConnection != null) {
                            transportConnection.sendMessage(payload);
                        }
                    } catch (IOException unused2) {
                    }
                    try {
                        Socket socket2 = this.sock;
                        if (socket2 != null) {
                            socket2.close();
                        }
                    } catch (IOException unused3) {
                    }
                }
                this.connectionClosed = true;
                this.reasonClosedCause = th;
            }
            this.connectionSemaphore.notifyAll();
        }
        synchronized (this) {
            if (this.monitorsWereInformed) {
                vector = null;
            } else {
                this.monitorsWereInformed = true;
                vector = (Vector) this.connectionMonitors.clone();
            }
        }
        if (vector != null) {
            for (int i = 0; i < vector.size(); i++) {
                try {
                    ((ConnectionMonitor) vector.elementAt(i)).connectionLost(this.reasonClosedCause);
                } catch (Exception unused4) {
                }
            }
        }
    }

    private void establishConnection(ProxyData proxyData, int i) throws IOException {
        if (proxyData == null) {
            this.sock = connectDirect(this.hostname, this.port, i);
        } else {
            this.sock = proxyData.openConnection(this.hostname, this.port, i);
        }
    }

    private static Socket connectDirect(String str, int i, int i2) throws IOException {
        Socket socket = new Socket();
        socket.connect(new InetSocketAddress(InetAddress.getByName(str), i), i2);
        socket.setSoTimeout(0);
        return socket;
    }

    public void initialize(CryptoWishList cryptoWishList, ServerHostKeyVerifier serverHostKeyVerifier, DHGexParameters dHGexParameters, int i, SecureRandom secureRandom, ProxyData proxyData) throws IOException {
        establishConnection(proxyData, i);
        ClientServerHello clientServerHello = new ClientServerHello(this.sock.getInputStream(), this.sock.getOutputStream());
        this.tc = new TransportConnection(this.sock.getInputStream(), this.sock.getOutputStream(), secureRandom);
        KexManager kexManager = new KexManager(this, clientServerHello, cryptoWishList, this.hostname, this.port, serverHostKeyVerifier, secureRandom);
        this.km = kexManager;
        kexManager.initiateKEX(cryptoWishList, dHGexParameters);
        Thread thread = new Thread(new Runnable() { // from class: com.trilead.ssh2.transport.TransportManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TransportManager.this.receiveLoop();
                } catch (IOException e) {
                    TransportManager.this.close(e, false);
                    if (TransportManager.log.isEnabled()) {
                        TransportManager.log.log(10, "Receive thread: error in receiveLoop: " + e.getMessage());
                    }
                }
                if (TransportManager.log.isEnabled()) {
                    TransportManager.log.log(50, "Receive thread: back from receiveLoop");
                }
                if (TransportManager.this.km != null) {
                    try {
                        TransportManager.this.km.handleMessage(null, 0);
                    } catch (IOException unused) {
                    }
                }
                for (int i2 = 0; i2 < TransportManager.this.messageHandlers.size(); i2++) {
                    try {
                        TransportManager.this.messageHandlers.elementAt(i2).mh.handleMessage(null, 0);
                    } catch (Exception unused2) {
                    }
                }
            }
        });
        this.receiveThread = thread;
        thread.setDaemon(true);
        this.receiveThread.start();
    }

    public void registerMessageHandler(MessageHandler messageHandler, int i, int i2) {
        HandlerEntry handlerEntry = new HandlerEntry();
        handlerEntry.mh = messageHandler;
        handlerEntry.low = i;
        handlerEntry.high = i2;
        synchronized (this.messageHandlers) {
            this.messageHandlers.addElement(handlerEntry);
        }
    }

    public void removeMessageHandler(MessageHandler messageHandler, int i, int i2) {
        synchronized (this.messageHandlers) {
            for (int i3 = 0; i3 < this.messageHandlers.size(); i3++) {
                HandlerEntry handlerEntryElementAt = this.messageHandlers.elementAt(i3);
                if (handlerEntryElementAt.mh == messageHandler && handlerEntryElementAt.low == i && handlerEntryElementAt.high == i2) {
                    this.messageHandlers.removeElementAt(i3);
                    break;
                }
            }
        }
    }

    public void sendKexMessage(byte[] bArr) throws IOException {
        synchronized (this.connectionSemaphore) {
            if (this.connectionClosed) {
                throw new IOException("Sorry, this connection is closed.", this.reasonClosedCause);
            }
            this.flagKexOngoing = true;
            try {
                this.tc.sendMessage(bArr);
            } catch (IOException e) {
                close(e, false);
                throw e;
            }
        }
    }

    public void kexFinished() {
        this.firstKexFinished = true;
        synchronized (this.connectionSemaphore) {
            this.flagKexOngoing = false;
            this.connectionSemaphore.notifyAll();
        }
    }

    public void forceKeyExchange(CryptoWishList cryptoWishList, DHGexParameters dHGexParameters) throws IOException {
        this.km.initiateKEX(cryptoWishList, dHGexParameters);
    }

    public void changeRecvCipher(BlockCipher blockCipher, MAC mac) {
        this.tc.changeRecvCipher(blockCipher, mac);
        if (this.km.isStrictKex()) {
            this.tc.resetReceiveSequenceNumber();
        }
    }

    public void changeSendCipher(BlockCipher blockCipher, MAC mac) {
        this.tc.changeSendCipher(blockCipher, mac);
        if (this.km.isStrictKex()) {
            this.tc.resetSendSequenceNumber();
        }
    }

    public void changeRecvCompression(ICompressor iCompressor) {
        this.tc.changeRecvCompression(iCompressor);
    }

    public void changeSendCompression(ICompressor iCompressor) {
        this.tc.changeSendCompression(iCompressor);
    }

    public void startCompression() {
        this.tc.startCompression();
    }

    public void sendAsynchronousMessage(byte[] bArr) throws IOException {
        synchronized (this.asynchronousQueue) {
            this.asynchronousQueue.addElement(bArr);
            if (this.asynchronousQueue.size() > 100) {
                throw new IOException("Error: the peer is not consuming our asynchronous replies.");
            }
            if (this.asynchronousThread == null) {
                AsynchronousWorker asynchronousWorker = new AsynchronousWorker();
                this.asynchronousThread = asynchronousWorker;
                asynchronousWorker.setDaemon(true);
                this.asynchronousThread.start();
            }
        }
    }

    public void setConnectionMonitors(Vector vector) {
        synchronized (this) {
            this.connectionMonitors = (Vector) vector.clone();
        }
    }

    public void sendMessage(byte[] bArr) throws IOException {
        if (Thread.currentThread() == this.receiveThread) {
            throw new IOException("Assertion error: sendMessage may never be invoked by the receiver thread!");
        }
        synchronized (this.connectionSemaphore) {
            while (!this.connectionClosed) {
                if (this.flagKexOngoing) {
                    try {
                        this.connectionSemaphore.wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    try {
                        this.tc.sendMessage(bArr);
                    } catch (IOException e) {
                        close(e, false);
                        throw e;
                    }
                }
            }
            throw new IOException("Sorry, this connection is closed.", this.reasonClosedCause);
        }
    }

    public void receiveLoop() throws IOException {
        MessageHandler messageHandler;
        byte[] bArr = new byte[35004];
        while (true) {
            int i = 0;
            int iReceiveMessage = this.tc.receiveMessage(bArr, 0, 35004);
            int i2 = bArr[0] & 255;
            if (i2 == 1) {
                TypesReader typesReader = new TypesReader(bArr, 0, iReceiveMessage);
                typesReader.readByte();
                int uint32 = typesReader.readUINT32();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(typesReader.readString("UTF-8"));
                if (stringBuffer.length() > 255) {
                    stringBuffer.setLength(255);
                    stringBuffer.setCharAt(SecretKeyPacket.USAGE_SHA1, '.');
                    stringBuffer.setCharAt(253, '.');
                    stringBuffer.setCharAt(252, '.');
                }
                while (i < stringBuffer.length()) {
                    char cCharAt = stringBuffer.charAt(i);
                    if (cCharAt < ' ' || cCharAt > '~') {
                        stringBuffer.setCharAt(i, Utf8.REPLACEMENT_CHARACTER);
                    }
                    i++;
                }
                throw new IOException("Peer sent DISCONNECT message (reason code " + uint32 + "): " + stringBuffer.toString());
            }
            if (i2 == 20 || i2 == 21 || (i2 >= 30 && i2 <= 49)) {
                this.km.handleMessage(bArr, iReceiveMessage);
            } else {
                if (!this.firstKexFinished && this.km.isStrictKex()) {
                    throw new IOException("Unexpected packet received when kex-strict enabled");
                }
                if (i2 == 2) {
                    continue;
                } else if (i2 == 4) {
                    if (log.isEnabled()) {
                        TypesReader typesReader2 = new TypesReader(bArr, 0, iReceiveMessage);
                        typesReader2.readByte();
                        typesReader2.readBoolean();
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(typesReader2.readString("UTF-8"));
                        while (i < stringBuffer2.length()) {
                            char cCharAt2 = stringBuffer2.charAt(i);
                            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                                stringBuffer2.setCharAt(i, Utf8.REPLACEMENT_CHARACTER);
                            }
                            i++;
                        }
                        log.log(50, "DEBUG Message from remote: '" + stringBuffer2.toString() + "'");
                    }
                } else {
                    if (i2 == 3) {
                        throw new IOException("Peer sent UNIMPLEMENTED message, that should not happen.");
                    }
                    if (i2 == 52) {
                        this.tc.startCompression();
                    }
                    if (i2 == 7) {
                        this.extensionInfo = ExtensionInfo.fromPacketExtInfo(new PacketExtInfo(bArr, 0, iReceiveMessage));
                    } else {
                        while (true) {
                            if (i >= this.messageHandlers.size()) {
                                messageHandler = null;
                                break;
                            }
                            HandlerEntry handlerEntryElementAt = this.messageHandlers.elementAt(i);
                            if (handlerEntryElementAt.low <= i2 && i2 <= handlerEntryElementAt.high) {
                                messageHandler = handlerEntryElementAt.mh;
                                break;
                            }
                            i++;
                        }
                        if (messageHandler == null) {
                            throw new IOException("Unexpected SSH message (type " + i2 + ")");
                        }
                        messageHandler.handleMessage(bArr, iReceiveMessage);
                    }
                }
            }
        }
    }
}
