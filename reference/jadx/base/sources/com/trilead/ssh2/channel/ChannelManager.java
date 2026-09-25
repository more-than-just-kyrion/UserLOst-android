package com.trilead.ssh2.channel;

import com.trilead.ssh2.AuthAgentCallback;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketChannelAuthAgentReq;
import com.trilead.ssh2.packets.PacketChannelOpenConfirmation;
import com.trilead.ssh2.packets.PacketChannelOpenFailure;
import com.trilead.ssh2.packets.PacketChannelTrileadPing;
import com.trilead.ssh2.packets.PacketGlobalCancelForwardRequest;
import com.trilead.ssh2.packets.PacketGlobalForwardRequest;
import com.trilead.ssh2.packets.PacketGlobalTrileadPing;
import com.trilead.ssh2.packets.PacketOpenDirectTCPIPChannel;
import com.trilead.ssh2.packets.PacketOpenSessionChannel;
import com.trilead.ssh2.packets.PacketSessionExecCommand;
import com.trilead.ssh2.packets.PacketSessionPtyRequest;
import com.trilead.ssh2.packets.PacketSessionPtyResize;
import com.trilead.ssh2.packets.PacketSessionStartShell;
import com.trilead.ssh2.packets.PacketSessionSubsystemRequest;
import com.trilead.ssh2.packets.PacketSessionX11Request;
import com.trilead.ssh2.packets.Packets;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.transport.MessageHandler;
import com.trilead.ssh2.transport.TransportManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import okio.Utf8;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelManager implements MessageHandler {
    private static final Logger log = Logger.getLogger(ChannelManager.class);
    private AuthAgentCallback authAgent;
    private TransportManager tm;
    private final HashMap<String, X11ServerData> x11_magic_cookies = new HashMap<>();
    private final List<Channel> channels = new ArrayList();
    private int nextLocalChannel = 100;
    private boolean shutdown = false;
    private int globalSuccessCounter = 0;
    private int globalFailedCounter = 0;
    private final HashMap<Integer, RemoteForwardingData> remoteForwardings = new HashMap<>();
    private final List<IChannelWorkerThread> listenerThreads = new ArrayList();
    private boolean listenerThreadsAllowed = true;

    public ChannelManager(TransportManager transportManager) {
        this.tm = transportManager;
        transportManager.registerMessageHandler(this, 80, 100);
    }

    private Channel getChannel(int i) {
        synchronized (this.channels) {
            for (Channel channel : this.channels) {
                if (channel.localID == i) {
                    return channel;
                }
            }
            return null;
        }
    }

    private void removeChannel(int i) {
        synchronized (this.channels) {
            for (int i2 = 0; i2 < this.channels.size(); i2++) {
                if (this.channels.get(i2).localID == i) {
                    this.channels.remove(i2);
                    break;
                }
            }
        }
    }

    private int addChannel(Channel channel) {
        int i;
        synchronized (this.channels) {
            this.channels.add(channel);
            i = this.nextLocalChannel;
            this.nextLocalChannel = i + 1;
        }
        return i;
    }

    private void waitUntilChannelOpen(Channel channel) throws IOException {
        synchronized (channel) {
            while (channel.state == 1) {
                try {
                    channel.wait();
                } catch (InterruptedException unused) {
                }
            }
            if (channel.state != 2) {
                removeChannel(channel.localID);
                String reasonClosed = channel.getReasonClosed();
                if (reasonClosed == null) {
                    reasonClosed = "state: " + channel.state;
                }
                throw new IOException("Could not open channel (" + reasonClosed + ")");
            }
        }
    }

    private boolean waitForGlobalRequestResult() throws IOException {
        int i;
        synchronized (this.channels) {
            while (true) {
                i = this.globalSuccessCounter;
                if (i != 0 || this.globalFailedCounter != 0) {
                    break;
                }
                if (this.shutdown) {
                    throw new IOException("The connection is being shutdown");
                }
                try {
                    this.channels.wait();
                } catch (InterruptedException unused) {
                }
            }
            int i2 = this.globalFailedCounter;
            if (i2 == 0 && i == 1) {
                return true;
            }
            if (i2 == 1 && i == 0) {
                return false;
            }
            throw new IOException("Illegal state. The server sent " + this.globalSuccessCounter + " SSH_MSG_REQUEST_SUCCESS and " + this.globalFailedCounter + " SSH_MSG_REQUEST_FAILURE messages.");
        }
    }

    private boolean waitForChannelRequestResult(Channel channel) throws IOException {
        synchronized (channel) {
            while (channel.successCounter == 0 && channel.failedCounter == 0) {
                if (channel.state != 2) {
                    String reasonClosed = channel.getReasonClosed();
                    if (reasonClosed == null) {
                        reasonClosed = "state: " + channel.state;
                    }
                    throw new IOException("This SSH2 channel is not open (" + reasonClosed + ")");
                }
                try {
                    channel.wait();
                } catch (InterruptedException unused) {
                }
            }
            if (channel.failedCounter == 0 && channel.successCounter == 1) {
                return true;
            }
            if (channel.failedCounter == 1 && channel.successCounter == 0) {
                return false;
            }
            throw new IOException("Illegal state. The server sent " + channel.successCounter + " SSH_MSG_CHANNEL_SUCCESS and " + channel.failedCounter + " SSH_MSG_CHANNEL_FAILURE messages.");
        }
    }

    public void registerX11Cookie(String str, X11ServerData x11ServerData) {
        synchronized (this.x11_magic_cookies) {
            this.x11_magic_cookies.put(str, x11ServerData);
        }
    }

    public void unRegisterX11Cookie(String str, boolean z) {
        ArrayList arrayList;
        if (str == null) {
            throw new IllegalStateException("hexFakeCookie may not be null");
        }
        synchronized (this.x11_magic_cookies) {
            this.x11_magic_cookies.remove(str);
        }
        if (z) {
            Logger logger = log;
            if (logger.isEnabled()) {
                logger.log(50, "Closing all X11 channels for the given fake cookie");
            }
            synchronized (this.channels) {
                arrayList = new ArrayList(this.channels);
            }
            for (int i = 0; i < arrayList.size(); i++) {
                Channel channel = (Channel) arrayList.get(i);
                synchronized (channel) {
                    if (str.equals(channel.hexX11FakeCookie)) {
                        try {
                            closeChannel(channel, "Closing X11 channel since the corresponding session is closing", true);
                        } catch (IOException unused) {
                        }
                    }
                }
            }
        }
    }

    public X11ServerData checkX11Cookie(String str) {
        synchronized (this.x11_magic_cookies) {
            try {
                if (str == null) {
                    return null;
                }
                return this.x11_magic_cookies.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void closeAllChannels() {
        ArrayList arrayList;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Closing all channels");
        }
        synchronized (this.channels) {
            arrayList = new ArrayList(this.channels);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                closeChannel((Channel) arrayList.get(i), "Closing all channels", true);
            } catch (IOException unused) {
            }
        }
    }

    public void closeChannel(Channel channel, String str, boolean z) throws IOException {
        byte[] bArr = new byte[5];
        synchronized (channel) {
            if (z) {
                channel.state = 4;
                channel.EOF = true;
                channel.setReasonClosed(str);
                bArr[0] = 97;
                bArr[1] = (byte) (channel.remoteID >> 24);
                bArr[2] = (byte) (channel.remoteID >> 16);
                bArr[3] = (byte) (channel.remoteID >> 8);
                bArr[4] = (byte) channel.remoteID;
                channel.notifyAll();
            } else {
                channel.setReasonClosed(str);
                bArr[0] = 97;
                bArr[1] = (byte) (channel.remoteID >> 24);
                bArr[2] = (byte) (channel.remoteID >> 16);
                bArr[3] = (byte) (channel.remoteID >> 8);
                bArr[4] = (byte) channel.remoteID;
                channel.notifyAll();
            }
            throw th;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                return;
            }
            this.tm.sendMessage(bArr);
            channel.closeMessageSent = true;
            Logger logger = log;
            if (logger.isEnabled()) {
                logger.log(50, "Sent SSH_MSG_CHANNEL_CLOSE (channel " + channel.localID + ")");
            }
        }
    }

    public void sendEOF(Channel channel) throws IOException {
        byte[] bArr = new byte[5];
        synchronized (channel) {
            if (channel.state != 2) {
                return;
            }
            bArr[0] = 96;
            bArr[1] = (byte) (channel.remoteID >> 24);
            bArr[2] = (byte) (channel.remoteID >> 16);
            bArr[3] = (byte) (channel.remoteID >> 8);
            bArr[4] = (byte) channel.remoteID;
            synchronized (channel.channelSendLock) {
                if (channel.closeMessageSent) {
                    return;
                }
                this.tm.sendMessage(bArr);
                Logger logger = log;
                if (logger.isEnabled()) {
                    logger.log(50, "Sent EOF (Channel " + channel.localID + "/" + channel.remoteID + ")");
                }
            }
        }
    }

    public void sendOpenConfirmation(Channel channel) throws IOException {
        synchronized (channel) {
            if (channel.state != 1) {
                return;
            }
            channel.state = 2;
            PacketChannelOpenConfirmation packetChannelOpenConfirmation = new PacketChannelOpenConfirmation(channel.remoteID, channel.localID, channel.localWindow, channel.localMaxPacketSize);
            synchronized (channel.channelSendLock) {
                if (channel.closeMessageSent) {
                    return;
                }
                this.tm.sendMessage(packetChannelOpenConfirmation.getPayload());
            }
        }
    }

    public void sendData(Channel channel, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        byte[] bArr2;
        while (i2 > 0) {
            synchronized (channel) {
                while (true) {
                    if (channel.state == 4) {
                        throw new IOException("SSH channel is closed. (" + channel.getReasonClosed() + ")");
                    }
                    if (channel.state != 2) {
                        throw new IOException("SSH channel in strange state. (" + channel.state + ")");
                    }
                    if (channel.remoteWindow != 0) {
                        break;
                    } else {
                        try {
                            channel.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                }
                i3 = channel.remoteWindow >= ((long) i2) ? i2 : (int) channel.remoteWindow;
                int packetOverheadEstimate = channel.remoteMaxPacketSize - (this.tm.getPacketOverheadEstimate() + 9);
                if (packetOverheadEstimate <= 0) {
                    packetOverheadEstimate = 1;
                }
                if (i3 > packetOverheadEstimate) {
                    i3 = packetOverheadEstimate;
                }
                channel.remoteWindow -= (long) i3;
                bArr2 = new byte[i3 + 9];
                bArr2[0] = 94;
                bArr2[1] = (byte) (channel.remoteID >> 24);
                bArr2[2] = (byte) (channel.remoteID >> 16);
                bArr2[3] = (byte) (channel.remoteID >> 8);
                bArr2[4] = (byte) channel.remoteID;
                bArr2[5] = (byte) (i3 >> 24);
                bArr2[6] = (byte) (i3 >> 16);
                bArr2[7] = (byte) (i3 >> 8);
                bArr2[8] = (byte) i3;
                System.arraycopy(bArr, i, bArr2, 9, i3);
            }
            synchronized (channel.channelSendLock) {
                if (channel.closeMessageSent) {
                    throw new IOException("SSH channel is closed. (" + channel.getReasonClosed() + ")");
                }
                this.tm.sendMessage(bArr2);
            }
            i += i3;
            i2 -= i3;
        }
    }

    public int requestGlobalForward(String str, int i, String str2, int i2) throws IOException {
        RemoteForwardingData remoteForwardingData = new RemoteForwardingData();
        remoteForwardingData.bindAddress = str;
        remoteForwardingData.bindPort = i;
        remoteForwardingData.targetAddress = str2;
        remoteForwardingData.targetPort = i2;
        synchronized (this.remoteForwardings) {
            if (this.remoteForwardings.get(Integer.valueOf(i)) != null) {
                throw new IOException("There is already a forwarding for remote port " + i);
            }
            this.remoteForwardings.put(Integer.valueOf(i), remoteForwardingData);
        }
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        this.tm.sendMessage(new PacketGlobalForwardRequest(true, str, i).getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Requesting a remote forwarding ('" + str + "', " + i + ")");
        }
        try {
            if (waitForGlobalRequestResult()) {
                return i;
            }
            throw new IOException("The server denied the request (did you enable port forwarding?)");
        } catch (IOException e) {
            synchronized (this.remoteForwardings) {
                this.remoteForwardings.remove(Integer.valueOf(remoteForwardingData.bindPort));
                throw e;
            }
        }
    }

    public void requestCancelGlobalForward(int i) throws IOException {
        RemoteForwardingData remoteForwardingData;
        synchronized (this.remoteForwardings) {
            remoteForwardingData = this.remoteForwardings.get(Integer.valueOf(i));
            if (remoteForwardingData == null) {
                throw new IOException("Sorry, there is no known remote forwarding for remote port " + i);
            }
        }
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        this.tm.sendMessage(new PacketGlobalCancelForwardRequest(true, remoteForwardingData.bindAddress, remoteForwardingData.bindPort).getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Requesting cancelation of remote forward ('" + remoteForwardingData.bindAddress + "', " + remoteForwardingData.bindPort + ")");
        }
        try {
            if (!waitForGlobalRequestResult()) {
                throw new IOException("The server denied the request.");
            }
            synchronized (this.remoteForwardings) {
                this.remoteForwardings.remove(Integer.valueOf(remoteForwardingData.bindPort));
            }
        } catch (Throwable th) {
            synchronized (this.remoteForwardings) {
                this.remoteForwardings.remove(Integer.valueOf(remoteForwardingData.bindPort));
                throw th;
            }
        }
    }

    public boolean requestChannelAgentForwarding(Channel channel, AuthAgentCallback authAgentCallback) throws IOException {
        synchronized (this) {
            if (this.authAgent != null) {
                throw new IllegalStateException("Auth agent already exists");
            }
            this.authAgent = authAgentCallback;
        }
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Requesting agent forwarding");
        }
        this.tm.sendMessage(new PacketChannelAuthAgentReq(channel.remoteID).getPayload());
        return waitForChannelRequestResult(channel);
    }

    public void registerThread(IChannelWorkerThread iChannelWorkerThread) throws IOException {
        synchronized (this.listenerThreads) {
            if (!this.listenerThreadsAllowed) {
                throw new IOException("Too late, this connection is closed.");
            }
            this.listenerThreads.add(iChannelWorkerThread);
        }
    }

    public Channel openDirectTCPIPChannel(String str, int i, String str2, int i2) throws IOException {
        Channel channel = new Channel(this);
        synchronized (channel) {
            channel.localID = addChannel(channel);
        }
        this.tm.sendMessage(new PacketOpenDirectTCPIPChannel(channel.localID, channel.localWindow, channel.localMaxPacketSize, str, i, str2, i2).getPayload());
        waitUntilChannelOpen(channel);
        return channel;
    }

    public Channel openSessionChannel() throws IOException {
        Channel channel = new Channel(this);
        synchronized (channel) {
            channel.localID = addChannel(channel);
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Sending SSH_MSG_CHANNEL_OPEN (Channel " + channel.localID + ")");
        }
        this.tm.sendMessage(new PacketOpenSessionChannel(channel.localID, channel.localWindow, channel.localMaxPacketSize).getPayload());
        waitUntilChannelOpen(channel);
        return channel;
    }

    public void requestGlobalTrileadPing() throws IOException {
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        this.tm.sendMessage(new PacketGlobalTrileadPing().getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Sending SSH_MSG_GLOBAL_REQUEST 'trilead-ping'.");
        }
        try {
            if (waitForGlobalRequestResult()) {
                throw new IOException("Your server is alive - but buggy. It replied with SSH_MSG_REQUEST_SUCCESS when it actually should not.");
            }
        } catch (IOException e) {
            throw new IOException("The ping request failed.", e);
        }
    }

    public void requestChannelTrileadPing(Channel channel) throws IOException {
        PacketChannelTrileadPing packetChannelTrileadPing;
        synchronized (channel) {
            if (channel.state != 2) {
                throw new IOException("Cannot ping this channel (" + channel.getReasonClosed() + ")");
            }
            packetChannelTrileadPing = new PacketChannelTrileadPing(channel.remoteID);
            channel.failedCounter = 0;
            channel.successCounter = 0;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                throw new IOException("Cannot ping this channel (" + channel.getReasonClosed() + ")");
            }
            this.tm.sendMessage(packetChannelTrileadPing.getPayload());
        }
        try {
            if (waitForChannelRequestResult(channel)) {
                throw new IOException("Your server is alive - but buggy. It replied with SSH_MSG_SESSION_SUCCESS when it actually should not.");
            }
        } catch (IOException e) {
            throw new IOException("The ping request failed.", e);
        }
    }

    public void requestPTY(Channel channel, String str, int i, int i2, int i3, int i4, byte[] bArr) throws IOException {
        synchronized (channel) {
            try {
                try {
                    if (channel.state != 2) {
                        throw new IOException("Cannot request PTY on this channel (" + channel.getReasonClosed() + ")");
                    }
                    PacketSessionPtyRequest packetSessionPtyRequest = new PacketSessionPtyRequest(channel.remoteID, true, str, i, i2, i3, i4, bArr);
                    channel.failedCounter = 0;
                    channel.successCounter = 0;
                    synchronized (channel.channelSendLock) {
                        try {
                            try {
                                if (channel.closeMessageSent) {
                                    throw new IOException("Cannot request PTY on this channel (" + channel.getReasonClosed() + ")");
                                }
                                this.tm.sendMessage(packetSessionPtyRequest.getPayload());
                                try {
                                    if (waitForChannelRequestResult(channel)) {
                                    } else {
                                        throw new IOException("The server denied the request.");
                                    }
                                } catch (IOException e) {
                                    throw new IOException("PTY request failed", e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public void resizePTY(Channel channel, int i, int i2, int i3, int i4) throws IOException {
        PacketSessionPtyResize packetSessionPtyResize;
        synchronized (channel) {
            if (channel.state != 2) {
                throw new IOException("Cannot request PTY on this channel (" + channel.getReasonClosed() + ")");
            }
            packetSessionPtyResize = new PacketSessionPtyResize(channel.remoteID, i, i2, i3, i4);
            channel.failedCounter = 0;
            channel.successCounter = 0;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                throw new IOException("Cannot request PTY on this channel (" + channel.getReasonClosed() + ")");
            }
            this.tm.sendMessage(packetSessionPtyResize.getPayload());
        }
    }

    public void requestX11(Channel channel, boolean z, String str, String str2, int i) throws IOException {
        synchronized (channel) {
            try {
                try {
                    if (channel.state != 2) {
                        throw new IOException("Cannot request X11 on this channel (" + channel.getReasonClosed() + ")");
                    }
                    PacketSessionX11Request packetSessionX11Request = new PacketSessionX11Request(channel.remoteID, true, z, str, str2, i);
                    channel.failedCounter = 0;
                    channel.successCounter = 0;
                    synchronized (channel.channelSendLock) {
                        try {
                            try {
                                if (channel.closeMessageSent) {
                                    throw new IOException("Cannot request X11 on this channel (" + channel.getReasonClosed() + ")");
                                }
                                this.tm.sendMessage(packetSessionX11Request.getPayload());
                                Logger logger = log;
                                if (logger.isEnabled()) {
                                    logger.log(50, "Requesting X11 forwarding (Channel " + channel.localID + "/" + channel.remoteID + ")");
                                }
                                try {
                                    if (waitForChannelRequestResult(channel)) {
                                    } else {
                                        throw new IOException("The server denied the request.");
                                    }
                                } catch (IOException e) {
                                    throw new IOException("The X11 request failed.", e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    public void requestSubSystem(Channel channel, String str) throws IOException {
        PacketSessionSubsystemRequest packetSessionSubsystemRequest;
        synchronized (channel) {
            if (channel.state != 2) {
                throw new IOException("Cannot request subsystem on this channel (" + channel.getReasonClosed() + ")");
            }
            packetSessionSubsystemRequest = new PacketSessionSubsystemRequest(channel.remoteID, true, str);
            channel.failedCounter = 0;
            channel.successCounter = 0;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                throw new IOException("Cannot request subsystem on this channel (" + channel.getReasonClosed() + ")");
            }
            this.tm.sendMessage(packetSessionSubsystemRequest.getPayload());
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException("The server denied the request.");
            }
        } catch (IOException e) {
            throw new IOException("The subsystem request failed.", e);
        }
    }

    public void requestExecCommand(Channel channel, String str) throws IOException {
        PacketSessionExecCommand packetSessionExecCommand;
        synchronized (channel) {
            if (channel.state != 2) {
                throw new IOException("Cannot execute command on this channel (" + channel.getReasonClosed() + ")");
            }
            packetSessionExecCommand = new PacketSessionExecCommand(channel.remoteID, true, str);
            channel.failedCounter = 0;
            channel.successCounter = 0;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                throw new IOException("Cannot execute command on this channel (" + channel.getReasonClosed() + ")");
            }
            this.tm.sendMessage(packetSessionExecCommand.getPayload());
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Executing command (channel " + channel.localID + ", '" + str + "')");
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException("The server denied the request.");
            }
        } catch (IOException e) {
            throw new IOException("The execute request failed.", e);
        }
    }

    public void requestShell(Channel channel) throws IOException {
        PacketSessionStartShell packetSessionStartShell;
        synchronized (channel) {
            if (channel.state != 2) {
                throw new IOException("Cannot start shell on this channel (" + channel.getReasonClosed() + ")");
            }
            packetSessionStartShell = new PacketSessionStartShell(channel.remoteID, true);
            channel.failedCounter = 0;
            channel.successCounter = 0;
        }
        synchronized (channel.channelSendLock) {
            if (channel.closeMessageSent) {
                throw new IOException("Cannot start shell on this channel (" + channel.getReasonClosed() + ")");
            }
            this.tm.sendMessage(packetSessionStartShell.getPayload());
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException("The server denied the request.");
            }
        } catch (IOException e) {
            throw new IOException("The shell request failed.", e);
        }
    }

    public void msgChannelExtendedData(byte[] bArr, int i) throws IOException {
        if (i <= 13) {
            throw new IOException("SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size (" + i + ")");
        }
        int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
        int i3 = ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8) | (bArr[8] & 255);
        int i4 = ((bArr[11] & 255) << 8) | ((bArr[9] & 255) << 24) | ((bArr[10] & 255) << 16) | (bArr[12] & 255);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_EXTENDED_DATA message for non-existent channel " + i2);
        }
        if (i3 != 1) {
            throw new IOException("SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type (" + i3 + ")");
        }
        int i5 = i - 13;
        if (i4 != i5) {
            throw new IOException("SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated " + i5 + ", got " + i4 + ")");
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_CHANNEL_EXTENDED_DATA (channel " + i2 + ", " + i4 + ")");
        }
        synchronized (channel) {
            if (channel.state == 4) {
                return;
            }
            if (channel.state != 2) {
                throw new IOException("Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state (" + channel.state + ")");
            }
            if (channel.localWindow < i4) {
                throw new IOException("Remote sent too much data, does not fit into window.");
            }
            channel.localWindow -= i4;
            System.arraycopy(bArr, 13, channel.stderrBuffer, channel.stderrWritepos, i4);
            channel.stderrWritepos += i4;
            channel.notifyAll();
        }
    }

    public int waitForCondition(Channel channel, long j, int i) {
        synchronized (channel) {
            long jCurrentTimeMillis = 0;
            boolean z = false;
            while (true) {
                int i2 = channel.stdoutWritepos - channel.stdoutReadpos;
                int i3 = channel.stderrWritepos - channel.stderrReadpos;
                int i4 = i2 > 0 ? 4 : 0;
                if (i3 > 0) {
                    i4 |= 8;
                }
                if (channel.EOF) {
                    i4 |= 16;
                }
                if (channel.getExitStatus() != null) {
                    i4 |= 32;
                }
                if (channel.getExitSignal() != null) {
                    i4 |= 64;
                }
                if (channel.state == 4) {
                    return i4 | 18;
                }
                if ((i4 & i) != 0) {
                    return i4;
                }
                if (j > 0) {
                    if (!z) {
                        jCurrentTimeMillis = System.currentTimeMillis() + j;
                        z = true;
                    } else {
                        j = jCurrentTimeMillis - System.currentTimeMillis();
                        if (j <= 0) {
                            return i4 | 1;
                        }
                    }
                }
                if (j > 0) {
                    try {
                        channel.wait(j);
                    } catch (InterruptedException unused) {
                    }
                } else {
                    channel.wait();
                }
            }
        }
    }

    public int getAvailable(Channel channel, boolean z) {
        int i;
        int i2;
        int i3;
        synchronized (channel) {
            try {
                if (z) {
                    i = channel.stderrWritepos;
                    i2 = channel.stderrReadpos;
                } else {
                    i = channel.stdoutWritepos;
                    i2 = channel.stdoutReadpos;
                }
                i3 = i - i2;
                if (i3 <= 0) {
                    i3 = channel.EOF ? -1 : 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i3;
    }

    public int getChannelData(Channel channel, boolean z, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        synchronized (channel) {
            while (true) {
                i3 = channel.stdoutWritepos - channel.stdoutReadpos;
                i4 = channel.stderrWritepos - channel.stderrReadpos;
                if ((!z && i3 != 0) || (z && i4 != 0)) {
                    break;
                    break;
                }
                if (channel.EOF || channel.state != 2) {
                    return -1;
                }
                try {
                    channel.wait();
                } catch (InterruptedException unused) {
                }
            }
            if (!z) {
                if (i3 <= i2) {
                    i2 = i3;
                }
                System.arraycopy(channel.stdoutBuffer, channel.stdoutReadpos, bArr, i, i2);
                channel.stdoutReadpos += i2;
                if (channel.stdoutReadpos != channel.stdoutWritepos) {
                    System.arraycopy(channel.stdoutBuffer, channel.stdoutReadpos, channel.stdoutBuffer, 0, channel.stdoutWritepos - channel.stdoutReadpos);
                }
                channel.stdoutWritepos -= channel.stdoutReadpos;
                channel.stdoutReadpos = 0;
            } else {
                if (i4 <= i2) {
                    i2 = i4;
                }
                System.arraycopy(channel.stderrBuffer, channel.stderrReadpos, bArr, i, i2);
                channel.stderrReadpos += i2;
                if (channel.stderrReadpos != channel.stderrWritepos) {
                    System.arraycopy(channel.stderrBuffer, channel.stderrReadpos, channel.stderrBuffer, 0, channel.stderrWritepos - channel.stderrReadpos);
                }
                channel.stderrWritepos -= channel.stderrReadpos;
                channel.stderrReadpos = 0;
            }
            if (channel.state != 2) {
                return i2;
            }
            if (channel.localWindow < 15000) {
                int iMin = Math.min(30000 - channel.stdoutWritepos, 30000 - channel.stderrWritepos);
                i5 = iMin - channel.localWindow;
                channel.localWindow = iMin;
            } else {
                i5 = 0;
            }
            int i6 = channel.remoteID;
            int i7 = channel.localID;
            if (i5 > 0) {
                Logger logger = log;
                if (logger.isEnabled()) {
                    logger.log(80, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel " + i7 + ", " + i5 + ")");
                }
                synchronized (channel.channelSendLock) {
                    byte[] bArr2 = channel.msgWindowAdjust;
                    bArr2[0] = 93;
                    bArr2[1] = (byte) (i6 >> 24);
                    bArr2[2] = (byte) (i6 >> 16);
                    bArr2[3] = (byte) (i6 >> 8);
                    bArr2[4] = (byte) i6;
                    bArr2[5] = (byte) (i5 >> 24);
                    bArr2[6] = (byte) (i5 >> 16);
                    bArr2[7] = (byte) (i5 >> 8);
                    bArr2[8] = (byte) i5;
                    if (!channel.closeMessageSent) {
                        this.tm.sendMessage(bArr2);
                    }
                }
            }
            return i2;
        }
    }

    public void msgChannelData(byte[] bArr, int i) throws IOException {
        if (i <= 9) {
            throw new IOException("SSH_MSG_CHANNEL_DATA message has wrong size (" + i + ")");
        }
        int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
        int i3 = (bArr[8] & 255) | ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_DATA message for non-existent channel " + i2);
        }
        int i4 = i - 9;
        if (i3 != i4) {
            throw new IOException("SSH_MSG_CHANNEL_DATA message has wrong len (calculated " + i4 + ", got " + i3 + ")");
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_CHANNEL_DATA (channel " + i2 + ", " + i3 + ")");
        }
        synchronized (channel) {
            if (channel.state == 4) {
                return;
            }
            if (channel.state != 2) {
                throw new IOException("Got SSH_MSG_CHANNEL_DATA, but channel is not in correct state (" + channel.state + ")");
            }
            if (channel.localWindow < i3) {
                throw new IOException("Remote sent too much data, does not fit into window.");
            }
            channel.localWindow -= i3;
            System.arraycopy(bArr, 9, channel.stdoutBuffer, channel.stdoutWritepos, i3);
            channel.stdoutWritepos += i3;
            channel.notifyAll();
        }
    }

    public void msgChannelWindowAdjust(byte[] bArr, int i) throws IOException {
        if (i != 9) {
            throw new IOException("SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size (" + i + ")");
        }
        int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
        int i3 = (bArr[8] & 255) | ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_WINDOW_ADJUST message for non-existent channel " + i2);
        }
        synchronized (channel) {
            channel.remoteWindow += ((long) i3) & BodyPartID.bodyIdMax;
            if (channel.remoteWindow > BodyPartID.bodyIdMax) {
                channel.remoteWindow = BodyPartID.bodyIdMax;
            }
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_CHANNEL_WINDOW_ADJUST (channel " + i2 + ", " + i3 + ")");
        }
    }

    public void msgChannelOpen(byte[] bArr, int i) throws IOException {
        RemoteForwardingData remoteForwardingData;
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        String string = typesReader.readString();
        int uint32 = typesReader.readUINT32();
        int uint33 = typesReader.readUINT32();
        int uint34 = typesReader.readUINT32();
        if ("x11".equals(string)) {
            synchronized (this.x11_magic_cookies) {
                if (this.x11_magic_cookies.size() == 0) {
                    this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(uint32, 1, "X11 forwarding not activated", "").getPayload());
                    Logger logger = log;
                    if (logger.isEnabled()) {
                        logger.log(20, "Unexpected X11 request, denying it!");
                    }
                    return;
                }
                String string2 = typesReader.readString();
                int uint35 = typesReader.readUINT32();
                Channel channel = new Channel(this);
                synchronized (channel) {
                    channel.remoteID = uint32;
                    channel.remoteWindow = ((long) uint33) & BodyPartID.bodyIdMax;
                    channel.remoteMaxPacketSize = uint34;
                    channel.localID = addChannel(channel);
                }
                RemoteX11AcceptThread remoteX11AcceptThread = new RemoteX11AcceptThread(channel, string2, uint35);
                remoteX11AcceptThread.setDaemon(true);
                remoteX11AcceptThread.start();
                return;
            }
        }
        if ("forwarded-tcpip".equals(string)) {
            String string3 = typesReader.readString();
            int uint36 = typesReader.readUINT32();
            String string4 = typesReader.readString();
            int uint37 = typesReader.readUINT32();
            synchronized (this.remoteForwardings) {
                remoteForwardingData = this.remoteForwardings.get(Integer.valueOf(uint36));
            }
            if (remoteForwardingData == null) {
                this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(uint32, 1, "No thanks, unknown port in forwarded-tcpip request", "").getPayload());
                Logger logger2 = log;
                if (logger2.isEnabled()) {
                    logger2.log(20, "Unexpected forwarded-tcpip request, denying it!");
                    return;
                }
                return;
            }
            Channel channel2 = new Channel(this);
            synchronized (channel2) {
                channel2.remoteID = uint32;
                channel2.remoteWindow = ((long) uint33) & BodyPartID.bodyIdMax;
                channel2.remoteMaxPacketSize = uint34;
                channel2.localID = addChannel(channel2);
            }
            RemoteAcceptThread remoteAcceptThread = new RemoteAcceptThread(channel2, string3, uint36, string4, uint37, remoteForwardingData.targetAddress, remoteForwardingData.targetPort);
            remoteAcceptThread.setDaemon(true);
            remoteAcceptThread.start();
            return;
        }
        if ("auth-agent@openssh.com".equals(string)) {
            Channel channel3 = new Channel(this);
            synchronized (channel3) {
                channel3.remoteID = uint32;
                channel3.remoteWindow = ((long) uint33) & BodyPartID.bodyIdMax;
                channel3.remoteMaxPacketSize = uint34;
                channel3.localID = addChannel(channel3);
            }
            AuthAgentForwardThread authAgentForwardThread = new AuthAgentForwardThread(channel3, this.authAgent);
            authAgentForwardThread.setDaemon(true);
            authAgentForwardThread.start();
            return;
        }
        this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(uint32, 3, "Unknown channel type", "").getPayload());
        Logger logger3 = log;
        if (logger3.isEnabled()) {
            logger3.log(20, "The peer tried to open an unsupported channel type (" + string + ")");
        }
    }

    public void msgChannelRequest(byte[] bArr, int i) throws IOException {
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        int uint32 = typesReader.readUINT32();
        Channel channel = getChannel(uint32);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_REQUEST message for non-existent channel " + uint32);
        }
        String string = typesReader.readString("US-ASCII");
        boolean z = typesReader.readBoolean();
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_CHANNEL_REQUEST (channel " + uint32 + ", '" + string + "')");
        }
        if (string.equals("exit-status")) {
            if (z) {
                throw new IOException("Badly formatted SSH_MSG_CHANNEL_REQUEST message, 'want reply' is true");
            }
            int uint33 = typesReader.readUINT32();
            if (typesReader.remain() != 0) {
                throw new IOException("Badly formatted SSH_MSG_CHANNEL_REQUEST message");
            }
            synchronized (channel) {
                channel.exit_status = Integer.valueOf(uint33);
                channel.notifyAll();
            }
            if (logger.isEnabled()) {
                logger.log(50, "Got EXIT STATUS (channel " + uint32 + ", status " + uint33 + ")");
                return;
            }
            return;
        }
        if (!string.equals("exit-signal")) {
            if (z) {
                this.tm.sendAsynchronousMessage(new byte[]{100, (byte) (channel.remoteID >> 24), (byte) (channel.remoteID >> 16), (byte) (channel.remoteID >> 8), (byte) channel.remoteID});
            }
            if (logger.isEnabled()) {
                logger.log(50, "Channel request '" + string + "' is not known, ignoring it");
                return;
            }
            return;
        }
        if (z) {
            throw new IOException("Badly formatted SSH_MSG_CHANNEL_REQUEST message, 'want reply' is true");
        }
        String string2 = typesReader.readString("US-ASCII");
        typesReader.readBoolean();
        typesReader.readString();
        typesReader.readString();
        if (typesReader.remain() != 0) {
            throw new IOException("Badly formatted SSH_MSG_CHANNEL_REQUEST message");
        }
        synchronized (channel) {
            channel.exit_signal = string2;
            channel.notifyAll();
        }
        if (logger.isEnabled()) {
            logger.log(50, "Got EXIT SIGNAL (channel " + uint32 + ", signal " + string2 + ")");
        }
    }

    public void msgChannelEOF(byte[] bArr, int i) throws IOException {
        if (i != 5) {
            throw new IOException("SSH_MSG_CHANNEL_EOF message has wrong size (" + i + ")");
        }
        int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_EOF message for non-existent channel " + i2);
        }
        synchronized (channel) {
            channel.EOF = true;
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Got SSH_MSG_CHANNEL_EOF (channel " + i2 + ")");
        }
    }

    public void msgChannelClose(byte[] bArr, int i) throws IOException {
        if (i != 5) {
            throw new IOException("SSH_MSG_CHANNEL_CLOSE message has wrong size (" + i + ")");
        }
        int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_CLOSE message for non-existent channel " + i2);
        }
        synchronized (channel) {
            channel.EOF = true;
            channel.state = 4;
            channel.setReasonClosed("Close requested by remote");
            channel.closeMessageRecv = true;
            removeChannel(channel.localID);
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Got SSH_MSG_CHANNEL_CLOSE (channel " + i2 + ")");
        }
    }

    public void msgChannelSuccess(byte[] bArr, int i) throws IOException {
        if (i != 5) {
            throw new IOException("SSH_MSG_CHANNEL_SUCCESS message has wrong size (" + i + ")");
        }
        int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_SUCCESS message for non-existent channel " + i2);
        }
        synchronized (channel) {
            channel.successCounter++;
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_CHANNEL_SUCCESS (channel " + i2 + ")");
        }
    }

    public void msgChannelFailure(byte[] bArr, int i) throws IOException {
        if (i != 5) {
            throw new IOException("SSH_MSG_CHANNEL_FAILURE message has wrong size (" + i + ")");
        }
        int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
        Channel channel = getChannel(i2);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_FAILURE message for non-existent channel " + i2);
        }
        synchronized (channel) {
            channel.failedCounter++;
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Got SSH_MSG_CHANNEL_FAILURE (channel " + i2 + ")");
        }
    }

    public void msgChannelOpenConfirmation(byte[] bArr, int i) throws IOException {
        PacketChannelOpenConfirmation packetChannelOpenConfirmation = new PacketChannelOpenConfirmation(bArr, 0, i);
        Channel channel = getChannel(packetChannelOpenConfirmation.recipientChannelID);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel " + packetChannelOpenConfirmation.recipientChannelID);
        }
        synchronized (channel) {
            if (channel.state != 1) {
                throw new IOException("Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel " + packetChannelOpenConfirmation.recipientChannelID);
            }
            channel.remoteID = packetChannelOpenConfirmation.senderChannelID;
            channel.remoteWindow = ((long) packetChannelOpenConfirmation.initialWindowSize) & BodyPartID.bodyIdMax;
            channel.remoteMaxPacketSize = packetChannelOpenConfirmation.maxPacketSize;
            channel.state = 2;
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Got SSH_MSG_CHANNEL_OPEN_CONFIRMATION (channel " + packetChannelOpenConfirmation.recipientChannelID + " / remote: " + packetChannelOpenConfirmation.senderChannelID + ")");
        }
    }

    public void msgChannelOpenFailure(byte[] bArr, int i) throws IOException {
        String str;
        if (i < 5) {
            throw new IOException("SSH_MSG_CHANNEL_OPEN_FAILURE message has wrong size (" + i + ")");
        }
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        int uint32 = typesReader.readUINT32();
        Channel channel = getChannel(uint32);
        if (channel == null) {
            throw new IOException("Unexpected SSH_MSG_CHANNEL_OPEN_FAILURE message for non-existent channel " + uint32);
        }
        int uint33 = typesReader.readUINT32();
        String string = typesReader.readString("UTF-8");
        if (uint33 == 1) {
            str = "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED";
        } else if (uint33 == 2) {
            str = "SSH_OPEN_CONNECT_FAILED";
        } else if (uint33 == 3) {
            str = "SSH_OPEN_UNKNOWN_CHANNEL_TYPE";
        } else if (uint33 == 4) {
            str = "SSH_OPEN_RESOURCE_SHORTAGE";
        } else {
            str = "UNKNOWN REASON CODE (" + uint33 + ")";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        for (int i2 = 0; i2 < sb.length(); i2++) {
            char cCharAt = sb.charAt(i2);
            if (cCharAt < ' ' || cCharAt > '~') {
                sb.setCharAt(i2, Utf8.REPLACEMENT_CHARACTER);
            }
        }
        synchronized (channel) {
            channel.EOF = true;
            channel.state = 4;
            channel.setReasonClosed("The server refused to open the channel (" + str + ", '" + sb.toString() + "')");
            channel.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, "Got SSH_MSG_CHANNEL_OPEN_FAILURE (channel " + uint32 + ")");
        }
    }

    public void msgGlobalRequest(byte[] bArr, int i) throws IOException {
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        String string = typesReader.readString();
        if (typesReader.readBoolean()) {
            this.tm.sendAsynchronousMessage(new byte[]{82});
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_GLOBAL_REQUEST (" + string + ")");
        }
    }

    public void msgGlobalSuccess() {
        synchronized (this.channels) {
            this.globalSuccessCounter++;
            this.channels.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_REQUEST_SUCCESS");
        }
    }

    public void msgGlobalFailure() {
        synchronized (this.channels) {
            this.globalFailedCounter++;
            this.channels.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, "Got SSH_MSG_REQUEST_FAILURE");
        }
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleMessage(byte[] bArr, int i) throws IOException {
        if (bArr == null) {
            Logger logger = log;
            if (logger.isEnabled()) {
                logger.log(50, "HandleMessage: got shutdown");
            }
            synchronized (this.listenerThreads) {
                Iterator<IChannelWorkerThread> it = this.listenerThreads.iterator();
                while (it.hasNext()) {
                    it.next().stopWorking();
                }
                this.listenerThreadsAllowed = false;
            }
            synchronized (this.channels) {
                this.shutdown = true;
                for (Channel channel : this.channels) {
                    synchronized (channel) {
                        channel.EOF = true;
                        channel.state = 4;
                        channel.setReasonClosed("The connection is being shutdown");
                        channel.closeMessageRecv = true;
                        channel.notifyAll();
                    }
                }
                this.channels.clear();
                this.channels.notifyAll();
            }
            return;
        }
        byte b = bArr[0];
        switch (b) {
            case 80:
                msgGlobalRequest(bArr, i);
                return;
            case 81:
                msgGlobalSuccess();
                return;
            case 82:
                msgGlobalFailure();
                return;
            default:
                switch (b) {
                    case 90:
                        msgChannelOpen(bArr, i);
                        return;
                    case 91:
                        msgChannelOpenConfirmation(bArr, i);
                        return;
                    case 92:
                        msgChannelOpenFailure(bArr, i);
                        return;
                    case 93:
                        msgChannelWindowAdjust(bArr, i);
                        return;
                    case Packets.SSH_MSG_CHANNEL_DATA /* 94 */:
                        msgChannelData(bArr, i);
                        return;
                    case Packets.SSH_MSG_CHANNEL_EXTENDED_DATA /* 95 */:
                        msgChannelExtendedData(bArr, i);
                        return;
                    case 96:
                        msgChannelEOF(bArr, i);
                        return;
                    case 97:
                        msgChannelClose(bArr, i);
                        return;
                    case Packets.SSH_MSG_CHANNEL_REQUEST /* 98 */:
                        msgChannelRequest(bArr, i);
                        return;
                    case 99:
                        msgChannelSuccess(bArr, i);
                        return;
                    case 100:
                        msgChannelFailure(bArr, i);
                        return;
                    default:
                        throw new IOException("Cannot handle unknown channel message " + (bArr[0] & 255));
                }
        }
    }
}
