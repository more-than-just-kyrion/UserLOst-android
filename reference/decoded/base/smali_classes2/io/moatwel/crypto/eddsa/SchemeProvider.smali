.class public abstract Lio/moatwel/crypto/eddsa/SchemeProvider;
.super Ljava/lang/Object;
.source "SchemeProvider.java"


# instance fields
.field private final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method protected constructor <init>(Lio/moatwel/crypto/eddsa/Curve;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/SchemeProvider;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Curve must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract dom([B)[B
.end method

.method public abstract generatePrivateKey()Lio/moatwel/crypto/PrivateKey;
.end method

.method public getCurve()Lio/moatwel/crypto/eddsa/Curve;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/SchemeProvider;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-object v0
.end method

.method public abstract getPublicKeyDelegate()Lio/moatwel/crypto/eddsa/PublicKeyDelegate;
.end method

.method public abstract getSigner()Lio/moatwel/crypto/EdDsaSigner;
.end method

.method public abstract preHash([B)[B
.end method
