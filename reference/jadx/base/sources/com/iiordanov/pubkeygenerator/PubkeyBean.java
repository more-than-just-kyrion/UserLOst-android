package com.iiordanov.pubkeygenerator;

import android.content.ContentValues;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.EncodedKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class PubkeyBean extends AbstractBean {
    public static final String BEAN_NAME = "pubkey";
    private static final String KEY_TYPE_DSA = "DSA";
    private static final String KEY_TYPE_RSA = "RSA";
    private long id;
    private String nickname;
    private byte[] privateKey;
    private PublicKey publicKey;
    private String type;
    private boolean encrypted = false;
    private boolean startup = false;
    private boolean confirmUse = false;
    private int lifetime = 0;
    private boolean unlocked = false;
    private Object unlockedPrivate = null;

    @Override // com.iiordanov.pubkeygenerator.AbstractBean
    public /* bridge */ /* synthetic */ String toXML() {
        return super.toXML();
    }

    @Override // com.iiordanov.pubkeygenerator.AbstractBean
    public String getBeanName() {
        return BEAN_NAME;
    }

    public void setId(long j) {
        this.id = j;
    }

    public long getId() {
        return this.id;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getType() {
        return this.type;
    }

    public void setPrivateKey(byte[] bArr) {
        if (bArr == null) {
            this.privateKey = null;
        } else {
            this.privateKey = (byte[]) bArr.clone();
        }
    }

    public byte[] getPrivateKey() {
        byte[] bArr = this.privateKey;
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    private PublicKey decodePublicKeyAs(EncodedKeySpec encodedKeySpec, String str) {
        try {
            return KeyFactory.getInstance(str).generatePublic(encodedKeySpec);
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            return null;
        }
    }

    public void setPublicKey(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(bArr);
        String str = this.type;
        if (str != null) {
            this.publicKey = decodePublicKeyAs(x509EncodedKeySpec, str);
            return;
        }
        PublicKey publicKeyDecodePublicKeyAs = decodePublicKeyAs(x509EncodedKeySpec, "RSA");
        this.publicKey = publicKeyDecodePublicKeyAs;
        if (publicKeyDecodePublicKeyAs != null) {
            this.type = "RSA";
            return;
        }
        PublicKey publicKeyDecodePublicKeyAs2 = decodePublicKeyAs(x509EncodedKeySpec, "DSA");
        this.publicKey = publicKeyDecodePublicKeyAs2;
        if (publicKeyDecodePublicKeyAs2 != null) {
            this.type = "DSA";
        }
    }

    public PublicKey getPublicKey() {
        return this.publicKey;
    }

    public void setEncrypted(boolean z) {
        this.encrypted = z;
    }

    public boolean isEncrypted() {
        return this.encrypted;
    }

    public void setStartup(boolean z) {
        this.startup = z;
    }

    public boolean isStartup() {
        return this.startup;
    }

    public void setConfirmUse(boolean z) {
        this.confirmUse = z;
    }

    public boolean isConfirmUse() {
        return this.confirmUse;
    }

    public void setLifetime(int i) {
        this.lifetime = i;
    }

    public int getLifetime() {
        return this.lifetime;
    }

    public void setUnlocked(boolean z) {
        this.unlocked = z;
    }

    public boolean isUnlocked() {
        return this.unlocked;
    }

    public void setUnlockedPrivate(Object obj) {
        this.unlockedPrivate = obj;
    }

    public Object getUnlockedPrivate() {
        return this.unlockedPrivate;
    }

    public String getDescription() {
        StringBuilder sb = new StringBuilder();
        PublicKey publicKey = this.publicKey;
        if (publicKey instanceof RSAPublicKey) {
            int iBitLength = ((RSAPublicKey) publicKey).getModulus().bitLength();
            sb.append("RSA ");
            sb.append(iBitLength);
            sb.append("-bit");
        } else if (publicKey instanceof DSAPublicKey) {
            sb.append("DSA 1024-bit");
        } else {
            sb.append("Unknown Key Type");
        }
        if (this.encrypted) {
            sb.append(" (encrypted)");
        }
        return sb.toString();
    }

    @Override // com.iiordanov.pubkeygenerator.AbstractBean
    public ContentValues getValues() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_NICKNAME, this.nickname);
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_TYPE, this.type);
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_PRIVATE, this.privateKey);
        PublicKey publicKey = this.publicKey;
        if (publicKey != null) {
            contentValues.put(PubkeyDatabase.FIELD_PUBKEY_PUBLIC, publicKey.getEncoded());
        }
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_ENCRYPTED, Integer.valueOf(this.encrypted ? 1 : 0));
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_STARTUP, Integer.valueOf(this.startup ? 1 : 0));
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_CONFIRMUSE, Integer.valueOf(this.confirmUse ? 1 : 0));
        contentValues.put(PubkeyDatabase.FIELD_PUBKEY_LIFETIME, Integer.valueOf(this.lifetime));
        return contentValues;
    }

    public boolean changePassword(String str, String str2) throws Exception {
        try {
            setPrivateKey(PubkeyUtils.getEncodedPrivate(PubkeyUtils.decodePrivate(getPrivateKey(), getType(), str), str2));
            setEncrypted(str2.length() > 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
