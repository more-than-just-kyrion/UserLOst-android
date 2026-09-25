.class public abstract Lcom/iiordanov/bVNC/AbstractScaling;
.super Ljava/lang/Object;
.source "AbstractScaling.java"


# static fields
.field private static final scaleModeIds:[I

.field private static scalings:[Lcom/iiordanov/bVNC/AbstractScaling;


# instance fields
.field private id:I

.field protected scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemOneToOne:I

    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemZoomable:I

    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleModeIds:[I

    return-void
.end method

.method protected constructor <init>(ILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/iiordanov/bVNC/AbstractScaling;->id:I

    .line 95
    iput-object p2, p0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static getById(I)Lcom/iiordanov/bVNC/AbstractScaling;
    .locals 3

    .line 45
    sget-object v0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleModeIds:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/iiordanov/bVNC/AbstractScaling;

    sput-object v0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    sget-object v1, Lcom/iiordanov/bVNC/AbstractScaling;->scaleModeIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 51
    aget v1, v1, v0

    if-ne v1, p0, :cond_4

    .line 53
    sget-object v1, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 55
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    if-ne p0, v1, :cond_1

    .line 56
    sget-object p0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    new-instance v1, Lcom/iiordanov/bVNC/FitToScreenScaling;

    invoke-direct {v1}, Lcom/iiordanov/bVNC/FitToScreenScaling;-><init>()V

    aput-object v1, p0, v0

    goto :goto_1

    .line 57
    :cond_1
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemOneToOne:I

    if-ne p0, v1, :cond_2

    .line 58
    sget-object p0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    new-instance v1, Lcom/iiordanov/bVNC/OneToOneScaling;

    invoke-direct {v1}, Lcom/iiordanov/bVNC/OneToOneScaling;-><init>()V

    aput-object v1, p0, v0

    goto :goto_1

    .line 59
    :cond_2
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemZoomable:I

    if-ne p0, v1, :cond_3

    .line 60
    sget-object p0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    new-instance v1, Lcom/iiordanov/bVNC/ZoomScaling;

    invoke-direct {v1}, Lcom/iiordanov/bVNC/ZoomScaling;-><init>()V

    aput-object v1, p0, v0

    .line 63
    :cond_3
    :goto_1
    sget-object p0, Lcom/iiordanov/bVNC/AbstractScaling;->scalings:[Lcom/iiordanov/bVNC/AbstractScaling;

    aget-object p0, p0, v0

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown scaling id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getByScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/iiordanov/bVNC/AbstractScaling;
    .locals 5

    .line 80
    sget-object v0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleModeIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 82
    invoke-static {v3}, Lcom/iiordanov/bVNC/AbstractScaling;->getById(I)Lcom/iiordanov/bVNC/AbstractScaling;

    move-result-object v3

    .line 83
    iget-object v4, v3, Lcom/iiordanov/bVNC/AbstractScaling;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scale type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;FFF)V
    .locals 0

    return-void
.end method

.method abstract getDefaultHandlerId()I
.end method

.method getId()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/iiordanov/bVNC/AbstractScaling;->id:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getZoomFactor()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method abstract isAbleToPan()Z
.end method

.method abstract isValidInputMode(I)Z
.end method

.method setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    .line 114
    iput-object p0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    .line 118
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getConnection()Lcom/undatech/opaque/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/AbstractScaling;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setScaleMode(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    iget-object v0, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getModeIdFromHandler(Lcom/iiordanov/bVNC/input/InputHandler;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/AbstractScaling;->isValidInputMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/AbstractScaling;->getDefaultHandlerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    .line 122
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getConnection()Lcom/undatech/opaque/Connection;

    move-result-object v0

    iget-object v1, p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v1}, Lcom/iiordanov/bVNC/input/InputHandler;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setInputMode(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getConnection()Lcom/undatech/opaque/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->updateInputMenu()V

    return-void
.end method

.method zoomIn(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    return-void
.end method

.method zoomOut(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    return-void
.end method
