.class final Lcom/iiordanov/jcraft/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final MANY:I = 0x5a0

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field bb:[I

.field bitb:I

.field bitk:I

.field blens:[I

.field check:J

.field checkfn:Ljava/lang/Object;

.field codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

.field end:I

.field hufts:[I

.field index:I

.field inftree:Lcom/iiordanov/jcraft/jzlib/InfTree;

.field last:I

.field left:I

.field mode:I

.field read:I

.field table:I

.field tb:[I

.field window:[B

.field write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    const/16 v0, 0x13

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->border:[I

    return-void

    nop

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

    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lcom/iiordanov/jcraft/jzlib/ZStream;Ljava/lang/Object;I)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bb:[I

    .line 82
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->tb:[I

    .line 84
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/InfCodes;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/InfCodes;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    .line 99
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/InfTree;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/InfTree;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inftree:Lcom/iiordanov/jcraft/jzlib/InfTree;

    const/16 v0, 0x10e0

    .line 102
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    .line 103
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    .line 104
    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    .line 105
    iput-object p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 106
    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->reset(Lcom/iiordanov/jcraft/jzlib/ZStream;[J)V

    return-void
.end method


# virtual methods
.method free(Lcom/iiordanov/jcraft/jzlib/ZStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->reset(Lcom/iiordanov/jcraft/jzlib/ZStream;[J)V

    .line 537
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    .line 538
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    return-void
.end method

.method inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 11

    .line 560
    iget v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 561
    iget v7, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    .line 564
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    if-gt v7, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    :goto_0
    sub-int/2addr v1, v7

    .line 565
    iget v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-le v1, v2, :cond_1

    iget v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    :cond_1
    move v8, v1

    const/4 v9, -0x5

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    if-ne p2, v9, :cond_2

    move p2, v10

    .line 569
    :cond_2
    iget v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v8

    iput v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 570
    iget-wide v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v3, v8

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    .line 573
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 574
    iget-object v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    iget-wide v2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    invoke-static {v1, v7, v2, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v8

    add-int/2addr v7, v8

    .line 582
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v7, v1, :cond_8

    .line 585
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    if-ne v2, v1, :cond_4

    .line 586
    iput v10, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 589
    :cond_4
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 590
    iget v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-le v1, v2, :cond_5

    iget v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    :cond_5
    if-eqz v1, :cond_6

    if-ne p2, v9, :cond_6

    goto :goto_1

    :cond_6
    move v10, p2

    .line 594
    :goto_1
    iget p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    .line 595
    iget-wide v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    .line 598
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p2, :cond_7

    .line 599
    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    iget-wide v3, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    iget-object v5, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    move v6, v8

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 602
    :cond_7
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    invoke-static {p2, v8, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    move v7, v1

    move p2, v10

    .line 608
    :cond_8
    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out_index:I

    .line 609
    iput v7, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    return p2
.end method

.method proc(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 136
    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    iget v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 137
    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    const/4 v12, 0x1

    if-ge v5, v6, :cond_0

    sub-int/2addr v6, v5

    sub-int/2addr v6, v12

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    :goto_0
    move v13, v5

    move v9, v6

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, p2

    .line 141
    :goto_1
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v7, 0x4

    const/4 v12, 0x7

    const/4 v10, -0x3

    const/4 v8, 0x3

    const/4 v15, 0x0

    packed-switch v6, :pswitch_data_0

    move v10, v13

    .line 527
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 528
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 529
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x2

    .line 530
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 519
    :pswitch_0
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 520
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 521
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 522
    invoke-virtual {v0, v11, v10}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :pswitch_1
    move v10, v13

    goto/16 :goto_a

    :pswitch_2
    move v12, v1

    move v14, v2

    move v9, v3

    move v8, v4

    move v7, v5

    goto/16 :goto_9

    :goto_2
    :pswitch_3
    move v9, v1

    move v14, v2

    move v6, v3

    move/from16 v24, v5

    move v5, v4

    move/from16 v4, v24

    goto :goto_6

    :goto_3
    :pswitch_4
    const/16 v6, 0xe

    if-ge v5, v6, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 289
    iget-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    move v2, v6

    move v1, v15

    goto :goto_3

    .line 282
    :cond_1
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 283
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 284
    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 285
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 286
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_2
    and-int/lit16 v6, v4, 0x3fff

    .line 293
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->table:I

    and-int/lit8 v9, v4, 0x1f

    const/16 v14, 0x1d

    if-gt v9, v14, :cond_1f

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x1f

    if-le v6, v14, :cond_3

    goto/16 :goto_13

    :cond_3
    add-int/lit16 v9, v9, 0x102

    add-int/2addr v9, v6

    .line 306
    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    if-eqz v6, :cond_5

    array-length v6, v6

    if-ge v6, v9, :cond_4

    goto :goto_5

    :cond_4
    move v6, v15

    :goto_4
    if-ge v6, v9, :cond_6

    .line 310
    iget-object v14, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    aput v15, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 307
    :cond_5
    :goto_5
    new-array v6, v9, [I

    iput-object v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    :cond_6
    ushr-int/lit8 v4, v4, 0xe

    add-int/lit8 v5, v5, -0xe

    .line 315
    iput v15, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    .line 316
    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_2

    .line 318
    :goto_6
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v7

    if-ge v1, v2, :cond_9

    :goto_7
    if-ge v4, v8, :cond_8

    if-eqz v6, :cond_7

    add-int/lit8 v6, v6, -0x1

    .line 331
    iget-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v2, v14, 0x1

    aget-byte v1, v1, v14

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x8

    move v14, v2

    move v9, v15

    goto :goto_7

    .line 324
    :cond_7
    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 325
    iput v6, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 326
    iget-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v3, v14, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v14, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 327
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 328
    invoke-virtual {v0, v11, v9}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 335
    :cond_8
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v2, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->border:[I

    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v3, 0x1

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    aget v2, v2, v3

    and-int/lit8 v3, v5, 0x7

    aput v3, v1, v2

    ushr-int/lit8 v5, v5, 0x3

    add-int/lit8 v4, v4, -0x3

    const/4 v7, 0x4

    goto :goto_6

    .line 340
    :cond_9
    :goto_8
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_a

    .line 341
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v3, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->border:[I

    add-int/lit8 v7, v1, 0x1

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    aget v1, v3, v1

    aput v15, v2, v1

    goto :goto_8

    .line 344
    :cond_a
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bb:[I

    aput v12, v3, v15

    .line 345
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inftree:Lcom/iiordanov/jcraft/jzlib/InfTree;

    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->tb:[I

    iget-object v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    move v12, v4

    move-object v4, v7

    move v7, v5

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/jcraft/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result v1

    if-eqz v1, :cond_c

    if-ne v1, v10, :cond_b

    const/4 v2, 0x0

    .line 349
    iput-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v2, 0x9

    .line 350
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 353
    :cond_b
    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v12, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 354
    iput v8, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v14, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v14, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 355
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 356
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 359
    :cond_c
    iput v15, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    const/4 v1, 0x5

    .line 360
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    move/from16 v24, v8

    move v8, v7

    move v7, v12

    move v12, v9

    move/from16 v9, v24

    .line 363
    :goto_9
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->table:I

    .line 364
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    and-int/lit8 v3, v1, 0x1f

    add-int/lit16 v3, v3, 0x102

    shr-int/lit8 v4, v1, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    const/4 v4, -0x1

    if-lt v2, v3, :cond_13

    .line 450
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->tb:[I

    aput v4, v2, v15

    const/4 v2, 0x1

    .line 454
    new-array v6, v2, [I

    .line 455
    new-array v5, v2, [I

    const/16 v3, 0x9

    .line 456
    filled-new-array {v3}, [I

    move-result-object v17

    const/4 v3, 0x6

    .line 457
    filled-new-array {v3}, [I

    move-result-object v18

    .line 460
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inftree:Lcom/iiordanov/jcraft/jzlib/InfTree;

    and-int/lit8 v4, v1, 0x1f

    add-int/lit16 v4, v4, 0x101

    shr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v19, v1, 0x1

    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v20, v1

    move-object v1, v3

    move-object/from16 v21, v2

    move v2, v4

    move/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object/from16 v21, v6

    move-object/from16 v6, v18

    move v15, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move-object/from16 v8, v19

    move/from16 v23, v13

    move v13, v9

    move-object/from16 v9, v20

    move/from16 v20, v14

    move v14, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/iiordanov/jcraft/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result v1

    if-eqz v1, :cond_e

    if-ne v1, v14, :cond_d

    const/4 v2, 0x0

    .line 466
    iput-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v2, 0x9

    .line 467
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 471
    :cond_d
    iput v12, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v15, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 472
    iput v13, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v14, v20, v4

    int-to-long v4, v14

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v9, v20

    iput v9, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v10, v23

    .line 473
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 474
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_e
    move/from16 v9, v20

    move/from16 v10, v23

    .line 476
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    const/4 v2, 0x0

    aget v3, v17, v2

    aget v4, v18, v2

    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    aget v5, v21, v2

    aget v7, v19, v2

    move v2, v3

    move v3, v4

    move-object v4, v6

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->init(II[II[IILcom/iiordanov/jcraft/jzlib/ZStream;)V

    const/4 v1, 0x6

    .line 478
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    move v2, v9

    move v4, v12

    move v3, v13

    move v5, v15

    move/from16 v1, v22

    .line 480
    :goto_a
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 481
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 482
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 484
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    invoke-virtual {v2, v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->proc(Lcom/iiordanov/jcraft/jzlib/InfBlocks;Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 485
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 488
    :cond_f
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    invoke-virtual {v1, v11}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->free(Lcom/iiordanov/jcraft/jzlib/ZStream;)V

    .line 490
    iget v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    iget v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 491
    iget v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v13, v1, :cond_10

    sub-int/2addr v1, v13

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    goto :goto_b

    :cond_10
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v13

    :goto_b
    move v9, v1

    .line 493
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->last:I

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 494
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_1b

    :cond_11
    const/4 v6, 0x7

    .line 497
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x0

    .line 499
    :pswitch_5
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 500
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    .line 501
    iget v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eq v6, v13, :cond_12

    .line 503
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 504
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 505
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 506
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_12
    const/16 v1, 0x8

    .line 508
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 512
    :pswitch_6
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 513
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 514
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, 0x1

    .line 515
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_13
    move v15, v7

    move/from16 v22, v12

    const/4 v6, 0x7

    move v12, v8

    move/from16 v24, v13

    move v13, v9

    move v9, v14

    move v14, v10

    move/from16 v10, v24

    .line 371
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bb:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, v9

    move v9, v13

    move/from16 v12, v22

    :goto_d
    if-ge v7, v1, :cond_15

    if-eqz v9, :cond_14

    add-int/lit8 v9, v9, -0x1

    .line 385
    iget-object v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    or-int/2addr v8, v2

    add-int/lit8 v7, v7, 0x8

    move v2, v5

    const/4 v12, 0x0

    goto :goto_d

    .line 378
    :cond_14
    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 379
    iput v9, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 380
    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 381
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 382
    invoke-virtual {v0, v11, v12}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 389
    :cond_15
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 393
    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->hufts:[I

    sget-object v13, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v1, v13, v1

    and-int/2addr v1, v8

    add-int/2addr v1, v3

    const/4 v15, 0x3

    mul-int/2addr v1, v15

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    .line 394
    aget v13, v13, v1

    and-int/2addr v13, v8

    add-int/2addr v3, v13

    mul-int/2addr v3, v15

    const/4 v13, 0x2

    add-int/2addr v3, v13

    aget v3, v5, v3

    const/16 v5, 0x10

    if-ge v3, v5, :cond_16

    ushr-int v4, v8, v1

    sub-int/2addr v7, v1

    .line 398
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    aput v3, v1, v5

    move v8, v4

    const/16 v17, 0x5

    goto/16 :goto_11

    :cond_16
    const/16 v5, 0x12

    if-ne v3, v5, :cond_17

    move v13, v6

    goto :goto_e

    :cond_17
    add-int/lit8 v13, v3, -0xe

    :goto_e
    if-ne v3, v5, :cond_18

    const/16 v5, 0xb

    goto :goto_f

    :cond_18
    const/4 v5, 0x3

    :goto_f
    add-int v15, v1, v13

    if-ge v7, v15, :cond_1a

    if-eqz v9, :cond_19

    add-int/lit8 v9, v9, -0x1

    .line 416
    iget-object v12, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    or-int/2addr v8, v2

    add-int/lit8 v7, v7, 0x8

    move v2, v15

    const/4 v12, 0x0

    goto :goto_f

    .line 409
    :cond_19
    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 410
    iput v9, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 411
    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 412
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 413
    invoke-virtual {v0, v11, v12}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_1a
    ushr-int/2addr v8, v1

    sub-int/2addr v7, v1

    .line 422
    sget-object v1, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v1, v1, v13

    and-int/2addr v1, v8

    add-int/2addr v5, v1

    ushr-int v1, v8, v13

    sub-int/2addr v7, v13

    .line 426
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    .line 427
    iget v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->table:I

    add-int v15, v8, v5

    and-int/lit8 v6, v13, 0x1f

    add-int/lit16 v6, v6, 0x102

    const/16 v17, 0x5

    shr-int/lit8 v13, v13, 0x5

    and-int/lit8 v13, v13, 0x1f

    add-int/2addr v6, v13

    if-gt v15, v6, :cond_1e

    const/16 v6, 0x10

    if-ne v3, v6, :cond_1b

    const/4 v13, 0x1

    if-ge v8, v13, :cond_1b

    goto :goto_12

    :cond_1b
    if-ne v3, v6, :cond_1c

    .line 441
    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v6, v8, -0x1

    aget v3, v3, v6

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    .line 443
    :goto_10
    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v13, v8, 0x1

    aput v3, v6, v8

    add-int/2addr v5, v4

    if-nez v5, :cond_1d

    .line 446
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->index:I

    move v8, v1

    :goto_11
    move v13, v10

    move v10, v14

    const/4 v15, 0x0

    move v14, v2

    goto/16 :goto_9

    :cond_1d
    move v8, v13

    goto :goto_10

    :cond_1e
    :goto_12
    const/4 v3, 0x0

    .line 430
    iput-object v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v3, 0x9

    .line 431
    iput v3, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 432
    const-string v3, "invalid bit length repeat"

    iput-object v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 435
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 436
    iput v9, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 437
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 438
    invoke-virtual {v0, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_1f
    :goto_13
    move v14, v10

    move v10, v13

    const/16 v1, 0x9

    .line 296
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 297
    const-string v1, "too many length or distance symbols"

    iput-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 300
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 301
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 302
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 303
    invoke-virtual {v0, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :pswitch_7
    move v10, v13

    if-nez v3, :cond_20

    .line 238
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 239
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 240
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 241
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_20
    if-nez v9, :cond_26

    .line 245
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v10, v6, :cond_22

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_22

    if-lez v7, :cond_21

    add-int/lit8 v7, v7, -0x1

    move v9, v7

    goto :goto_14

    :cond_21
    move v9, v6

    :goto_14
    const/4 v13, 0x0

    goto :goto_15

    :cond_22
    move v13, v10

    :goto_15
    if-nez v9, :cond_27

    .line 249
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 250
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    .line 251
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    if-ge v6, v7, :cond_23

    sub-int v8, v7, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    goto :goto_16

    :cond_23
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v8, v6

    .line 252
    :goto_16
    iget v9, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->end:I

    if-ne v6, v9, :cond_25

    if-eqz v7, :cond_25

    if-lez v7, :cond_24

    add-int/lit8 v9, v7, -0x1

    :cond_24
    const/4 v13, 0x0

    goto :goto_17

    :cond_25
    move v13, v6

    move v9, v8

    :goto_17
    if-nez v9, :cond_27

    .line 256
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 257
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 258
    iput v13, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 259
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_26
    move v13, v10

    .line 265
    :cond_27
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->left:I

    if-le v1, v3, :cond_28

    move v1, v3

    :cond_28
    if-le v1, v9, :cond_29

    move v1, v9

    .line 268
    :cond_29
    iget-object v6, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v6, v2, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    sub-int/2addr v3, v1

    add-int/2addr v13, v1

    sub-int/2addr v9, v1

    .line 271
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->left:I

    sub-int/2addr v6, v1

    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->left:I

    if-eqz v6, :cond_2a

    goto/16 :goto_c

    .line 273
    :cond_2a
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v1, :cond_2b

    const/4 v12, 0x7

    goto :goto_18

    :cond_2b
    const/4 v12, 0x0

    :goto_18
    iput v12, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    goto/16 :goto_c

    :pswitch_8
    move v14, v10

    move v10, v13

    :goto_19
    const/16 v6, 0x20

    if-ge v5, v6, :cond_2d

    if-eqz v3, :cond_2c

    add-int/lit8 v3, v3, -0x1

    .line 218
    iget-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x8

    move v2, v6

    const/4 v1, 0x0

    goto :goto_19

    .line 211
    :cond_2c
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 212
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 213
    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v2, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual {v0, v11, v1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_2d
    not-int v6, v4

    const/16 v7, 0x10

    ushr-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    and-int/2addr v7, v4

    if-eq v6, v7, :cond_2e

    const/16 v6, 0x9

    .line 223
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 224
    const-string v1, "invalid stored block lengths"

    iput-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 227
    iput v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v5, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 228
    iput v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 229
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 230
    invoke-virtual {v0, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    .line 232
    :cond_2e
    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->left:I

    if-eqz v7, :cond_2f

    const/4 v8, 0x2

    goto :goto_1a

    .line 234
    :cond_2f
    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_30

    const/4 v8, 0x7

    goto :goto_1a

    :cond_30
    const/4 v8, 0x0

    :goto_1a
    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    move v13, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    const/4 v12, 0x1

    goto/16 :goto_1

    :pswitch_9
    move v14, v10

    move v10, v13

    move v12, v1

    move v13, v2

    move v15, v3

    move v7, v5

    move v1, v8

    move v8, v4

    :goto_1c
    if-ge v7, v1, :cond_32

    if-eqz v15, :cond_31

    add-int/lit8 v15, v15, -0x1

    .line 156
    iget-object v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v2, v13, 0x1

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v7

    or-int/2addr v8, v1

    add-int/lit8 v7, v7, 0x8

    move v13, v2

    const/4 v1, 0x3

    const/4 v12, 0x0

    goto :goto_1c

    .line 149
    :cond_31
    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 150
    iput v15, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 151
    iget-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v3, v13, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v13, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 152
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 153
    invoke-virtual {v0, v11, v12}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_32
    and-int/lit8 v1, v8, 0x7

    and-int/lit8 v2, v8, 0x1

    .line 160
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->last:I

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    if-eqz v1, :cond_36

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_34

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    move v5, v7

    move v4, v8

    :goto_1d
    const/4 v6, 0x1

    goto/16 :goto_1f

    :cond_33
    ushr-int/lit8 v1, v8, 0x3

    add-int/2addr v7, v14

    const/16 v2, 0x9

    .line 194
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 195
    const-string v2, "invalid block type"

    iput-object v2, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 198
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 199
    iput v15, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v3, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v3, v13, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput v13, v11, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 200
    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    .line 201
    invoke-virtual {v0, v11, v14}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v1

    return v1

    :cond_34
    ushr-int/lit8 v1, v8, 0x3

    add-int/lit8 v7, v7, -0x3

    const/4 v2, 0x3

    .line 189
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_1e

    :cond_35
    move v1, v2

    .line 172
    new-array v2, v1, [I

    .line 173
    new-array v3, v1, [I

    .line 174
    new-array v4, v1, [[I

    .line 175
    new-array v5, v1, [[I

    .line 177
    invoke-static {v2, v3, v4, v5, v11}, Lcom/iiordanov/jcraft/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[ILcom/iiordanov/jcraft/jzlib/ZStream;)I

    .line 178
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    const/4 v6, 0x0

    aget v2, v2, v6

    aget v3, v3, v6

    aget-object v4, v4, v6

    aget-object v6, v5, v6

    const/4 v14, 0x0

    const/4 v5, 0x0

    move/from16 v17, v7

    move v7, v14

    move v14, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->init(II[II[IILcom/iiordanov/jcraft/jzlib/ZStream;)V

    ushr-int/lit8 v1, v14, 0x3

    add-int/lit8 v7, v17, -0x3

    const/4 v2, 0x6

    .line 183
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    :goto_1e
    move v4, v1

    move v5, v7

    goto :goto_1d

    :cond_36
    move/from16 v17, v7

    move v14, v8

    ushr-int/lit8 v1, v14, 0x3

    add-int/lit8 v7, v17, -0x3

    and-int/lit8 v2, v7, 0x7

    ushr-int/2addr v1, v2

    sub-int/2addr v7, v2

    const/4 v6, 0x1

    .line 168
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    move v4, v1

    move v5, v7

    :goto_1f
    move v1, v12

    move v2, v13

    move v3, v15

    move v12, v6

    move v13, v10

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method reset(Lcom/iiordanov/jcraft/jzlib/ZStream;[J)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 111
    iget-wide v1, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    aput-wide v1, p2, v0

    .line 112
    :cond_0
    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 115
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->codes:Lcom/iiordanov/jcraft/jzlib/InfCodes;

    invoke-virtual {p2, p1}, Lcom/iiordanov/jcraft/jzlib/InfCodes;->free(Lcom/iiordanov/jcraft/jzlib/ZStream;)V

    .line 117
    :cond_1
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    .line 118
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitk:I

    .line 119
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->bitb:I

    .line 120
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    .line 122
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 123
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->check:J

    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    :cond_2
    return-void
.end method

.method set_dictionary([BII)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->write:I

    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->read:I

    return-void
.end method

.method sync_point()I
    .locals 2

    .line 550
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
