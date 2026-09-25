.class public final Lcom/google/crypto/tink/signature/Ed25519Parameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "Ed25519Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;
    }
.end annotation


# instance fields
.field private final variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    return-void
.end method

.method public static create()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .locals 2

    .line 51
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/Ed25519Parameters;-><init>(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)V

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;-><init>(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    .line 76
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 81
    const-class v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ed25519 Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
