package com.trilead.ssh2;

import com.google.common.base.Ascii;
import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.crypto.keys.Ed25519PublicKey;
import com.trilead.ssh2.signature.DSASHA1Verify;
import com.trilead.ssh2.signature.ECDSASHA2Verify;
import com.trilead.ssh2.signature.Ed25519Verify;
import com.trilead.ssh2.signature.RSASHA1Verify;
import com.trilead.ssh2.signature.RSASHA256Verify;
import com.trilead.ssh2.signature.RSASHA512Verify;
import com.trilead.ssh2.transport.KexManager;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.commons.codec.language.Soundex;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class KnownHosts {
    public static final int HOSTKEY_HAS_CHANGED = 2;
    public static final int HOSTKEY_IS_NEW = 1;
    public static final int HOSTKEY_IS_OK = 0;
    protected final LinkedList<KnownHostsEntry> publicKeys = new LinkedList<>();
    private final String[] ALGOS_FOR_RSA = {RSASHA512Verify.ID_RSA_SHA_2_512, RSASHA256Verify.ID_RSA_SHA_2_256, RSASHA1Verify.ID_SSH_RSA};
    private final String ALGO_FOR_DSS = DSASHA1Verify.ID_SSH_DSS;
    private final String ALGO_FOR_EDDSA = Ed25519Verify.ED25519_ID;

    protected class KnownHostsEntry {
        PublicKey key;
        String[] patterns;

        KnownHostsEntry(String[] strArr, PublicKey publicKey) {
            this.patterns = strArr;
            this.key = publicKey;
        }

        public String toString() {
            return "KnownHostsEntry{keyType=" + this.key.getAlgorithm() + "}";
        }
    }

    public KnownHosts() {
    }

    public KnownHosts(char[] cArr) throws IOException {
        initialize(cArr);
    }

    public KnownHosts(File file) throws IOException {
        initialize(file);
    }

    public void addHostkey(String[] strArr, String str, byte[] bArr) throws IOException {
        if (strArr == null) {
            throw new IllegalArgumentException("hostnames may not be null");
        }
        if (RSASHA1Verify.ID_SSH_RSA.equals(str) || RSASHA512Verify.ID_RSA_SHA_2_512.equals(str) || RSASHA256Verify.ID_RSA_SHA_2_256.equals(str)) {
            PublicKey publicKeyDecodePublicKey = RSASHA1Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey));
            }
            return;
        }
        if (str.equals(DSASHA1Verify.ID_SSH_DSS)) {
            PublicKey publicKeyDecodePublicKey2 = DSASHA1Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey2));
            }
            return;
        }
        if (str.equals(ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().getKeyFormat())) {
            PublicKey publicKeyDecodePublicKey3 = ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey3));
            }
            return;
        }
        if (str.equals(ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().getKeyFormat())) {
            PublicKey publicKeyDecodePublicKey4 = ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey4));
            }
            return;
        }
        if (str.equals(ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().getKeyFormat())) {
            PublicKey publicKeyDecodePublicKey5 = ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey5));
            }
            return;
        }
        if (Ed25519Verify.ED25519_ID.equals(str)) {
            PublicKey publicKeyDecodePublicKey6 = Ed25519Verify.get().decodePublicKey(bArr);
            synchronized (this.publicKeys) {
                this.publicKeys.add(new KnownHostsEntry(strArr, publicKeyDecodePublicKey6));
            }
            return;
        }
        throw new IOException("Unknown host key type (" + str + ")");
    }

    public void addHostkeys(char[] cArr) throws IOException {
        initialize(cArr);
    }

    public void addHostkeys(File file) throws IOException {
        initialize(file);
    }

    public static final String createHashedHostname(String str) {
        try {
            byte[] bArr = new byte[MessageDigest.getInstance("SHA1").getDigestLength()];
            new SecureRandom().nextBytes(bArr);
            byte[] bArrHmacSha1Hash = hmacSha1Hash(bArr, str);
            return new String("|1|" + new String(Base64.encode(bArr)) + "|" + new String(Base64.encode(bArrHmacSha1Hash)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("VM doesn't support SHA1", e);
        }
    }

    private static final byte[] hmacSha1Hash(byte[] bArr, String str) {
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            if (bArr.length != mac.getMacLength()) {
                throw new IllegalArgumentException("Salt has wrong length (" + bArr.length + ")");
            }
            mac.init(new SecretKeySpec(bArr, "HmacSHA1"));
            try {
                mac.update(str.getBytes("ISO-8859-1"));
            } catch (UnsupportedEncodingException unused) {
                mac.update(str.getBytes());
            }
            return mac.doFinal();
        } catch (InvalidKeyException e) {
            throw new RuntimeException("Unable to create SecretKey", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Unable to HMAC-SHA1", e2);
        }
    }

    private final boolean checkHashed(String str, String str2) {
        int iIndexOf;
        if (!str.startsWith("|1|") || (iIndexOf = str.indexOf(124, 3)) == -1) {
            return false;
        }
        String strSubstring = str.substring(3, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        try {
            byte[] bArrDecode = Base64.decode(strSubstring.toCharArray());
            byte[] bArrDecode2 = Base64.decode(strSubstring2.toCharArray());
            try {
                if (bArrDecode.length != MessageDigest.getInstance("SHA1").getDigestLength()) {
                    return false;
                }
                byte[] bArrHmacSha1Hash = hmacSha1Hash(bArrDecode, str2);
                for (int i = 0; i < bArrHmacSha1Hash.length; i++) {
                    if (bArrHmacSha1Hash[i] != bArrDecode2[i]) {
                        return false;
                    }
                }
                return true;
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException("VM does not support SHA1", e);
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private int checkKey(String str, PublicKey publicKey) {
        synchronized (this.publicKeys) {
            int i = 1;
            for (KnownHostsEntry knownHostsEntry : this.publicKeys) {
                if (hostnameMatches(knownHostsEntry.patterns, str)) {
                    if (matchKeys(knownHostsEntry.key, publicKey)) {
                        return 0;
                    }
                    i = 2;
                }
            }
            return i;
        }
    }

    private List<PublicKey> getAllKeys(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.publicKeys) {
            for (KnownHostsEntry knownHostsEntry : this.publicKeys) {
                if (hostnameMatches(knownHostsEntry.patterns, str)) {
                    arrayList.add(knownHostsEntry.key);
                }
            }
        }
        return arrayList;
    }

    public String[] getPreferredServerHostkeyAlgorithmOrder(String str) {
        String[] strArrRecommendHostkeyAlgorithms = recommendHostkeyAlgorithms(str);
        if (strArrRecommendHostkeyAlgorithms != null) {
            return strArrRecommendHostkeyAlgorithms;
        }
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                String[] strArrRecommendHostkeyAlgorithms2 = recommendHostkeyAlgorithms(inetAddress.getHostAddress());
                if (strArrRecommendHostkeyAlgorithms2 != null) {
                    return strArrRecommendHostkeyAlgorithms2;
                }
            }
        } catch (UnknownHostException unused) {
        }
        return null;
    }

    private final boolean hostnameMatches(String[] strArr, String str) {
        String strSubstring;
        boolean z;
        String lowerCase = str.toLowerCase(Locale.US);
        boolean z2 = false;
        for (int i = 0; i < strArr.length; i++) {
            String str2 = strArr[i];
            if (str2 != null) {
                if (str2.length() > 0 && strArr[i].charAt(0) == '!') {
                    strSubstring = strArr[i].substring(1);
                    z = true;
                } else {
                    strSubstring = strArr[i];
                    z = false;
                }
                if (!z2 || z) {
                    if (strSubstring.charAt(0) == '|') {
                        if (checkHashed(strSubstring, lowerCase)) {
                            if (z) {
                                return false;
                            }
                            z2 = true;
                        } else {
                            continue;
                        }
                    } else {
                        String lowerCase2 = strSubstring.toLowerCase(Locale.US);
                        if (lowerCase2.indexOf(63) != -1 || lowerCase2.indexOf(42) != -1) {
                            if (pseudoRegex(lowerCase2.toCharArray(), 0, lowerCase.toCharArray(), 0)) {
                                if (z) {
                                    return false;
                                }
                                z2 = true;
                            } else {
                                continue;
                            }
                        } else if (lowerCase2.compareTo(lowerCase) != 0) {
                            continue;
                        } else {
                            if (z) {
                                return false;
                            }
                            z2 = true;
                        }
                    }
                }
            }
        }
        return z2;
    }

    private void initialize(char[] cArr) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new CharArrayReader(cArr));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            String strTrim = line.trim();
            if (!strTrim.startsWith("#")) {
                String[] strArrSplit = strTrim.split(" ");
                if (strArrSplit.length >= 3) {
                    addHostkey(strArrSplit[0].split(","), strArrSplit[1], Base64.decode(strArrSplit[2].toCharArray()));
                }
            }
        }
    }

    private void initialize(File file) throws IOException {
        char[] cArr = new char[512];
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        file.createNewFile();
        FileReader fileReader = new FileReader(file);
        while (true) {
            int i = fileReader.read(cArr);
            if (i >= 0) {
                charArrayWriter.write(cArr, 0, i);
            } else {
                fileReader.close();
                initialize(charArrayWriter.toCharArray());
                return;
            }
        }
    }

    private final boolean matchKeys(PublicKey publicKey, PublicKey publicKey2) {
        return publicKey.equals(publicKey2);
    }

    private final boolean pseudoRegex(char[] cArr, int i, char[] cArr2, int i2) {
        while (cArr.length != i) {
            char c = cArr[i];
            if (c == '*') {
                int i3 = i + 1;
                if (cArr.length == i3) {
                    return true;
                }
                char c2 = cArr[i3];
                if (c2 != '*' && c2 != '?') {
                    do {
                        if (cArr[i3] == cArr2[i2] && pseudoRegex(cArr, i + 2, cArr2, i2 + 1)) {
                            return true;
                        }
                        i2++;
                    } while (cArr2.length != i2);
                    return false;
                }
                while (!pseudoRegex(cArr, i3, cArr2, i2)) {
                    i2++;
                    if (cArr2.length == i2) {
                        return false;
                    }
                }
                return true;
            }
            if (cArr2.length == i2) {
                return false;
            }
            if (c != '?' && c != cArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return cArr2.length == i2;
    }

    private String[] recommendHostkeyAlgorithms(String str) {
        ArrayList arrayList = new ArrayList();
        for (PublicKey publicKey : getAllKeys(str)) {
            if (publicKey instanceof RSAPublicKey) {
                arrayList.addAll(Arrays.asList(this.ALGOS_FOR_RSA));
            } else if (publicKey instanceof DSAPublicKey) {
                arrayList.add(DSASHA1Verify.ID_SSH_DSS);
            } else if (publicKey instanceof Ed25519PublicKey) {
                arrayList.add(Ed25519Verify.ED25519_ID);
            } else if (publicKey instanceof ECPublicKey) {
                arrayList.add(ECDSASHA2Verify.getSshKeyType((ECPublicKey) publicKey));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str2 : KexManager.getDefaultServerHostkeyAlgorithmList()) {
            if (arrayList.contains(str2)) {
                arrayList2.add(str2);
            } else {
                arrayList3.add(str2);
            }
        }
        arrayList2.addAll(arrayList3);
        return (String[]) arrayList2.toArray(new String[0]);
    }

    public int verifyHostkey(String str, String str2, byte[] bArr) throws IOException {
        PublicKey publicKeyDecodePublicKey;
        if (RSASHA1Verify.ID_SSH_RSA.equals(str2) || RSASHA256Verify.ID_RSA_SHA_2_256.equals(str2) || RSASHA512Verify.ID_RSA_SHA_2_512.equals(str2)) {
            publicKeyDecodePublicKey = RSASHA1Verify.get().decodePublicKey(bArr);
        } else if (DSASHA1Verify.ID_SSH_DSS.equals(str2)) {
            publicKeyDecodePublicKey = DSASHA1Verify.get().decodePublicKey(bArr);
        } else if (ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().getKeyFormat().equals(str2)) {
            publicKeyDecodePublicKey = ECDSASHA2Verify.ECDSASHA2NISTP256Verify.get().decodePublicKey(bArr);
        } else if (ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().getKeyFormat().equals(str2)) {
            publicKeyDecodePublicKey = ECDSASHA2Verify.ECDSASHA2NISTP384Verify.get().decodePublicKey(bArr);
        } else if (ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().getKeyFormat().equals(str2)) {
            publicKeyDecodePublicKey = ECDSASHA2Verify.ECDSASHA2NISTP521Verify.get().decodePublicKey(bArr);
        } else if (Ed25519Verify.ED25519_ID.equals(str2)) {
            publicKeyDecodePublicKey = Ed25519Verify.get().decodePublicKey(bArr);
        } else {
            throw new IllegalArgumentException("Unknown hostkey type " + str2);
        }
        int iCheckKey = checkKey(str, publicKeyDecodePublicKey);
        if (iCheckKey == 0) {
            return iCheckKey;
        }
        try {
            for (InetAddress inetAddress : InetAddress.getAllByName(str)) {
                int iCheckKey2 = checkKey(inetAddress.getHostAddress(), publicKeyDecodePublicKey);
                if (iCheckKey2 == 0) {
                    return iCheckKey2;
                }
                if (iCheckKey2 == 2) {
                    iCheckKey = 2;
                }
            }
        } catch (UnknownHostException unused) {
        }
        return iCheckKey;
    }

    public static final void addHostkeyToFile(File file, String[] strArr, String str, byte[] bArr) throws IOException {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("Need at least one hostname specification");
        }
        if (str == null || bArr == null) {
            throw new IllegalArgumentException();
        }
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        for (int i = 0; i < strArr.length; i++) {
            if (i != 0) {
                charArrayWriter.write(44);
            }
            charArrayWriter.write(strArr[i]);
        }
        charArrayWriter.write(32);
        charArrayWriter.write(str);
        charArrayWriter.write(32);
        charArrayWriter.write(Base64.encode(bArr));
        charArrayWriter.write(StringUtils.LF);
        char[] charArray = charArrayWriter.toCharArray();
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        long length = randomAccessFile.length();
        if (length > 0) {
            randomAccessFile.seek(length - 1);
            if (randomAccessFile.read() != 10) {
                randomAccessFile.write(10);
            }
        }
        try {
            randomAccessFile.write(new String(charArray).getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused) {
            randomAccessFile.write(new String(charArray).getBytes());
        }
        randomAccessFile.close();
    }

    private static byte[] rawFingerPrint(String str, String str2, byte[] bArr) {
        MessageDigest messageDigest;
        try {
            if ("md5".equals(str)) {
                messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            } else if ("sha1".equals(str)) {
                messageDigest = MessageDigest.getInstance("SHA1");
            } else {
                throw new IllegalArgumentException("Unknown hash type " + str);
            }
            if (!Ed25519Verify.ED25519_ID.equals(str2) && !str2.startsWith(ECDSASHA2Verify.ECDSA_SHA2_PREFIX) && !RSASHA1Verify.ID_SSH_RSA.equals(str2) && !DSASHA1Verify.ID_SSH_DSS.equals(str2) && !RSASHA256Verify.ID_RSA_SHA_2_256.equals(str2) && !RSASHA512Verify.ID_RSA_SHA_2_512.equals(str2)) {
                throw new IllegalArgumentException("Unknown key type " + str2);
            }
            if (bArr == null) {
                throw new IllegalArgumentException("hostkey is null");
            }
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalArgumentException("Unknown hash type " + str);
        }
    }

    private static String rawToHexFingerprint(byte[] bArr) {
        char[] charArray = "0123456789abcdef".toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            if (i != 0) {
                sb.append(':');
            }
            byte b = bArr[i];
            sb.append(charArray[(b & 255) >> 4]);
            sb.append(charArray[b & Ascii.SI]);
        }
        return sb.toString();
    }

    private static final String rawToBubblebabbleFingerprint(byte[] bArr) {
        char[] charArray = "aeiouy".toCharArray();
        char[] charArray2 = "bcdfghklmnprstvzx".toCharArray();
        StringBuilder sb = new StringBuilder("x");
        int i = 1;
        int length = (bArr.length / 2) + 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (i3 < length || bArr.length % 2 != 0) {
                int i4 = i2 * 2;
                sb.append(charArray[(((bArr[i4] >> 6) & 3) + i) % 6]);
                sb.append(charArray2[(bArr[i4] >> 2) & 15]);
                sb.append(charArray[((bArr[i4] & 3) + (i / 6)) % 6]);
                if (i3 < length) {
                    int i5 = i4 + 1;
                    sb.append(charArray2[(bArr[i5] >> 4) & 15]);
                    sb.append(Soundex.SILENT_MARKER);
                    sb.append(charArray2[bArr[i5] & Ascii.SI]);
                    i = ((i * 5) + (((bArr[i4] & 255) * 7) + (bArr[i5] & 255))) % 36;
                }
            } else {
                sb.append(charArray[i % 6]);
                sb.append('x');
                sb.append(charArray[i / 6]);
            }
            i2 = i3;
        }
        sb.append('x');
        return sb.toString();
    }

    public static final String createHexFingerprint(String str, byte[] bArr) {
        return rawToHexFingerprint(rawFingerPrint("md5", str, bArr));
    }

    public static final String createBubblebabbleFingerprint(String str, byte[] bArr) {
        return rawToBubblebabbleFingerprint(rawFingerPrint("sha1", str, bArr));
    }
}
