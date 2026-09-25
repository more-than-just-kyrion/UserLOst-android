.class final Lcom/iiordanov/jcraft/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final FLAG:I = 0x1

.field private static final MAX_WBITS:I = 0xf

.field private static final METHOD:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field static final Z_FINISH:I = 0x4

.field static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static mark:[B


# instance fields
.field blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

.field marker:I

.field method:I

.field mode:I

.field need:J

.field nowrap:I

.field was:[J

.field wbits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 312
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mark:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->was:[J

    return-void
.end method


# virtual methods
.method inflate(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 19

    move-object/from16 v0, p1

    if-eqz v0, :cond_15

    .line 144
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, -0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    move/from16 v5, p2

    if-ne v5, v3, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    .line 150
    :goto_0
    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v6, v6, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    const/16 v7, 0xc

    const-wide/32 v11, 0xff00

    const-wide/32 v13, 0xff0000

    const-wide v15, 0xff000000L

    const/4 v8, -0x3

    const/16 v1, 0x8

    const/16 v3, 0xd

    const-wide/16 v17, 0x1

    const/4 v9, 0x1

    packed-switch v6, :pswitch_data_0

    const/4 v0, -0x2

    return v0

    :pswitch_0
    return v8

    .line 225
    :pswitch_1
    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v6, v6, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    invoke-virtual {v6, v0, v2}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->proc(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 227
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v3, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 228
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v4, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    :goto_1
    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    move v2, v5

    :cond_3
    if-eq v2, v9, :cond_4

    return v2

    .line 238
    :cond_4
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v2, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v6, v6, Lcom/iiordanov/jcraft/jzlib/Inflate;->was:[J

    invoke-virtual {v2, v0, v6}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->reset(Lcom/iiordanov/jcraft/jzlib/ZStream;[J)V

    .line 239
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v2, :cond_5

    .line 240
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v7, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v3, v4

    goto/16 :goto_3

    .line 243
    :cond_5
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v1, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 246
    :pswitch_2
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_6

    return v2

    .line 248
    :cond_6
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v7, v7, v17

    iput-wide v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 249
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    int-to-long v7, v7

    and-long/2addr v7, v15

    iput-wide v7, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 250
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v7, 0x9

    iput v7, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 253
    :pswitch_3
    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_7

    return v2

    .line 255
    :cond_7
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v7, v7, v17

    iput-wide v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 256
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v7, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v10, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v15, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v15, 0x1

    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v10, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    int-to-long v3, v6

    and-long/2addr v3, v13

    add-long/2addr v7, v3

    iput-wide v7, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 257
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v3, 0xa

    iput v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 260
    :pswitch_4
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_8

    return v2

    .line 262
    :cond_8
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 263
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v1, v6, 0x8

    int-to-long v6, v1

    and-long/2addr v6, v11

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 264
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v2, 0xb

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 267
    :pswitch_5
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_9

    return v2

    .line 269
    :cond_9
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v1, v9

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 270
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v6

    int-to-long v6, v4

    const-wide/16 v11, 0xff

    and-long/2addr v6, v11

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 272
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->was:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v1, v3

    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v2, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    long-to-int v2, v2

    if-eq v1, v2, :cond_a

    .line 273
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 274
    const-string v1, "incorrect data check"

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 275
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 279
    :cond_a
    iget-object v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v1, 0xc

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    :pswitch_6
    return v9

    :pswitch_7
    move v2, v3

    .line 219
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 220
    const-string v1, "need dictionary"

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 221
    iget-object v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v3, 0x0

    iput v3, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    const/4 v0, -0x2

    return v0

    :pswitch_8
    move v5, v2

    goto/16 :goto_4

    :pswitch_9
    move v3, v4

    goto :goto_2

    :pswitch_a
    move v3, v4

    .line 153
    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_b

    return v2

    .line 155
    :cond_b
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v6, v6, v17

    iput-wide v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 156
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v6

    iput v4, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->method:I

    and-int/lit8 v2, v4, 0xf

    if-eq v2, v1, :cond_c

    .line 157
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 158
    const-string v1, "unknown compression method"

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 159
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    goto :goto_3

    .line 162
    :cond_c
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->method:I

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    add-int/2addr v2, v1

    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v4, v4, Lcom/iiordanov/jcraft/jzlib/Inflate;->wbits:I

    if-le v2, v4, :cond_d

    .line 163
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 164
    const-string v1, "invalid window size"

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    goto :goto_3

    .line 168
    :cond_d
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v9, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 171
    :goto_2
    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_e

    return v2

    .line 173
    :cond_e
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v6, v6, v17

    iput-wide v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 174
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v4

    and-int/lit16 v4, v2, 0xff

    .line 176
    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v6, v6, Lcom/iiordanov/jcraft/jzlib/Inflate;->method:I

    shl-int/2addr v6, v1

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x1f

    if-eqz v6, :cond_f

    .line 177
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 178
    const-string v1, "incorrect header check"

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 179
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    goto :goto_3

    :cond_f
    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_10

    .line 184
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x7

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    :goto_3
    move v4, v3

    move v2, v5

    goto/16 :goto_1

    .line 187
    :cond_10
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v3, 0x2

    iput v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 190
    :pswitch_b
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_11

    return v2

    .line 192
    :cond_11
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 193
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v3, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    and-long/2addr v3, v15

    iput-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 194
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v3, 0x3

    iput v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 197
    :pswitch_c
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_12

    return v2

    .line 199
    :cond_12
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 200
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    int-to-long v6, v6

    and-long/2addr v6, v13

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 201
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v3, 0x4

    iput v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    move v2, v5

    .line 204
    :pswitch_d
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_13

    return v2

    .line 206
    :cond_13
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v2, v2, v17

    iput-wide v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 207
    iget-object v2, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v7, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v1, v6, 0x8

    int-to-long v6, v1

    and-long/2addr v6, v11

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 208
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 211
    :goto_4
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_14

    return v5

    .line 213
    :cond_14
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v1, v9

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 214
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iget-object v4, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    .line 215
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-wide v1, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->need:J

    iput-wide v1, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 216
    iget-object v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v1, 0x6

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    const/4 v0, 0x2

    return v0

    :cond_15
    :goto_5
    const/4 v0, -0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method inflateEnd(Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->free(Lcom/iiordanov/jcraft/jzlib/ZStream;)V

    :cond_0
    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    const/4 p1, 0x0

    return p1
.end method

.method inflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 6

    const/4 v0, 0x0

    .line 114
    iput-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->nowrap:I

    const/4 v2, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    .line 121
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->nowrap:I

    :cond_0
    const/16 v3, 0x8

    if-lt p2, v3, :cond_3

    const/16 v3, 0xf

    if-le p2, v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Inflate;->wbits:I

    .line 131
    iget-object v3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    new-instance v4, Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    .line 132
    iget-object v5, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v5, v5, Lcom/iiordanov/jcraft/jzlib/Inflate;->nowrap:I

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    shl-int p2, v2, p2

    invoke-direct {v4, p1, v0, p2}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;-><init>(Lcom/iiordanov/jcraft/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v4, v3, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    .line 136
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateReset(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    return v1

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateEnd(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    const/4 p1, -0x2

    return p1
.end method

.method inflateReset(Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 4

    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    const/4 v0, 0x0

    .line 99
    iput-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 100
    iget-object v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Inflate;->nowrap:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput v2, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 101
    iget-object v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->reset(Lcom/iiordanov/jcraft/jzlib/ZStream;[J)V

    return v3

    :cond_2
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method inflateSetDictionary(Lcom/iiordanov/jcraft/jzlib/ZStream;[BI)I
    .locals 8

    if-eqz p1, :cond_3

    .line 294
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 p1, -0x3

    return p1

    .line 301
    :cond_1
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 303
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->wbits:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    if-lt p3, v0, :cond_2

    .line 304
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->wbits:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    move v0, p3

    move p3, v2

    .line 307
    :goto_0
    iget-object v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v1, v1, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    invoke-virtual {v1, p2, p3, v0}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 308
    iget-object p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 p2, 0x7

    iput p2, p1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    return v2

    :cond_3
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method inflateSync(Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 9

    if-eqz p1, :cond_7

    .line 321
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    goto :goto_2

    .line 323
    :cond_0
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 324
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    .line 325
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    .line 327
    :cond_1
    iget v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_2

    const/4 p1, -0x5

    return p1

    .line 329
    :cond_2
    iget v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 330
    iget-object v3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget v3, v3, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    :goto_0
    const/4 v4, 0x4

    if-eqz v0, :cond_5

    if-ge v3, v4, :cond_5

    .line 334
    iget-object v4, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    aget-byte v4, v4, v1

    sget-object v5, Lcom/iiordanov/jcraft/jzlib/Inflate;->mark:[B

    aget-byte v5, v5, v3

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 337
    :cond_3
    iget-object v4, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    rsub-int/lit8 v3, v3, 0x4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 347
    :cond_5
    iget-wide v5, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget v7, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v7, v1, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    .line 348
    iput v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in_index:I

    .line 349
    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    .line 350
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iput v3, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->marker:I

    if-eq v3, v4, :cond_6

    const/4 p1, -0x3

    return p1

    .line 356
    :cond_6
    iget-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iget-wide v3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    .line 357
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Inflate;->inflateReset(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    .line 358
    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    iput-wide v3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    .line 359
    iget-object p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    const/4 v0, 0x7

    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/Inflate;->mode:I

    return v2

    :cond_7
    :goto_2
    const/4 p1, -0x2

    return p1
.end method

.method inflateSyncPoint(Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object v0, v0, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    if-nez v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->istate:Lcom/iiordanov/jcraft/jzlib/Inflate;

    iget-object p1, p1, Lcom/iiordanov/jcraft/jzlib/Inflate;->blocks:Lcom/iiordanov/jcraft/jzlib/InfBlocks;

    invoke-virtual {p1}, Lcom/iiordanov/jcraft/jzlib/InfBlocks;->sync_point()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method
