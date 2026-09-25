.class public final Lcom/google/crypto/tink/internal/Field25519;
.super Ljava/lang/Object;
.source "Field25519.java"


# static fields
.field private static final EXPAND_SHIFT:[I

.field private static final EXPAND_START:[I

.field public static final FIELD_LEN:I = 0x20

.field public static final LIMB_CNT:I = 0xa

.field private static final MASK:[I

.field private static final SHIFT:[I

.field private static final TWO_TO_25:J = 0x2000000L

.field private static final TWO_TO_26:J = 0x4000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 65
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_START:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_SHIFT:[I

    const v0, 0x3ffffff

    const v1, 0x1ffffff

    .line 67
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/Field25519;->MASK:[I

    const/16 v0, 0x1a

    const/16 v1, 0x19

    .line 68
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/Field25519;->SHIFT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0x10
        0x13
        0x16
        0x19
        0x1c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x0
        0x1
        0x3
        0x4
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contract([J)[B
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLimbs"
        }
    .end annotation

    const/16 v0, 0xa

    move-object/from16 v1, p0

    .line 395
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x13

    const/16 v6, 0x19

    const/16 v7, 0x1f

    const/4 v8, 0x2

    const/16 v9, 0x9

    if-ge v3, v8, :cond_1

    move v8, v2

    :goto_1
    if-ge v8, v9, :cond_0

    .line 400
    aget-wide v10, v1, v8

    shr-long v12, v10, v7

    and-long/2addr v12, v10

    sget-object v14, Lcom/google/crypto/tink/internal/Field25519;->SHIFT:[I

    and-int/lit8 v15, v8, 0x1

    aget v14, v14, v15

    shr-long/2addr v12, v14

    long-to-int v12, v12

    neg-int v12, v12

    shl-int v13, v12, v14

    int-to-long v13, v13

    add-long/2addr v10, v13

    .line 401
    aput-wide v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    .line 402
    aget-wide v10, v1, v8

    int-to-long v12, v12

    sub-long/2addr v10, v12

    aput-wide v10, v1, v8

    goto :goto_1

    .line 408
    :cond_0
    aget-wide v10, v1, v9

    shr-long v7, v10, v7

    and-long/2addr v7, v10

    shr-long v6, v7, v6

    long-to-int v6, v6

    neg-int v6, v6

    shl-int/lit8 v7, v6, 0x19

    int-to-long v7, v7

    add-long/2addr v10, v7

    .line 409
    aput-wide v10, v1, v9

    .line 410
    aget-wide v7, v1, v2

    int-to-long v9, v6

    mul-long/2addr v9, v4

    sub-long/2addr v7, v9

    aput-wide v7, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    :cond_1
    aget-wide v10, v1, v2

    shr-long v12, v10, v7

    and-long/2addr v12, v10

    const/16 v3, 0x1a

    shr-long/2addr v12, v3

    long-to-int v3, v12

    neg-int v3, v3

    shl-int/lit8 v7, v3, 0x1a

    int-to-long v12, v7

    add-long/2addr v10, v12

    .line 430
    aput-wide v10, v1, v2

    const/4 v7, 0x1

    .line 431
    aget-wide v10, v1, v7

    int-to-long v12, v3

    sub-long/2addr v10, v12

    aput-wide v10, v1, v7

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_3

    move v10, v2

    :goto_3
    if-ge v10, v9, :cond_2

    .line 438
    aget-wide v11, v1, v10

    sget-object v13, Lcom/google/crypto/tink/internal/Field25519;->SHIFT:[I

    and-int/lit8 v14, v10, 0x1

    aget v13, v13, v14

    shr-long v7, v11, v13

    long-to-int v7, v7

    .line 439
    sget-object v8, Lcom/google/crypto/tink/internal/Field25519;->MASK:[I

    aget v8, v8, v14

    int-to-long v13, v8

    and-long/2addr v11, v13

    aput-wide v11, v1, v10

    add-int/lit8 v10, v10, 0x1

    .line 440
    aget-wide v11, v1, v10

    int-to-long v7, v7

    add-long/2addr v11, v7

    aput-wide v11, v1, v10

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto :goto_2

    .line 445
    :cond_3
    aget-wide v7, v1, v9

    shr-long v10, v7, v6

    long-to-int v3, v10

    const-wide/32 v10, 0x1ffffff

    and-long v6, v7, v10

    .line 446
    aput-wide v6, v1, v9

    .line 447
    aget-wide v6, v1, v2

    int-to-long v8, v3

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    aput-wide v6, v1, v2

    long-to-int v3, v6

    const v4, 0x3ffffed

    .line 460
    invoke-static {v3, v4}, Lcom/google/crypto/tink/internal/Field25519;->gte(II)I

    move-result v3

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v0, :cond_4

    .line 462
    aget-wide v6, v1, v5

    long-to-int v6, v6

    sget-object v7, Lcom/google/crypto/tink/internal/Field25519;->MASK:[I

    and-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7}, Lcom/google/crypto/tink/internal/Field25519;->eq(II)I

    move-result v6

    and-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 467
    :cond_4
    aget-wide v5, v1, v2

    and-int/2addr v4, v3

    int-to-long v7, v4

    sub-long/2addr v5, v7

    aput-wide v5, v1, v2

    const/4 v4, 0x1

    .line 468
    aget-wide v5, v1, v4

    const v7, 0x1ffffff

    and-int/2addr v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v4, 0x2

    :goto_5
    if-ge v4, v0, :cond_5

    .line 470
    aget-wide v5, v1, v4

    const v9, 0x3ffffff

    and-int/2addr v9, v3

    int-to-long v9, v9

    sub-long/2addr v5, v9

    aput-wide v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    .line 471
    aget-wide v9, v1, v5

    sub-long/2addr v9, v7

    aput-wide v9, v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_6

    .line 475
    aget-wide v4, v1, v3

    sget-object v6, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_SHIFT:[I

    aget v6, v6, v3

    shl-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    const/16 v3, 0x20

    .line 477
    new-array v3, v3, [B

    :goto_7
    if-ge v2, v0, :cond_7

    .line 479
    sget-object v4, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_START:[I

    aget v4, v4, v2

    aget-byte v5, v3, v4

    int-to-long v5, v5

    aget-wide v7, v1, v2

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    or-long/2addr v5, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 480
    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x8

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x2

    .line 481
    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x10

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x3

    .line 482
    aget-byte v5, v3, v4

    int-to-long v5, v5

    const/16 v11, 0x18

    shr-long/2addr v7, v11

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-object v3
.end method

.method private static eq(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    xor-int/2addr p0, p1

    not-int p0, p0

    shl-int/lit8 p1, p0, 0x10

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x8

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x1

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static expand([B)[J
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/16 v0, 0xa

    .line 374
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 376
    sget-object v3, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_START:[I

    aget v3, v3, v2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    sget-object v5, Lcom/google/crypto/tink/internal/Field25519;->EXPAND_SHIFT:[I

    aget v5, v5, v2

    shr-long/2addr v3, v5

    sget-object v5, Lcom/google/crypto/tink/internal/Field25519;->MASK:[I

    and-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static gte(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    not-int p0, p0

    return p0
.end method

.method static inverse([J[J)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "z"
        }
    .end annotation

    const/16 v0, 0xa

    .line 494
    new-array v1, v0, [J

    .line 495
    new-array v2, v0, [J

    .line 496
    new-array v3, v0, [J

    .line 497
    new-array v4, v0, [J

    .line 498
    new-array v5, v0, [J

    .line 499
    new-array v6, v0, [J

    .line 500
    new-array v7, v0, [J

    .line 501
    new-array v8, v0, [J

    .line 502
    new-array v9, v0, [J

    .line 503
    new-array v10, v0, [J

    .line 505
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 506
    invoke-static {v10, v1}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 507
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 508
    invoke-static {v2, v9, p1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 509
    invoke-static {v3, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 510
    invoke-static {v9, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 511
    invoke-static {v4, v9, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 513
    invoke-static {v9, v4}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 514
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 515
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 516
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 517
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 518
    invoke-static {v5, v9, v4}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 520
    invoke-static {v9, v5}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 521
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    const/4 p1, 0x2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 523
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 524
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {v6, v10, v5}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 528
    invoke-static {v9, v6}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 529
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v1, p1

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 531
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 532
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 534
    :cond_1
    invoke-static {v9, v10, v6}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 536
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 537
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_2

    .line 539
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 540
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 542
    :cond_2
    invoke-static {v7, v9, v5}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 544
    invoke-static {v9, v7}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 545
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v0, p1

    :goto_3
    const/16 v1, 0x32

    if-ge v0, v1, :cond_3

    .line 547
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 548
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 550
    :cond_3
    invoke-static {v8, v10, v7}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 552
    invoke-static {v10, v8}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 553
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    move v0, p1

    :goto_4
    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    .line 555
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 556
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 558
    :cond_4
    invoke-static {v10, v9, v8}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 560
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 561
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    :goto_5
    if-ge p1, v1, :cond_5

    .line 563
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 564
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    .line 566
    :cond_5
    invoke-static {v9, v10, v7}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 568
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 569
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 570
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 571
    invoke-static {v9, v10}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 572
    invoke-static {v10, v9}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 573
    invoke-static {p0, v10, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-void
.end method

.method static mult([J[J[J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "in2"
        }
    .end annotation

    const/16 v0, 0x13

    .line 318
    new-array v0, v0, [J

    .line 319
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/internal/Field25519;->product([J[J[J)V

    .line 321
    invoke-static {v0, p0}, Lcom/google/crypto/tink/internal/Field25519;->reduce([J[J)V

    return-void
.end method

.method static product([J[J[J)V
    .locals 44
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in2",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 127
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    mul-long/2addr v4, v1

    aget-wide v6, p1, v3

    aget-wide v8, p2, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, p0, v3

    .line 128
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x2

    mul-long v10, v4, v6

    aget-wide v12, p2, v3

    mul-long/2addr v10, v12

    const/4 v0, 0x2

    aget-wide v14, p2, v0

    mul-long/2addr v14, v1

    add-long/2addr v10, v14

    aget-wide v14, p1, v0

    mul-long/2addr v14, v8

    add-long/2addr v10, v14

    aput-wide v10, p0, v0

    .line 129
    aget-wide v10, p2, v0

    mul-long v14, v4, v10

    aget-wide v16, p1, v0

    mul-long v18, v16, v12

    add-long v14, v14, v18

    const/4 v0, 0x3

    aget-wide v18, p2, v0

    mul-long v18, v18, v1

    add-long v14, v14, v18

    aget-wide v18, p1, v0

    mul-long v18, v18, v8

    add-long v14, v14, v18

    aput-wide v14, p0, v0

    mul-long v14, v16, v10

    .line 130
    aget-wide v18, p2, v0

    mul-long v20, v4, v18

    aget-wide v22, p1, v0

    mul-long v24, v22, v12

    add-long v20, v20, v24

    mul-long v20, v20, v6

    add-long v14, v14, v20

    const/4 v0, 0x4

    aget-wide v20, p2, v0

    mul-long v20, v20, v1

    add-long v14, v14, v20

    aget-wide v20, p1, v0

    mul-long v20, v20, v8

    add-long v14, v14, v20

    aput-wide v14, p0, v0

    mul-long v14, v16, v18

    mul-long v20, v22, v10

    add-long v14, v14, v20

    .line 132
    aget-wide v20, p2, v0

    mul-long v24, v4, v20

    add-long v14, v14, v24

    aget-wide v24, p1, v0

    mul-long v26, v24, v12

    add-long v14, v14, v26

    const/4 v0, 0x5

    aget-wide v26, p2, v0

    mul-long v26, v26, v1

    add-long v14, v14, v26

    aget-wide v26, p1, v0

    mul-long v26, v26, v8

    add-long v14, v14, v26

    aput-wide v14, p0, v0

    mul-long v14, v22, v18

    .line 139
    aget-wide v26, p2, v0

    mul-long v28, v4, v26

    add-long v14, v14, v28

    aget-wide v28, p1, v0

    mul-long v30, v28, v12

    add-long v14, v14, v30

    mul-long/2addr v14, v6

    mul-long v30, v16, v20

    add-long v14, v14, v30

    mul-long v30, v24, v10

    add-long v14, v14, v30

    const/4 v0, 0x6

    aget-wide v30, p2, v0

    mul-long v30, v30, v1

    add-long v14, v14, v30

    aget-wide v30, p1, v0

    mul-long v30, v30, v8

    add-long v14, v14, v30

    aput-wide v14, p0, v0

    mul-long v14, v22, v20

    mul-long v30, v24, v18

    add-long v14, v14, v30

    mul-long v30, v16, v26

    add-long v14, v14, v30

    mul-long v30, v28, v10

    add-long v14, v14, v30

    .line 145
    aget-wide v30, p2, v0

    mul-long v32, v4, v30

    add-long v14, v14, v32

    aget-wide v32, p1, v0

    mul-long v34, v32, v12

    add-long v14, v14, v34

    const/4 v0, 0x7

    aget-wide v34, p2, v0

    mul-long v34, v34, v1

    add-long v14, v14, v34

    aget-wide v34, p1, v0

    mul-long v34, v34, v8

    add-long v14, v14, v34

    aput-wide v14, p0, v0

    mul-long v14, v24, v20

    mul-long v34, v22, v26

    mul-long v36, v28, v18

    add-long v34, v34, v36

    .line 154
    aget-wide v36, p2, v0

    mul-long v38, v4, v36

    add-long v34, v34, v38

    aget-wide v38, p1, v0

    mul-long v40, v38, v12

    add-long v34, v34, v40

    mul-long v34, v34, v6

    add-long v14, v14, v34

    mul-long v34, v16, v30

    add-long v14, v14, v34

    mul-long v34, v32, v10

    add-long v14, v14, v34

    const/16 v0, 0x8

    aget-wide v34, p2, v0

    mul-long v34, v34, v1

    add-long v14, v14, v34

    aget-wide v34, p1, v0

    mul-long v34, v34, v8

    add-long v14, v14, v34

    aput-wide v14, p0, v0

    mul-long v14, v24, v26

    mul-long v34, v28, v20

    add-long v14, v14, v34

    mul-long v34, v22, v30

    add-long v14, v14, v34

    mul-long v34, v32, v18

    add-long v14, v14, v34

    mul-long v34, v16, v36

    add-long v14, v14, v34

    mul-long v34, v38, v10

    add-long v14, v14, v34

    .line 161
    aget-wide v34, p2, v0

    mul-long v40, v4, v34

    add-long v14, v14, v40

    aget-wide v40, p1, v0

    mul-long v42, v40, v12

    add-long v14, v14, v42

    const/16 v0, 0x9

    aget-wide v42, p2, v0

    mul-long v1, v1, v42

    add-long/2addr v14, v1

    aget-wide v1, p1, v0

    mul-long/2addr v1, v8

    add-long/2addr v14, v1

    aput-wide v14, p0, v0

    mul-long v1, v28, v26

    mul-long v8, v22, v36

    add-long/2addr v1, v8

    mul-long v8, v38, v18

    add-long/2addr v1, v8

    .line 172
    aget-wide v8, p2, v0

    mul-long/2addr v4, v8

    add-long/2addr v1, v4

    aget-wide v3, p1, v0

    mul-long/2addr v12, v3

    add-long/2addr v1, v12

    mul-long/2addr v1, v6

    mul-long v12, v24, v30

    add-long/2addr v1, v12

    mul-long v12, v32, v20

    add-long/2addr v1, v12

    mul-long v12, v16, v34

    add-long/2addr v1, v12

    mul-long v12, v40, v10

    add-long/2addr v1, v12

    const/16 v0, 0xa

    aput-wide v1, p0, v0

    mul-long v0, v28, v30

    mul-long v12, v32, v26

    add-long/2addr v0, v12

    mul-long v12, v24, v36

    add-long/2addr v0, v12

    mul-long v12, v38, v20

    add-long/2addr v0, v12

    mul-long v12, v22, v34

    add-long/2addr v0, v12

    mul-long v12, v40, v18

    add-long/2addr v0, v12

    mul-long v16, v16, v8

    add-long v0, v0, v16

    mul-long/2addr v10, v3

    add-long/2addr v0, v10

    const/16 v2, 0xb

    .line 178
    aput-wide v0, p0, v2

    mul-long v0, v32, v30

    mul-long v10, v28, v36

    mul-long v12, v38, v26

    add-long/2addr v10, v12

    mul-long v22, v22, v8

    add-long v10, v10, v22

    mul-long v18, v18, v3

    add-long v10, v10, v18

    mul-long/2addr v10, v6

    add-long/2addr v0, v10

    mul-long v10, v24, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v20

    add-long/2addr v0, v10

    const/16 v2, 0xc

    .line 187
    aput-wide v0, p0, v2

    mul-long v0, v32, v36

    mul-long v10, v38, v30

    add-long/2addr v0, v10

    mul-long v10, v28, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v26

    add-long/2addr v0, v10

    mul-long v24, v24, v8

    add-long v0, v0, v24

    mul-long v20, v20, v3

    add-long v0, v0, v20

    const/16 v2, 0xd

    .line 192
    aput-wide v0, p0, v2

    mul-long v0, v38, v36

    mul-long v28, v28, v8

    add-long v0, v0, v28

    mul-long v26, v26, v3

    add-long v0, v0, v26

    mul-long/2addr v0, v6

    mul-long v10, v32, v34

    add-long/2addr v0, v10

    mul-long v10, v40, v30

    add-long/2addr v0, v10

    const/16 v2, 0xe

    .line 199
    aput-wide v0, p0, v2

    mul-long v0, v38, v34

    mul-long v10, v40, v36

    add-long/2addr v0, v10

    mul-long v32, v32, v8

    add-long v0, v0, v32

    mul-long v30, v30, v3

    add-long v0, v0, v30

    const/16 v2, 0xf

    .line 201
    aput-wide v0, p0, v2

    mul-long v0, v40, v34

    mul-long v38, v38, v8

    mul-long v36, v36, v3

    add-long v38, v38, v36

    mul-long v38, v38, v6

    add-long v0, v0, v38

    const/16 v2, 0x10

    .line 202
    aput-wide v0, p0, v2

    mul-long v40, v40, v8

    mul-long v34, v34, v3

    add-long v40, v40, v34

    const/16 v0, 0x11

    .line 203
    aput-wide v40, p0, v0

    mul-long/2addr v3, v6

    mul-long/2addr v3, v8

    const/16 v0, 0x12

    .line 204
    aput-wide v3, p0, v0

    return-void
.end method

.method static reduce([J[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 216
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-array v0, v2, [J

    .line 220
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 222
    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Field25519;->reduceSizeByModularReduction([J)V

    .line 223
    invoke-static {p0}, Lcom/google/crypto/tink/internal/Field25519;->reduceCoefficients([J)V

    const/16 v0, 0xa

    .line 224
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static reduceCoefficients([J)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    .line 275
    aput-wide v1, p0, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x1a

    const-wide/32 v6, 0x4000000

    if-ge v4, v0, :cond_0

    .line 278
    aget-wide v8, p0, v4

    div-long v6, v8, v6

    shl-long v10, v6, v5

    sub-long/2addr v8, v10

    .line 282
    aput-wide v8, p0, v4

    add-int/lit8 v5, v4, 0x1

    .line 283
    aget-wide v8, p0, v5

    add-long/2addr v8, v6

    aput-wide v8, p0, v5

    const-wide/32 v6, 0x2000000

    .line 290
    div-long v6, v8, v6

    const/16 v10, 0x19

    shl-long v10, v6, v10

    sub-long/2addr v8, v10

    .line 291
    aput-wide v8, p0, v5

    add-int/lit8 v4, v4, 0x2

    .line 292
    aget-wide v8, p0, v4

    add-long/2addr v8, v6

    aput-wide v8, p0, v4

    goto :goto_0

    .line 295
    :cond_0
    aget-wide v8, p0, v3

    aget-wide v10, p0, v0

    const/4 v4, 0x4

    shl-long v12, v10, v4

    add-long/2addr v8, v12

    aput-wide v8, p0, v3

    const/4 v4, 0x1

    shl-long v12, v10, v4

    add-long/2addr v8, v12

    .line 296
    aput-wide v8, p0, v3

    add-long/2addr v8, v10

    .line 297
    aput-wide v8, p0, v3

    .line 299
    aput-wide v1, p0, v0

    .line 302
    div-long v0, v8, v6

    shl-long v5, v0, v5

    sub-long/2addr v8, v5

    .line 303
    aput-wide v8, p0, v3

    .line 304
    aget-wide v2, p0, v4

    add-long/2addr v2, v0

    aput-wide v2, p0, v4

    return-void
.end method

.method static reduceSizeByModularReduction([J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    const/16 v0, 0x8

    .line 240
    aget-wide v1, p0, v0

    const/16 v3, 0x12

    aget-wide v3, p0, v3

    const/4 v5, 0x4

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    const/4 v6, 0x1

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 241
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 242
    aput-wide v1, p0, v0

    const/4 v0, 0x7

    .line 243
    aget-wide v1, p0, v0

    const/16 v3, 0x11

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 244
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 245
    aput-wide v1, p0, v0

    const/4 v0, 0x6

    .line 246
    aget-wide v1, p0, v0

    const/16 v3, 0x10

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 247
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 248
    aput-wide v1, p0, v0

    const/4 v0, 0x5

    .line 249
    aget-wide v1, p0, v0

    const/16 v3, 0xf

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 250
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 251
    aput-wide v1, p0, v0

    .line 252
    aget-wide v0, p0, v5

    const/16 v2, 0xe

    aget-wide v2, p0, v2

    shl-long v7, v2, v5

    add-long/2addr v0, v7

    aput-wide v0, p0, v5

    shl-long v7, v2, v6

    add-long/2addr v0, v7

    .line 253
    aput-wide v0, p0, v5

    add-long/2addr v0, v2

    .line 254
    aput-wide v0, p0, v5

    const/4 v0, 0x3

    .line 255
    aget-wide v1, p0, v0

    const/16 v3, 0xd

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 256
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 257
    aput-wide v1, p0, v0

    const/4 v0, 0x2

    .line 258
    aget-wide v1, p0, v0

    const/16 v3, 0xc

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v7, v3, v6

    add-long/2addr v1, v7

    .line 259
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 260
    aput-wide v1, p0, v0

    .line 261
    aget-wide v0, p0, v6

    const/16 v2, 0xb

    aget-wide v2, p0, v2

    shl-long v7, v2, v5

    add-long/2addr v0, v7

    aput-wide v0, p0, v6

    shl-long v7, v2, v6

    add-long/2addr v0, v7

    .line 262
    aput-wide v0, p0, v6

    add-long/2addr v0, v2

    .line 263
    aput-wide v0, p0, v6

    const/4 v0, 0x0

    .line 264
    aget-wide v1, p0, v0

    const/16 v3, 0xa

    aget-wide v3, p0, v3

    shl-long v7, v3, v5

    add-long/2addr v1, v7

    aput-wide v1, p0, v0

    shl-long v5, v3, v6

    add-long/2addr v1, v5

    .line 265
    aput-wide v1, p0, v0

    add-long/2addr v1, v3

    .line 266
    aput-wide v1, p0, v0

    return-void
.end method

.method static scalarProduct([J[JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "scalar"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 113
    aget-wide v1, p1, v0

    mul-long/2addr v1, p2

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static square([J[J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    const/16 v0, 0x13

    .line 365
    new-array v0, v0, [J

    .line 366
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Field25519;->squareInner([J[J)V

    .line 369
    invoke-static {v0, p0}, Lcom/google/crypto/tink/internal/Field25519;->reduce([J[J)V

    return-void
.end method

.method private static squareInner([J[J)V
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    .line 333
    aget-wide v1, p1, v0

    mul-long/2addr v1, v1

    aput-wide v1, p0, v0

    .line 334
    aget-wide v0, p1, v0

    const-wide/16 v2, 0x2

    mul-long v4, v0, v2

    const/4 v6, 0x1

    aget-wide v7, p1, v6

    mul-long/2addr v4, v7

    aput-wide v4, p0, v6

    .line 335
    aget-wide v4, p1, v6

    mul-long v6, v4, v4

    const/4 v8, 0x2

    aget-wide v9, p1, v8

    mul-long/2addr v9, v0

    add-long/2addr v6, v9

    mul-long/2addr v6, v2

    aput-wide v6, p0, v8

    .line 336
    aget-wide v6, p1, v8

    mul-long v8, v4, v6

    const/4 v10, 0x3

    aget-wide v11, p1, v10

    mul-long/2addr v11, v0

    add-long/2addr v8, v11

    mul-long/2addr v8, v2

    aput-wide v8, p0, v10

    mul-long v8, v6, v6

    const-wide/16 v11, 0x4

    mul-long v13, v4, v11

    .line 337
    aget-wide v15, p1, v10

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    mul-long v13, v0, v2

    const/4 v10, 0x4

    aget-wide v17, p1, v10

    mul-long v13, v13, v17

    add-long/2addr v8, v13

    aput-wide v8, p0, v10

    mul-long v8, v6, v15

    .line 338
    aget-wide v13, p1, v10

    mul-long v17, v4, v13

    add-long v8, v8, v17

    const/4 v10, 0x5

    aget-wide v17, p1, v10

    mul-long v17, v17, v0

    add-long v8, v8, v17

    mul-long/2addr v8, v2

    aput-wide v8, p0, v10

    mul-long v8, v15, v15

    mul-long v17, v6, v13

    add-long v8, v8, v17

    const/16 v17, 0x6

    .line 339
    aget-wide v18, p1, v17

    mul-long v18, v18, v0

    add-long v8, v8, v18

    mul-long v18, v4, v2

    aget-wide v20, p1, v10

    mul-long v18, v18, v20

    add-long v8, v8, v18

    mul-long/2addr v8, v2

    aput-wide v8, p0, v17

    mul-long v8, v15, v13

    mul-long v18, v6, v20

    add-long v8, v8, v18

    .line 340
    aget-wide v17, p1, v17

    mul-long v22, v4, v17

    add-long v8, v8, v22

    const/4 v10, 0x7

    aget-wide v22, p1, v10

    mul-long v22, v22, v0

    add-long v8, v8, v22

    mul-long/2addr v8, v2

    aput-wide v8, p0, v10

    mul-long v8, v13, v13

    mul-long v22, v6, v17

    const/16 v19, 0x8

    .line 341
    aget-wide v24, p1, v19

    mul-long v24, v24, v0

    add-long v22, v22, v24

    aget-wide v24, p1, v10

    mul-long v26, v4, v24

    mul-long v28, v15, v20

    add-long v26, v26, v28

    mul-long v26, v26, v2

    add-long v22, v22, v26

    mul-long v22, v22, v2

    add-long v8, v8, v22

    aput-wide v8, p0, v19

    mul-long v8, v13, v20

    mul-long v22, v15, v17

    add-long v8, v8, v22

    mul-long v22, v6, v24

    add-long v8, v8, v22

    .line 343
    aget-wide v22, p1, v19

    mul-long v26, v4, v22

    add-long v8, v8, v26

    const/16 v10, 0x9

    aget-wide v26, p1, v10

    mul-long v0, v0, v26

    add-long/2addr v8, v0

    mul-long/2addr v8, v2

    aput-wide v8, p0, v10

    mul-long v0, v20, v20

    mul-long v8, v13, v17

    add-long/2addr v0, v8

    mul-long v8, v6, v22

    add-long/2addr v0, v8

    mul-long v8, v15, v24

    .line 344
    aget-wide v26, p1, v10

    mul-long v4, v4, v26

    add-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    mul-long/2addr v0, v2

    const/16 v4, 0xa

    aput-wide v0, p0, v4

    mul-long v0, v20, v17

    mul-long v4, v13, v24

    add-long/2addr v0, v4

    mul-long v4, v15, v22

    add-long/2addr v0, v4

    mul-long v6, v6, v26

    add-long/2addr v0, v6

    mul-long/2addr v0, v2

    const/16 v4, 0xb

    .line 346
    aput-wide v0, p0, v4

    mul-long v0, v17, v17

    mul-long v4, v13, v22

    mul-long v6, v20, v24

    mul-long v15, v15, v26

    add-long/2addr v6, v15

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    const/16 v4, 0xc

    .line 347
    aput-wide v0, p0, v4

    mul-long v0, v17, v24

    mul-long v4, v20, v22

    add-long/2addr v0, v4

    mul-long v13, v13, v26

    add-long/2addr v0, v13

    mul-long/2addr v0, v2

    const/16 v4, 0xd

    .line 348
    aput-wide v0, p0, v4

    mul-long v0, v24, v24

    mul-long v4, v17, v22

    add-long/2addr v0, v4

    mul-long v20, v20, v2

    mul-long v20, v20, v26

    add-long v0, v0, v20

    mul-long/2addr v0, v2

    const/16 v4, 0xe

    .line 349
    aput-wide v0, p0, v4

    mul-long v0, v24, v22

    mul-long v17, v17, v26

    add-long v0, v0, v17

    mul-long/2addr v0, v2

    const/16 v4, 0xf

    .line 350
    aput-wide v0, p0, v4

    mul-long v0, v22, v22

    mul-long v24, v24, v11

    mul-long v24, v24, v26

    add-long v0, v0, v24

    const/16 v4, 0x10

    .line 351
    aput-wide v0, p0, v4

    mul-long v22, v22, v2

    mul-long v22, v22, v26

    const/16 v0, 0x11

    .line 352
    aput-wide v22, p0, v0

    mul-long v2, v2, v26

    mul-long v2, v2, v26

    const/16 v0, 0x12

    .line 353
    aput-wide v2, p0, v0

    return-void
.end method

.method static sub([J[J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1, p0}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    return-void
.end method

.method static sub([J[J[J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in1",
            "in2"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 97
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static sum([J[J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 87
    invoke-static {p0, p0, p1}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J[J)V

    return-void
.end method

.method static sum([J[J[J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in1",
            "in2"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 77
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
