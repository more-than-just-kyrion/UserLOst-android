package com.trilead.ssh2.auth;

import com.iiordanov.bVNC.Constants;
import com.trilead.ssh2.InteractiveCallback;
import com.trilead.ssh2.crypto.PEMDecoder;
import com.trilead.ssh2.crypto.keys.Ed25519PrivateKey;
import com.trilead.ssh2.crypto.keys.Ed25519PublicKey;
import com.trilead.ssh2.packets.PacketServiceAccept;
import com.trilead.ssh2.packets.PacketServiceRequest;
import com.trilead.ssh2.packets.PacketUserauthBanner;
import com.trilead.ssh2.packets.PacketUserauthFailure;
import com.trilead.ssh2.packets.PacketUserauthInfoRequest;
import com.trilead.ssh2.packets.PacketUserauthInfoResponse;
import com.trilead.ssh2.packets.PacketUserauthRequestInteractive;
import com.trilead.ssh2.packets.PacketUserauthRequestNone;
import com.trilead.ssh2.packets.PacketUserauthRequestPassword;
import com.trilead.ssh2.packets.PacketUserauthRequestPublicKey;
import com.trilead.ssh2.packets.TypesWriter;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.ECDSASHA2Verify;
import com.trilead.ssh2.signature.Ed25519Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import com.trilead.ssh2.signature.RSASHA256Verify;
import com.trilead.ssh2.signature.RSASHA512Verify;
import com.trilead.ssh2.transport.MessageHandler;
import com.trilead.ssh2.transport.TransportManager;
import java.io.IOException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Set;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationManager implements MessageHandler {
    String banner;
    TransportManager tm;
    Vector packets = new Vector();
    boolean connectionClosed = false;
    String[] remainingMethods = new String[0];
    boolean isPartialSuccess = false;
    boolean authenticated = false;
    boolean initDone = false;

    public AuthenticationManager(TransportManager transportManager) {
        this.tm = transportManager;
    }

    boolean methodPossible(String str) {
        if (this.remainingMethods == null) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.remainingMethods;
            if (i >= strArr.length) {
                return false;
            }
            if (strArr[i].compareTo(str) == 0) {
                return true;
            }
            i++;
        }
    }

    byte[] deQueue() throws IOException {
        byte[] bArr;
        synchronized (this.packets) {
            while (this.packets.size() == 0) {
                if (this.connectionClosed) {
                    throw new IOException("The connection is closed.", this.tm.getReasonClosedCause());
                }
                try {
                    this.packets.wait();
                } catch (InterruptedException unused) {
                }
            }
            bArr = (byte[]) this.packets.firstElement();
            this.packets.removeElementAt(0);
        }
        return bArr;
    }

    byte[] getNextMessage() throws IOException {
        while (true) {
            byte[] bArrDeQueue = deQueue();
            if (bArrDeQueue[0] != 53) {
                return bArrDeQueue;
            }
            this.banner = new PacketUserauthBanner(bArrDeQueue, 0, bArrDeQueue.length).getBanner();
        }
    }

    public String[] getRemainingMethods(String str) throws IOException {
        initialize(str);
        return this.remainingMethods;
    }

    public boolean getPartialSuccess() {
        return this.isPartialSuccess;
    }

    private boolean initialize(String str) throws IOException {
        if (!this.initDone) {
            this.tm.registerMessageHandler(this, 0, 255);
            this.tm.sendMessage(new PacketServiceRequest("ssh-userauth").getPayload());
            this.tm.sendMessage(new PacketUserauthRequestNone("ssh-connection", str).getPayload());
            byte[] nextMessage = getNextMessage();
            new PacketServiceAccept(nextMessage, 0, nextMessage.length);
            byte[] nextMessage2 = getNextMessage();
            this.initDone = true;
            byte b = nextMessage2[0];
            if (b == 52) {
                this.authenticated = true;
                this.tm.removeMessageHandler(this, 0, 255);
                return true;
            }
            if (b == 51) {
                PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(nextMessage2, 0, nextMessage2.length);
                this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
                this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
                return false;
            }
            throw new IOException("Unexpected SSH message (type " + ((int) nextMessage2[0]) + ")");
        }
        return this.authenticated;
    }

    public boolean authenticatePublicKey(String str, char[] cArr, String str2, SecureRandom secureRandom) throws IOException {
        return authenticatePublicKey(str, PEMDecoder.decode(cArr, str2), secureRandom);
    }

    public boolean authenticatePublicKey(String str, KeyPair keyPair, SecureRandom secureRandom) throws IOException {
        return authenticatePublicKey(str, keyPair, secureRandom, (SignatureProxy) null);
    }

    public boolean authenticatePublicKey(String str, SignatureProxy signatureProxy) throws IOException {
        return authenticatePublicKey(str, (KeyPair) null, (SecureRandom) null, signatureProxy);
    }

    public boolean authenticatePublicKey(String str, KeyPair keyPair, SecureRandom secureRandom, SignatureProxy signatureProxy) throws IOException {
        PrivateKey privateKey;
        PublicKey publicKey;
        byte[] bArrGenerateSignature;
        byte[] bArrGenerateSignature2;
        byte[] bArrGenerateSignature3;
        byte[] bArrGenerateSignature4;
        String keyFormat = RSASHA256Verify.ID_RSA_SHA_2_256;
        if (keyPair != null) {
            privateKey = keyPair.getPrivate();
            publicKey = keyPair.getPublic();
        } else {
            privateKey = null;
            publicKey = null;
        }
        if (signatureProxy != null) {
            publicKey = signatureProxy.getPublicKey();
        }
        try {
            initialize(str);
            if (!methodPossible("publickey")) {
                throw new IOException("Authentication method publickey not supported by the server at this stage.");
            }
            if (publicKey instanceof DSAPublicKey) {
                DSASHA1Verify dSASHA1Verify = DSASHA1Verify.get();
                byte[] bArrEncodePublicKey = dSASHA1Verify.encodePublicKey(publicKey);
                byte[] bArrGeneratePublicKeyUserAuthenticationRequest = generatePublicKeyUserAuthenticationRequest(str, DSASHA1Verify.ID_SSH_DSS, bArrEncodePublicKey);
                if (signatureProxy != null) {
                    bArrGenerateSignature4 = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest, "SHA-1");
                } else {
                    bArrGenerateSignature4 = dSASHA1Verify.generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest, privateKey, secureRandom);
                }
                this.tm.sendMessage(new PacketUserauthRequestPublicKey("ssh-connection", str, DSASHA1Verify.ID_SSH_DSS, bArrEncodePublicKey, bArrGenerateSignature4).getPayload());
            } else if (publicKey instanceof RSAPublicKey) {
                byte[] bArrEncodePublicKey2 = RSASHA1Verify.get().encodePublicKey(publicKey);
                Set<String> signatureAlgorithmsAccepted = this.tm.getExtensionInfo().getSignatureAlgorithmsAccepted();
                if (signatureAlgorithmsAccepted.contains(RSASHA512Verify.get().getKeyFormat())) {
                    RSASHA512Verify rSASHA512Verify = RSASHA512Verify.get();
                    keyFormat = rSASHA512Verify.getKeyFormat();
                    byte[] bArrGeneratePublicKeyUserAuthenticationRequest2 = generatePublicKeyUserAuthenticationRequest(str, keyFormat, bArrEncodePublicKey2);
                    if (signatureProxy != null) {
                        bArrGenerateSignature3 = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest2, "SHA-512");
                    } else {
                        bArrGenerateSignature3 = rSASHA512Verify.generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest2, privateKey, secureRandom);
                    }
                } else if (signatureAlgorithmsAccepted.contains(RSASHA256Verify.ID_RSA_SHA_2_256)) {
                    byte[] bArrGeneratePublicKeyUserAuthenticationRequest3 = generatePublicKeyUserAuthenticationRequest(str, RSASHA256Verify.ID_RSA_SHA_2_256, bArrEncodePublicKey2);
                    if (signatureProxy != null) {
                        bArrGenerateSignature3 = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest3, "SHA-256");
                    } else {
                        bArrGenerateSignature3 = RSASHA256Verify.get().generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest3, privateKey, secureRandom);
                    }
                } else {
                    keyFormat = RSASHA1Verify.ID_SSH_RSA;
                    byte[] bArrGeneratePublicKeyUserAuthenticationRequest4 = generatePublicKeyUserAuthenticationRequest(str, RSASHA1Verify.ID_SSH_RSA, bArrEncodePublicKey2);
                    if (signatureProxy != null) {
                        bArrGenerateSignature3 = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest4, "SHA-1");
                    } else {
                        bArrGenerateSignature3 = RSASHA1Verify.get().generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest4, privateKey, secureRandom);
                    }
                }
                this.tm.sendMessage(new PacketUserauthRequestPublicKey("ssh-connection", str, keyFormat, bArrEncodePublicKey2, bArrGenerateSignature3).getPayload());
            } else if (publicKey instanceof ECPublicKey) {
                ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
                ECDSASHA2Verify verifierForKey = ECDSASHA2Verify.getVerifierForKey(eCPublicKey);
                String keyFormat2 = verifierForKey.getKeyFormat();
                byte[] bArrEncodePublicKey3 = verifierForKey.encodePublicKey(eCPublicKey);
                byte[] bArrGeneratePublicKeyUserAuthenticationRequest5 = generatePublicKeyUserAuthenticationRequest(str, keyFormat2, bArrEncodePublicKey3);
                if (signatureProxy != null) {
                    bArrGenerateSignature2 = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest5, ECDSASHA2Verify.getDigestAlgorithmForParams(eCPublicKey));
                } else {
                    bArrGenerateSignature2 = verifierForKey.generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest5, privateKey, secureRandom);
                }
                this.tm.sendMessage(new PacketUserauthRequestPublicKey("ssh-connection", str, keyFormat2, bArrEncodePublicKey3, bArrGenerateSignature2).getPayload());
            } else if (publicKey instanceof Ed25519PublicKey) {
                byte[] bArrEncodePublicKey4 = Ed25519Verify.get().encodePublicKey(publicKey);
                byte[] bArrGeneratePublicKeyUserAuthenticationRequest6 = generatePublicKeyUserAuthenticationRequest(str, Ed25519Verify.ED25519_ID, bArrEncodePublicKey4);
                if (signatureProxy != null) {
                    bArrGenerateSignature = signatureProxy.sign(bArrGeneratePublicKeyUserAuthenticationRequest6, "SHA-512");
                } else {
                    bArrGenerateSignature = Ed25519Verify.get().generateSignature(bArrGeneratePublicKeyUserAuthenticationRequest6, (Ed25519PrivateKey) privateKey, secureRandom);
                }
                this.tm.sendMessage(new PacketUserauthRequestPublicKey("ssh-connection", str, Ed25519Verify.ED25519_ID, bArrEncodePublicKey4, bArrGenerateSignature).getPayload());
            } else {
                throw new IOException("Unknown public key type.");
            }
            return isAuthenticationSuccessful(getNextMessage());
        } catch (IOException e) {
            e.printStackTrace();
            this.tm.close(e, false);
            throw new IOException("Publickey authentication failed.", e);
        }
    }

    public boolean authenticateNone(String str) throws IOException {
        try {
            initialize(str);
            return this.authenticated;
        } catch (IOException e) {
            this.tm.close(e, false);
            throw new IOException("None authentication failed.", e);
        }
    }

    public boolean authenticatePassword(String str, String str2) throws IOException {
        try {
            initialize(str);
            if (!methodPossible(Constants.testpassword)) {
                throw new IOException("Authentication method password not supported by the server at this stage.");
            }
            this.tm.sendMessage(new PacketUserauthRequestPassword("ssh-connection", str, str2).getPayload());
            return isAuthenticationSuccessful(getNextMessage());
        } catch (IOException e) {
            this.tm.close(e, false);
            throw new IOException("Password authentication failed.", e);
        }
    }

    public boolean authenticateInteractive(String str, String[] strArr, InteractiveCallback interactiveCallback) throws IOException {
        try {
            initialize(str);
            if (!methodPossible("keyboard-interactive")) {
                throw new IOException("Authentication method keyboard-interactive not supported by the server at this stage.");
            }
            if (strArr == null) {
                strArr = new String[0];
            }
            this.tm.sendMessage(new PacketUserauthRequestInteractive("ssh-connection", str, strArr).getPayload());
            while (true) {
                byte[] nextMessage = getNextMessage();
                if (nextMessage[0] == 60) {
                    PacketUserauthInfoRequest packetUserauthInfoRequest = new PacketUserauthInfoRequest(nextMessage, 0, nextMessage.length);
                    try {
                        String[] strArrReplyToChallenge = interactiveCallback.replyToChallenge(packetUserauthInfoRequest.getName(), packetUserauthInfoRequest.getInstruction(), packetUserauthInfoRequest.getNumPrompts(), packetUserauthInfoRequest.getPrompt(), packetUserauthInfoRequest.getEcho());
                        if (strArrReplyToChallenge == null) {
                            throw new IOException("Your callback may not return NULL!");
                        }
                        this.tm.sendMessage(new PacketUserauthInfoResponse(strArrReplyToChallenge).getPayload());
                    } catch (Exception e) {
                        throw new IOException("Exception in callback.", e);
                    }
                } else {
                    return isAuthenticationSuccessful(nextMessage);
                }
            }
        } catch (IOException e2) {
            this.tm.close(e2, false);
            throw new IOException("Keyboard-interactive authentication failed.", e2);
        }
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleMessage(byte[] bArr, int i) throws IOException {
        synchronized (this.packets) {
            try {
                if (bArr == null) {
                    this.connectionClosed = true;
                } else {
                    byte[] bArr2 = new byte[i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    this.packets.addElement(bArr2);
                }
                this.packets.notifyAll();
                if (this.packets.size() > 5) {
                    this.connectionClosed = true;
                    throw new IOException("Error, peer is flooding us with authentication packets.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean isAuthenticationSuccessful(byte[] bArr) throws IOException {
        byte b = bArr[0];
        if (b == 52) {
            this.authenticated = true;
            this.tm.removeMessageHandler(this, 0, 255);
            return true;
        }
        if (b == 51) {
            PacketUserauthFailure packetUserauthFailure = new PacketUserauthFailure(bArr, 0, bArr.length);
            this.remainingMethods = packetUserauthFailure.getAuthThatCanContinue();
            this.isPartialSuccess = packetUserauthFailure.isPartialSuccess();
            return false;
        }
        throw new IOException("Unexpected SSH message (type " + ((int) bArr[0]) + ")");
    }

    private byte[] generatePublicKeyUserAuthenticationRequest(String str, String str2, byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        byte[] sessionIdentifier = this.tm.getSessionIdentifier();
        typesWriter.writeString(sessionIdentifier, 0, sessionIdentifier.length);
        typesWriter.writeByte(50);
        typesWriter.writeString(str);
        typesWriter.writeString("ssh-connection");
        typesWriter.writeString("publickey");
        typesWriter.writeBoolean(true);
        typesWriter.writeString(str2);
        typesWriter.writeString(bArr, 0, bArr.length);
        return typesWriter.getBytes();
    }
}
