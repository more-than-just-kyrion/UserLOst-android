.class public final Lcom/iiordanov/jcraft/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/jcraft/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DEF_MEM_LEVEL:I = 0x8

.field private static final DYN_TREES:I = 0x2

.field private static final D_CODES:I = 0x1e

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final HEAP_SIZE:I = 0x23d

.field private static final INIT_STATE:I = 0x2a

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_MATCH:I = 0x102

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFAULT_COMPRESSION:I = -0x1

.field private static final Z_DEFAULT_STRATEGY:I = 0x0

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FILTERED:I = 0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_HUFFMAN_ONLY:I = 0x2

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_UNKNOWN:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final config_table:[Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field good_match:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:I

.field l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field method:B

.field nice_match:I

.field noheader:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xa

    .line 68
    new-array v1, v0, [Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    sput-object v1, Lcom/iiordanov/jcraft/jzlib/Deflate;->config_table:[Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    .line 70
    new-instance v8, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 71
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/16 v12, 0x8

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 72
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/16 v8, 0x10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 73
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v10, 0x20

    const/4 v11, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/16 v9, 0x20

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 75
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/16 v10, 0x10

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 76
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v12, 0x20

    const/4 v13, 0x2

    const/16 v9, 0x8

    const/16 v11, 0x20

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    .line 77
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v13, 0x80

    const/4 v14, 0x2

    const/16 v10, 0x8

    const/16 v11, 0x10

    const/16 v12, 0x80

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v9, 0x6

    aput-object v3, v1, v9

    .line 78
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v14, 0x100

    const/4 v15, 0x2

    const/16 v11, 0x8

    const/16 v12, 0x20

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v10, 0x7

    aput-object v3, v1, v10

    .line 79
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v15, 0x400

    const/16 v16, 0x2

    const/16 v14, 0x102

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v11, 0x8

    aput-object v3, v1, v11

    .line 80
    new-instance v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    const/16 v16, 0x1000

    const/16 v17, 0x2

    const/16 v13, 0x20

    const/16 v15, 0x102

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v12, 0x9

    aput-object v3, v1, v12

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "need dictionary"

    aput-object v1, v0, v2

    const-string v1, "stream end"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v2, "file error"

    aput-object v2, v0, v6

    const-string v2, "stream error"

    aput-object v2, v0, v7

    const-string v2, "data error"

    aput-object v2, v0, v8

    const-string v2, "insufficient memory"

    aput-object v2, v0, v9

    const-string v2, "buffer error"

    aput-object v2, v0, v10

    const-string v2, "incompatible version"

    aput-object v2, v0, v11

    aput-object v1, v0, v12

    sput-object v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    .line 261
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    .line 262
    new-instance v0, Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/iiordanov/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    const/16 v0, 0x10

    .line 265
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_count:[S

    const/16 v0, 0x23d

    .line 268
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    .line 276
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->depth:[B

    const/16 v0, 0x47a

    .line 321
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    const/16 v0, 0x7a

    .line 322
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    const/16 v0, 0x4e

    .line 323
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    return-void
.end method

.method static smaller([SII[B)Z
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    .line 406
    aget-short v0, p0, v0

    mul-int/lit8 v1, p2, 0x2

    .line 407
    aget-short p0, p0, v1

    if-lt v0, p0, :cond_1

    if-ne v0, p0, :cond_0

    .line 408
    aget-byte p0, p3, p1

    aget-byte p1, p3, p2

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method _tr_align()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 603
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 604
    sget-object v2, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_ltree:[S

    const/16 v3, 0x100

    invoke-virtual {p0, v3, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 606
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_flush()V

    .line 612
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v2, v2, 0xb

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v2, v4

    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    .line 613
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 614
    sget-object v0, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_ltree:[S

    invoke-virtual {p0, v3, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 615
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_flush()V

    :cond_0
    const/4 v0, 0x7

    .line 617
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_eob_len:I

    return-void
.end method

.method _tr_flush_block(IIZ)V
    .locals 5

    .line 855
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    const/4 v1, 0x3

    if-lez v0, :cond_1

    .line 857
    iget-byte v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->data_type:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->set_data_type()V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/iiordanov/jcraft/jzlib/Tree;->build_tree(Lcom/iiordanov/jcraft/jzlib/Deflate;)V

    .line 862
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/iiordanov/jcraft/jzlib/Tree;->build_tree(Lcom/iiordanov/jcraft/jzlib/Deflate;)V

    .line 869
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->build_bl_tree()I

    move-result v0

    .line 872
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v2, v2, 0xa

    ushr-int/2addr v2, v1

    .line 873
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->static_len:I

    add-int/lit8 v3, v3, 0xa

    ushr-int/2addr v3, v1

    if-gt v3, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p2, 0x5

    const/4 v0, 0x0

    move v3, v2

    :cond_2
    :goto_0
    add-int/lit8 v4, p2, 0x4

    if-gt v4, v2, :cond_3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3

    .line 888
    invoke-virtual {p0, p1, p2, p3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    goto :goto_1

    :cond_3
    if-ne v3, v2, :cond_4

    add-int/lit8 p1, p3, 0x2

    .line 891
    invoke-virtual {p0, p1, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 892
    sget-object p1, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_ltree:[S

    sget-object p2, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p3, 0x4

    .line 895
    invoke-virtual {p0, p1, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 896
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget p1, p1, Lcom/iiordanov/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_all_trees(III)V

    .line 897
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->compress_block([S[S)V

    .line 903
    :goto_1
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->init_block()V

    if-eqz p3, :cond_5

    .line 906
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_windup()V

    :cond_5
    return-void
.end method

.method _tr_stored_block(IIZ)V
    .locals 1

    const/4 v0, 0x3

    .line 841
    invoke-virtual {p0, p3, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    const/4 p3, 0x1

    .line 842
    invoke-virtual {p0, p1, p2, p3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->copy_block(IIZ)V

    return-void
.end method

.method _tr_tally(II)Z
    .locals 12

    .line 627
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_buf:I

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    int-to-byte v4, p1

    .line 628
    aput-byte v4, v0, v1

    .line 630
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_buf:I

    add-int/2addr v1, v2

    int-to-byte v4, p2

    aput-byte v4, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/2addr p2, v0

    aget-short v1, p1, p2

    add-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p1, p2

    goto :goto_0

    .line 637
    :cond_0
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->matches:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->matches:I

    add-int/lit8 p1, p1, -0x1

    .line 640
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte p2, v2, p2

    add-int/lit16 p2, p2, 0x101

    mul-int/2addr p2, v0

    aget-short v2, v1, p2

    add-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, p2

    .line 641
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {p1}, Lcom/iiordanov/jcraft/jzlib/Tree;->d_code(I)I

    move-result p1

    mul-int/2addr p1, v0

    aget-short v1, p2, p1

    add-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p2, p1

    .line 644
    :goto_0
    iget p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    and-int/lit16 p2, p1, 0x1fff

    const/4 v1, 0x0

    if-nez p2, :cond_2

    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    if-le p2, v0, :cond_2

    mul-int/lit8 p1, p1, 0x8

    .line 647
    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr p2, v2

    move v2, v1

    :goto_1
    const/16 v4, 0x1e

    if-ge v2, v4, :cond_1

    int-to-long v4, p1

    .line 650
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v6, v2, 0x2

    aget-short p1, p1, v6

    int-to-long v6, p1

    sget-object p1, Lcom/iiordanov/jcraft/jzlib/Tree;->extra_dbits:[I

    aget p1, p1, v2

    int-to-long v8, p1

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    .line 654
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->matches:I

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    div-int/2addr v4, v0

    if-ge v2, v4, :cond_2

    div-int/2addr p2, v0

    if-ge p1, p2, :cond_2

    return v3

    .line 657
    :cond_2
    iget p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lit_bufsize:I

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    return v3
.end method

.method bi_flush()V
    .locals 2

    .line 726
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 727
    iget-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_short(I)V

    const/4 v0, 0x0

    .line 728
    iput-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    .line 729
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 732
    iget-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 733
    iget-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    ushr-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    .line 734
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    :cond_1
    :goto_0
    return-void
.end method

.method bi_windup()V
    .locals 2

    .line 740
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 741
    iget-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_short(I)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 743
    iget-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 745
    iput-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    .line 746
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    return-void
.end method

.method build_bl_tree()I
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 466
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 469
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/iiordanov/jcraft/jzlib/Tree;->build_tree(Lcom/iiordanov/jcraft/jzlib/Deflate;)V

    const/16 v0, 0x12

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v3, Lcom/iiordanov/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v3, v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-short v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 480
    :cond_1
    :goto_1
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->opt_len:I

    return v0
.end method

.method compress_block([S[S)V
    .locals 6

    .line 671
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v3, v0, 0x2

    add-int v4, v2, v3

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 675
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_buf:I

    add-int/2addr v3, v0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_1

    .line 678
    invoke-virtual {p0, v1, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    goto :goto_0

    .line 682
    :cond_1
    sget-object v3, Lcom/iiordanov/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte v3, v3, v1

    add-int/lit16 v4, v3, 0x101

    .line 684
    invoke-virtual {p0, v4, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 685
    sget-object v4, Lcom/iiordanov/jcraft/jzlib/Tree;->extra_lbits:[I

    aget v4, v4, v3

    if-eqz v4, :cond_2

    .line 687
    sget-object v5, Lcom/iiordanov/jcraft/jzlib/Tree;->base_length:[I

    aget v3, v5, v3

    sub-int/2addr v1, v3

    .line 688
    invoke-virtual {p0, v1, v4}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 691
    invoke-static {v2}, Lcom/iiordanov/jcraft/jzlib/Tree;->d_code(I)I

    move-result v1

    .line 693
    invoke-virtual {p0, v1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 694
    sget-object v3, Lcom/iiordanov/jcraft/jzlib/Tree;->extra_dbits:[I

    aget v3, v3, v1

    if-eqz v3, :cond_3

    .line 696
    sget-object v4, Lcom/iiordanov/jcraft/jzlib/Tree;->base_dist:[I

    aget v1, v4, v1

    sub-int/2addr v2, v1

    .line 697
    invoke-virtual {p0, v2, v3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 703
    :cond_3
    :goto_0
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    if-lt v0, v1, :cond_0

    :cond_4
    const/16 p2, 0x100

    .line 706
    invoke-virtual {p0, p2, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    const/16 p2, 0x201

    .line 707
    aget-short p1, p1, p2

    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_eob_len:I

    return-void
.end method

.method copy_block(IIZ)V
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_windup()V

    const/16 v0, 0x8

    .line 757
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_eob_len:I

    if-eqz p3, :cond_0

    int-to-short p3, p2

    .line 760
    invoke-virtual {p0, p3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_short(I)V

    not-int p3, p2

    int-to-short p3, p3

    .line 761
    invoke-virtual {p0, p3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_short(I)V

    .line 768
    :cond_0
    iget-object p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    invoke-virtual {p0, p3, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte([BII)V

    return-void
.end method

.method deflate(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x2

    const/4 v4, 0x4

    if-gt v2, v4, :cond_1b

    if-gez v2, :cond_0

    goto/16 :goto_5

    .line 1488
    :cond_0
    iget-object v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_out:[B

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v5, :cond_1

    iget v5, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_1a

    :cond_1
    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-ne v5, v6, :cond_2

    if-eq v2, v4, :cond_2

    goto/16 :goto_4

    .line 1494
    :cond_2
    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    const/4 v5, -0x5

    const/4 v7, 0x7

    if-nez v3, :cond_3

    .line 1495
    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    return v5

    .line 1499
    :cond_3
    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    .line 1500
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    .line 1501
    iput v2, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    .line 1504
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    const/16 v9, 0x2a

    const-wide/32 v10, 0xffff

    const/16 v12, 0x10

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ne v8, v9, :cond_7

    .line 1505
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_bits:I

    add-int/lit8 v8, v8, -0x8

    shl-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x8

    shl-int/lit8 v8, v8, 0x8

    .line 1506
    iget v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    sub-int/2addr v9, v14

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v9, v14

    if-le v9, v13, :cond_4

    move v9, v13

    :cond_4
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    .line 1510
    iget v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v9, :cond_5

    or-int/lit8 v8, v8, 0x20

    .line 1511
    :cond_5
    rem-int/lit8 v9, v8, 0x1f

    rsub-int/lit8 v9, v9, 0x1f

    add-int/2addr v8, v9

    const/16 v9, 0x71

    .line 1513
    iput v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    .line 1514
    invoke-virtual {v0, v8}, Lcom/iiordanov/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1518
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v8, :cond_6

    .line 1519
    iget-wide v8, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    ushr-long/2addr v8, v12

    long-to-int v8, v8

    invoke-virtual {v0, v8}, Lcom/iiordanov/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1520
    iget-wide v8, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    and-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v0, v8}, Lcom/iiordanov/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1522
    :cond_6
    iget-object v15, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 1526
    :cond_7
    iget v8, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    const/4 v9, -0x1

    const/4 v15, 0x0

    if-eqz v8, :cond_8

    .line 1527
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1528
    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_9

    .line 1535
    iput v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    return v15

    .line 1543
    :cond_8
    iget v8, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v8, :cond_9

    if-gt v2, v3, :cond_9

    if-eq v2, v4, :cond_9

    .line 1545
    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    return v5

    .line 1550
    :cond_9
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    if-ne v3, v6, :cond_a

    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v3, :cond_a

    .line 1551
    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    return v5

    .line 1556
    :cond_a
    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_b

    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v3, :cond_b

    if-eqz v2, :cond_14

    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    if-eq v3, v6, :cond_14

    .line 1559
    :cond_b
    sget-object v3, Lcom/iiordanov/jcraft/jzlib/Deflate;->config_table:[Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v3, v3, v5

    iget v3, v3, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->func:I

    const/4 v5, 0x2

    if-eqz v3, :cond_e

    if-eq v3, v14, :cond_d

    if-eq v3, v5, :cond_c

    move v3, v9

    goto :goto_0

    .line 1567
    :cond_c
    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflate_slow(I)I

    move-result v3

    goto :goto_0

    .line 1564
    :cond_d
    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflate_fast(I)I

    move-result v3

    goto :goto_0

    .line 1561
    :cond_e
    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflate_stored(I)I

    move-result v3

    :goto_0
    if-eq v3, v5, :cond_f

    if-ne v3, v13, :cond_10

    .line 1573
    :cond_f
    iput v6, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    :cond_10
    if-eqz v3, :cond_18

    if-ne v3, v5, :cond_11

    goto :goto_3

    :cond_11
    if-ne v3, v14, :cond_14

    if-ne v2, v14, :cond_12

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_align()V

    goto :goto_2

    .line 1593
    :cond_12
    invoke-virtual {v0, v15, v15, v15}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    if-ne v2, v13, :cond_13

    move v3, v15

    .line 1598
    :goto_1
    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_size:I

    if-ge v3, v5, :cond_13

    .line 1599
    iget-object v5, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aput-short v15, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1602
    :cond_13
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1603
    iget v3, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_14

    .line 1604
    iput v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    return v15

    :cond_14
    if-eq v2, v4, :cond_15

    return v15

    .line 1611
    :cond_15
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v2, :cond_16

    return v14

    .line 1614
    :cond_16
    iget-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    ushr-long/2addr v2, v12

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1615
    iget-wide v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    and-long/2addr v2, v10

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1616
    invoke-virtual/range {p1 .. p1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1620
    iput v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    .line 1621
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    if-eqz v1, :cond_17

    move v14, v15

    :cond_17
    return v14

    .line 1576
    :cond_18
    :goto_3
    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v1, :cond_19

    .line 1577
    iput v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    :cond_19
    return v15

    .line 1491
    :cond_1a
    :goto_4
    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_1b
    :goto_5
    return v3
.end method

.method deflateEnd()I
    .locals 3

    .line 1407
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    const/16 v2, 0x71

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1411
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 1412
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    .line 1413
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    .line 1414
    iput-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    if-ne v0, v2, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method deflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;I)I
    .locals 1

    const/16 v0, 0xf

    .line 1320
    invoke-virtual {p0, p1, p2, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;II)I

    move-result p1

    return p1
.end method

.method deflateInit(Lcom/iiordanov/jcraft/jzlib/ZStream;II)I
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 1316
    invoke-virtual/range {v0 .. v6}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateInit2(Lcom/iiordanov/jcraft/jzlib/ZStream;IIIII)I

    move-result p1

    return p1
.end method

.method deflateInit2(Lcom/iiordanov/jcraft/jzlib/ZStream;IIIII)I
    .locals 5

    const/4 v0, 0x0

    .line 1333
    iput-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x6

    if-ne p2, v0, :cond_0

    move p2, v1

    :cond_0
    const/4 v0, 0x1

    if-gez p4, :cond_1

    neg-int p4, p4

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lt p5, v0, :cond_3

    const/16 v3, 0x9

    if-gt p5, v3, :cond_3

    const/16 v4, 0x8

    if-ne p3, v4, :cond_3

    if-lt p4, v3, :cond_3

    const/16 v4, 0xf

    if-gt p4, v4, :cond_3

    if-ltz p2, :cond_3

    if-gt p2, v3, :cond_3

    if-ltz p6, :cond_3

    const/4 v3, 0x2

    if-le p6, v3, :cond_2

    goto :goto_1

    .line 1349
    :cond_2
    iput-object p0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->dstate:Lcom/iiordanov/jcraft/jzlib/Deflate;

    .line 1351
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    .line 1352
    iput p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_bits:I

    shl-int p4, v0, p4

    .line 1353
    iput p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit8 v2, p4, -0x1

    .line 1354
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    add-int/lit8 v2, p5, 0x7

    .line 1356
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_bits:I

    shl-int v2, v0, v2

    .line 1357
    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v3, v2, -0x1

    .line 1358
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    add-int/lit8 v3, p5, 0x9

    .line 1359
    div-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    mul-int/lit8 v3, p4, 0x2

    .line 1361
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    .line 1362
    new-array p4, p4, [S

    iput-object p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    .line 1363
    new-array p4, v2, [S

    iput-object p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    add-int/2addr p5, v1

    shl-int p4, v0, p5

    .line 1365
    iput p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 p5, p4, 0x4

    .line 1369
    new-array p5, p5, [B

    iput-object p5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    mul-int/lit8 p5, p4, 0x4

    .line 1370
    iput p5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 1372
    div-int/lit8 p5, p4, 0x2

    iput p5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 p4, p4, 0x3

    .line 1373
    iput p4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_buf:I

    .line 1375
    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    .line 1379
    iput p6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strategy:I

    int-to-byte p2, p3

    .line 1380
    iput-byte p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->method:B

    .line 1382
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->deflateReset(Lcom/iiordanov/jcraft/jzlib/ZStream;)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method deflateParams(Lcom/iiordanov/jcraft/jzlib/ZStream;II)I
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x6

    :cond_0
    if-ltz p2, :cond_4

    const/16 v0, 0x9

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    goto :goto_1

    .line 1431
    :cond_1
    sget-object v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->config_table:[Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v1, v0, v1

    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->func:I

    aget-object v2, v0, p2

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->func:I

    if-eq v1, v2, :cond_2

    iget-wide v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1434
    invoke-virtual {p1, v1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->deflate(I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1437
    :goto_0
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    if-eq v1, p2, :cond_3

    .line 1438
    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    .line 1439
    aget-object p2, v0, p2

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->max_lazy:I

    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 1440
    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object p2, v0, p2

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->good_length:I

    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->good_match:I

    .line 1441
    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object p2, v0, p2

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->nice_length:I

    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->nice_match:I

    .line 1442
    iget p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object p2, v0, p2

    iget p2, p2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->max_chain:I

    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 1444
    :cond_3
    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strategy:I

    return p1

    :cond_4
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method deflateReset(Lcom/iiordanov/jcraft/jzlib/ZStream;)I
    .locals 8

    const-wide/16 v0, 0x0

    .line 1386
    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->total_in:J

    const/4 v0, 0x0

    .line 1387
    iput-object v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1388
    iput v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->data_type:I

    const/4 v0, 0x0

    .line 1390
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    .line 1391
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_out:I

    .line 1393
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    if-gez v1, :cond_0

    .line 1394
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    .line 1396
    :cond_0
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v1, :cond_1

    const/16 v1, 0x71

    goto :goto_0

    :cond_1
    const/16 v1, 0x2a

    :goto_0
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    .line 1397
    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    .line 1399
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_flush:I

    .line 1401
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->tr_init()V

    .line 1402
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->lm_init()V

    return v0
.end method

.method deflateSetDictionary(Lcom/iiordanov/jcraft/jzlib/ZStream;[BI)I
    .locals 8

    if-eqz p2, :cond_4

    .line 1452
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1455
    :cond_0
    iget-object v2, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->_adler:Lcom/iiordanov/jcraft/jzlib/Adler32;

    iget-wide v3, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    const/4 v6, 0x0

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/iiordanov/jcraft/jzlib/ZStream;->adler:J

    const/4 p1, 0x3

    const/4 v0, 0x0

    if-ge p3, p1, :cond_1

    return v0

    .line 1458
    :cond_1
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v2, v1, -0x106

    if-le p3, v2, :cond_2

    add-int/lit16 v1, v1, -0x106

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    move v1, p3

    move p3, v0

    .line 1462
    :goto_0
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    invoke-static {p2, p3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1463
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1464
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    .line 1470
    iget-object p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    aget-byte p3, p2, v0

    and-int/lit16 p3, p3, 0xff

    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1471
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr p3, v2

    const/4 v2, 0x1

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    xor-int/2addr p2, p3

    iget p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr p2, p3

    iput p2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    move p2, v0

    :goto_1
    add-int/lit8 p3, v1, -0x3

    if-gt p2, p3, :cond_3

    .line 1474
    iget p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr p3, v2

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr p3, v2

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr p3, v2

    iput p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1475
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v3, p2

    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aget-short v5, v4, p3

    aput-short v5, v2, v3

    int-to-short v2, p2

    .line 1476
    aput-short v2, v4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_2
    const/4 p1, -0x2

    return p1
.end method

.method deflate_fast(I)I
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 1012
    :cond_0
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v3, 0x106

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_6

    .line 1013
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->fill_window()V

    .line 1014
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    if-ge v2, v3, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez v2, :cond_6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v0

    .line 1096
    :goto_0
    invoke-virtual {p0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1097
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_4

    if-ne p1, v1, :cond_3

    return v4

    :cond_3
    return v0

    :cond_4
    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    return v5

    .line 1022
    :cond_6
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v5, :cond_7

    .line 1023
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v2

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v8, 0x2

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1026
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aget-short v9, v2, v1

    and-int v10, v9, v7

    .line 1027
    iget-object v11, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    iget v12, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v12, v8

    aput-short v9, v11, v12

    int-to-short v8, v8

    .line 1028
    aput-short v8, v2, v1

    move v1, v10

    :cond_7
    int-to-long v8, v1

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_8

    .line 1034
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v8, v3

    if-gt v2, v8, :cond_8

    .line 1040
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strategy:I

    if-eq v2, v4, :cond_8

    .line 1041
    invoke-virtual {p0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 1045
    :cond_8
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    if-lt v2, v5, :cond_b

    .line 1048
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1050
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 1054
    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-gt v4, v8, :cond_a

    if-lt v3, v5, :cond_a

    add-int/lit8 v4, v4, -0x1

    .line 1056
    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 1058
    :cond_9
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1060
    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v8, v1, 0x3

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    iget v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v5

    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1062
    iget-object v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aget-short v8, v5, v4

    and-int v9, v8, v7

    .line 1063
    iget-object v10, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    iget v11, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v11, v3

    aput-short v8, v10, v11

    int-to-short v3, v3

    .line 1064
    aput-short v3, v5, v4

    .line 1069
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    if-nez v3, :cond_9

    add-int/lit8 v1, v1, 0x2

    .line 1070
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    move v1, v9

    goto :goto_2

    .line 1073
    :cond_a
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1074
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 1075
    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1077
    iget v7, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v5, v7

    add-int/2addr v3, v6

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v3, v5

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v4

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    goto :goto_2

    .line 1085
    :cond_b
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1086
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 1087
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    :goto_2
    if-eqz v2, :cond_0

    .line 1091
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1092
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    return v0
.end method

.method deflate_slow(I)I
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 1119
    :cond_0
    :goto_0
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v3, 0x106

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_7

    .line 1120
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->fill_window()V

    .line 1121
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    if-ge v2, v3, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-nez v2, :cond_7

    .line 1222
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v1, :cond_2

    .line 1223
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v6

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 1224
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v0

    .line 1226
    :goto_1
    invoke-virtual {p0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1228
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_5

    if-ne p1, v1, :cond_4

    return v5

    :cond_4
    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v6

    :goto_2
    return v4

    .line 1130
    :cond_7
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v4, :cond_8

    .line 1131
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v2

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v8, 0x2

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1133
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aget-short v9, v2, v1

    and-int v10, v9, v7

    .line 1134
    iget-object v11, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    iget v12, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v12, v8

    aput-short v9, v11, v12

    int-to-short v8, v8

    .line 1135
    aput-short v8, v2, v1

    move v1, v10

    .line 1139
    :cond_8
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    iput v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_match:I

    .line 1140
    iput v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    if-eqz v1, :cond_b

    .line 1142
    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-ge v2, v8, :cond_b

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v8, v3

    if-gt v2, v8, :cond_b

    .line 1149
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strategy:I

    if-eq v2, v5, :cond_9

    .line 1150
    invoke-virtual {p0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 1154
    :cond_9
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_b

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strategy:I

    if-eq v3, v6, :cond_a

    if-ne v2, v4, :cond_b

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1000

    if-le v2, v3, :cond_b

    .line 1160
    :cond_a
    iput v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 1166
    :cond_b
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    if-lt v2, v4, :cond_e

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    if-gt v3, v2, :cond_e

    .line 1167
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v4

    sub-int/2addr v3, v6

    .line 1172
    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_match:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1178
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v9, v4, -0x1

    sub-int/2addr v3, v9

    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v4, v5

    .line 1179
    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    .line 1181
    :cond_c
    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    if-gt v4, v8, :cond_d

    .line 1182
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v9

    iget-object v9, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v10, v3, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v1, v9

    iget v9, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v9

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 1184
    iget-object v9, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aget-short v10, v9, v1

    and-int v11, v10, v7

    .line 1185
    iget-object v12, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    iget v13, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v13, v4

    aput-short v10, v12, v13

    int-to-short v4, v4

    .line 1186
    aput-short v4, v9, v1

    move v1, v11

    .line 1189
    :cond_d
    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    if-nez v4, :cond_c

    .line 1190
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    .line 1191
    iput v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v3, v3, 0x2

    .line 1192
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v2, :cond_0

    .line 1195
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1196
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    return v0

    .line 1198
    :cond_e
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v2, :cond_10

    .line 1204
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1207
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 1209
    :cond_f
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1210
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 1211
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    return v0

    .line 1216
    :cond_10
    iput v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    .line 1217
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1218
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    goto/16 :goto_0
.end method

.method deflate_stored(I)I
    .locals 4

    .line 793
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v1, v0, -0x5

    const v2, 0xffff

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v0, -0x5

    .line 800
    :cond_0
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_6

    .line 801
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->fill_window()V

    .line 802
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return v3

    :cond_1
    if-nez v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 829
    :goto_0
    invoke-virtual {p0, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 830
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_4

    if-ne p1, v0, :cond_3

    const/4 v3, 0x2

    :cond_3
    return v3

    :cond_4
    if-ne p1, v0, :cond_5

    const/4 v1, 0x3

    :cond_5
    return v1

    .line 806
    :cond_6
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 807
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 810
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    add-int/2addr v1, v2

    if-eqz v0, :cond_7

    if-lt v0, v1, :cond_8

    :cond_7
    sub-int/2addr v0, v1

    .line 813
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 814
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 816
    invoke-virtual {p0, v3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 817
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_8

    return v3

    .line 823
    :cond_8
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v1, v1, -0x106

    if-lt v0, v1, :cond_0

    .line 824
    invoke-virtual {p0, v3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 825
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_0

    return v3
.end method

.method fill_window()V
    .locals 10

    .line 924
    :cond_0
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window_size:I

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v0, v2

    const/16 v3, 0x106

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 928
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 938
    :cond_2
    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    add-int v5, v4, v4

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_7

    .line 939
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    const/4 v5, 0x0

    invoke-static {v2, v4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    .line 941
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 942
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    .line 950
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_size:I

    move v4, v2

    .line 953
    :cond_3
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    add-int/2addr v2, v1

    aget-short v7, v6, v2

    const v8, 0xffff

    and-int/2addr v7, v8

    .line 954
    iget v9, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    if-lt v7, v9, :cond_4

    sub-int/2addr v7, v9

    int-to-short v7, v7

    goto :goto_0

    :cond_4
    move v7, v5

    :goto_0
    aput-short v7, v6, v2

    add-int/2addr v4, v1

    if-nez v4, :cond_3

    move v2, v9

    .line 961
    :cond_5
    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    add-int/2addr v9, v1

    aget-short v6, v4, v9

    and-int/2addr v6, v8

    .line 962
    iget v7, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    if-lt v6, v7, :cond_6

    sub-int/2addr v6, v7

    int-to-short v6, v6

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    aput-short v6, v4, v9

    add-int/2addr v2, v1

    if-nez v2, :cond_5

    add-int/2addr v0, v7

    .line 970
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_8

    return-void

    .line 983
    :cond_8
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v4, v0}, Lcom/iiordanov/jcraft/jzlib/ZStream;->read_buf([BII)I

    move-result v0

    .line 984
    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v0, 0x3

    if-lt v1, v0, :cond_9

    .line 988
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    .line 989
    iget v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v4

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    :cond_9
    if-ge v1, v3, :cond_a

    .line 994
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_0

    :cond_a
    return-void
.end method

.method flush_block_only(Z)V
    .locals 3

    .line 772
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 775
    iget p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    .line 776
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strm:Lcom/iiordanov/jcraft/jzlib/ZStream;

    invoke-virtual {p1}, Lcom/iiordanov/jcraft/jzlib/ZStream;->flush_pending()V

    return-void
.end method

.method init_block()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x11e

    if-ge v1, v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 375
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->static_len:I

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->opt_len:I

    .line 376
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->matches:I

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_lit:I

    return-void
.end method

.method lm_init()V
    .locals 4

    .line 327
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window_size:I

    .line 329
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-short v3, v0, v2

    move v0, v3

    .line 330
    :goto_0
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->head:[S

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    sget-object v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->config_table:[Lcom/iiordanov/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v2, v0, v2

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->max_lazy:I

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 336
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v2, v0, v2

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->good_length:I

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->good_match:I

    .line 337
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v2, v0, v2

    iget v2, v2, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->nice_length:I

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->nice_match:I

    .line 338
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/iiordanov/jcraft/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 340
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 341
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->block_start:I

    .line 342
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    .line 343
    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    iput v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_length:I

    .line 344
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_available:I

    .line 345
    iput v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->ins_h:I

    return-void
.end method

.method longest_match(I)I
    .locals 18

    move-object/from16 v0, p0

    .line 1237
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 1238
    iget v2, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->strstart:I

    .line 1241
    iget v3, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev_length:I

    .line 1242
    iget v4, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v5, v4, -0x106

    if-le v2, v5, :cond_0

    add-int/lit16 v4, v4, -0x106

    sub-int v4, v2, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1244
    :goto_0
    iget v5, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->nice_match:I

    .line 1249
    iget v6, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->w_mask:I

    add-int/lit16 v7, v2, 0x102

    .line 1252
    iget-object v8, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int v9, v2, v3

    add-int/lit8 v10, v9, -0x1

    aget-byte v10, v8, v10

    .line 1253
    aget-byte v8, v8, v9

    .line 1259
    iget v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->good_match:I

    if-lt v3, v9, :cond_1

    shr-int/lit8 v1, v1, 0x2

    .line 1265
    :cond_1
    iget v9, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    move v11, v2

    if-le v5, v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_1
    move v5, v3

    move v3, v1

    move/from16 v1, p1

    .line 1272
    :cond_3
    iget-object v12, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int v13, v1, v5

    aget-byte v14, v12, v13

    if-ne v14, v8, :cond_a

    add-int/lit8 v13, v13, -0x1

    aget-byte v13, v12, v13

    if-ne v13, v10, :cond_a

    aget-byte v13, v12, v1

    aget-byte v14, v12, v11

    if-ne v13, v14, :cond_a

    add-int/lit8 v13, v1, 0x1

    aget-byte v13, v12, v13

    add-int/lit8 v14, v11, 0x1

    aget-byte v12, v12, v14

    if-eq v13, v12, :cond_4

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v1, 0x2

    .line 1287
    :goto_2
    iget-object v13, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v14, v11, 0x1

    aget-byte v15, v13, v14

    add-int/lit8 v16, v12, 0x1

    move/from16 p1, v8

    aget-byte v8, v13, v16

    if-ne v15, v8, :cond_7

    add-int/lit8 v14, v11, 0x2

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x2

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v14, v11, 0x3

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x3

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v14, v11, 0x4

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x4

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v14, v11, 0x5

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x5

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v14, v11, 0x6

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x6

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v14, v11, 0x7

    aget-byte v8, v13, v14

    add-int/lit8 v15, v12, 0x7

    aget-byte v15, v13, v15

    if-ne v8, v15, :cond_7

    add-int/lit8 v11, v11, 0x8

    aget-byte v8, v13, v11

    add-int/lit8 v12, v12, 0x8

    aget-byte v14, v13, v12

    if-ne v8, v14, :cond_6

    if-lt v11, v7, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v8, p1

    goto :goto_2

    :cond_6
    :goto_3
    move v14, v11

    :cond_7
    sub-int v8, v7, v14

    rsub-int v8, v8, 0x102

    if-le v8, v5, :cond_9

    .line 1301
    iput v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->match_start:I

    if-lt v8, v9, :cond_8

    goto :goto_6

    :cond_8
    add-int v5, v2, v8

    add-int/lit8 v10, v5, -0x1

    .line 1304
    aget-byte v10, v13, v10

    .line 1305
    aget-byte v5, v13, v5

    move v11, v2

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    goto :goto_5

    :cond_9
    move/from16 v8, p1

    move v11, v2

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 p1, v8

    move/from16 v8, p1

    .line 1308
    :goto_5
    iget-object v12, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->prev:[S

    and-int/2addr v1, v6

    aget-short v1, v12, v1

    const v12, 0xffff

    and-int/2addr v1, v12

    if-le v1, v4, :cond_b

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    :cond_b
    move v8, v5

    .line 1311
    :goto_6
    iget v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->lookahead:I

    if-gt v8, v1, :cond_c

    return v8

    :cond_c
    return v1
.end method

.method pqdownheap([SI)V
    .locals 7

    .line 386
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    aget v0, v0, p2

    shl-int/lit8 v1, p2, 0x1

    .line 388
    :goto_0
    iget v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap_len:I

    if-gt v1, v2, :cond_2

    if-ge v1, v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    aget v2, v2, v1

    iget-object v5, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->depth:[B

    .line 391
    invoke-static {p1, v4, v2, v5}, Lcom/iiordanov/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->depth:[B

    invoke-static {p1, v0, v2, v3}, Lcom/iiordanov/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v2, v1

    aput v3, v2, p2

    shl-int/lit8 p2, v1, 0x1

    move v6, v1

    move v1, p2

    move p2, v6

    goto :goto_0

    .line 402
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->heap:[I

    aput v0, p1, p2

    return-void
.end method

.method final putShortMSB(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 568
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    int-to-byte p1, p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    return-void
.end method

.method final put_byte(B)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    return-void
.end method

.method final put_byte([BII)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iget p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->pending:I

    return-void
.end method

.method final put_short(I)V
    .locals 1

    int-to-byte v0, p1

    .line 564
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 565
    invoke-virtual {p0, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_byte(B)V

    return-void
.end method

.method scan_tree([SI)V
    .locals 13

    const/4 v0, 0x1

    .line 420
    aget-short v1, p1, v0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x4

    if-nez v1, :cond_0

    move v6, v2

    move v7, v3

    goto :goto_0

    :cond_0
    move v6, v4

    move v7, v5

    :goto_0
    add-int/lit8 v8, p2, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    const/4 v9, -0x1

    .line 426
    aput-short v9, p1, v8

    const/4 v8, 0x0

    move v10, v8

    move v11, v10

    :goto_1
    if-gt v10, p2, :cond_8

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v0

    .line 429
    aget-short v12, p1, v12

    add-int/2addr v11, v0

    if-ge v11, v6, :cond_1

    if-ne v1, v12, :cond_1

    goto :goto_5

    :cond_1
    if-ge v11, v7, :cond_2

    .line 434
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v7, v1, 0x2

    aget-short v9, v6, v7

    add-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v6, v7

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_4

    if-eq v1, v9, :cond_3

    .line 437
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v7, v1, 0x2

    aget-short v9, v6, v7

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v6, v7

    .line 438
    :cond_3
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v7, 0x20

    aget-short v9, v6, v7

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v6, v7

    goto :goto_2

    :cond_4
    const/16 v6, 0xa

    if-gt v11, v6, :cond_5

    .line 441
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v7, 0x22

    aget-short v9, v6, v7

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v6, v7

    goto :goto_2

    .line 444
    :cond_5
    iget-object v6, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v7, 0x24

    aget-short v9, v6, v7

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v6, v7

    :goto_2
    if-nez v12, :cond_6

    move v9, v1

    move v6, v2

    :goto_3
    move v7, v3

    :goto_4
    move v11, v8

    goto :goto_5

    :cond_6
    if-ne v1, v12, :cond_7

    const/4 v6, 0x6

    move v9, v1

    goto :goto_3

    :cond_7
    move v9, v1

    move v6, v4

    move v7, v5

    goto :goto_4

    :goto_5
    move v1, v12

    goto :goto_1

    :cond_8
    return-void
.end method

.method send_all_trees(III)V
    .locals 3

    add-int/lit16 v0, p1, -0x101

    const/4 v1, 0x5

    .line 492
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 p2, p2, -0x1

    .line 493
    invoke-virtual {p0, p2, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v0, p3, -0x4

    const/4 v1, 0x4

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 496
    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lcom/iiordanov/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    iget-object p3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p3, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_tree([SI)V

    .line 499
    iget-object p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_tree([SI)V

    return-void
.end method

.method send_bits(II)V
    .locals 3

    .line 579
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v1, p2, 0x10

    const v2, 0xffff

    if-le v0, v1, :cond_0

    .line 582
    iget-short v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    shl-int v0, p1, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    .line 583
    invoke-virtual {p0, v0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->put_short(I)V

    .line 584
    iget v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v1, v0, 0x10

    ushr-int/2addr p1, v1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    add-int/lit8 p2, p2, -0x10

    add-int/2addr v0, p2

    .line 585
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0

    .line 588
    :cond_0
    iget-short v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    shl-int/2addr p1, v0

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    add-int/2addr v0, p2

    .line 589
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    :goto_0
    return-void
.end method

.method final send_code(I[S)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    .line 574
    aget-short v0, p2, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-short p1, p2, p1

    and-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    return-void
.end method

.method send_tree([SI)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 510
    aget-short v2, p1, v1

    const/16 v3, 0x8a

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x4

    if-nez v2, :cond_0

    move v7, v3

    move v8, v4

    goto :goto_0

    :cond_0
    move v7, v5

    move v8, v6

    :goto_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    move/from16 v11, p2

    move v14, v9

    move v12, v10

    move v13, v12

    :goto_1
    if-gt v12, v11, :cond_9

    add-int/lit8 v12, v12, 0x1

    mul-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v1

    .line 518
    aget-short v15, p1, v15

    add-int/lit8 v1, v13, 0x1

    if-ge v1, v7, :cond_1

    if-ne v2, v15, :cond_1

    move v13, v1

    goto :goto_6

    :cond_1
    if-ge v1, v8, :cond_3

    .line 523
    :cond_2
    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v2, v7}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/2addr v1, v9

    if-nez v1, :cond_2

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_5

    if-eq v2, v14, :cond_4

    .line 527
    iget-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v2, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    goto :goto_2

    :cond_4
    move v13, v1

    :goto_2
    const/16 v1, 0x10

    .line 529
    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v1, v7}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    sub-int/2addr v13, v4

    const/4 v1, 0x2

    .line 530
    invoke-virtual {v0, v13, v1}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_3

    :cond_5
    const/16 v7, 0xa

    if-gt v1, v7, :cond_6

    const/16 v1, 0x11

    .line 533
    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v1, v7}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v13, v13, -0x2

    .line 534
    invoke-virtual {v0, v13, v4}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x12

    .line 537
    iget-object v7, v0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v1, v7}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v13, v13, -0xa

    .line 538
    invoke-virtual {v0, v13, v5}, Lcom/iiordanov/jcraft/jzlib/Deflate;->send_bits(II)V

    :goto_3
    if-nez v15, :cond_7

    move v14, v2

    move v7, v3

    :goto_4
    move v8, v4

    :goto_5
    move v13, v10

    goto :goto_6

    :cond_7
    if-ne v2, v15, :cond_8

    const/4 v1, 0x6

    move v7, v1

    move v14, v2

    goto :goto_4

    :cond_8
    move v14, v2

    move v7, v5

    move v8, v6

    goto :goto_5

    :goto_6
    move v2, v15

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method set_data_type()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 718
    iget-object v3, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v1, 0x2

    aget-short v3, v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    const/16 v4, 0x80

    if-ge v1, v4, :cond_1

    .line 719
    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v1, 0x2

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v4, 0x100

    if-ge v1, v4, :cond_2

    .line 720
    iget-object v4, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v1, 0x2

    aget-short v4, v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    ushr-int/lit8 v1, v3, 0x2

    if-le v2, v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    .line 721
    iput-byte v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->data_type:B

    return-void
.end method

.method tr_init()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 352
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->l_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    sget-object v1, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->stat_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    .line 354
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 355
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->d_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    sget-object v1, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->stat_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    .line 357
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    iget-object v1, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 358
    iget-object v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bl_desc:Lcom/iiordanov/jcraft/jzlib/Tree;

    sget-object v1, Lcom/iiordanov/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    iput-object v1, v0, Lcom/iiordanov/jcraft/jzlib/Tree;->stat_desc:Lcom/iiordanov/jcraft/jzlib/StaticTree;

    const/4 v0, 0x0

    .line 360
    iput-short v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_buf:S

    .line 361
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v0, 0x8

    .line 362
    iput v0, p0, Lcom/iiordanov/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 365
    invoke-virtual {p0}, Lcom/iiordanov/jcraft/jzlib/Deflate;->init_block()V

    return-void
.end method
