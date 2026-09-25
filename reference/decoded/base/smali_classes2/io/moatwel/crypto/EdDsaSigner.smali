.class public interface abstract Lio/moatwel/crypto/EdDsaSigner;
.super Ljava/lang/Object;
.source "EdDsaSigner.java"


# virtual methods
.method public abstract sign(Lio/moatwel/crypto/KeyPair;[B[B)Lio/moatwel/crypto/Signature;
.end method

.method public abstract verify(Lio/moatwel/crypto/KeyPair;[B[BLio/moatwel/crypto/Signature;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract verify(Lio/moatwel/crypto/PublicKey;[B[BLio/moatwel/crypto/Signature;)Z
.end method
