.class public final enum Lcom/iiordanov/bVNC/COLORMODEL;
.super Ljava/lang/Enum;
.source "COLORMODEL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iiordanov/bVNC/COLORMODEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C2:Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C256:Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C4:Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C64:Lcom/iiordanov/bVNC/COLORMODEL;

.field public static final enum C8:Lcom/iiordanov/bVNC/COLORMODEL;


# direct methods
.method private static synthetic $values()[Lcom/iiordanov/bVNC/COLORMODEL;
    .locals 6

    .line 28
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    sget-object v1, Lcom/iiordanov/bVNC/COLORMODEL;->C256:Lcom/iiordanov/bVNC/COLORMODEL;

    sget-object v2, Lcom/iiordanov/bVNC/COLORMODEL;->C64:Lcom/iiordanov/bVNC/COLORMODEL;

    sget-object v3, Lcom/iiordanov/bVNC/COLORMODEL;->C8:Lcom/iiordanov/bVNC/COLORMODEL;

    sget-object v4, Lcom/iiordanov/bVNC/COLORMODEL;->C4:Lcom/iiordanov/bVNC/COLORMODEL;

    sget-object v5, Lcom/iiordanov/bVNC/COLORMODEL;->C2:Lcom/iiordanov/bVNC/COLORMODEL;

    filled-new-array/range {v0 .. v5}, [Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C24bit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C256"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C256:Lcom/iiordanov/bVNC/COLORMODEL;

    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C64"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C64:Lcom/iiordanov/bVNC/COLORMODEL;

    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C8:Lcom/iiordanov/bVNC/COLORMODEL;

    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C4:Lcom/iiordanov/bVNC/COLORMODEL;

    new-instance v0, Lcom/iiordanov/bVNC/COLORMODEL;

    const-string v1, "C2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/COLORMODEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C2:Lcom/iiordanov/bVNC/COLORMODEL;

    .line 28
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->$values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->$VALUES:[Lcom/iiordanov/bVNC/COLORMODEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iiordanov/bVNC/COLORMODEL;
    .locals 1

    .line 28
    const-class v0, Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iiordanov/bVNC/COLORMODEL;

    return-object p0
.end method

.method public static values()[Lcom/iiordanov/bVNC/COLORMODEL;
    .locals 1

    .line 28
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->$VALUES:[Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v0}, [Lcom/iiordanov/bVNC/COLORMODEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iiordanov/bVNC/COLORMODEL;

    return-object v0
.end method


# virtual methods
.method public bpp()I
    .locals 2

    .line 32
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL$1;->$SwitchMap$com$iiordanov$bVNC$COLORMODEL:[I

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/COLORMODEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public nameString()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public palette()[I
    .locals 2

    .line 41
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL$1;->$SwitchMap$com$iiordanov$bVNC$COLORMODEL:[I

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/COLORMODEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/iiordanov/bVNC/ColorModel8;->colors:[I

    return-object v0

    .line 51
    :cond_1
    sget-object v0, Lcom/iiordanov/bVNC/ColorModel64;->colors:[I

    return-object v0

    .line 49
    :cond_2
    sget-object v0, Lcom/iiordanov/bVNC/ColorModel8;->colors:[I

    return-object v0

    .line 47
    :cond_3
    sget-object v0, Lcom/iiordanov/bVNC/ColorModel64;->colors:[I

    return-object v0

    .line 45
    :cond_4
    sget-object v0, Lcom/iiordanov/bVNC/ColorModel256;->colors:[I

    return-object v0
.end method

.method public setPixelFormat(Lcom/undatech/opaque/RfbConnectable;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL$1;->$SwitchMap$com$iiordanov$bVNC$COLORMODEL:[I

    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/COLORMODEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x10

    const/16 v9, 0x8

    move-object/from16 v0, p1

    .line 89
    invoke-interface/range {v0 .. v11}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object/from16 v1, p1

    .line 85
    invoke-interface/range {v1 .. v12}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto/16 :goto_0

    :pswitch_1
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v14, 0x8

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x2

    move-object/from16 v13, p1

    .line 81
    invoke-interface/range {v13 .. v24}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, p1

    .line 77
    invoke-interface/range {v0 .. v11}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto :goto_0

    :pswitch_3
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x2

    move-object/from16 v12, p1

    .line 74
    invoke-interface/range {v12 .. v23}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto :goto_0

    :pswitch_4
    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object/from16 v0, p1

    .line 71
    invoke-interface/range {v0 .. v11}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    goto :goto_0

    :pswitch_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v13, 0x20

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xff

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0x10

    const/16 v21, 0x8

    move-object/from16 v12, p1

    .line 68
    invoke-interface/range {v12 .. v23}, Lcom/undatech/opaque/RfbConnectable;->writeSetPixelFormat(IIZZIIIIIIZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL$1;->$SwitchMap$com$iiordanov$bVNC$COLORMODEL:[I

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/COLORMODEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_24_bit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_black_and_white:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_1
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_greyscale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_2
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_3
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_64:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_4
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_256:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_5
    invoke-static {}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->color_24_bit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
