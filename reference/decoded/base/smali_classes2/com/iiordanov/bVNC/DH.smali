.class public Lcom/iiordanov/bVNC/DH;
.super Ljava/lang/Object;
.source "DH.java"


# static fields
.field private static final DH_GEN:I = 0x2

.field private static final DH_KEY:I = 0x5

.field private static final DH_MAX_BITS:I = 0x1f

.field private static final DH_MOD:I = 0x1

.field private static final DH_PRIV:I = 0x3

.field private static final DH_PUB:I = 0x4

.field private static final DH_RANGE:I = 0x64


# instance fields
.field private gen:J

.field private key:J

.field private maxNum:J

.field private mod:J

.field private priv:J

.field private pub:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    .line 30
    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7fffffff

    .line 34
    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 37
    iput-wide p1, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    .line 38
    iput-wide p3, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Modulus or generator too large."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private XpowYmodN(JJJ)J
    .locals 7

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    mul-long/2addr v0, v0

    .line 95
    rem-long/2addr v0, p5

    const-wide/high16 v3, -0x8000000000000000L

    and-long/2addr v3, p3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    mul-long/2addr v0, p1

    .line 97
    rem-long/2addr v0, p5

    :cond_0
    const/4 v3, 0x1

    shl-long/2addr p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static bytesToLong([B)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    shl-long/2addr v0, v3

    .line 163
    aget-byte v3, p0, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private generatePrime()J
    .locals 4

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/DH;->rng(J)J

    move-result-wide v0

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/DH;->tryToGeneratePrime(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static longToBytes(J)[B
    .locals 7

    const/16 v0, 0x8

    .line 152
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x7

    mul-int/2addr v3, v0

    shr-long v3, p0, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 154
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private millerRabin(JI)Z
    .locals 13

    const/4 v7, 0x0

    move/from16 v8, p3

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_1

    const-wide/16 v0, 0x3

    sub-long v0, p1, v0

    move-object v10, p0

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/DH;->rng(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long v1, v0, v2

    const-wide/16 v11, 0x1

    sub-long v3, p1, v11

    move-object v0, p0

    move-wide v5, p1

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/iiordanov/bVNC/DH;->XpowYmodN(JJJ)J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_0

    return v7

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object v10, p0

    const/4 v0, 0x1

    return v0
.end method

.method private rng(J)J
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method private tryToGeneratePrime(J)J
    .locals 11

    const-wide/16 v0, 0x1

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    add-long/2addr p1, v0

    :cond_0
    move-wide v2, v4

    :goto_0
    const/16 v6, 0x19

    .line 79
    invoke-direct {p0, p1, p2, v6}, Lcom/iiordanov/bVNC/DH;->millerRabin(JI)Z

    move-result v6

    const-wide/16 v7, 0x64

    if-nez v6, :cond_3

    add-long v9, v2, v0

    cmp-long v2, v2, v7

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p1

    const-wide/16 v6, 0x3

    .line 81
    rem-long v6, v2, v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    const-wide/16 v2, 0x4

    add-long/2addr p1, v2

    goto :goto_1

    :cond_1
    move-wide p1, v2

    :goto_1
    move-wide v2, v9

    goto :goto_0

    :cond_2
    move-wide v2, v9

    :cond_3
    cmp-long v0, v2, v7

    if-gez v0, :cond_5

    .line 83
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move-wide v4, p1

    :cond_5
    :goto_2
    return-wide v4
.end method


# virtual methods
.method public bits(J)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    const-wide/16 v2, 0x2

    .line 145
    div-long/2addr p1, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public createEncryptionKey(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 122
    iget-wide v4, p0, Lcom/iiordanov/bVNC/DH;->priv:J

    iget-wide v6, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/iiordanov/bVNC/DH;->XpowYmodN(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iiordanov/bVNC/DH;->key:J

    return-wide p1

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "interKey too large"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInterKey()J
    .locals 9

    .line 114
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->maxNum:J

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/DH;->rng(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/iiordanov/bVNC/DH;->priv:J

    .line 115
    iget-wide v3, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    iget-wide v7, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/iiordanov/bVNC/DH;->XpowYmodN(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->pub:J

    return-wide v0
.end method

.method public createKeys()V
    .locals 5

    .line 103
    invoke-direct {p0}, Lcom/iiordanov/bVNC/DH;->generatePrime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    .line 104
    invoke-direct {p0}, Lcom/iiordanov/bVNC/DH;->generatePrime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    .line 106
    iget-wide v2, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 108
    iput-wide v0, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    .line 109
    iput-wide v2, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    :cond_0
    return-void
.end method

.method public getValue(I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 137
    :cond_0
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->key:J

    return-wide v0

    .line 135
    :cond_1
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->pub:J

    return-wide v0

    .line 133
    :cond_2
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->priv:J

    return-wide v0

    .line 131
    :cond_3
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->gen:J

    return-wide v0

    .line 129
    :cond_4
    iget-wide v0, p0, Lcom/iiordanov/bVNC/DH;->mod:J

    return-wide v0
.end method
