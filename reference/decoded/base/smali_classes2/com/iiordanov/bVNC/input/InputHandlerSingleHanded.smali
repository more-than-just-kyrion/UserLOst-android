.class public Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;
.super Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;
.source "InputHandlerSingleHanded.java"


# static fields
.field public static final ID:Ljava/lang/String; = "SINGLE_HANDED_MODE"

.field static final TAG:Ljava/lang/String; = "InputHandlerSingleHand"


# instance fields
.field accumulatedScroll:I

.field private cancelButton:Landroid/widget/ImageButton;

.field private dragModeButton:Landroid/widget/ImageButton;

.field private eventAction:I

.field private eventMeta:I

.field private eventStartX:I

.field private eventStartY:I

.field private middleDragModeButton:Landroid/widget/ImageButton;

.field private needInitPan:Z

.field private rightDragModeButton:Landroid/widget/ImageButton;

.field private scrollButton:Landroid/widget/ImageButton;

.field private singleHandOpts:Landroid/widget/RelativeLayout;

.field private zoomButton:Landroid/widget/ImageButton;


# direct methods
.method static bridge synthetic -$$Nest$fgeteventMeta(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventMeta:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteventStartX(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteventStartY(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsingleHandOpts(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartNewSingleHandedGesture(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->startNewSingleHandedGesture()V

    return-void
.end method

.method public constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    .line 59
    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->initializeButtons()V

    return-void
.end method

.method private initializeButtons()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleHandOpts:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    .line 67
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleDrag:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->dragModeButton:Landroid/widget/ImageButton;

    .line 68
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$1;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$1;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleRight:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->rightDragModeButton:Landroid/widget/ImageButton;

    .line 80
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$2;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$2;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleMiddle:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->middleDragModeButton:Landroid/widget/ImageButton;

    .line 92
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$3;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleScroll:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollButton:Landroid/widget/ImageButton;

    .line 104
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$4;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$4;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleZoom:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->zoomButton:Landroid/widget/ImageButton;

    .line 118
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$5;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->singleCancel:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->cancelButton:Landroid/widget/ImageButton;

    .line 128
    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded$6;-><init>(Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeSingleHandedMode(Landroid/view/MotionEvent;)V
    .locals 3

    .line 186
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->getX(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartX:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->getY(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartY:I

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->xInitialFocus:F

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->yInitialFocus:F

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->needInitPan:Z

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventAction:I

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventMeta:I

    .line 193
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object p1

    .line 197
    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartX:I

    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventStartY:I

    iget v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->eventMeta:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->moveMouseButtonUp(III)V

    return-void
.end method

.method private startNewSingleHandedGesture()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->endDragModesAndScrolling()Z

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandedGesture:Z

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_method_single_handed_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "SINGLE_HANDED_MODE"

    return-object v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandedGesture:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandedJustEnded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->initializeSingleHandedMode(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_2

    .line 180
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_reposition:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_choose:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 225
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandedGesture:Z

    if-nez v0, :cond_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 229
    :cond_0
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->inSwiping:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 231
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollUp:Z

    .line 232
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollDown:Z

    .line 233
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollLeft:Z

    .line 234
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollRight:Z

    .line 236
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 237
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    if-le v1, p1, :cond_2

    cmpl-float p1, p4, v2

    if-lez p1, :cond_1

    .line 241
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollDown:Z

    goto :goto_0

    .line 243
    :cond_1
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollUp:Z

    .line 244
    :goto_0
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0xf

    int-to-long p3, p1

    iput-wide p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->swipeSpeed:J

    .line 245
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    goto :goto_2

    :cond_2
    cmpl-float p3, p3, v2

    if-lez p3, :cond_3

    .line 249
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollRight:Z

    goto :goto_1

    .line 251
    :cond_3
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->scrollLeft:Z

    .line 252
    :goto_1
    iget p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    add-int/2addr p1, p3

    div-int/lit8 p1, p1, 0xf

    int-to-long p3, p1

    iput-wide p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->swipeSpeed:J

    .line 253
    iget p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    .line 255
    :goto_2
    iget-wide p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->swipeSpeed:J

    const-wide/16 v1, 0x1

    cmp-long p1, p3, v1

    if-gez p1, :cond_4

    const-wide/16 p3, 0x0

    .line 256
    iput-wide p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->swipeSpeed:J

    goto :goto_3

    .line 258
    :cond_4
    iput v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->accumulatedScroll:I

    goto :goto_3

    .line 259
    :cond_5
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->inScaling:Z

    if-eqz p1, :cond_7

    const p1, 0x3c23d70a    # 0.01f

    mul-float/2addr p4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p4, p1

    .line 262
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    if-eqz p1, :cond_7

    .line 263
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractScaling;->getZoomFactor()F

    move-result p1

    .line 265
    iget-boolean p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->needInitPan:Z

    if-eqz p3, :cond_6

    .line 266
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->needInitPan:Z

    .line 267
    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->xInitialFocus:F

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 268
    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAbsY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->yInitialFocus:F

    iget-object v4, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    .line 267
    invoke-virtual {p3, v0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->absolutePan(II)V

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    iget-object p3, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->activity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iget v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->xInitialFocus:F

    iget v1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->yInitialFocus:F

    invoke-virtual {p1, p3, p4, v0, v1}, Lcom/iiordanov/bVNC/AbstractScaling;->changeZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;FFF)V

    :cond_7
    :goto_3
    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->singleHandOpts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->initializeSingleHandedMode(Landroid/view/MotionEvent;)V

    .line 211
    iget-object p1, p0, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->single_reposition:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(I)V

    const/4 p1, 0x1

    return p1

    .line 214
    :cond_0
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
