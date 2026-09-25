.class public final enum Lio/moatwel/crypto/HashAlgorithm;
.super Ljava/lang/Enum;
.source "HashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/moatwel/crypto/HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum KECCAK_256:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum KECCAK_512:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum RIPEMD_160:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum SHA3_256:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum SHA3_512:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum SHAKE_128:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum SHAKE_256:Lio/moatwel/crypto/HashAlgorithm;

.field public static final enum SHA_512:Lio/moatwel/crypto/HashAlgorithm;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private defaultBitLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lio/moatwel/crypto/HashAlgorithm;

    const-string v1, "KECCAK_256"

    const/4 v2, 0x0

    const-string v3, "KECCAK-256"

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/moatwel/crypto/HashAlgorithm;->KECCAK_256:Lio/moatwel/crypto/HashAlgorithm;

    .line 7
    new-instance v1, Lio/moatwel/crypto/HashAlgorithm;

    const-string v2, "KECCAK_512"

    const/4 v3, 0x1

    const-string v5, "KECCAK-512"

    const/16 v6, 0x200

    invoke-direct {v1, v2, v3, v5, v6}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lio/moatwel/crypto/HashAlgorithm;->KECCAK_512:Lio/moatwel/crypto/HashAlgorithm;

    .line 9
    new-instance v2, Lio/moatwel/crypto/HashAlgorithm;

    const/4 v3, 0x2

    const-string v5, "SHA3-256"

    const-string v7, "SHA3_256"

    invoke-direct {v2, v7, v3, v5, v4}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lio/moatwel/crypto/HashAlgorithm;->SHA3_256:Lio/moatwel/crypto/HashAlgorithm;

    .line 11
    new-instance v3, Lio/moatwel/crypto/HashAlgorithm;

    const/4 v5, 0x3

    const-string v7, "SHA3-512"

    const-string v8, "SHA3_512"

    invoke-direct {v3, v8, v5, v7, v6}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lio/moatwel/crypto/HashAlgorithm;->SHA3_512:Lio/moatwel/crypto/HashAlgorithm;

    .line 13
    new-instance v5, Lio/moatwel/crypto/HashAlgorithm;

    const/4 v7, 0x4

    const-string v8, "SHA-512"

    const-string v9, "SHA_512"

    invoke-direct {v5, v9, v7, v8, v6}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lio/moatwel/crypto/HashAlgorithm;->SHA_512:Lio/moatwel/crypto/HashAlgorithm;

    .line 15
    new-instance v6, Lio/moatwel/crypto/HashAlgorithm;

    const-string v7, "SHAKE-128"

    const/16 v8, 0x80

    const-string v9, "SHAKE_128"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v10, v7, v8}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lio/moatwel/crypto/HashAlgorithm;->SHAKE_128:Lio/moatwel/crypto/HashAlgorithm;

    .line 17
    new-instance v7, Lio/moatwel/crypto/HashAlgorithm;

    const/4 v8, 0x6

    const-string v9, "SHAKE-256"

    const-string v10, "SHAKE_256"

    invoke-direct {v7, v10, v8, v9, v4}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lio/moatwel/crypto/HashAlgorithm;->SHAKE_256:Lio/moatwel/crypto/HashAlgorithm;

    .line 19
    new-instance v8, Lio/moatwel/crypto/HashAlgorithm;

    const-string v4, "RipeMD160"

    const/16 v9, 0xa0

    const-string v10, "RIPEMD_160"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4, v9}, Lio/moatwel/crypto/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lio/moatwel/crypto/HashAlgorithm;->RIPEMD_160:Lio/moatwel/crypto/HashAlgorithm;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 3
    filled-new-array/range {v0 .. v7}, [Lio/moatwel/crypto/HashAlgorithm;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/HashAlgorithm;->$VALUES:[Lio/moatwel/crypto/HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lio/moatwel/crypto/HashAlgorithm;->algorithm:Ljava/lang/String;

    .line 26
    iput p4, p0, Lio/moatwel/crypto/HashAlgorithm;->defaultBitLength:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/moatwel/crypto/HashAlgorithm;
    .locals 1

    .line 3
    const-class v0, Lio/moatwel/crypto/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/moatwel/crypto/HashAlgorithm;

    return-object p0
.end method

.method public static values()[Lio/moatwel/crypto/HashAlgorithm;
    .locals 1

    .line 3
    sget-object v0, Lio/moatwel/crypto/HashAlgorithm;->$VALUES:[Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {v0}, [Lio/moatwel/crypto/HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/moatwel/crypto/HashAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getDefaultBitLength()I
    .locals 1

    .line 34
    iget v0, p0, Lio/moatwel/crypto/HashAlgorithm;->defaultBitLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/moatwel/crypto/HashAlgorithm;->algorithm:Ljava/lang/String;

    return-object v0
.end method
