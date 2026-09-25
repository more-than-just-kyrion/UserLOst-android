package com.iiordanov.bVNC;

import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import androidx.work.WorkRequest;
import com.iiordanov.bVNC.input.RemoteVncKeyboard;
import com.undatech.opaque.RfbConnectable;
import com.undatech.remoteClientUi.R;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes2.dex */
class RfbProto implements RfbConnectable {
    static final int AuthNone = 1;
    static final int AuthPlain = 256;
    static final int AuthTLSNone = 257;
    static final int AuthTLSPlain = 259;
    static final int AuthTLSVnc = 258;
    static final int AuthUltra = 17;
    static final int AuthUnixLogin = 129;
    static final int AuthVNC = 2;
    static final int AuthX509None = 260;
    static final int AuthX509Plain = 262;
    static final int AuthX509Vnc = 261;
    static final int Bell = 2;
    static final int CHAT_CLOSE = -2;
    static final int CHAT_FINISHED = -3;
    static final int CHAT_OPEN = -1;
    static final int ClientCutText = 6;
    static final int EncodingClientRedirect = -311;
    static final int EncodingCoRRE = 4;
    static final int EncodingCompressLevel0 = -256;
    static final int EncodingCopyRect = 1;
    static final int EncodingExtendedDesktopSize = -308;
    static final int EncodingHextile = 5;
    static final int EncodingLastRect = -224;
    static final int EncodingNewFBSize = -223;
    static final int EncodingPointerPos = -232;
    static final int EncodingQualityLevel0 = -32;
    static final int EncodingRRE = 2;
    static final int EncodingRaw = 0;
    static final int EncodingRichCursor = -239;
    static final int EncodingTight = 7;
    static final int EncodingTightZstd = 26;
    static final int EncodingXCursor = -240;
    static final int EncodingZRLE = 16;
    static final int EncodingZlib = 6;
    static final int FixColourMapEntries = 1;
    static final int FramebufferUpdate = 0;
    static final int FramebufferUpdateRequest = 3;
    static final int HextileAnySubrects = 8;
    static final int HextileBackgroundSpecified = 2;
    static final int HextileForegroundSpecified = 4;
    static final int HextileRaw = 1;
    static final int HextileSubrectsColoured = 16;
    static final int KeyboardEvent = 4;
    static final int MaxNormalEncoding = 255;
    static final int NoTunneling = 0;
    static final int PlainAuthFailed = 13;
    static final int PointerEvent = 5;
    static final int SecTypeArd = 30;
    static final int SecTypeInvalid = 0;
    static final int SecTypeNone = 1;
    static final int SecTypeTLS = 18;
    static final int SecTypeTight = 16;
    static final int SecTypeUltra34 = -6;
    static final int SecTypeUltraVnc1 = 17;
    static final int SecTypeUltraVnc2 = 113;
    static final int SecTypeUltraVnc3 = 114;
    static final int SecTypeUltraVnc4 = 115;
    static final int SecTypeVeNCrypt = 19;
    static final int SecTypeVncAuth = 2;
    static final int ServerCutText = 3;
    static final int SetColourMapEntries = 1;
    static final int SetEncodings = 2;
    static final int SetPixelFormat = 0;
    static final String SigAuthNone = "NOAUTH__";
    static final String SigAuthUnixLogin = "ULGNAUTH";
    static final String SigAuthVNC = "VNCAUTH_";
    static final String SigEncodingCoRRE = "CORRE___";
    static final String SigEncodingCompressLevel0 = "COMPRLVL";
    static final String SigEncodingCopyRect = "COPYRECT";
    static final String SigEncodingHextile = "HEXTILE_";
    static final String SigEncodingLastRect = "LASTRECT";
    static final String SigEncodingNewFBSize = "NEWFBSIZ";
    static final String SigEncodingPointerPos = "POINTPOS";
    static final String SigEncodingQualityLevel0 = "JPEGQLVL";
    static final String SigEncodingRRE = "RRE_____";
    static final String SigEncodingRaw = "RAW_____";
    static final String SigEncodingRichCursor = "RCHCURSR";
    static final String SigEncodingTight = "TIGHT___";
    static final String SigEncodingTightZstd = "TIGHTZSTD___";
    static final String SigEncodingXCursor = "X11CURSR";
    static final String SigEncodingZRLE = "ZRLE____";
    static final String SigEncodingZlib = "ZLIB____";
    static final String SigNoTunneling = "NOTUNNEL";
    static final String StandardVendor = "STDV";
    static final String TAG = "RfbProto";
    static final int TextChat = 11;
    static final int TightExplicitFilter = 4;
    static final int TightFill = 8;
    static final int TightFilterCopy = 0;
    static final int TightFilterGradient = 2;
    static final int TightFilterPalette = 1;
    static final int TightJpeg = 9;
    static final int TightMaxSubencoding = 9;
    static final int TightMinToCompress = 12;
    static final String TightVncVendor = "TGHT";
    static final String TridiaVncVendor = "TRDV";
    static final int VncAuthFailed = 1;
    static final int VncAuthOK = 0;
    static final int VncAuthTooMany = 2;
    public static int maxStringLength = 65535;
    public static final int secTypeIdent = 265;
    public static final int secTypePlain = 256;
    public static final int secTypeTLSIdent = 266;
    public static final int secTypeTLSNone = 257;
    public static final int secTypeTLSPlain = 259;
    public static final int secTypeTLSVnc = 258;
    public static final int secTypeX509Ident = 267;
    public static final int secTypeX509None = 260;
    public static final int secTypeX509Plain = 262;
    public static final int secTypeX509Vnc = 261;
    static final String versionMsg_3_3 = "RFB 003.003\n";
    static final String versionMsg_3_7 = "RFB 003.007\n";
    static final String versionMsg_3_8 = "RFB 003.008\n";
    CapsContainer authCaps;
    boolean bigEndian;
    int bitsPerPixel;
    int blueMax;
    int blueShift;
    RemoteCanvas canvas;
    private String cert;
    int clientMajor;
    int clientMinor;
    CapsContainer clientMsgCaps;
    private boolean closed;
    int copyRectSrcX;
    int copyRectSrcY;
    private Decoder decoder;
    int depth;
    String desktopName;
    DH dh;
    long dh_resp;
    CapsContainer encodingCaps;
    int eventBufLen;
    int framebufferHeight;
    int framebufferWidth;
    int greenMax;
    int greenShift;
    private String hash;
    private int hashAlgorithm;
    String host;
    DataInputStream is;
    OutputStream os;
    int port;
    private int preferredEncoding;
    boolean protocolTightVNC;
    int redMax;
    int redShift;
    private int screenFlags;
    private int screenId;
    int serverMajor;
    int serverMinor;
    CapsContainer serverMsgCaps;
    Socket sock;
    private boolean sslTunneled;
    boolean tightWarningShown;
    boolean trueColour;
    CapsContainer tunnelCaps;
    int updateNRects;
    int updateRectEncoding;
    int updateRectH;
    int updateRectW;
    int updateRectX;
    int updateRectY;
    private boolean viewOnly;
    boolean zlibWarningShown;
    boolean inNormalProtocol = false;
    boolean brokenKeyPressed = false;
    boolean recordFromBeginning = true;
    private boolean maintainConnection = true;
    private int compressLevel = 6;
    private int jpegQuality = 7;
    private int[] encodingsSaved = null;
    private int nEncodingsSaved = 0;
    private int shareDesktop = 1;
    private boolean isExtendedDesktopSizeSupported = false;
    private boolean certificateAccepted = false;
    byte[] writeIntBuffer = new byte[4];
    int preferredFramebufferWidth = 0;
    int preferredFramebufferHeight = 0;
    byte[] framebufferUpdateRequest = new byte[10];
    byte[] eventBuf = new byte[72];
    int oldModifiers = 0;
    boolean timing = false;
    long timeWaitedIn100us = 5;
    long timedKbits = 0;

