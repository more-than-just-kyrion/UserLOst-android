package com.trilead.ssh2.transport;

import com.trilead.ssh2.ConnectionInfo;
import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.ExtendedServerHostKeyVerifier;
import com.trilead.ssh2.ServerHostKeyVerifier;
import com.trilead.ssh2.compression.CompressionFactory;
import com.trilead.ssh2.compression.ICompressor;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.crypto.KeyMaterial;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.dh.Curve25519Exchange;
import com.trilead.ssh2.crypto.dh.DhGroupExchange;
import com.trilead.ssh2.crypto.dh.GenericDhExchange;
import com.trilead.ssh2.crypto.digest.HMAC;
import com.trilead.ssh2.crypto.digest.MACs;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketKexDHInit;
import com.trilead.ssh2.packets.PacketKexDHReply;
import com.trilead.ssh2.packets.PacketKexDhGexGroup;
import com.trilead.ssh2.packets.PacketKexDhGexInit;
import com.trilead.ssh2.packets.PacketKexDhGexReply;
import com.trilead.ssh2.packets.PacketKexDhGexRequest;
import com.trilead.ssh2.packets.PacketKexDhGexRequestOld;
import com.trilead.ssh2.packets.PacketKexInit;
import com.trilead.ssh2.packets.PacketNewKeys;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.ECDSASHA2Verify;
import com.trilead.ssh2.signature.Ed25519Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import com.trilead.ssh2.signature.RSASHA256Verify;
import com.trilead.ssh2.signature.RSASHA512Verify;
import com.trilead.ssh2.signature.SSHSignature;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class KexManager {
    private static final String EXT_INFO_C = "ext-info-c";
    private static final Set<String> HOSTKEY_ALGS;
    private static final Set<String> KEX_ALGS;
    private static final String KEX_STRICT_C_OPENSSH = "kex-strict-c-v00@openssh.com";
    private static final String KEX_STRICT_S_OPENSSH = "kex-strict-s-v00@openssh.com";
    private static final Logger log = Logger.getLogger(KexManager.class);
    private static final boolean supportsEc;
    private ClientServerHello csh;
    private final String hostname;
    private KeyMaterial km;
    private KexState kxs;
    private CryptoWishList nextKEXcryptoWishList;
    private final int port;
    private final SecureRandom rnd;
    byte[] sessionId;
    private final TransportManager tm;
    private ServerHostKeyVerifier verifier;
    private int kexCount = 0;
    private final Object accessLock = new Object();
    private ConnectionInfo lastConnInfo = null;
    private boolean connectionClosed = false;
    private boolean ignore_next_kex_packet = false;
    private DHGexParameters nextKEXdhgexParameters = new DHGexParameters();

    static {
        KeyFactory keyFactory;
        try {
            keyFactory = KeyFactory.getInstance("EC");
        } catch (NoSuchAlgorithmException unused) {
            log.log(10, "Disabling EC support due to lack of KeyFactory");
            keyFactory = null;
        }
        boolean z = keyFactory != null;
        supportsEc = z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        HOSTKEY_ALGS = linkedHashSet;
        linkedHashSet.add(Ed25519Verify.ED25519_ID);
        if (z) {
            linkedHashSet.add("ecdsa-sha2-nistp256");
            linkedHashSet.add("ecdsa-sha2-nistp384");
            linkedHashSet.add("ecdsa-sha2-nistp521");
        }
        linkedHashSet.add(RSASHA512Verify.ID_RSA_SHA_2_512);
        linkedHashSet.add(RSASHA256Verify.ID_RSA_SHA_2_256);
        linkedHashSet.add(RSASHA1Verify.ID_SSH_RSA);
        linkedHashSet.add(DSASHA1Verify.ID_SSH_DSS);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        KEX_ALGS = linkedHashSet2;
        linkedHashSet2.add(Curve25519Exchange.NAME);
        linkedHashSet2.add(Curve25519Exchange.ALT_NAME);
        if (z) {
            linkedHashSet2.add("ecdh-sha2-nistp256");
            linkedHashSet2.add("ecdh-sha2-nistp384");
            linkedHashSet2.add("ecdh-sha2-nistp521");
        }
        linkedHashSet2.add("diffie-hellman-group18-sha512");
        linkedHashSet2.add("diffie-hellman-group16-sha512");
        linkedHashSet2.add("diffie-hellman-group-exchange-sha256");
        linkedHashSet2.add("diffie-hellman-group14-sha256");
        linkedHashSet2.add("diffie-hellman-group-exchange-sha1");
        linkedHashSet2.add("diffie-hellman-group14-sha1");
        linkedHashSet2.add("diffie-hellman-group1-sha1");
    }

    public KexManager(TransportManager transportManager, ClientServerHello clientServerHello, CryptoWishList cryptoWishList, String str, int i, ServerHostKeyVerifier serverHostKeyVerifier, SecureRandom secureRandom) {
        this.tm = transportManager;
        this.csh = clientServerHello;
        this.nextKEXcryptoWishList = cryptoWishList;
        this.hostname = str;
        this.port = i;
        this.verifier = serverHostKeyVerifier;
        this.rnd = secureRandom;
    }

    public ConnectionInfo getOrWaitForConnectionInfo(int i) throws IOException {
        ConnectionInfo connectionInfo;
        synchronized (this.accessLock) {
            while (true) {
                ConnectionInfo connectionInfo2 = this.lastConnInfo;
                if (connectionInfo2 != null && connectionInfo2.keyExchangeCounter >= i) {
                    connectionInfo = this.lastConnInfo;
                } else {
                    if (this.connectionClosed) {
                        throw new IOException("Key exchange was not finished, connection is closed.", this.tm.getReasonClosedCause());
                    }
                    try {
                        this.accessLock.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        return connectionInfo;
    }

    private String getFirstMatch(String[] strArr, String[] strArr2) throws NegotiateException {
        if (strArr == null || strArr2 == null) {
            throw new IllegalArgumentException();
        }
        if (strArr.length == 0) {
            return null;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (str.equals(str2)) {
                    return str;
                }
            }
        }
        throw new NegotiateException();
    }

    private boolean compareFirstOfNameList(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null) {
            throw new IllegalArgumentException();
        }
        if (strArr.length == 0 && strArr2.length == 0) {
            return true;
        }
        if (strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        return strArr[0].equals(strArr2[0]);
    }

    private boolean containsAlgo(String[] strArr, String str) {
        if (strArr != null && str != null) {
            for (String str2 : strArr) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isGuessOK(KexParameters kexParameters, KexParameters kexParameters2) {
        if (kexParameters == null || kexParameters2 == null) {
            throw new IllegalArgumentException();
        }
        if (compareFirstOfNameList(kexParameters.kex_algorithms, kexParameters2.kex_algorithms)) {
            return compareFirstOfNameList(kexParameters.server_host_key_algorithms, kexParameters2.server_host_key_algorithms);
        }
        return false;
    }

    private NegotiatedParameters mergeKexParameters(KexParameters kexParameters, KexParameters kexParameters2) {
        NegotiatedParameters negotiatedParameters = new NegotiatedParameters();
        try {
            negotiatedParameters.kex_algo = getFirstMatch(kexParameters.kex_algorithms, kexParameters2.kex_algorithms);
            negotiatedParameters.isStrictKex = containsAlgo(kexParameters2.kex_algorithms, KEX_STRICT_S_OPENSSH);
            Logger logger = log;
            logger.log(20, "kex_algo=" + negotiatedParameters.kex_algo);
            negotiatedParameters.server_host_key_algo = getFirstMatch(kexParameters.server_host_key_algorithms, kexParameters2.server_host_key_algorithms);
            logger.log(20, "server_host_key_algo=" + negotiatedParameters.server_host_key_algo);
            negotiatedParameters.enc_algo_client_to_server = getFirstMatch(kexParameters.encryption_algorithms_client_to_server, kexParameters2.encryption_algorithms_client_to_server);
            negotiatedParameters.enc_algo_server_to_client = getFirstMatch(kexParameters.encryption_algorithms_server_to_client, kexParameters2.encryption_algorithms_server_to_client);
            logger.log(20, "enc_algo_client_to_server=" + negotiatedParameters.enc_algo_client_to_server);
            logger.log(20, "enc_algo_server_to_client=" + negotiatedParameters.enc_algo_server_to_client);
            negotiatedParameters.mac_algo_client_to_server = getFirstMatch(kexParameters.mac_algorithms_client_to_server, kexParameters2.mac_algorithms_client_to_server);
            negotiatedParameters.mac_algo_server_to_client = getFirstMatch(kexParameters.mac_algorithms_server_to_client, kexParameters2.mac_algorithms_server_to_client);
            logger.log(20, "mac_algo_client_to_server=" + negotiatedParameters.mac_algo_client_to_server);
            logger.log(20, "mac_algo_server_to_client=" + negotiatedParameters.mac_algo_server_to_client);
            negotiatedParameters.comp_algo_client_to_server = getFirstMatch(kexParameters.compression_algorithms_client_to_server, kexParameters2.compression_algorithms_client_to_server);
            negotiatedParameters.comp_algo_server_to_client = getFirstMatch(kexParameters.compression_algorithms_server_to_client, kexParameters2.compression_algorithms_server_to_client);
            logger.log(20, "comp_algo_client_to_server=" + negotiatedParameters.comp_algo_client_to_server);
            logger.log(20, "comp_algo_server_to_client=" + negotiatedParameters.comp_algo_server_to_client);
            try {
                negotiatedParameters.lang_client_to_server = getFirstMatch(kexParameters.languages_client_to_server, kexParameters2.languages_client_to_server);
            } catch (NegotiateException unused) {
                negotiatedParameters.lang_client_to_server = null;
            }
            try {
                negotiatedParameters.lang_server_to_client = getFirstMatch(kexParameters.languages_server_to_client, kexParameters2.languages_server_to_client);
            } catch (NegotiateException unused2) {
                negotiatedParameters.lang_server_to_client = null;
            }
            if (isGuessOK(kexParameters, kexParameters2)) {
                negotiatedParameters.guessOK = true;
            }
            return negotiatedParameters;
        } catch (NegotiateException unused3) {
            return null;
        }
    }

    public synchronized void initiateKEX(CryptoWishList cryptoWishList, DHGexParameters dHGexParameters) throws IOException {
        CryptoWishList cryptoWishListClone = cryptoWishList.m297clone();
        this.nextKEXcryptoWishList = cryptoWishListClone;
        filterHostKeyTypes(cryptoWishListClone);
        addExtraKexAlgorithms(this.nextKEXcryptoWishList);
        this.nextKEXdhgexParameters = dHGexParameters;
        if (this.kxs == null) {
            KexState kexState = new KexState();
            this.kxs = kexState;
            kexState.dhgexParameters = this.nextKEXdhgexParameters;
            PacketKexInit packetKexInit = new PacketKexInit(this.nextKEXcryptoWishList);
            this.kxs.localKEX = packetKexInit;
            this.tm.sendKexMessage(packetKexInit.getPayload());
        }
    }

    private static void addExtraKexAlgorithms(CryptoWishList cryptoWishList) {
        String[] strArr = cryptoWishList.kexAlgorithms;
        ArrayList arrayList = new ArrayList(strArr.length + 2);
        for (String str : strArr) {
            if (!str.equals(EXT_INFO_C) && !str.equals(KEX_STRICT_C_OPENSSH)) {
                arrayList.add(str);
            }
        }
        arrayList.add(EXT_INFO_C);
        arrayList.add(KEX_STRICT_C_OPENSSH);
        cryptoWishList.kexAlgorithms = (String[]) arrayList.toArray(new String[0]);
    }

    private void filterHostKeyTypes(CryptoWishList cryptoWishList) {
        List<String> knownKeyAlgorithmsForHost;
        ServerHostKeyVerifier serverHostKeyVerifier = this.verifier;
        if (!(serverHostKeyVerifier instanceof ExtendedServerHostKeyVerifier) || (knownKeyAlgorithmsForHost = ((ExtendedServerHostKeyVerifier) serverHostKeyVerifier).getKnownKeyAlgorithmsForHost(this.hostname, this.port)) == null || knownKeyAlgorithmsForHost.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(knownKeyAlgorithmsForHost.size());
        for (String str : cryptoWishList.serverHostKeyAlgorithms) {
            for (String str2 : knownKeyAlgorithmsForHost) {
                if (str.equals(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() > 0) {
            cryptoWishList.serverHostKeyAlgorithms = (String[]) arrayList.toArray(new String[0]);
        }
    }

    private void establishKeyMaterial() throws IOException {
        try {
            int keyLen = MACs.getKeyLen(this.kxs.np.mac_algo_client_to_server);
            this.km = KeyMaterial.create(this.kxs.hashAlgo, this.kxs.H, this.kxs.K, this.sessionId, BlockCipherFactory.getKeySize(this.kxs.np.enc_algo_client_to_server), BlockCipherFactory.getBlockSize(this.kxs.np.enc_algo_client_to_server), keyLen, BlockCipherFactory.getKeySize(this.kxs.np.enc_algo_server_to_client), BlockCipherFactory.getBlockSize(this.kxs.np.enc_algo_server_to_client), MACs.getKeyLen(this.kxs.np.mac_algo_server_to_client));
        } catch (IllegalArgumentException e) {
            throw new IOException("Could not establish key material: " + e.getMessage());
        }
    }

    private void finishKex() throws IOException {
        if (this.sessionId == null) {
            this.sessionId = this.kxs.H;
        }
        establishKeyMaterial();
        this.tm.sendKexMessage(new PacketNewKeys().getPayload());
        try {
            BlockCipher blockCipherCreateCipher = BlockCipherFactory.createCipher(this.kxs.np.enc_algo_client_to_server, true, this.km.enc_key_client_to_server, this.km.initial_iv_client_to_server);
            HMAC hmac = new HMAC(this.kxs.np.mac_algo_client_to_server, this.km.integrity_key_client_to_server);
            ICompressor iCompressorCreateCompressor = CompressionFactory.createCompressor(this.kxs.np.comp_algo_client_to_server);
            this.tm.changeSendCipher(blockCipherCreateCipher, hmac);
            this.tm.changeSendCompression(iCompressorCreateCompressor);
            this.tm.kexFinished();
        } catch (IllegalArgumentException unused) {
            throw new IOException("Fatal error during MAC startup!");
        }
    }

    public static String[] getDefaultServerHostkeyAlgorithmList() {
        return (String[]) HOSTKEY_ALGS.toArray(new String[0]);
    }

    public static void checkServerHostkeyAlgorithmsList(String[] strArr) {
        for (String str : strArr) {
            if (!HOSTKEY_ALGS.contains(str)) {
                throw new IllegalArgumentException("Unknown server host key algorithm '" + str + "'");
            }
        }
    }

    public static String[] getDefaultKexAlgorithmList() {
        return (String[]) KEX_ALGS.toArray(new String[0]);
    }

    public static void checkKexAlgorithmList(String[] strArr) {
        for (String str : strArr) {
            if (!KEX_ALGS.contains(str)) {
                throw new IllegalArgumentException("Unknown kex algorithm '" + str + "'");
            }
        }
    }

    private boolean verifySignature(byte[] bArr, byte[] bArr2) throws IOException {
        SSHSignature sSHSignature;
        if (this.kxs.np.server_host_key_algo.equals(Ed25519Verify.get().getKeyFormat())) {
            sSHSignature = Ed25519Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().getKeyFormat())) {
            sSHSignature = ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().getKeyFormat())) {
            sSHSignature = ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().getKeyFormat())) {
            sSHSignature = ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(RSASHA512Verify.get().getKeyFormat())) {
            sSHSignature = RSASHA512Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(RSASHA256Verify.get().getKeyFormat())) {
            sSHSignature = RSASHA256Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(RSASHA1Verify.get().getKeyFormat())) {
            sSHSignature = RSASHA1Verify.get();
        } else if (this.kxs.np.server_host_key_algo.equals(DSASHA1Verify.get().getKeyFormat())) {
            sSHSignature = DSASHA1Verify.get();
        } else {
            throw new IOException("Unknown server host key algorithm '" + this.kxs.np.server_host_key_algo + "'");
        }
        PublicKey publicKeyDecodePublicKey = sSHSignature.decodePublicKey(bArr2);
        log.log(50, "Verifying " + sSHSignature.getKeyFormat() + " signature");
        return sSHSignature.verifySignature(this.kxs.H, bArr, publicKeyDecodePublicKey);
    }

    /* JADX WARN: Code duplicated, block: B:157:0x0402 A[Catch: all -> 0x0543, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x000a, B:7:0x000c, B:14:0x0019, B:15:0x001a, B:17:0x0021, B:20:0x0026, B:21:0x0040, B:22:0x0041, B:24:0x0045, B:27:0x0049, B:30:0x004f, B:33:0x0054, B:34:0x005b, B:35:0x005c, B:37:0x0060, B:38:0x007f, B:40:0x00a4, B:42:0x00ae, B:44:0x00b6, B:45:0x00b8, B:47:0x00c6, B:50:0x00d6, B:52:0x00e4, B:54:0x00f2, B:56:0x0100, B:58:0x010e, B:60:0x011c, B:62:0x012a, B:64:0x0138, B:66:0x0146, B:68:0x0154, B:71:0x0163, B:72:0x016a, B:73:0x016b, B:76:0x01aa, B:78:0x01b4, B:81:0x01c1, B:83:0x01e6, B:85:0x01f4, B:87:0x0201, B:86:0x01fb, B:82:0x01d4, B:90:0x0207, B:91:0x020e, B:94:0x0213, B:96:0x0217, B:97:0x0240, B:98:0x02a0, B:102:0x02aa, B:107:0x02b0, B:111:0x02c9, B:112:0x02d0, B:109:0x02b2, B:110:0x02c8, B:114:0x02d3, B:116:0x02d7, B:118:0x02e6, B:121:0x02f6, B:123:0x0304, B:125:0x0312, B:127:0x0320, B:129:0x032e, B:131:0x033c, B:133:0x034a, B:135:0x0358, B:137:0x0366, B:139:0x0374, B:165:0x0426, B:166:0x0444, B:141:0x0382, B:143:0x0388, B:145:0x0399, B:148:0x03ae, B:149:0x03b5, B:153:0x03bf, B:154:0x03ca, B:155:0x03f4, B:157:0x0402, B:160:0x0415, B:161:0x041c, B:163:0x041e, B:164:0x0425, B:151:0x03b7, B:152:0x03be, B:167:0x0445, B:169:0x044c, B:172:0x0487, B:174:0x048d, B:176:0x049e, B:179:0x04b3, B:180:0x04ba, B:184:0x04c4, B:185:0x04cf, B:186:0x0501, B:188:0x050f, B:191:0x0522, B:192:0x0529, B:194:0x052b, B:195:0x0532, B:182:0x04bc, B:183:0x04c3, B:196:0x0533, B:197:0x053a, B:198:0x053b, B:199:0x0542, B:8:0x000d, B:9:0x0014, B:99:0x02a1, B:100:0x02a8), top: B:203:0x0008, inners: #1, #2, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x0415 A[Catch: all -> 0x0543, TRY_ENTER, TryCatch #0 {, blocks: (B:6:0x000a, B:7:0x000c, B:14:0x0019, B:15:0x001a, B:17:0x0021, B:20:0x0026, B:21:0x0040, B:22:0x0041, B:24:0x0045, B:27:0x0049, B:30:0x004f, B:33:0x0054, B:34:0x005b, B:35:0x005c, B:37:0x0060, B:38:0x007f, B:40:0x00a4, B:42:0x00ae, B:44:0x00b6, B:45:0x00b8, B:47:0x00c6, B:50:0x00d6, B:52:0x00e4, B:54:0x00f2, B:56:0x0100, B:58:0x010e, B:60:0x011c, B:62:0x012a, B:64:0x0138, B:66:0x0146, B:68:0x0154, B:71:0x0163, B:72:0x016a, B:73:0x016b, B:76:0x01aa, B:78:0x01b4, B:81:0x01c1, B:83:0x01e6, B:85:0x01f4, B:87:0x0201, B:86:0x01fb, B:82:0x01d4, B:90:0x0207, B:91:0x020e, B:94:0x0213, B:96:0x0217, B:97:0x0240, B:98:0x02a0, B:102:0x02aa, B:107:0x02b0, B:111:0x02c9, B:112:0x02d0, B:109:0x02b2, B:110:0x02c8, B:114:0x02d3, B:116:0x02d7, B:118:0x02e6, B:121:0x02f6, B:123:0x0304, B:125:0x0312, B:127:0x0320, B:129:0x032e, B:131:0x033c, B:133:0x034a, B:135:0x0358, B:137:0x0366, B:139:0x0374, B:165:0x0426, B:166:0x0444, B:141:0x0382, B:143:0x0388, B:145:0x0399, B:148:0x03ae, B:149:0x03b5, B:153:0x03bf, B:154:0x03ca, B:155:0x03f4, B:157:0x0402, B:160:0x0415, B:161:0x041c, B:163:0x041e, B:164:0x0425, B:151:0x03b7, B:152:0x03be, B:167:0x0445, B:169:0x044c, B:172:0x0487, B:174:0x048d, B:176:0x049e, B:179:0x04b3, B:180:0x04ba, B:184:0x04c4, B:185:0x04cf, B:186:0x0501, B:188:0x050f, B:191:0x0522, B:192:0x0529, B:194:0x052b, B:195:0x0532, B:182:0x04bc, B:183:0x04c3, B:196:0x0533, B:197:0x053a, B:198:0x053b, B:199:0x0542, B:8:0x000d, B:9:0x0014, B:99:0x02a1, B:100:0x02a8), top: B:203:0x0008, inners: #1, #2, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x050f A[Catch: all -> 0x0543, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x000a, B:7:0x000c, B:14:0x0019, B:15:0x001a, B:17:0x0021, B:20:0x0026, B:21:0x0040, B:22:0x0041, B:24:0x0045, B:27:0x0049, B:30:0x004f, B:33:0x0054, B:34:0x005b, B:35:0x005c, B:37:0x0060, B:38:0x007f, B:40:0x00a4, B:42:0x00ae, B:44:0x00b6, B:45:0x00b8, B:47:0x00c6, B:50:0x00d6, B:52:0x00e4, B:54:0x00f2, B:56:0x0100, B:58:0x010e, B:60:0x011c, B:62:0x012a, B:64:0x0138, B:66:0x0146, B:68:0x0154, B:71:0x0163, B:72:0x016a, B:73:0x016b, B:76:0x01aa, B:78:0x01b4, B:81:0x01c1, B:83:0x01e6, B:85:0x01f4, B:87:0x0201, B:86:0x01fb, B:82:0x01d4, B:90:0x0207, B:91:0x020e, B:94:0x0213, B:96:0x0217, B:97:0x0240, B:98:0x02a0, B:102:0x02aa, B:107:0x02b0, B:111:0x02c9, B:112:0x02d0, B:109:0x02b2, B:110:0x02c8, B:114:0x02d3, B:116:0x02d7, B:118:0x02e6, B:121:0x02f6, B:123:0x0304, B:125:0x0312, B:127:0x0320, B:129:0x032e, B:131:0x033c, B:133:0x034a, B:135:0x0358, B:137:0x0366, B:139:0x0374, B:165:0x0426, B:166:0x0444, B:141:0x0382, B:143:0x0388, B:145:0x0399, B:148:0x03ae, B:149:0x03b5, B:153:0x03bf, B:154:0x03ca, B:155:0x03f4, B:157:0x0402, B:160:0x0415, B:161:0x041c, B:163:0x041e, B:164:0x0425, B:151:0x03b7, B:152:0x03be, B:167:0x0445, B:169:0x044c, B:172:0x0487, B:174:0x048d, B:176:0x049e, B:179:0x04b3, B:180:0x04ba, B:184:0x04c4, B:185:0x04cf, B:186:0x0501, B:188:0x050f, B:191:0x0522, B:192:0x0529, B:194:0x052b, B:195:0x0532, B:182:0x04bc, B:183:0x04c3, B:196:0x0533, B:197:0x053a, B:198:0x053b, B:199:0x0542, B:8:0x000d, B:9:0x0014, B:99:0x02a1, B:100:0x02a8), top: B:203:0x0008, inners: #1, #2, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0522 A[Catch: all -> 0x0543, TRY_ENTER, TryCatch #0 {, blocks: (B:6:0x000a, B:7:0x000c, B:14:0x0019, B:15:0x001a, B:17:0x0021, B:20:0x0026, B:21:0x0040, B:22:0x0041, B:24:0x0045, B:27:0x0049, B:30:0x004f, B:33:0x0054, B:34:0x005b, B:35:0x005c, B:37:0x0060, B:38:0x007f, B:40:0x00a4, B:42:0x00ae, B:44:0x00b6, B:45:0x00b8, B:47:0x00c6, B:50:0x00d6, B:52:0x00e4, B:54:0x00f2, B:56:0x0100, B:58:0x010e, B:60:0x011c, B:62:0x012a, B:64:0x0138, B:66:0x0146, B:68:0x0154, B:71:0x0163, B:72:0x016a, B:73:0x016b, B:76:0x01aa, B:78:0x01b4, B:81:0x01c1, B:83:0x01e6, B:85:0x01f4, B:87:0x0201, B:86:0x01fb, B:82:0x01d4, B:90:0x0207, B:91:0x020e, B:94:0x0213, B:96:0x0217, B:97:0x0240, B:98:0x02a0, B:102:0x02aa, B:107:0x02b0, B:111:0x02c9, B:112:0x02d0, B:109:0x02b2, B:110:0x02c8, B:114:0x02d3, B:116:0x02d7, B:118:0x02e6, B:121:0x02f6, B:123:0x0304, B:125:0x0312, B:127:0x0320, B:129:0x032e, B:131:0x033c, B:133:0x034a, B:135:0x0358, B:137:0x0366, B:139:0x0374, B:165:0x0426, B:166:0x0444, B:141:0x0382, B:143:0x0388, B:145:0x0399, B:148:0x03ae, B:149:0x03b5, B:153:0x03bf, B:154:0x03ca, B:155:0x03f4, B:157:0x0402, B:160:0x0415, B:161:0x041c, B:163:0x041e, B:164:0x0425, B:151:0x03b7, B:152:0x03be, B:167:0x0445, B:169:0x044c, B:172:0x0487, B:174:0x048d, B:176:0x049e, B:179:0x04b3, B:180:0x04ba, B:184:0x04c4, B:185:0x04cf, B:186:0x0501, B:188:0x050f, B:191:0x0522, B:192:0x0529, B:194:0x052b, B:195:0x0532, B:182:0x04bc, B:183:0x04c3, B:196:0x0533, B:197:0x053a, B:198:0x053b, B:199:0x0542, B:8:0x000d, B:9:0x0014, B:99:0x02a1, B:100:0x02a8), top: B:203:0x0008, inners: #1, #2, #3, #4, #5, #6, #7 }] */
    public synchronized void handleMessage(byte[] bArr, int i) throws IOException {
        if (bArr == null) {
            synchronized (this.accessLock) {
                this.connectionClosed = true;
                this.accessLock.notifyAll();
            }
            return;
        }
        KexState kexState = this.kxs;
        if (kexState == null && bArr[0] != 20) {
            throw new IOException("Unexpected KEX message (type " + ((int) bArr[0]) + ")");
        }
        if (this.ignore_next_kex_packet) {
            this.ignore_next_kex_packet = false;
            return;
        }
        byte b = bArr[0];
        if (b == 20) {
            if (kexState != null && kexState.state != 0) {
                throw new IOException("Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!");
            }
            if (this.kxs == null) {
                KexState kexState2 = new KexState();
                this.kxs = kexState2;
                kexState2.dhgexParameters = this.nextKEXdhgexParameters;
                PacketKexInit packetKexInit = new PacketKexInit(this.nextKEXcryptoWishList);
                this.kxs.localKEX = packetKexInit;
                this.tm.sendKexMessage(packetKexInit.getPayload());
            }
            this.kxs.remoteKEX = new PacketKexInit(bArr, 0, i);
            KexState kexState3 = this.kxs;
            kexState3.np = mergeKexParameters(kexState3.localKEX.getKexParameters(), this.kxs.remoteKEX.getKexParameters());
            if (this.kxs.np == null) {
                throw new IOException("Cannot negotiate, proposals do not match.");
            }
            if (this.kxs.remoteKEX.isFirst_kex_packet_follows() && !this.kxs.np.guessOK) {
                this.ignore_next_kex_packet = true;
            }
            if (!this.kxs.np.kex_algo.equals("diffie-hellman-group-exchange-sha1") && !this.kxs.np.kex_algo.equals("diffie-hellman-group-exchange-sha256")) {
                if (!this.kxs.np.kex_algo.equals(Curve25519Exchange.NAME) && !this.kxs.np.kex_algo.equals(Curve25519Exchange.ALT_NAME) && !this.kxs.np.kex_algo.equals("ecdh-sha2-nistp521") && !this.kxs.np.kex_algo.equals("ecdh-sha2-nistp384") && !this.kxs.np.kex_algo.equals("ecdh-sha2-nistp256") && !this.kxs.np.kex_algo.equals("diffie-hellman-group18-sha512") && !this.kxs.np.kex_algo.equals("diffie-hellman-group16-sha512") && !this.kxs.np.kex_algo.equals("diffie-hellman-group14-sha256") && !this.kxs.np.kex_algo.equals("diffie-hellman-group14-sha1") && !this.kxs.np.kex_algo.equals("diffie-hellman-group1-sha1")) {
                    throw new IllegalStateException("Unknown KEX method!");
                }
                KexState kexState4 = this.kxs;
                kexState4.dhx = GenericDhExchange.getInstance(kexState4.np.kex_algo);
                this.kxs.dhx.init(this.kxs.np.kex_algo);
                KexState kexState5 = this.kxs;
                kexState5.hashAlgo = kexState5.dhx.getHashAlgo();
                this.tm.sendKexMessage(new PacketKexDHInit(this.kxs.dhx.getE()).getPayload());
                this.kxs.state = 1;
                return;
            }
            if (this.kxs.dhgexParameters.getMin_group_len() == 0 || this.csh.server_versioncomment.matches("OpenSSH_2\\.([0-4]\\.|5\\.[0-2]).*")) {
                this.tm.sendKexMessage(new PacketKexDhGexRequestOld(this.kxs.dhgexParameters).getPayload());
            } else {
                this.tm.sendKexMessage(new PacketKexDhGexRequest(this.kxs.dhgexParameters).getPayload());
            }
            if (this.kxs.np.kex_algo.endsWith("sha1")) {
                this.kxs.hashAlgo = "SHA1";
            } else {
                this.kxs.hashAlgo = "SHA-256";
            }
            this.kxs.state = 1;
            return;
        }
        if (b == 21) {
            if (this.km == null) {
                throw new IOException("Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!");
            }
            try {
                BlockCipher blockCipherCreateCipher = BlockCipherFactory.createCipher(kexState.np.enc_algo_server_to_client, false, this.km.enc_key_server_to_client, this.km.initial_iv_server_to_client);
                HMAC hmac = new HMAC(this.kxs.np.mac_algo_server_to_client, this.km.integrity_key_server_to_client);
                ICompressor iCompressorCreateCompressor = CompressionFactory.createCompressor(this.kxs.np.comp_algo_server_to_client);
                this.tm.changeRecvCipher(blockCipherCreateCipher, hmac);
                this.tm.changeRecvCompression(iCompressorCreateCompressor);
                ConnectionInfo connectionInfo = new ConnectionInfo();
                this.kexCount++;
                connectionInfo.keyExchangeAlgorithm = this.kxs.np.kex_algo;
                connectionInfo.keyExchangeCounter = this.kexCount;
                connectionInfo.clientToServerCryptoAlgorithm = this.kxs.np.enc_algo_client_to_server;
                connectionInfo.serverToClientCryptoAlgorithm = this.kxs.np.enc_algo_server_to_client;
                connectionInfo.clientToServerMACAlgorithm = this.kxs.np.mac_algo_client_to_server;
                connectionInfo.serverToClientMACAlgorithm = this.kxs.np.mac_algo_server_to_client;
                connectionInfo.serverHostKeyAlgorithm = this.kxs.np.server_host_key_algo;
                connectionInfo.serverHostKey = this.kxs.hostkey;
                connectionInfo.clientToServerCompressionAlgorithm = this.kxs.np.comp_algo_client_to_server;
                connectionInfo.serverToClientCompressionAlgorithm = this.kxs.np.comp_algo_server_to_client;
                synchronized (this.accessLock) {
                    this.lastConnInfo = connectionInfo;
                    this.accessLock.notifyAll();
                }
                this.kxs = null;
                return;
            } catch (IllegalArgumentException e) {
                throw new IOException("Fatal error during MAC startup: " + e.getMessage());
            }
        }
        if (kexState == null || kexState.state == 0) {
            throw new IOException("Unexpected Kex submessage!");
        }
        if (this.kxs.np.kex_algo.equals("diffie-hellman-group-exchange-sha1") || this.kxs.np.kex_algo.equals("diffie-hellman-group-exchange-sha256")) {
            if (this.kxs.state == 1) {
                PacketKexDhGexGroup packetKexDhGexGroup = new PacketKexDhGexGroup(bArr, 0, i);
                this.kxs.dhgx = new DhGroupExchange(packetKexDhGexGroup.getP(), packetKexDhGexGroup.getG());
                this.kxs.dhgx.init(this.rnd);
                this.tm.sendKexMessage(new PacketKexDhGexInit(this.kxs.dhgx.getE()).getPayload());
                this.kxs.state = 2;
                return;
            }
            if (this.kxs.state == 2) {
                PacketKexDhGexReply packetKexDhGexReply = new PacketKexDhGexReply(bArr, 0, i);
                this.kxs.hostkey = packetKexDhGexReply.getHostKey();
                ServerHostKeyVerifier serverHostKeyVerifier = this.verifier;
                if (serverHostKeyVerifier != null) {
                    try {
                        if (!serverHostKeyVerifier.verifyServerHostKey(this.hostname, this.port, this.kxs.np.server_host_key_algo, this.kxs.hostkey)) {
                            throw new IOException("The server hostkey was not accepted by the verifier callback");
                        }
                        this.kxs.dhgx.setF(packetKexDhGexReply.getF());
                        try {
                            KexState kexState6 = this.kxs;
                            kexState6.H = kexState6.dhgx.calculateH(this.kxs.hashAlgo, this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDhGexReply.getHostKey(), this.kxs.dhgexParameters);
                            if (verifySignature(packetKexDhGexReply.getSignature(), this.kxs.hostkey)) {
                                throw new IOException("Hostkey signature sent by remote is wrong!");
                            }
                            KexState kexState7 = this.kxs;
                            kexState7.K = kexState7.dhgx.getK();
                            finishKex();
                            this.kxs.state = -1;
                            return;
                        } catch (IllegalArgumentException e2) {
                            throw new IOException("KEX error.", e2);
                        }
                    } catch (Exception e3) {
                        throw new IOException("The server hostkey was not accepted by the verifier callback.", e3);
                    }
                }
                this.kxs.dhgx.setF(packetKexDhGexReply.getF());
                KexState kexState8 = this.kxs;
                kexState8.H = kexState8.dhgx.calculateH(this.kxs.hashAlgo, this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDhGexReply.getHostKey(), this.kxs.dhgexParameters);
                if (verifySignature(packetKexDhGexReply.getSignature(), this.kxs.hostkey)) {
                    throw new IOException("Hostkey signature sent by remote is wrong!");
                }
                KexState kexState9 = this.kxs;
                kexState9.K = kexState9.dhgx.getK();
                finishKex();
                this.kxs.state = -1;
                return;
            }
            throw new IllegalStateException("Illegal State in KEX Exchange!");
        }
        if ((this.kxs.np.kex_algo.equals("diffie-hellman-group1-sha1") || this.kxs.np.kex_algo.equals("diffie-hellman-group14-sha1") || this.kxs.np.kex_algo.equals("diffie-hellman-group14-sha256") || this.kxs.np.kex_algo.equals("diffie-hellman-group16-sha512") || this.kxs.np.kex_algo.equals("diffie-hellman-group18-sha512") || this.kxs.np.kex_algo.equals("ecdh-sha2-nistp256") || this.kxs.np.kex_algo.equals("ecdh-sha2-nistp384") || this.kxs.np.kex_algo.equals("ecdh-sha2-nistp521") || this.kxs.np.kex_algo.equals(Curve25519Exchange.NAME) || this.kxs.np.kex_algo.equals(Curve25519Exchange.ALT_NAME)) && this.kxs.state == 1) {
            PacketKexDHReply packetKexDHReply = new PacketKexDHReply(bArr, 0, i);
            this.kxs.hostkey = packetKexDHReply.getHostKey();
            ServerHostKeyVerifier serverHostKeyVerifier2 = this.verifier;
            if (serverHostKeyVerifier2 != null) {
                try {
                    if (!serverHostKeyVerifier2.verifyServerHostKey(this.hostname, this.port, this.kxs.np.server_host_key_algo, this.kxs.hostkey)) {
                        throw new IOException("The server hostkey was not accepted by the verifier callback");
                    }
                    this.kxs.dhx.setF(packetKexDHReply.getF());
                    try {
                        KexState kexState10 = this.kxs;
                        kexState10.H = kexState10.dhx.calculateH(this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDHReply.getHostKey());
                        if (verifySignature(packetKexDHReply.getSignature(), this.kxs.hostkey)) {
                            throw new IOException("Hostkey signature sent by remote is wrong!");
                        }
                        KexState kexState11 = this.kxs;
                        kexState11.K = kexState11.dhx.getK();
                        finishKex();
                        this.kxs.state = -1;
                        return;
                    } catch (IllegalArgumentException e4) {
                        throw new IOException("KEX error.", e4);
                    }
                } catch (Exception e5) {
                    throw new IOException("The server hostkey was not accepted by the verifier callback.", e5);
                }
            }
            this.kxs.dhx.setF(packetKexDHReply.getF());
            KexState kexState12 = this.kxs;
            kexState12.H = kexState12.dhx.calculateH(this.csh.getClientString(), this.csh.getServerString(), this.kxs.localKEX.getPayload(), this.kxs.remoteKEX.getPayload(), packetKexDHReply.getHostKey());
            if (verifySignature(packetKexDHReply.getSignature(), this.kxs.hostkey)) {
                throw new IOException("Hostkey signature sent by remote is wrong!");
            }
            KexState kexState13 = this.kxs;
            kexState13.K = kexState13.dhx.getK();
            finishKex();
            this.kxs.state = -1;
            return;
        }
        throw new IllegalStateException("Unkown KEX method! (" + this.kxs.np.kex_algo + ")");
        throw th;
    }

    public boolean isStrictKex() {
        return this.kxs.np.isStrictKex;
    }
}
