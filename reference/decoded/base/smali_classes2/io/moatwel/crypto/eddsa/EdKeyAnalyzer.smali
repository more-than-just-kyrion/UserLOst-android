.class public Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;
.super Ljava/lang/Object;
.source "EdKeyAnalyzer.java"


# instance fields
.field private final curve:Lio/moatwel/crypto/eddsa/Curve;


# direct methods
.method constructor <init>(Lio/moatwel/crypto/eddsa/Curve;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;->curve:Lio/moatwel/crypto/eddsa/Curve;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Curve must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isKeyCompressed(Lio/moatwel/crypto/PublicKey;)Z
    .locals 1

    .line 20
    invoke-virtual {p1}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p1

    array-length p1, p1

    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EdKeyAnalyzer;->curve:Lio/moatwel/crypto/eddsa/Curve;

    invoke-virtual {v0}, Lio/moatwel/crypto/eddsa/Curve;->getPublicKeyByteLength()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
