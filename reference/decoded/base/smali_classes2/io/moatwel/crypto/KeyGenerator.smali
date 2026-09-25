.class public interface abstract Lio/moatwel/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# virtual methods
.method public abstract derivePublicKey(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/PublicKey;
.end method

.method public abstract generateKeyPair()Lio/moatwel/crypto/KeyPair;
.end method

.method public abstract generateKeyPair(Lio/moatwel/crypto/PrivateKey;)Lio/moatwel/crypto/KeyPair;
.end method

.method public abstract getKeyAnalyzer()Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;
.end method