    public class RfbPasswordAuthenticationException extends Exception {
        public RfbPasswordAuthenticationException(String str) {
            super(str);
        }
    }

    public class RfbUsernameRequiredException extends Exception {
        public RfbUsernameRequiredException(String str) {
            super(str);
        }
    }

    public class RfbUltraVncColorMapException extends Exception {
        public RfbUltraVncColorMapException(String str) {
            super(str);
        }
    }

    RfbProto(Decoder decoder, RemoteCanvas remoteCanvas, int i, boolean z, boolean z2, int i2, String str, String str2) {
        this.sslTunneled = z2;
        this.decoder = decoder;
        this.viewOnly = z;
        this.canvas = remoteCanvas;
        this.preferredEncoding = i;
        this.hashAlgorithm = i2;
        this.hash = str;
        this.cert = str2;
    }

    private void initSocket() throws Exception {
        Socket socket;
        if (this.sslTunneled) {
            Log.i(TAG, "Creating secure tunnel.");
            SecureTunnel secureTunnel = new SecureTunnel(this.host, this.port, this.hashAlgorithm, this.hash, this.cert, this.canvas.handler);
            secureTunnel.setup();
            synchronized (this) {
                while (!this.certificateAccepted) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            socket = secureTunnel.getSocket();
        } else {
            socket = null;
        }
        if (socket == null) {
            socket = new Socket(this.host, this.port);
            socket.setTcpNoDelay(true);
        }
        this.sock = socket;
        setStreams(socket.getInputStream(), socket.getOutputStream());
    }

    public synchronized void closeSocket() {
        this.inNormalProtocol = false;
        try {
            Socket socket = this.sock;
            if (socket != null) {
                socket.close();
            }
            this.closed = true;
            Log.v(TAG, "RFB socket closed");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void close() {
        this.inNormalProtocol = false;
        this.maintainConnection = false;
        closeSocket();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isCertificateAccepted() {
        return this.certificateAccepted;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setCertificateAccepted(boolean z) {
        this.certificateAccepted = z;
    }

    synchronized boolean closed() {
        return this.closed;
    }

    void initializeAndAuthenticate(String str, int i, String str2, String str3, boolean z, String str4, int i2, String str5) throws Exception {
        this.host = str;
        this.port = i;
        Log.v(TAG, "Connecting to server: " + this.host + " at port: " + this.port);
        initSocket();
        if (z && str4 != null && str4.length() > 0) {
            Log.i(TAG, "Negotiating repeater/proxy connection");
            this.is.read(new byte[12]);
            byte[] bArr = new byte[250];
            System.arraycopy(str4.getBytes(), 0, bArr, 0, str4.length());
            this.os.write(bArr);
        }
        readVersionMsg();
        Log.i(TAG, "RFB server supports protocol version " + this.serverMajor + "." + this.serverMinor);
        writeVersionMsg();
        Log.i(TAG, "Using RFB protocol version " + this.clientMajor + "." + this.clientMinor);
        int i3 = str2.length() > 0 ? 1 : 0;
        Log.d("debug", "bitPref = " + i3);
        int iNegotiateSecurity = negotiateSecurity(i3, i2);
        if (iNegotiateSecurity == 16) {
            Log.i(TAG, "secType == RfbProto.SecTypeTight");
            initCapabilities();
            setupTunneling();
            iNegotiateSecurity = negotiateAuthenticationTight();
        } else if (iNegotiateSecurity == 19) {
            Log.i(TAG, "secType == RfbProto.SecTypeVeNCrypt");
            iNegotiateSecurity = authenticateVeNCrypt();
        } else if (iNegotiateSecurity == 18) {
            Log.i(TAG, "secType == RfbProto.SecTypeTLS");
            authenticateTLS();
            iNegotiateSecurity = negotiateSecurity(i3, 0);
        } else if (iNegotiateSecurity == -6 || iNegotiateSecurity == SecTypeUltraVnc2) {
            Log.i(TAG, "secType == RfbProto.SecTypeUltra34 or SecTypeUltraVnc2");
            iNegotiateSecurity = 17;
        } else if (iNegotiateSecurity == 30) {
            Log.i(TAG, "secType == RfbProto.SecTypeArd");
            new RFBSecurityARD(str2, str3).perform(this);
            if (this.is.readInt() == 1) {
                throw new Exception("Error from VNC server: " + readString());
            }
            return;
        }
        if (iNegotiateSecurity == 1) {
            Log.i(TAG, "authType == RfbProto.AuthNone, No authentication needed");
            authenticateNone();
            return;
        }
        if (iNegotiateSecurity == 2) {
            Log.i(TAG, "authType == RfbProto.AuthVNC, VNC authentication needed");
            authenticateVNC(str3);
            return;
        }
        if (iNegotiateSecurity != 17) {
            switch (iNegotiateSecurity) {
                case 256:
                    Log.i(TAG, "authType == RfbProto.AuthPlain, Plain authentication needed ");
                    authenticatePlain(str2, str3);
                    return;
                case 257:
                    Log.i(TAG, "authType == RfbProto.AuthTLSNone, No authentication needed");
                    authenticateTLS();
                    authenticateNone();
                    return;
                case 258:
                    Log.i(TAG, "authType == RfbProto.AuthTLSVnc, VNC authentication needed");
                    authenticateTLS();
                    authenticateVNC(str3);
                    return;
                case 259:
                    Log.i(TAG, "authType == RfbProto.AuthTLSPlain, Plain authentication needed");
                    authenticateTLS();
                    authenticatePlain(str2, str3);
                    return;
                case 260:
                    Log.i(TAG, "authType == RfbProto.AuthX509None, No authentication needed");
                    authenticateX509(str5);
                    authenticateNone();
                    return;
                case 261:
                    Log.i(TAG, "authType == RfbProto.AuthX509Vnc,VNC authentication needed");
                    authenticateX509(str5);
                    authenticateVNC(str3);
                    return;
                case 262:
                    Log.i(TAG, "authType == RfbProto.AuthX509Plain, Plain authentication needed");
                    authenticateX509(str5);
                    authenticatePlain(str2, str3);
                    return;
                default:
                    throw new Exception("Unknown authentication scheme " + iNegotiateSecurity);
            }
        }
        Log.i(TAG, "authType == RfbProto.AuthUltra, UltraVNC authentication needed");
        prepareDH();
        authenticateDH(str2, str3);
    }

    void readVersionMsg() throws Exception {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte[] bArr = new byte[12];
        readFully(bArr);
        if (bArr[0] != 82 || bArr[1] != 70 || bArr[2] != 66 || bArr[3] != 32 || (b = bArr[4]) < 48 || b > 57 || (b2 = bArr[5]) < 48 || b2 > 57 || (b3 = bArr[6]) < 48 || b3 > 57 || bArr[7] != 46 || (b4 = bArr[8]) < 48 || b4 > 57 || (b5 = bArr[9]) < 48 || b5 > 57 || (b6 = bArr[10]) < 48 || b6 > 57 || bArr[11] != 10) {
            Log.i(TAG, new String(bArr));
            throw new Exception("Host " + this.host + " port " + this.port + " is not an RFB server");
        }
        int i = ((b - TarConstants.LF_NORMAL) * 100) + ((b2 - TarConstants.LF_NORMAL) * 10) + (b3 - TarConstants.LF_NORMAL);
        this.serverMajor = i;
        this.serverMinor = ((b4 - TarConstants.LF_NORMAL) * 100) + ((b5 - TarConstants.LF_NORMAL) * 10) + (b6 - TarConstants.LF_NORMAL);
        if (i < 3) {
            throw new Exception("RFB server does not support protocol version 3");
        }
    }

    synchronized void writeVersionMsg() throws IOException {
        int i;
        this.clientMajor = 3;
        if (this.serverMajor > 3 || (i = this.serverMinor) >= 8) {
            this.clientMinor = 8;
            this.os.write(versionMsg_3_8.getBytes());
        } else if (i >= 7) {
            this.clientMinor = 7;
            this.os.write(versionMsg_3_7.getBytes());
        } else {
            this.clientMinor = 3;
            this.os.write(versionMsg_3_3.getBytes());
        }
        this.protocolTightVNC = false;
    }

    int negotiateSecurity(int i, int i2) throws Exception {
        if (this.clientMinor >= 7) {
            return selectSecurityType(i, i2);
        }
        return readSecurityType(i);
    }

    int readSecurityType(int i) throws Exception {
        int i2 = this.is.readInt();
        if (i2 == -6 || i2 == SecTypeUltraVnc2) {
            if ((i & 1) == 1) {
                return i2;
            }
            throw new RfbUsernameRequiredException("Username required.");
        }
        if (i2 == 0) {
            readConnFailedReason();
            return 0;
        }
        if (i2 == 1 || i2 == 2) {
            return i2;
        }
        throw new Exception("Unknown security type from RFB server: " + i2);
    }

    int selectSecurityType(int i, int i2) throws Exception {
        String string;
        byte b;
        Log.i(TAG, "(Re)Selecting security type.");
        int unsignedByte = this.is.readUnsignedByte();
        byte b2 = 0;
        if (unsignedByte == 0) {
            readConnFailedReason();
            return 0;
        }
        byte[] bArr = new byte[unsignedByte];
        readFully(bArr);
        for (int i3 = 0; i3 < unsignedByte; i3++) {
            if (bArr[i3] == 16) {
                this.protocolTightVNC = true;
                this.os.write(16);
                return 16;
            }
        }
        boolean z = false;
        for (int i4 = 0; i4 < unsignedByte; i4++) {
            Log.i(TAG, "Received security type: " + ((int) bArr[i4]));
            if (i2 == 3) {
                b = bArr[i4];
                if (b == 18) {
                    b2 = b;
                    break;
                }
            } else {
                if (i2 == 4) {
                    b = bArr[i4];
                    if (b == 19) {
                        b2 = b;
                        break;
                    }
                } else if (i2 == 2) {
                    byte b3 = bArr[i4];
                    if (b3 == 1 || b3 == 2 || b3 == SecTypeUltraVnc2 || b3 == -6) {
                        b2 = b3;
                        break;
                    }
                } else {
                    byte b4 = bArr[i4];
                    if (b4 != 1 && b4 != 2 && b4 != 19) {
                        if (b4 == 18) {
                            z = true;
                        }
                        if ((i & 1) == 0 || b4 != 30) {
                        }
                    }
                    b2 = b4;
                    break;
                }
            }
        }
        if (b2 == 0) {
            if (z) {
                string = this.canvas.getContext().getString(R.string.error_anon_dh_unsupported);
            } else {
                string = this.canvas.getContext().getString(R.string.error_security_type) + " " + this.canvas.getContext().getString(R.string.error_pick_correct_item);
            }
            throw new Exception(string);
        }
        this.os.write(b2);
        return b2;
    }

    int authenticateVeNCrypt() throws Exception {
        if (((this.is.readUnsignedByte() << 8) | this.is.readUnsignedByte()) < 2) {
            this.os.write(0);
            this.os.write(0);
            throw new Exception("Server reported an unsupported VeNCrypt version");
        }
        this.os.write(0);
        this.os.write(2);
        if (this.is.readUnsignedByte() != 0) {
            throw new Exception("Server reported it could not support the VeNCrypt version");
        }
        int unsignedByte = this.is.readUnsignedByte();
        int[] iArr = new int[unsignedByte];
        for (int i = 0; i < unsignedByte; i++) {
            iArr[i] = this.is.readInt();
        }
        for (int i2 = 0; i2 < unsignedByte; i2++) {
            int i3 = iArr[i2];
            if (i3 != 1 && i3 != 2) {
                switch (i3) {
                    case 256:
                        break;
                    case 257:
                    case 258:
                    case 259:
                    case 260:
                    case 261:
                    case 262:
                        writeInt(i3);
                        Log.i(TAG, "Selecting VeNCrypt subtype: " + iArr[i2]);
                        if (readU8() == 0) {
                            throw new Exception("VeNCrypt setup on the server failed. Please check your certificate if applicable.");
                        }
                        return iArr[i2];
                    default:
                        break;
                }
            }
            writeInt(i3);
            Log.i(TAG, "Selecting VeNCrypt subtype: " + iArr[i2]);
            return iArr[i2];
        }
        throw new Exception("No valid VeNCrypt sub-type");
    }

    void authenticateNone() throws Exception {
        if (this.clientMinor >= 8) {
            readSecurityResult("No authentication");
        }
    }

    void authenticateVNC(String str) throws Exception {
        byte[] bArr = new byte[16];
        readFully(bArr);
        if (str.length() > 8) {
            str = str.substring(0, 8);
        }
        int iIndexOf = str.indexOf(0);
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
        }
        byte[] bArr2 = {0, 0, 0, 0, 0, 0, 0, 0};
        System.arraycopy(str.getBytes(), 0, bArr2, 0, str.length());
        DesCipher desCipher = new DesCipher(bArr2);
        desCipher.encrypt(bArr, 0, bArr, 0);
        desCipher.encrypt(bArr, 8, bArr, 8);
        this.os.write(bArr);
        readSecurityResult("VNC authentication");
    }

    void authenticateTLS() throws Exception {
        new TLSTunnel(this.sock).setup(this);
    }

    void authenticateX509(String str) throws Exception {
        new X509Tunnel(this.sock, str, this.canvas.handler, this).setup(this);
    }

    void authenticatePlain(String str, String str2) throws Exception {
        byte[] bytes = str.getBytes();
        byte[] bytes2 = str2.getBytes();
        writeInt(bytes.length);
        writeInt(bytes2.length);
        this.os.write(bytes);
        this.os.write(bytes2);
        readSecurityResult("Plain authentication");
    }

    void readSecurityResult(String str) throws Exception {
        int i = this.is.readInt();
        if (i == 0) {
            System.out.println(str + ": success");
            return;
        }
        if (i == 1) {
            if (this.clientMinor >= 8) {
                readConnFailedReason(false);
            }
            throw new RfbPasswordAuthenticationException(str + ": failed");
        }
        if (i == 2) {
            throw new RfbPasswordAuthenticationException(str + ": failed, too many tries");
        }
        if (i == 13) {
            throw new RfbPasswordAuthenticationException(str + ": failed");
        }
        throw new Exception(str + ": unknown result " + i);
    }

    void readConnFailedReason() throws Exception {
        readConnFailedReason(true);
    }

    void readConnFailedReason(boolean z) throws Exception {
        byte[] bArr = new byte[this.is.readInt()];
        readFully(bArr);
        String str = new String(bArr);
        Log.v(TAG, str);
        if (z) {
            throw new Exception(str);
        }
    }

    void prepareDH() throws Exception {
        long j = this.is.readLong();
        long j2 = this.is.readLong();
        this.dh_resp = this.is.readLong();
        DH dh = new DH(j, j2);
        this.dh = dh;
        this.os.write(DH.longToBytes(dh.createInterKey()));
    }

    void authenticateDH(String str, String str2) throws Exception {
        long jCreateEncryptionKey = this.dh.createEncryptionKey(this.dh_resp);
        DesCipher desCipher = new DesCipher(DH.longToBytes(jCreateEncryptionKey));
        byte[] bArr = new byte[256];
        byte[] bArr2 = new byte[64];
        System.arraycopy(str.getBytes(), 0, bArr, 0, str.length());
        if (str.length() < 256) {
            for (int length = str.length(); length < 256; length++) {
                bArr[length] = 0;
            }
        }
        System.arraycopy(str2.getBytes(), 0, bArr2, 0, str2.length());
        if (str2.length() < 64) {
            for (int length2 = str2.length(); length2 < 64; length2++) {
                bArr2[length2] = 0;
            }
        }
        desCipher.encryptText(bArr, bArr, DH.longToBytes(jCreateEncryptionKey));
        desCipher.encryptText(bArr2, bArr2, DH.longToBytes(jCreateEncryptionKey));
        this.os.write(bArr);
        this.os.write(bArr2);
        readSecurityResult("VNC authentication");
    }

    void initCapabilities() {
        this.tunnelCaps = new CapsContainer();
        this.authCaps = new CapsContainer();
        this.serverMsgCaps = new CapsContainer();
        this.clientMsgCaps = new CapsContainer();
        this.encodingCaps = new CapsContainer();
        this.authCaps.add(1, StandardVendor, SigAuthNone, "No authentication");
        this.authCaps.add(2, StandardVendor, SigAuthVNC, "Standard VNC password authentication");
        this.encodingCaps.add(1, StandardVendor, SigEncodingCopyRect, "Standard CopyRect encoding");
        this.encodingCaps.add(2, StandardVendor, SigEncodingRRE, "Standard RRE encoding");
        this.encodingCaps.add(4, StandardVendor, SigEncodingCoRRE, "Standard CoRRE encoding");
        this.encodingCaps.add(5, StandardVendor, SigEncodingHextile, "Standard Hextile encoding");
        this.encodingCaps.add(16, StandardVendor, SigEncodingZRLE, "Standard ZRLE encoding");
        this.encodingCaps.add(6, TridiaVncVendor, SigEncodingZlib, "Zlib encoding");
        this.encodingCaps.add(7, TightVncVendor, SigEncodingTight, "Tight encoding");
        this.encodingCaps.add(26, TightVncVendor, SigEncodingTightZstd, "Tight Zstd encoding");
        this.encodingCaps.add(-256, TightVncVendor, SigEncodingCompressLevel0, "Compression level");
        this.encodingCaps.add(EncodingQualityLevel0, TightVncVendor, SigEncodingQualityLevel0, "JPEG quality level");
        this.encodingCaps.add(EncodingXCursor, TightVncVendor, SigEncodingXCursor, "X-style cursor shape update");
        this.encodingCaps.add(EncodingRichCursor, TightVncVendor, SigEncodingRichCursor, "Rich-color cursor shape update");
        this.encodingCaps.add(EncodingPointerPos, TightVncVendor, SigEncodingPointerPos, "Pointer position update");
        this.encodingCaps.add(EncodingLastRect, TightVncVendor, SigEncodingLastRect, "LastRect protocol extension");
        this.encodingCaps.add(EncodingNewFBSize, TightVncVendor, SigEncodingNewFBSize, "Framebuffer size change");
    }

    void setupTunneling() throws IOException {
        int i = this.is.readInt();
        if (i != 0) {
            readCapabilityList(this.tunnelCaps, i);
            writeInt(0);
        }
    }

    int negotiateAuthenticationTight() throws Exception {
        int i = this.is.readInt();
        if (i == 0) {
            return 1;
        }
        readCapabilityList(this.authCaps, i);
        for (int i2 = 0; i2 < this.authCaps.numEnabled(); i2++) {
            int byOrder = this.authCaps.getByOrder(i2);
            if (byOrder == 1 || byOrder == 2) {
                writeInt(byOrder);
                return byOrder;
            }
        }
        throw new Exception("No suitable authentication scheme found");
    }

    void readCapabilityList(CapsContainer capsContainer, int i) throws IOException {
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[8];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.is.readInt();
            readFully(bArr);
            readFully(bArr2);
            capsContainer.enable(new CapabilityInfo(i3, bArr, bArr2));
        }
    }

    void writeInt(int i) throws IOException {
        byte[] bArr = this.writeIntBuffer;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        this.os.write(bArr);
    }

    void writeClientInit() throws IOException {
        this.os.write(this.shareDesktop);
    }

    void readServerInit() throws IOException {
        Log.i(TAG, "Reading server init.");
        int unsignedShort = this.is.readUnsignedShort();
        int unsignedShort2 = this.is.readUnsignedShort();
        Log.i(TAG, "Read framebuffer size: " + unsignedShort + "x" + unsignedShort2);
        setFramebufferSize(unsignedShort, unsignedShort2);
        this.bitsPerPixel = this.is.readUnsignedByte();
        this.depth = this.is.readUnsignedByte();
        this.bigEndian = this.is.readUnsignedByte() != 0;
        this.trueColour = this.is.readUnsignedByte() != 0;
        this.redMax = this.is.readUnsignedShort();
        this.greenMax = this.is.readUnsignedShort();
        this.blueMax = this.is.readUnsignedShort();
        this.redShift = this.is.readUnsignedByte();
        this.greenShift = this.is.readUnsignedByte();
        this.blueShift = this.is.readUnsignedByte();
        readFully(new byte[3]);
        byte[] bArr = new byte[this.is.readInt()];
        readFully(bArr);
        this.desktopName = new String(bArr);
        if (this.protocolTightVNC) {
            int unsignedShort3 = this.is.readUnsignedShort();
            int unsignedShort4 = this.is.readUnsignedShort();
            int unsignedShort5 = this.is.readUnsignedShort();
            this.is.readUnsignedShort();
            readCapabilityList(this.serverMsgCaps, unsignedShort3);
            readCapabilityList(this.clientMsgCaps, unsignedShort4);
            readCapabilityList(this.encodingCaps, unsignedShort5);
        }
        this.inNormalProtocol = true;
    }

    void setFramebufferSize(int i, int i2) {
        Log.d(TAG, "setFramebufferSize, wxh: " + i + "x" + i2);
        this.framebufferWidth = i;
        this.framebufferHeight = i2;
    }

    void setPreferredFramebufferSize(int i, int i2) {
        Log.d(TAG, "setPreferredFramebufferSize, wxh: " + i + "x" + i2);
        this.preferredFramebufferWidth = i;
        this.preferredFramebufferHeight = i2;
    }

    int readServerMessageType() throws IOException {
        return this.is.readUnsignedByte();
    }

    void readFramebufferUpdate() throws IOException {
        this.is.readByte();
        this.updateNRects = this.is.readUnsignedShort();
    }

    void readFramebufferUpdateRectHdr() throws Exception {
        this.updateRectX = this.is.readUnsignedShort();
        this.updateRectY = this.is.readUnsignedShort();
        this.updateRectW = this.is.readUnsignedShort();
        this.updateRectH = this.is.readUnsignedShort();
        this.updateRectEncoding = this.is.readInt();
    }

    void readCopyRect() throws IOException {
        this.copyRectSrcX = this.is.readUnsignedShort();
        this.copyRectSrcY = this.is.readUnsignedShort();
    }

    String readServerCutText() throws IOException {
        readFully(new byte[3]);
        byte[] bArr = new byte[this.is.readInt()];
        readFully(bArr);
        return new String(bArr);
    }

    int readCompactLen() throws IOException {
        int unsignedByte = this.is.readUnsignedByte();
        int i = unsignedByte & 127;
        if ((unsignedByte & 128) == 0) {
            return i;
        }
        int unsignedByte2 = this.is.readUnsignedByte();
        int i2 = i | ((unsignedByte2 & 127) << 7);
        return (unsignedByte2 & 128) != 0 ? i2 | ((this.is.readUnsignedByte() & 255) << 14) : i2;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public synchronized void writeFramebufferUpdateRequest(int i, int i2, int i3, int i4, boolean z) {
        byte[] bArr = this.framebufferUpdateRequest;
        bArr[0] = 3;
        bArr[1] = z ? (byte) 1 : (byte) 0;
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        bArr[4] = (byte) ((i2 >> 8) & 255);
        bArr[5] = (byte) (i2 & 255);
        bArr[6] = (byte) ((i3 >> 8) & 255);
        bArr[7] = (byte) (i3 & 255);
        bArr[8] = (byte) ((i4 >> 8) & 255);
        bArr[9] = (byte) (i4 & 255);
        try {
            this.os.write(bArr);
        } catch (IOException e) {
            Log.e(TAG, "Could not write framebuffer update request.");
            e.printStackTrace();
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public synchronized void writeSetPixelFormat(int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z3) {
        try {
            this.os.write(new byte[]{0, 0, 0, 0, (byte) i, (byte) i2, z ? (byte) 1 : (byte) 0, z2 ? (byte) 1 : (byte) 0, (byte) ((i3 >> 8) & 255), (byte) (i3 & 255), (byte) ((i4 >> 8) & 255), (byte) (i4 & 255), (byte) ((i5 >> 8) & 255), (byte) (i5 & 255), (byte) i6, (byte) i7, (byte) i8, z3 ? (byte) 1 : (byte) 0, 0, 0});
        } catch (IOException e) {
            Log.e(TAG, "Could not write setPixelFormat message to VNC server.");
            e.printStackTrace();
        }
    }

    synchronized void writeFixColourMapEntries(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3) throws IOException {
        byte[] bArr = new byte[(i2 * 6) + 6];
        bArr[0] = 1;
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        bArr[4] = (byte) ((i2 >> 8) & 255);
        bArr[5] = (byte) (i2 & 255);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * 6;
            int i5 = iArr[i3];
            bArr[i4 + 6] = (byte) ((i5 >> 8) & 255);
            bArr[i4 + 7] = (byte) (i5 & 255);
            int i6 = iArr2[i3];
            bArr[i4 + 8] = (byte) ((i6 >> 8) & 255);
            bArr[i4 + 9] = (byte) (i6 & 255);
            int i7 = iArr3[i3];
            bArr[i4 + 10] = (byte) ((i7 >> 8) & 255);
            bArr[i4 + 11] = (byte) (i7 & 255);
        }
        this.os.write(bArr);
    }

    synchronized void writeSetEncodings(int[] iArr, int i) throws IOException {
        byte[] bArr = new byte[(i * 4) + 4];
        bArr[0] = 2;
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 4;
            int i4 = iArr[i2];
            bArr[i3 + 4] = (byte) ((i4 >> 24) & 255);
            bArr[i3 + 5] = (byte) ((i4 >> 16) & 255);
            bArr[i3 + 6] = (byte) ((i4 >> 8) & 255);
            bArr[i3 + 7] = (byte) (i4 & 255);
        }
        this.os.write(bArr);
    }

    synchronized void writeClientCutText(String str, int i) throws IOException {
        if (this.viewOnly) {
            return;
        }
        byte[] bArr = new byte[i + 8];
        bArr[0] = 6;
        bArr[4] = (byte) ((str.length() >> 24) & 255);
        bArr[5] = (byte) ((str.length() >> 16) & 255);
        bArr[6] = (byte) ((str.length() >> 8) & 255);
        bArr[7] = (byte) (str.length() & 255);
        System.arraycopy(str.getBytes(), 0, bArr, 8, i);
        this.os.write(bArr);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public synchronized void writePointerEvent(int i, int i2, int i3, int i4, boolean z) {
        if (this.viewOnly) {
            return;
        }
        this.eventBufLen = 0;
        writeModifierKeyEvents(i3);
        byte[] bArr = this.eventBuf;
        int i5 = this.eventBufLen;
        int i6 = i5 + 1;
        this.eventBufLen = i6;
        bArr[i5] = 5;
        int i7 = i5 + 2;
        this.eventBufLen = i7;
        bArr[i6] = (byte) i4;
        int i8 = i5 + 3;
        this.eventBufLen = i8;
        bArr[i7] = (byte) ((i >> 8) & 255);
        int i9 = i5 + 4;
        this.eventBufLen = i9;
        bArr[i8] = (byte) (i & 255);
        int i10 = i5 + 5;
        this.eventBufLen = i10;
        bArr[i9] = (byte) ((i2 >> 8) & 255);
        this.eventBufLen = i5 + 6;
        bArr[i10] = (byte) (i2 & 255);
        if (i4 == 0) {
            writeModifierKeyEvents(0);
        }
        try {
            this.os.write(this.eventBuf, 0, this.eventBufLen);
        } catch (IOException e) {
            Log.e(TAG, "Failed to write pointer event to VNC server.");
            e.printStackTrace();
        }
    }

    void writeCtrlAltDel() throws IOException {
        try {
            this.eventBufLen = 0;
            writeModifierKeyEvents(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            writeKeyEvent(65535, true);
            this.os.write(this.eventBuf, 0, this.eventBufLen);
            this.eventBufLen = 0;
            writeModifierKeyEvents(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            writeKeyEvent(65535, false);
            writeModifierKeyEvents(0);
            this.os.write(this.eventBuf, 0, this.eventBufLen);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public synchronized void writeKeyEvent(int i, int i2, boolean z) {
        if (this.viewOnly) {
            return;
        }
        this.eventBufLen = 0;
        if (z) {
            writeModifierKeyEvents(i2);
        }
        if (i > 0) {
            writeKeyEvent(i, z);
        }
        if (!z) {
            writeModifierKeyEvents(0);
        }
        try {
            this.os.write(this.eventBuf, 0, this.eventBufLen);
        } catch (IOException e) {
            Log.e(TAG, "Failed to write key event to VNC server.");
            e.printStackTrace();
        }
    }

    private void writeKeyEvent(int i, boolean z) {
        if (this.viewOnly) {
            return;
        }
        byte[] bArr = this.eventBuf;
        int i2 = this.eventBufLen;
        int i3 = i2 + 1;
        this.eventBufLen = i3;
        bArr[i2] = 4;
        int i4 = i2 + 2;
        this.eventBufLen = i4;
        bArr[i3] = z ? (byte) 1 : (byte) 0;
        int i5 = i2 + 3;
        this.eventBufLen = i5;
        bArr[i4] = 0;
        int i6 = i2 + 4;
        this.eventBufLen = i6;
        bArr[i5] = 0;
        int i7 = i2 + 5;
        this.eventBufLen = i7;
        bArr[i6] = (byte) ((i >> 24) & 255);
        int i8 = i2 + 6;
        this.eventBufLen = i8;
        bArr[i7] = (byte) ((i >> 16) & 255);
        int i9 = i2 + 7;
        this.eventBufLen = i9;
        bArr[i8] = (byte) ((i >> 8) & 255);
        this.eventBufLen = i2 + 8;
        bArr[i9] = (byte) (i & 255);
    }

    void readClientRedirect(int i, int i2, int i3, int i4) throws Exception {
        int u16 = readU16();
        String string = readString();
        String string2 = readString();
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            Log.e(TAG, "Ignoring ClientRedirect rect with non-zero position/size");
        } else {
            clientRedirect(u16, string, string2);
        }
    }

    public void clientRedirect(int i, String str, String str2) {
        Log.d(TAG, "clientRedirect");
        try {
            closeSocket();
            this.host = str;
            this.port = i;
            initSocket();
            writeClientInit();
            readServerInit();
            processProtocol();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void writeModifierKeyEvents(int i) {
        int i2 = i & 4096;
        if (i2 != (this.oldModifiers & 4096)) {
            writeKeyEvent(65507, i2 != 0);
        }
        int i3 = i & 1;
        if (i3 != (this.oldModifiers & 1)) {
            writeKeyEvent(65505, i3 != 0);
        }
        int i4 = i & 2;
        if (i4 != (this.oldModifiers & 2)) {
            writeKeyEvent(65513, i4 != 0);
        }
        int i5 = i & 131072;
        if (i5 != (131072 & this.oldModifiers)) {
            writeKeyEvent(65515, i5 != 0);
        }
        int i6 = i & 16384;
        if (i6 != (this.oldModifiers & 16384)) {
            writeKeyEvent(65508, i6 != 0);
        }
        int i7 = i & 128;
        if (i7 != (this.oldModifiers & 128)) {
            writeKeyEvent(65506, i7 != 0);
        }
        int i8 = i & 32;
        if (i8 != (this.oldModifiers & 32)) {
            writeKeyEvent(RemoteVncKeyboard.rAltAsIsoL3Shift ? 65027 : 65514, i8 != 0);
        }
        this.oldModifiers = i;
    }

    public void startTiming() {
        this.timing = true;
        long j = this.timeWaitedIn100us;
        if (j > WorkRequest.MIN_BACKOFF_MILLIS) {
            this.timedKbits = (this.timedKbits * WorkRequest.MIN_BACKOFF_MILLIS) / j;
            this.timeWaitedIn100us = WorkRequest.MIN_BACKOFF_MILLIS;
        }
    }

    public void stopTiming() {
        this.timing = false;
        long j = this.timeWaitedIn100us;
        long j2 = this.timedKbits;
        if (j < j2 / 2) {
            this.timeWaitedIn100us = j2 / 2;
        }
    }

    public long kbitsPerSecond() {
        return (this.timedKbits * WorkRequest.MIN_BACKOFF_MILLIS) / this.timeWaitedIn100us;
    }

    public long timeWaited() {
        return this.timeWaitedIn100us;
    }

    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        this.is.readFully(bArr, i, i2);
    }

    final int available() throws IOException {
        return this.is.available();
    }

    final int readU8() throws IOException {
        return this.is.readUnsignedByte();
    }

    final int readU16() throws IOException {
        return this.is.readUnsignedShort();
    }

    final int readU32() throws IOException {
        return this.is.readInt();
    }

    public final String readString() throws Exception {
        int u32 = readU32();
        if (u32 > maxStringLength) {
            throw new Exception("Max string length exceeded");
        }
        byte[] bArr = new byte[u32];
        readFully(bArr, 0, u32);
        String str = new String();
        try {
            return new String(bArr, "UTF8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }

    public void setStreams(InputStream inputStream, OutputStream outputStream) {
        this.is = new DataInputStream(new BufferedInputStream(inputStream, 8192));
        this.os = outputStream;
    }

    synchronized void writeOpenChat() throws Exception {
        this.os.write(11);
        this.os.write(0);
        this.os.write(0);
        this.os.write(0);
        writeInt(-1);
    }

    synchronized void writeCloseChat() throws Exception {
        this.os.write(11);
        this.os.write(0);
        this.os.write(0);
        this.os.write(0);
        writeInt(-2);
    }

    synchronized void writeFinishedChat() throws Exception {
        this.os.write(11);
        this.os.write(0);
        this.os.write(0);
        this.os.write(0);
        writeInt(-3);
    }

    String readTextChatMsg() throws Exception {
        readFully(new byte[3]);
        int i = this.is.readInt();
        if (i == -1) {
            writeOpenChat();
            return null;
        }
        if (i == -2 || i == -3 || i <= 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        readFully(bArr);
        return new String(bArr);
    }

    public synchronized void writeChatMessage(String str) throws Exception {
        this.os.write(11);
        this.os.write(0);
        this.os.write(0);
        this.os.write(0);
        byte[] bytes = str.getBytes("8859_1");
        if (bytes.length > 4096) {
            byte[] bArr = new byte[4096];
            System.arraycopy(bytes, 0, bArr, 0, 4096);
            bytes = bArr;
        }
        writeInt(bytes.length);
        this.os.write(bytes);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferWidth() {
        return this.framebufferWidth;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferHeight() {
        return this.framebufferHeight;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String desktopName() {
        return this.desktopName;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestUpdate(boolean z) {
        writeFramebufferUpdateRequest(0, 0, this.framebufferWidth, this.framebufferHeight, z);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeClientCutText(String str) {
        try {
            writeClientCutText(str, str.length());
        } catch (IOException e) {
            Log.e(TAG, "Could not write text to VNC server clipboard.");
            e.printStackTrace();
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setIsInNormalProtocol(boolean z) {
        this.inNormalProtocol = z;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isInNormalProtocol() {
        return this.inNormalProtocol;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String getEncoding() {
        int i = this.preferredEncoding;
        if (i == 0) {
            return "RAW";
        }
        if (i == 2) {
            return "RRE";
        }
        if (i == 16) {
            return "ZRLE";
        }
        if (i == 26) {
            return "TIGHTZSTD";
        }
        if (i == 4) {
            return "CoRRE";
        }
        if (i == 5) {
            return "HEXTILE";
        }
        if (i == 6) {
            return "ZLIB";
        }
        if (i == 7) {
            return "TIGHT";
        }
        return "";
    }

    private void setEncodings() {
        int i;
        if (this.inNormalProtocol) {
            int[] iArr = {this.preferredEncoding, 7, 16, 5, 6, 4, 2, 1, this.compressLevel - 256, this.jpegQuality + EncodingQualityLevel0, EncodingXCursor, EncodingRichCursor, EncodingPointerPos, EncodingLastRect, EncodingNewFBSize, EncodingExtendedDesktopSize, 0, 0, 0, 0};
            if (16 == this.nEncodingsSaved) {
                while (i < 16) {
                    i = iArr[i] == this.encodingsSaved[i] ? i + 1 : 0;
                }
                return;
            }
            try {
                writeSetEncodings(iArr, 16);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.encodingsSaved = iArr;
            this.nEncodingsSaved = 16;
        }
    }

    public void processProtocol() throws Exception {
        int serverMessageType;
        try {
            try {
                setEncodings();
                this.canvas.writeFullUpdateRequest(false);
                while (this.maintainConnection) {
                    if (!this.canvas.useFull) {
                        this.canvas.syncScroll();
                        serverMessageType = readServerMessageType();
                        this.canvas.doneWaiting();
                    } else {
                        serverMessageType = readServerMessageType();
                    }
                    if (serverMessageType == 0) {
                        readFramebufferUpdate();
                        boolean z = false;
                        for (int i = 0; i < this.updateNRects; i++) {
                            readFramebufferUpdateRectHdr();
                            int i2 = this.updateRectEncoding;
                            if (i2 == EncodingClientRedirect) {
                                readClientRedirect(this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == EncodingExtendedDesktopSize) {
                                Log.d(TAG, "EncodingExtendedDesktopSize, wxh: " + this.updateRectW + "x" + this.updateRectH);
                                handleExtendedDesktopSize();
                            } else if (i2 == EncodingPointerPos) {
                                this.canvas.softCursorMove(this.updateRectX, this.updateRectY);
                            } else if (i2 == 16) {
                                this.decoder.handleZRLERect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 26) {
                                this.decoder.handleTightRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH, true);
                            } else if (i2 == EncodingXCursor || i2 == EncodingRichCursor) {
                                this.decoder.handleCursorShapeUpdate(this, i2, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == EncodingLastRect) {
                                z = true;
                            } else if (i2 == EncodingNewFBSize) {
                                setFramebufferSize(this.updateRectW, this.updateRectH);
                                this.canvas.updateFBSize();
                                z = true;
                            } else if (i2 == 0) {
                                this.decoder.handleRawRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 1) {
                                this.decoder.handleCopyRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 2) {
                                this.decoder.handleRRERect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 4) {
                                this.decoder.handleCoRRERect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 5) {
                                this.decoder.handleHextileRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 6) {
                                this.decoder.handleZlibRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH);
                            } else if (i2 == 7) {
                                this.decoder.handleTightRect(this, this.updateRectX, this.updateRectY, this.updateRectW, this.updateRectH, false);
                            } else {
                                Log.e(TAG, "Unknown RFB rectangle encoding " + this.updateRectEncoding + " (0x" + Integer.toHexString(this.updateRectEncoding) + ")");
                            }
                            if (z) {
                                break;
                            }
                        }
                        if (this.decoder.isChangedColorModel()) {
                            this.decoder.setPixelFormat(this);
                            this.canvas.writeFullUpdateRequest(false);
                        } else {
                            this.canvas.writeFullUpdateRequest(true);
                        }
                    } else {
                        if (serverMessageType == 1) {
                            throw new Exception("Can't handle SetColourMapEntries message");
                        }
                        if (serverMessageType == 2) {
                            this.canvas.displayShortToastMessage("VNC Beep");
                        } else if (serverMessageType == 3) {
                            this.canvas.serverJustCutText = true;
                            this.canvas.setClipboardText(readServerCutText());
                        } else {
                            if (serverMessageType != 11) {
                                if (serverMessageType == 14) {
                                    throw new RfbUltraVncColorMapException("Only 24bpp color supported with UltraVNC");
                                }
                                throw new Exception("Unknown RFB message type " + serverMessageType);
                            }
                            String textChatMsg = readTextChatMsg();
                            if (textChatMsg != null) {
                                textChatMsg.length();
                            }
                        }
                    }
                }
                closeSocket();
                Log.v(TAG, "Closing VNC Connection");
                closeSocket();
            } catch (Exception e) {
                closeSocket();
                throw e;
            }
        } catch (Throwable th) {
            closeSocket();
            Log.v(TAG, "Closing VNC Connection");
            throw th;
        }
    }

    private void handleExtendedDesktopSize() throws Exception {
        boolean z = this.isExtendedDesktopSizeSupported;
        this.isExtendedDesktopSizeSupported = true;
        int unsignedByte = this.is.readUnsignedByte();
        readFully(new byte[3]);
        int unsignedShort = 0;
        int unsignedShort2 = 0;
        for (int i = 0; i < unsignedByte; i++) {
            if (i == 0) {
                this.screenId = this.is.readInt();
                this.is.readUnsignedShort();
                this.is.readUnsignedShort();
                unsignedShort = this.is.readUnsignedShort();
                unsignedShort2 = this.is.readUnsignedShort();
                this.screenFlags = this.is.readInt();
            } else {
                readFully(new byte[16]);
            }
        }
        Log.d(TAG, "handleExtendedDesktopSize, wxh: " + unsignedShort + "x" + unsignedShort2);
        if (this.preferredFramebufferWidth == 0 || this.preferredFramebufferHeight == 0) {
            return;
        }
        if (unsignedShort != 0 && unsignedShort2 != 0) {
            setFramebufferSize(unsignedShort, unsignedShort2);
            this.canvas.updateFBSize();
        }
        if (z) {
            return;
        }
        requestResolution(this.preferredFramebufferWidth, this.preferredFramebufferHeight);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestResolution(int i, int i2) throws Exception {
        Log.d(TAG, "requestResolution, wxh: " + i + "x" + i2);
        setPreferredFramebufferSize(i, i2);
        if (this.isExtendedDesktopSizeSupported) {
            byte b = (byte) (i >> 8);
            byte b2 = (byte) i;
            byte b3 = (byte) (i2 >> 8);
            byte b4 = (byte) i2;
            int i3 = this.screenId;
            int i4 = this.screenFlags;
            try {
                this.os.write(new byte[]{-5, 0, b, b2, b3, b4, 1, 0, (byte) (i3 >> 24), (byte) (i3 >> 16), (byte) (i3 >> 8), (byte) i3, 0, 0, 0, 0, b, b2, b3, b4, (byte) (i4 >> 24), (byte) (i4 >> 16), (byte) (i4 >> 8), (byte) i4});
            } catch (IOException unused) {
                Log.e(TAG, "Sending the ExtendedDesktopSize Frame failed");
                throw new Exception("Sending the ExtendedDesktopSize Frame failed");
            }
        }
    }
}
