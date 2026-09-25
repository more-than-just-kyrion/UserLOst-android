.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi$ECVKO256;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECVKO256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 157
    new-instance v0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411_2012_256Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411_2012_256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;-><init>(Lorg/spongycastle/crypto/Digest;)V

    const/4 v1, 0x0

    const-string v2, "ECGOST3410-2012-256"

    invoke-direct {p0, v2, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost12/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/agreement/ECVKOAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V

    return-void
.end method
