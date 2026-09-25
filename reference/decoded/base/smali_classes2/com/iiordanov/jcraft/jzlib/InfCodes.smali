.class final Lcom/iiordanov/jcraft/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final inflate_mask:[I


# instance fields
.field dbits:B

.field dist:I

.field dtree:[I

.field dtree_index:I

.field get:I

.field lbits:B

.field len:I

.field lit:I

.field ltree:[I

.field ltree_index:I

.field mode:I

.field need:I

.field tree:[I

.field tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 39
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    return-void
.end method


# virtual methods
.method free(Lcom/iiordanov/jcraft/jzlib/ZStream;)V
    .locals 0

    return-void
.end method

.method inflate_fast(II[II[IILcom/iiordanov/jcraft/jzlib/InfBlocks;Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 22

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 424
    iget v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 425
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v8

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v7, v6

    .line 428
    :goto_0
    sget-object v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v10, v9, p1

    .line 429
    aget v9, v9, p2

    :cond_1
    :goto_1
    const/16 v11, 0x14

    if-ge v5, v11, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 436
    iget-object v11, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0x8

    move v2, v12

    goto :goto_1

    :cond_2
    and-int v11, v4, v10

    add-int v12, p4, v11

    mul-int/lit8 v12, v12, 0x3

    .line 443
    aget v13, p3, v12

    const/4 v14, 0x0

    if-nez v13, :cond_3

    add-int/lit8 v11, v12, 0x1

    .line 444
    aget v11, p3, v11

    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    .line 446
    iget-object v11, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v12, v12, 0x2

    aget v12, p3, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    :goto_2
    add-int/lit8 v7, v7, -0x1

    move v6, v13

    goto/16 :goto_c

    :cond_3
    add-int/lit8 v15, v12, 0x1

    .line 452
    aget v15, p3, v15

    shr-int/2addr v4, v15

    sub-int/2addr v5, v15

    and-int/lit8 v15, v13, 0x10

    const/16 v16, -0x3

    if-eqz v15, :cond_11

    and-int/lit8 v11, v13, 0xf

    add-int/lit8 v12, v12, 0x2

    .line 456
    aget v12, p3, v12

    sget-object v13, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v13, v13, v11

    and-int/2addr v13, v4

    add-int/2addr v12, v13

    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    :goto_3
    const/16 v11, 0xf

    if-ge v5, v11, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 463
    iget-object v11, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v13, v2, 0x1

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0x8

    move v2, v13

    goto :goto_3

    :cond_4
    and-int v11, v4, v9

    add-int v13, p6, v11

    mul-int/lit8 v13, v13, 0x3

    .line 470
    aget v15, p5, v13

    :goto_4
    add-int/lit8 v17, v13, 0x1

    .line 474
    aget v17, p5, v17

    shr-int v4, v4, v17

    sub-int v5, v5, v17

    and-int/lit8 v17, v15, 0x10

    if-eqz v17, :cond_e

    and-int/lit8 v11, v15, 0xf

    move/from16 v18, v2

    move/from16 v17, v3

    :goto_5
    if-ge v5, v11, :cond_5

    add-int/lit8 v17, v17, -0x1

    .line 481
    iget-object v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v3, v18, 0x1

    aget-byte v2, v2, v18

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0x8

    move/from16 v18, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x2

    .line 484
    aget v2, p5, v13

    sget-object v3, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v11

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    shr-int v19, v4, v11

    sub-int v20, v5, v11

    sub-int v21, v7, v12

    if-lt v6, v2, :cond_7

    sub-int v2, v6, v2

    sub-int v3, v6, v2

    const/4 v4, 0x2

    if-lez v3, :cond_6

    if-le v4, v3, :cond_6

    .line 494
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v4, v6, 0x1

    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v5, v5, v2

    aput-byte v5, v3, v6

    .line 495
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v6, 0x2

    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v2, v2, 0x2

    aget-byte v5, v5, v7

    aput-byte v5, v3, v4

    goto :goto_6

    .line 499
    :cond_6
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v3, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v2, v2, 0x2

    :goto_6
    add-int/lit8 v12, v12, -0x2

    goto :goto_9

    :cond_7
    sub-int v2, v6, v2

    .line 506
    :cond_8
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_8

    .line 508
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v2

    if-le v12, v3, :cond_b

    sub-int/2addr v12, v3

    sub-int v4, v6, v2

    if-lez v4, :cond_a

    if-le v3, v4, :cond_a

    .line 512
    :goto_7
    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v5, v6, 0x1

    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v11, v2, 0x1

    aget-byte v2, v7, v2

    aput-byte v2, v4, v6

    add-int/lit8 v3, v3, -0x1

    move v6, v5

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    move v2, v11

    goto :goto_7

    .line 516
    :cond_a
    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v3

    :goto_8
    move v2, v14

    :cond_b
    :goto_9
    sub-int v3, v6, v2

    if-lez v3, :cond_d

    if-le v12, v3, :cond_d

    .line 526
    :goto_a
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v4, v6, 0x1

    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v5, v2

    aput-byte v2, v3, v6

    add-int/lit8 v12, v12, -0x1

    move v6, v4

    if-nez v12, :cond_c

    goto :goto_b

    :cond_c
    move v2, v7

    goto :goto_a

    .line 530
    :cond_d
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v3, v2, v4, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v12

    :goto_b
    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    goto :goto_c

    :cond_e
    and-int/lit8 v17, v15, 0x40

    if-nez v17, :cond_f

    add-int/lit8 v13, v13, 0x2

    .line 536
    aget v13, p5, v13

    add-int/2addr v11, v13

    .line 537
    sget-object v13, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v13, v13, v15

    and-int/2addr v13, v4

    add-int/2addr v11, v13

    add-int v13, p6, v11

    mul-int/lit8 v13, v13, 0x3

    .line 539
    aget v15, p5, v13

    goto/16 :goto_4

    .line 542
    :cond_f
    const-string v7, "invalid distance code"

    iput-object v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 544
    iget v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_10

    move v7, v8

    :cond_10
    add-int/2addr v3, v7

    sub-int/2addr v2, v7

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v5, v7

    .line 546
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 547
    iput v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 548
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    return v16

    :cond_11
    and-int/lit8 v15, v13, 0x40

    if-nez v15, :cond_14

    add-int/lit8 v12, v12, 0x2

    .line 558
    aget v12, p3, v12

    add-int/2addr v11, v12

    .line 559
    sget-object v12, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v12, v13

    and-int/2addr v12, v4

    add-int/2addr v11, v12

    add-int v12, p4, v11

    mul-int/lit8 v12, v12, 0x3

    .line 561
    aget v13, p3, v12

    if-nez v13, :cond_3

    add-int/lit8 v11, v12, 0x1

    .line 563
    aget v11, p3, v11

    shr-int/2addr v4, v11

    sub-int/2addr v5, v11

    .line 565
    iget-object v11, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v12, v12, 0x2

    aget v12, p3, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    goto/16 :goto_2

    :goto_c
    const/16 v11, 0x102

    if-lt v7, v11, :cond_12

    const/16 v11, 0xa

    if-ge v3, v11, :cond_1

    .line 597
    :cond_12
    iget v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_13

    move v7, v8

    :cond_13
    add-int/2addr v3, v7

    sub-int/2addr v2, v7

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v5, v7

    .line 599
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 600
    iput v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 601
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    return v14

    :cond_14
    and-int/lit8 v7, v13, 0x20

    if-eqz v7, :cond_16

    .line 572
    iget v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v3

    shr-int/lit8 v9, v5, 0x3

    if-ge v9, v7, :cond_15

    move v7, v9

    :cond_15
    add-int/2addr v3, v7

    sub-int/2addr v2, v7

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v5, v7

    .line 574
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 575
    iput v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v9, v5

    add-long/2addr v3, v9

    iput-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 576
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    return v8

    .line 581
    :cond_16
    const-string v7, "invalid literal/length code"

    iput-object v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 583
    iget v7, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v7, :cond_17

    move v7, v8

    :cond_17
    add-int/2addr v3, v7

    sub-int/2addr v2, v7

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v5, v7

    .line 585
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 586
    iput v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 587
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    return v16
.end method

.method init(II[II[IILcom/iiordanov/jcraft/jzlib/ZStream;)V
    .locals 0

    const/4 p7, 0x0

    .line 97
    iput p7, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    int-to-byte p1, p1

    .line 98
    iput-byte p1, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->lbits:B

    int-to-byte p1, p2

    .line 99
    iput-byte p1, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dbits:B

    .line 100
    iput-object p3, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree:[I

    .line 101
    iput p4, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree_index:I

    .line 102
    iput-object p5, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree:[I

    .line 103
    iput p6, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree_index:I

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree:[I

    return-void
.end method

.method proc(Lcom/iiordanov/jcraft/jzlib/InfBlocks;Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 121
    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget v2, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iget v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 122
    iget v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    const/4 v12, 0x1

    if-ge v4, v5, :cond_0

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v12

    goto :goto_0

    :cond_0
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v4

    :goto_0
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p3

    .line 126
    :goto_1
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    const/4 v14, -0x3

    const/4 v15, 0x7

    const/4 v8, 0x3

    const/4 v13, 0x0

    packed-switch v7, :pswitch_data_0

    .line 384
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 385
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 386
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    const/4 v0, -0x2

    .line 387
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 376
    :pswitch_0
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 377
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 378
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 379
    invoke-virtual {v10, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    :pswitch_1
    if-le v4, v15, :cond_1

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 355
    :cond_1
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    .line 356
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_2

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    goto :goto_2

    :cond_2
    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    .line 358
    :goto_2
    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    iget v7, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    if-eq v6, v7, :cond_3

    .line 359
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 360
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 361
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 362
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x8

    .line 364
    iput v0, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 367
    :pswitch_2
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 368
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 369
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 370
    invoke-virtual {v10, v11, v12}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    :pswitch_3
    if-nez v6, :cond_9

    .line 328
    iget v7, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v7, :cond_5

    iget v7, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_5

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_4

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v12

    goto :goto_3

    :cond_4
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    :goto_3
    move v6, v5

    move v5, v13

    :cond_5
    if-nez v6, :cond_9

    .line 330
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    .line 331
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_6

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v12

    goto :goto_4

    :cond_6
    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    .line 333
    :goto_4
    iget v7, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v7, :cond_8

    iget v7, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_8

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_7

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v12

    goto :goto_5

    :cond_7
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    :goto_5
    move v6, v5

    move v5, v13

    :cond_8
    if-nez v6, :cond_9

    .line 335
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 336
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 337
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 338
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 344
    :cond_9
    iget-object v0, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v5, 0x1

    iget v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->lit:I

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 346
    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    move v5, v7

    move v0, v13

    goto/16 :goto_1

    .line 273
    :pswitch_4
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->get:I

    :goto_6
    if-ge v4, v7, :cond_b

    if-eqz v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    .line 284
    iget-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    move v1, v8

    move v0, v13

    goto :goto_6

    .line 279
    :cond_a
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 280
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 281
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 282
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 288
    :cond_b
    iget v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dist:I

    sget-object v14, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v14, v14, v7

    and-int/2addr v14, v3

    add-int/2addr v8, v14

    iput v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dist:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    const/4 v7, 0x5

    .line 293
    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 295
    :pswitch_5
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dist:I

    sub-int v7, v5, v7

    :goto_7
    if-gez v7, :cond_c

    .line 297
    iget v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    add-int/2addr v7, v8

    goto :goto_7

    .line 299
    :cond_c
    :goto_8
    iget v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    if-eqz v8, :cond_14

    if-nez v6, :cond_12

    .line 302
    iget v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v8, :cond_e

    iget v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v8, :cond_e

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_d

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v12

    goto :goto_9

    :cond_d
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    :goto_9
    move v6, v5

    move v5, v13

    :cond_e
    if-nez v6, :cond_12

    .line 304
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    .line 305
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_f

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v12

    goto :goto_a

    :cond_f
    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    .line 307
    :goto_a
    iget v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v8, :cond_11

    iget v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v8, :cond_11

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_10

    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v12

    goto :goto_b

    :cond_10
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    :goto_b
    move v6, v5

    move v5, v13

    :cond_11
    if-nez v6, :cond_12

    .line 310
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 311
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 312
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 313
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 318
    :cond_12
    iget-object v8, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v14, v5, 0x1

    iget-object v15, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v13, v7, 0x1

    aget-byte v7, v15, v7

    aput-byte v7, v8, v5

    add-int/lit8 v6, v6, -0x1

    .line 320
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v13, v5, :cond_13

    const/4 v7, 0x0

    goto :goto_c

    :cond_13
    move v7, v13

    .line 322
    :goto_c
    iget v5, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    sub-int/2addr v5, v12

    iput v5, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    move v5, v14

    const/4 v13, 0x0

    goto :goto_8

    .line 324
    :cond_14
    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    .line 206
    :pswitch_6
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->get:I

    :goto_d
    if-ge v4, v7, :cond_16

    if-eqz v2, :cond_15

    add-int/lit8 v2, v2, -0x1

    .line 217
    iget-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    move v0, v13

    move v1, v15

    goto :goto_d

    .line 212
    :cond_15
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 213
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 221
    :cond_16
    iget v15, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    sget-object v16, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v16, v7

    and-int v16, v3, v16

    add-int v15, v15, v16

    iput v15, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    .line 226
    iget-byte v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dbits:B

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    .line 227
    iget-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree:[I

    iput-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree:[I

    .line 228
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree_index:I

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    .line 229
    iput v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 231
    :pswitch_7
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    :goto_e
    if-ge v4, v7, :cond_18

    if-eqz v2, :cond_17

    add-int/lit8 v2, v2, -0x1

    .line 242
    iget-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    move v0, v13

    move v1, v15

    goto :goto_e

    .line 237
    :cond_17
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 238
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 239
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 240
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 246
    :cond_18
    iget v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v15, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v15, v7

    and-int/2addr v7, v3

    add-int/2addr v13, v7

    mul-int/2addr v13, v8

    .line 248
    iget-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v8, v13, 0x1

    aget v8, v7, v8

    shr-int/2addr v3, v8

    sub-int/2addr v4, v8

    .line 251
    aget v8, v7, v13

    and-int/lit8 v15, v8, 0x10

    if-eqz v15, :cond_19

    and-int/lit8 v8, v8, 0xf

    .line 253
    iput v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->get:I

    add-int/lit8 v13, v13, 0x2

    .line 254
    aget v7, v7, v13

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dist:I

    const/4 v7, 0x4

    .line 255
    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    :cond_19
    and-int/lit8 v15, v8, 0x40

    if-nez v15, :cond_1a

    .line 259
    iput v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    .line 260
    div-int/lit8 v8, v13, 0x3

    add-int/lit8 v13, v13, 0x2

    aget v7, v7, v13

    add-int/2addr v8, v7

    iput v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    goto/16 :goto_1

    :cond_1a
    const/16 v0, 0x9

    .line 263
    iput v0, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 264
    const-string v0, "invalid distance code"

    iput-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 267
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 268
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 269
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 270
    invoke-virtual {v10, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    :pswitch_8
    move/from16 v16, v8

    goto :goto_11

    :pswitch_9
    const/16 v7, 0x102

    if-lt v6, v7, :cond_1d

    const/16 v7, 0xa

    if-lt v2, v7, :cond_1d

    .line 131
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 132
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 133
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 134
    iget-byte v1, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->lbits:B

    iget-byte v2, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dbits:B

    iget-object v3, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree:[I

    iget v4, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree_index:I

    iget-object v5, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree:[I

    iget v6, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->dtree_index:I

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v16, v8

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_fast(II[II[IILcom/iiordanov/jcraft/jzlib/InfBlocks;Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result v0

    .line 139
    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    iget v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iget v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 140
    iget v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_1b

    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v12

    goto :goto_f

    :cond_1b
    iget v6, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    :goto_f
    if-eqz v0, :cond_1e

    if-ne v0, v12, :cond_1c

    move v13, v15

    goto :goto_10

    :cond_1c
    const/16 v13, 0x9

    .line 143
    :goto_10
    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    :cond_1d
    move/from16 v16, v8

    .line 147
    :cond_1e
    iget-byte v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->lbits:B

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    .line 148
    iget-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree:[I

    iput-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree:[I

    .line 149
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->ltree_index:I

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    .line 151
    iput v12, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 153
    :goto_11
    iget v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    :goto_12
    if-ge v4, v7, :cond_20

    if-eqz v2, :cond_1f

    add-int/lit8 v2, v2, -0x1

    .line 165
    iget-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x8

    move v1, v8

    move v0, v13

    goto :goto_12

    .line 159
    :cond_1f
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 160
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 161
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 162
    invoke-virtual {v10, v11, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    .line 169
    :cond_20
    iget v8, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v13, Lcom/iiordanov/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v13, v7

    and-int/2addr v7, v3

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x3

    .line 171
    iget-object v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v13, v8, 0x1

    aget v13, v7, v13

    ushr-int/2addr v3, v13

    sub-int/2addr v4, v13

    .line 174
    aget v13, v7, v8

    if-nez v13, :cond_21

    add-int/lit8 v8, v8, 0x2

    .line 177
    aget v7, v7, v8

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->lit:I

    const/4 v7, 0x6

    .line 178
    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    :cond_21
    and-int/lit8 v16, v13, 0x10

    if-eqz v16, :cond_22

    and-int/lit8 v13, v13, 0xf

    .line 182
    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->get:I

    add-int/lit8 v8, v8, 0x2

    .line 183
    aget v7, v7, v8

    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->len:I

    const/4 v7, 0x2

    .line 184
    iput v7, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    :cond_22
    and-int/lit8 v16, v13, 0x40

    if-nez v16, :cond_23

    .line 188
    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->need:I

    .line 189
    div-int/lit8 v13, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    add-int/2addr v13, v7

    iput v13, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->tree_index:I

    goto/16 :goto_1

    :cond_23
    and-int/lit8 v7, v13, 0x20

    if-eqz v7, :cond_24

    .line 193
    iput v15, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_1

    :cond_24
    const/16 v0, 0x9

    .line 196
    iput v0, v9, Lcom/iiordanov/jcraft/jzlib/InfCodes;->mode:I

    .line 197
    const-string v0, "invalid literal/length code"

    iput-object v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 200
    iput v3, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 201
    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v0, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v0, v1, v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 202
    iput v5, v10, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 203
    invoke-virtual {v10, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
