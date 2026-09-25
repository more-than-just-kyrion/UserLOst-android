.class public Lcom/iiordanov/bVNC/RemoteCanvasActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/undatech/opaque/dialogs/SelectTextElementFragment$OnFragmentDismissedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteCanvasActivity"

.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static final inputModeIds:[I

.field public static final inputModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final scalingModeIds:[I


# instance fields
.field private canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private connection:Lcom/undatech/opaque/Connection;

.field extraKeysHidden:Z

.field handler:Landroid/os/Handler;

.field hardKeyboardExtended:Z

.field final hideToolbarDelay:J

.field private immersiveDisabler:Ljava/lang/Runnable;

.field private immersiveEnabler:Ljava/lang/Runnable;

.field inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

.field private inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

.field private inputModeMenuItems:[Landroid/view/MenuItem;

.field keyAlt:Landroid/widget/ImageButton;

.field keyAltToggled:Z

.field keyCtrl:Landroid/widget/ImageButton;

.field keyCtrlToggled:Z

.field keyDown:Landroid/widget/ImageButton;

.field keyEsc:Landroid/widget/ImageButton;

.field keyLeft:Landroid/widget/ImageButton;

.field keyRight:Landroid/widget/ImageButton;

.field keyShift:Landroid/widget/ImageButton;

.field keyShiftToggled:Z

.field keySuper:Landroid/widget/ImageButton;

.field keySuperToggled:Z

.field keyTab:Landroid/widget/ImageButton;

.field keyUp:Landroid/widget/ImageButton;

.field private lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field layoutArrowKeys:Landroid/widget/LinearLayout;

.field layoutKeys:Landroid/widget/RelativeLayout;

.field private myVibrator:Landroid/os/Vibrator;

.field panner:Lcom/iiordanov/bVNC/input/Panner;

.field rootView:Landroid/view/View;

.field private rotationCorrector:Ljava/lang/Runnable;

.field private scalingModeMenuItems:[Landroid/view/MenuItem;

.field volatile softKeyboardUp:Z

.field toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

.field toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetcanvas(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/iiordanov/bVNC/RemoteCanvas;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnection(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)Lcom/undatech/opaque/Connection;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcorrectAfterRotation(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->correctAfterRotation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetOnScreenKeys(Lcom/iiordanov/bVNC/RemoteCanvasActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->resetOnScreenKeys(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 128
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchpad:I

    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemInputDragPanZoomMouse:I

    sget v3, Lcom/undatech/remoteClientUi/R$id;->itemInputSingleHanded:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    .line 132
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemZoomable:I

    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemOneToOne:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeIds:[I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchpad:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TOUCHPAD_MODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputDragPanZoomMouse:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TOUCH_ZOOM_MODE_DRAG_PAN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TOUCH_ZOOM_MODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputSingleHanded:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SINGLE_HANDED_MODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    .line 173
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$1;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveEnabler:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$2;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveDisabler:Ljava/lang/Runnable;

    .line 1135
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$23;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$23;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->rotationCorrector:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    .line 1627
    iput-wide v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->hideToolbarDelay:J

    .line 1628
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvasActivity-IA;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    return-void
.end method

.method private correctAfterRotation()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1146
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "correctAfterRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->waitUntilInflated()V

    .line 1150
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractScaling;->getZoomFactor()F

    move-result v0

    .line 1151
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 1152
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 1153
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-virtual {v3, p0}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 1154
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/AbstractScaling;->getZoomFactor()F

    move-result v3

    .line 1155
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v4, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    div-float v3, v0, v3

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v3, v5, v5}, Lcom/iiordanov/bVNC/AbstractScaling;->changeZoom(Lcom/iiordanov/bVNC/RemoteCanvasActivity;FFF)V

    .line 1156
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v3, v3, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/AbstractScaling;->getZoomFactor()F

    move-result v3

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    .line 1158
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractScaling;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v3, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 1160
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 1161
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/RfbConnectable;->requestResolution(II)V

    goto :goto_0

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->isRequestingNewDisplayResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/undatech/opaque/SpiceCommunicator;->requestResolution(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private createHelpDialog()Landroid/app/Dialog;
    .locals 3

    .line 1100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/undatech/remoteClientUi/R$string;->input_mode_help_text:I

    .line 1101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->close:I

    new-instance v2, Lcom/iiordanov/bVNC/RemoteCanvasActivity$22;

    invoke-direct {v2, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$22;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 1102
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1109
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1110
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1111
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x1

    .line 1112
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 1113
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1114
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method private disableImmersive()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveDisabler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveDisabler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private enableImmersive()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveEnabler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->immersiveEnabler:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1741
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private initializeOnScreenKeys()V
    .locals 2

    .line 728
    sget v0, Lcom/undatech/remoteClientUi/R$id;->layoutKeys:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    .line 729
    sget v0, Lcom/undatech/remoteClientUi/R$id;->layoutArrowKeys:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutArrowKeys:Landroid/widget/LinearLayout;

    .line 732
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyTab:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyTab:Landroid/widget/ImageButton;

    .line 733
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$8;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$8;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 753
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyEsc:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyEsc:Landroid/widget/ImageButton;

    .line 754
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$9;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 774
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyCtrl:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyCtrl:Landroid/widget/ImageButton;

    .line 775
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$10;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$10;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyCtrl:Landroid/widget/ImageButton;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$11;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$11;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 801
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keySuper:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuper:Landroid/widget/ImageButton;

    .line 802
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$12;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$12;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuper:Landroid/widget/ImageButton;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$13;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 828
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyAlt:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyAlt:Landroid/widget/ImageButton;

    .line 829
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$14;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$14;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyAlt:Landroid/widget/ImageButton;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$15;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$15;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 855
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyShift:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShift:Landroid/widget/ImageButton;

    .line 856
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$16;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShift:Landroid/widget/ImageButton;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$17;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$17;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 886
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyUpArrow:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyUp:Landroid/widget/ImageButton;

    .line 887
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$18;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$18;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 907
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyDownArrow:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyDown:Landroid/widget/ImageButton;

    .line 908
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$19;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$19;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 928
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyLeftArrow:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyLeft:Landroid/widget/ImageButton;

    .line 929
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$20;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$20;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 949
    sget v0, Lcom/undatech/remoteClientUi/R$id;->keyRightArrow:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyRight:Landroid/widget/ImageButton;

    .line 950
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$21;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$21;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initializeOpaque(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x3

    .line 414
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setVolumeControlStream(I)V

    .line 415
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 416
    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->retrieveVvFileFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 417
    const-string v1, "RemoteCanvasActivity"

    if-nez v6, :cond_0

    .line 418
    const-string v2, "Initializing session from connection settings."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v1, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/undatech/opaque/ConnectionSettings;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    goto :goto_0

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Initializing session from vv file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    sget p1, Lcom/undatech/remoteClientUi/R$string;->vv_file_not_found:I

    sget p2, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p0, p1, p2}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    return-void

    .line 428
    :cond_1
    new-instance v0, Lcom/undatech/opaque/ConnectionSettings;

    const-string v1, "defaultSettings"

    invoke-direct {v0, v1}, Lcom/undatech/opaque/ConnectionSettings;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 429
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->load(Landroid/content/Context;)V

    .line 431
    :goto_0
    new-instance v3, Lcom/undatech/opaque/OpaqueHandler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-direct {v3, p0, v0, v1}, Lcom/undatech/opaque/OpaqueHandler;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/Connection;)V

    iput-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    .line 432
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->init(Lcom/undatech/opaque/Connection;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private isMasterPasswordEnabled()Z
    .locals 3

    .line 1727
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1728
    const-string v2, "masterPasswordEnabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private resetOnScreenKeys(I)V
    .locals 1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_3

    .line 980
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyCtrlToggled:Z

    if-nez p1, :cond_0

    .line 981
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyCtrl:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->ctrloff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 982
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenCtrlOff()V

    .line 984
    :cond_0
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyAltToggled:Z

    if-nez p1, :cond_1

    .line 985
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyAlt:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->altoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 986
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenAltOff()V

    .line 988
    :cond_1
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuperToggled:Z

    if-nez p1, :cond_2

    .line 989
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keySuper:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->superoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 990
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenSuperOff()V

    .line 992
    :cond_2
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShiftToggled:Z

    if-nez p1, :cond_3

    .line 993
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->keyShift:Landroid/widget/ImageButton;

    sget v0, Lcom/undatech/remoteClientUi/R$drawable;->shiftoff:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 994
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->onScreenShiftOff()V

    :cond_3
    return-void
.end method

.method private retrieveVvFileFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .line 603
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tempfile.vv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    const-string v2, "RemoteCanvasActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got intent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz v0, :cond_5

    .line 611
    const-string v2, "RemoteCanvasActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    const-string p1, "RemoteCanvasActivity"

    const-string v3, "Intent is with http scheme."

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget p1, Lcom/undatech/remoteClientUi/R$string;->error_failed_to_download_vv_http:I

    .line 616
    invoke-static {v1}, Lcom/undatech/opaque/util/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 619
    new-instance v3, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$7;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 645
    monitor-enter p0

    const-wide/16 v3, 0x4268

    .line 647
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 650
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 653
    :goto_0
    monitor-exit p0

    goto :goto_4

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 654
    :cond_0
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    const-string p1, "RemoteCanvasActivity"

    const-string v1, "Intent is with file scheme."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    sget p1, Lcom/undatech/remoteClientUi/R$string;->error_failed_to_obtain_vv_file:I

    .line 657
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 658
    :cond_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 659
    const-string v3, "RemoteCanvasActivity"

    const-string v4, "Intent is with content scheme."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget v3, Lcom/undatech/remoteClientUi/R$string;->error_failed_to_obtain_vv_content:I

    .line 661
    invoke-static {v1}, Lcom/undatech/opaque/util/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 664
    :try_start_2
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/undatech/opaque/util/FileUtils;->outputToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 670
    const-string v1, "RemoteCanvasActivity"

    const-string v4, "Could not write temp file: SecurityException."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 667
    const-string v1, "RemoteCanvasActivity"

    const-string v4, "Could not write temp file: IOException."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    move-object v1, p1

    :goto_3
    move p1, v3

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    move-object v1, p1

    move p1, v0

    .line 676
    :goto_4
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-nez v1, :cond_4

    .line 678
    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-static {p0, p1, v0}, Lcom/undatech/opaque/MessageDialogs;->displayMessageAndFinish(Landroid/content/Context;II)V

    .line 680
    :cond_4
    const-string p1, "RemoteCanvasActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Got filename: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :cond_5
    return-object p1
.end method

.method private selectColorModel()V
    .locals 7

    .line 1597
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1600
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1601
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/COLORMODEL;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1602
    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v5, v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->isColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1606
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1607
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1608
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1609
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090005

    invoke-direct {v5, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1611
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1612
    invoke-virtual {v4, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1613
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$25;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1623
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1624
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private sendSpecialKeyAgain()V
    .locals 6

    .line 1474
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    if-eqz v0, :cond_0

    .line 1475
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getLastMetaKeyId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1476
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    new-instance v1, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 1478
    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 1482
    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getLastMetaKeyId()J

    move-result-wide v3

    .line 1481
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "META_KEY"

    const-string v5, "_id"

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1479
    const-string v4, "SELECT * FROM {0} WHERE {1} = {2}"

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->EMPTY_ARGS:[Ljava/lang/String;

    .line 1478
    invoke-virtual {v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 1484
    sget-object v3, Lcom/iiordanov/bVNC/input/MetaKeyBean;->NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {v2, v0, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->Gen_populateFromCursor(Landroid/database/Cursor;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 1485
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1486
    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 1487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 1488
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1490
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 1493
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->lastSentKey:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    :cond_3
    return-void
.end method

.method private setExtraKeysVisibility(IZ)V
    .locals 2

    .line 1003
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1009
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p2, v1

    .line 1012
    :cond_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 1013
    invoke-interface {p2}, Lcom/undatech/opaque/Connection;->getExtraKeysToggleType()I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 1014
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1015
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_1
    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    .line 1020
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1021
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method private setKeyStowDrawableAndVisibility(Landroid/view/MenuItem;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getExtraKeysToggleType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 704
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 706
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 708
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 709
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$drawable;->showkeys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 711
    :cond_2
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$drawable;->hidekeys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 713
    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method clearInputHandlers()V
    .locals 3

    .line 1348
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1351
    :goto_0
    sget-object v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_1
    iput-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    return-void
.end method

.method continueConnecting()V
    .locals 3

    .line 436
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "continueConnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->initializeOnScreenKeys()V

    .line 440
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 441
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setFocusableInTouchMode(Z)V

    .line 442
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setDrawingCacheEnabled(Z)V

    const v0, 0x1020002

    .line 449
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->rootView:Landroid/view/View;

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$6;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$6;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 457
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 461
    const-string v1, "leftHandedModeTag"

    invoke-static {p0, v1}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    .line 462
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    .line 464
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 467
    :goto_0
    new-instance v1, Lcom/iiordanov/bVNC/input/Panner;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/iiordanov/bVNC/input/Panner;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->panner:Lcom/iiordanov/bVNC/input/Panner;

    .line 469
    sget v1, Lcom/undatech/remoteClientUi/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/undatech/opaque/util/RemoteToolbar;

    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    .line 470
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/undatech/opaque/util/RemoteToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v1}, Lcom/undatech/opaque/util/RemoteToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 472
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v1, v0}, Lcom/undatech/opaque/util/RemoteToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 474
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    return-void
.end method

.method public extraKeysToggle(Landroid/view/MenuItem;)V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 688
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    const/16 v0, 0x8

    .line 689
    invoke-direct {p0, v0, v2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    goto :goto_0

    .line 691
    :cond_0
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    .line 692
    invoke-direct {p0, v2, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    .line 694
    :goto_0
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setKeyStowDrawableAndVisibility(Landroid/view/MenuItem;)V

    .line 695
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->relayoutViews(Landroid/view/View;)V

    return-void
.end method

.method public getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    return-object v0
.end method

.method public getConnection()Lcom/undatech/opaque/Connection;
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    return-object v0
.end method

.method getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;
    .locals 4

    .line 1321
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->myVibrator:Landroid/os/Vibrator;

    .line 1323
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    if-nez v0, :cond_0

    .line 1324
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/iiordanov/bVNC/input/InputHandler;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    :cond_0
    const/4 v0, 0x0

    .line 1326
    :goto_0
    sget-object v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 1327
    aget v1, v1, v0

    if-ne v1, p1, :cond_6

    .line 1328
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 1329
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    if-ne p1, v1, :cond_1

    .line 1330
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/iiordanov/bVNC/input/InputHandlerDirectSwipePan;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    aput-object v1, p1, v0

    goto :goto_1

    .line 1331
    :cond_1
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputDragPanZoomMouse:I

    if-ne p1, v1, :cond_2

    .line 1332
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/iiordanov/bVNC/input/InputHandlerDirectDragPan;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    aput-object v1, p1, v0

    goto :goto_1

    .line 1333
    :cond_2
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchpad:I

    if-ne p1, v1, :cond_3

    .line 1334
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/iiordanov/bVNC/input/InputHandlerTouchpad;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    aput-object v1, p1, v0

    goto :goto_1

    .line 1335
    :cond_3
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputSingleHanded:I

    if-ne p1, v1, :cond_4

    .line 1336
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    new-instance v1, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/iiordanov/bVNC/input/InputHandlerSingleHanded;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/iiordanov/bVNC/input/RemotePointer;)V

    aput-object v1, p1, v0

    goto :goto_1

    .line 1338
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeHandlers:[Lcom/iiordanov/bVNC/input/InputHandler;

    aget-object p1, p1, v0

    return-object p1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method getInputHandlerByName(Ljava/lang/String;)Lcom/iiordanov/bVNC/input/InputHandler;
    .locals 5

    .line 1359
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1360
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v3

    .line 1361
    invoke-interface {v3}, Lcom/iiordanov/bVNC/input/InputHandler;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 1367
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method getModeIdFromHandler(Lcom/iiordanov/bVNC/input/InputHandler;)I
    .locals 5

    .line 1373
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1374
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v4

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    return p1
.end method

.method public getPanner()Lcom/iiordanov/bVNC/input/Panner;
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->panner:Lcom/iiordanov/bVNC/input/Panner;

    return-object v0
.end method

.method public getRotateDpad()Z
    .locals 1

    .line 1705
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRotateDpad()Z

    move-result v0

    return v0
.end method

.method public getUseDpadAsArrows()Z
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUseDpadAsArrows()Z

    move-result v0

    return v0
.end method

.method public hideKeyboard()V
    .locals 3

    .line 1674
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "Hiding keyboard and hiding action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1676
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->requestFocus()Z

    .line 1677
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1678
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    .line 1679
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    return-void
.end method

.method public hideKeyboardAndExtraKeys()V
    .locals 2

    .line 1683
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->hideKeyboard()V

    .line 1684
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1685
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1686
    invoke-direct {p0, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    :cond_0
    return-void
.end method

.method initialize(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    .line 309
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    .line 311
    const-string v0, "keepScreenOn"

    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 314
    :cond_0
    const-string v0, "forceLandscape"

    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setRequestedOrientation(I)V

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    .line 318
    iput-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 320
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 321
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 324
    const-string v6, "RemoteCanvasActivity"

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 326
    const-string v8, "rdp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "spice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "vnc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 330
    :cond_3
    :goto_0
    const-string v0, "Initializing classic connection from Intent."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->isMasterPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_intents_not_supported:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_4
    invoke-static {v2, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->createLoadFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 338
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getConnectionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v2}, Lcom/undatech/opaque/Connection;->parseFromUri(Landroid/net/Uri;)V

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->isReadyToBeSaved()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v5, p0}, Lcom/undatech/opaque/Connection;->saveAndWriteRecent(ZLandroid/content/Context;)V

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->isReadyForConnection()Z

    move-result v0

    if-nez v0, :cond_e

    .line 348
    sget p1, Lcom/undatech/remoteClientUi/R$string;->error_uri_noinfo_nosave:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 349
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->isReadyToBeSaved()Z

    move-result p1

    if-nez p1, :cond_7

    .line 350
    const-string p1, "Exiting - Insufficent information to connect and connection was not saved."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 352
    :cond_7
    const-string p1, "Insufficent information to connect, showing connection dialog."

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-class p1, Lcom/iiordanov/bVNC/bVNC;

    .line 355
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 356
    const-class p1, Lcom/iiordanov/bVNC/aRDP;

    goto :goto_1

    .line 357
    :cond_8
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 358
    const-class p1, Lcom/iiordanov/bVNC/aSPICE;

    .line 360
    :cond_9
    :goto_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    :goto_2
    invoke-static {p0}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    return-void

    .line 367
    :cond_a
    const-string v0, "Initializing classic connection from Serializeable."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    if-eqz v3, :cond_b

    .line 371
    const-string v0, "Initializing classic connection from Serializeable, loading values."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getConnectionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-interface {v0, v2}, Lcom/undatech/opaque/Connection;->populateFromContentValues(Landroid/content/ContentValues;)V

    .line 373
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p0}, Lcom/undatech/opaque/Connection;->load(Landroid/content/Context;)V

    .line 375
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Initializing classic connection from Serializeable, toolbar X coor "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Initializing classic connection from Serializeable, toolbar Y coor "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isValidIpv6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_c

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 384
    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6, v4}, Lcom/undatech/opaque/Connection;->setPort(I)V

    .line 385
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/undatech/opaque/Connection;->setAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :catch_0
    :cond_c
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getPort()I

    move-result v0

    if-nez v0, :cond_d

    .line 390
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    sget v2, Lcom/iiordanov/bVNC/Constants;->DEFAULT_PROTOCOL_PORT:I

    invoke-interface {v0, v2}, Lcom/undatech/opaque/Connection;->setPort(I)V

    .line 392
    :cond_d
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getSshPort()I

    move-result v0

    if-nez v0, :cond_e

    .line 393
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    const/16 v2, 0x16

    invoke-interface {v0, v2}, Lcom/undatech/opaque/Connection;->setSshPort(I)V

    .line 395
    :cond_e
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    check-cast v0, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;->setConnection(Lcom/undatech/opaque/Connection;)V

    .line 396
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v5}, Lcom/undatech/opaque/Connection;->setPrefEncoding(I)V

    .line 397
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {v0, v2, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeCanvas(Lcom/undatech/opaque/Connection;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 398
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemZoomable:I

    invoke-static {p1}, Lcom/iiordanov/bVNC/AbstractScaling;->getById(I)Lcom/iiordanov/bVNC/AbstractScaling;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    if-eqz v3, :cond_10

    .line 401
    const-string p1, "input_mode"

    sget p2, Lcom/undatech/remoteClientUi/R$id;->itemInputTouchPanZoomMouse:I

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setInputMode(I)Z

    .line 402
    const-string p1, "display_locked"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 403
    const-string p1, "display_orientation"

    const/4 p2, 0x2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_f

    .line 404
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_f
    const/4 p1, 0x7

    .line 406
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setRequestedOrientation(I)V

    :cond_10
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1733
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    if-eqz v0, :cond_0

    .line 1734
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v3, v1}, Lcom/iiordanov/bVNC/input/InputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1175
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1176
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->enableImmersive()V

    const/16 p1, 0x8

    const/4 v0, 0x0

    .line 1178
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    .line 1181
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->rotationCorrector:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 238
    const-string v0, "OnCreate called"

    const-string v1, "RemoteCanvasActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->requestWindowFeature(I)Z

    .line 240
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->context:Ljava/lang/ref/WeakReference;

    .line 248
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 251
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->showMenu(Landroid/content/Context;)V

    .line 253
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->canvas:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setContentView(I)V

    .line 255
    sget p1, Lcom/undatech/remoteClientUi/R$id;->canvas:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 257
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 258
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setDefaultFocusHighlightEnabled(Z)V

    .line 261
    :cond_0
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 262
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 265
    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->myVibrator:Landroid/os/Vibrator;

    .line 267
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 268
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$3;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 281
    new-instance p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity$4;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$4;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 288
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$5;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 296
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->initializeOpaque(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->initialize(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 301
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->isReadyForConnection()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->continueConnecting()V

    .line 304
    :cond_2
    const-string p1, "OnCreate complete"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .line 1086
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->entertext:I

    if-ne p1, v0, :cond_0

    .line 1087
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 1088
    :cond_0
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemHelpInputMode:I

    if-ne p1, v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->createHelpDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 1093
    :cond_1
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    .line 1235
    const-string v0, "OnCreateOptionsMenu called"

    const-string v1, "RemoteCanvasActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1237
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    sget v3, Lcom/undatech/remoteClientUi/R$menu;->vnccanvasactivitymenu:I

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1239
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemInputMode:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    .line 1240
    sget-object v3, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMenuItems:[Landroid/view/MenuItem;

    const/4 v3, 0x0

    move v4, v3

    .line 1241
    :goto_0
    sget-object v5, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 1242
    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMenuItems:[Landroid/view/MenuItem;

    aget v5, v5, v4

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->updateInputMenu()V

    .line 1246
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemScaling:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    .line 1247
    sget-object v4, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeIds:[I

    array-length v4, v4

    new-array v4, v4, [Landroid/view/MenuItem;

    iput-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeMenuItems:[Landroid/view/MenuItem;

    .line 1248
    :goto_1
    sget-object v4, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeIds:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 1249
    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeMenuItems:[Landroid/view/MenuItem;

    aget v4, v4, v3

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1251
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->updateScalingMenu()V

    .line 1255
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getExtraKeysToggleType()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1256
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemExtraKeys:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/undatech/remoteClientUi/R$string;->extra_keys_disable:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1258
    :cond_2
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemExtraKeys:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/undatech/remoteClientUi/R$string;->extra_keys_enable:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1260
    :goto_2
    new-instance v2, Lcom/undatech/opaque/util/OnTouchViewMover;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    const-wide/16 v8, 0x9c4

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/undatech/opaque/util/OnTouchViewMover;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 1261
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1263
    sget v4, Lcom/undatech/remoteClientUi/R$drawable;->ic_all_out_gray_36dp:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1264
    sget v4, Lcom/undatech/remoteClientUi/R$id;->moveToolbar:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 1265
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1266
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1268
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1270
    :goto_3
    const-string p1, "OnCreateOptionsMenu complete"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1499
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1500
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 1502
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1578
    sget v0, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1579
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 1581
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 1585
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_2

    if-nez v2, :cond_3

    .line 1589
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v0, p1}, Lcom/iiordanov/bVNC/input/InputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1592
    :catch_0
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p1, 0x52

    if-ne p2, p1, :cond_1

    .line 1511
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1512
    invoke-super {p0, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1514
    :cond_0
    invoke-super {p0, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1518
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1520
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1521
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v0, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    .line 1519
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v0, p2, p3}, Lcom/iiordanov/bVNC/input/InputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 1523
    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->resetOnScreenKeys(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 1216
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "Menu opened, disabling hiding action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1218
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->updateScalingMenu()V

    .line 1219
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->updateInputMenu()V

    .line 1220
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->disableImmersive()V

    .line 1222
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1382
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->setAfterMenu(Z)V

    .line 1386
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1387
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemInfo:I

    if-ne v0, v2, :cond_1

    .line 1388
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showConnectionInfo()V

    return v1

    .line 1390
    :cond_1
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemSpecialKeys:I

    if-ne v0, v2, :cond_2

    .line 1391
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->metakey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showDialog(I)V

    return v1

    .line 1393
    :cond_2
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemColorMode:I

    if-ne v0, v2, :cond_3

    .line 1394
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->selectColorModel()V

    return v1

    .line 1397
    :cond_3
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemZoomable:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemOneToOne:I

    if-eq v0, v2, :cond_e

    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 1402
    :cond_4
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemCenterMouse:I

    if-ne v0, v2, :cond_5

    .line 1403
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 1404
    invoke-virtual {v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1403
    invoke-virtual {p1, v0, v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->movePointer(II)V

    return v1

    .line 1406
    :cond_5
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemDisconnect:I

    if-ne v0, v2, :cond_6

    .line 1407
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 1408
    invoke-static {p0}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    return v1

    .line 1410
    :cond_6
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemEnterText:I

    if-ne v0, v2, :cond_7

    .line 1411
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->entertext:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showDialog(I)V

    return v1

    .line 1413
    :cond_7
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemCtrlAltDel:I

    if-ne v0, v2, :cond_8

    .line 1414
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object p1

    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyCtrlAltDel:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    return v1

    .line 1416
    :cond_8
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemSendKeyAgain:I

    if-ne v0, v2, :cond_9

    .line 1417
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->sendSpecialKeyAgain()V

    return v1

    .line 1423
    :cond_9
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemExtraKeys:I

    if-ne v0, v2, :cond_b

    .line 1424
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getExtraKeysToggleType()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 1425
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v3}, Lcom/undatech/opaque/Connection;->setExtraKeysToggleType(I)V

    .line 1426
    sget v0, Lcom/undatech/remoteClientUi/R$string;->extra_keys_enable:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 p1, 0x8

    .line 1427
    invoke-direct {p0, p1, v3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    goto :goto_0

    .line 1429
    :cond_a
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setExtraKeysToggleType(I)V

    .line 1430
    sget v0, Lcom/undatech/remoteClientUi/R$string;->extra_keys_disable:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1431
    invoke-direct {p0, v3, v3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    .line 1432
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    .line 1434
    :goto_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->invalidateOptionsMenu()V

    .line 1435
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p0}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    return v1

    .line 1437
    :cond_b
    sget v2, Lcom/undatech/remoteClientUi/R$id;->itemHelpInputMode:I

    if-ne v0, v2, :cond_c

    .line 1438
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemHelpInputMode:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showDialog(I)V

    return v1

    .line 1441
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setInputMode(I)Z

    move-result v0

    .line 1442
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    return v0

    .line 1447
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1398
    :cond_e
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/AbstractScaling;->getById(I)Lcom/iiordanov/bVNC/AbstractScaling;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 1399
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1400
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showPanningState(Z)V

    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1208
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1209
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showToolbar()V

    .line 1210
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->enableImmersive()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1033
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 1035
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1036
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    .line 1127
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1128
    instance-of p1, p2, Lcom/iiordanov/bVNC/ConnectionSettable;

    if-eqz p1, :cond_0

    .line 1129
    check-cast p2, Lcom/iiordanov/bVNC/ConnectionSettable;

    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p1}, Lcom/iiordanov/bVNC/ConnectionSettable;->setConnection(Lcom/undatech/opaque/Connection;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1228
    sget v0, Lcom/undatech/remoteClientUi/R$id;->extraKeysToggle:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setKeyStowDrawableAndVisibility(Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestart()V
    .locals 3

    .line 1200
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->postInvalidateDelayed(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1048
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 1049
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "onResume called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->postInvalidateDelayed(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1722
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1187
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->postInvalidateDelayed(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1195
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTextSelected(Ljava/lang/String;)V
    .locals 3

    .line 1638
    const-string v0, "RemoteCanvasActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTextSelected called with selectedString: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1640
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v1, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->vmNameToId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setVmname(Ljava/lang/String;)V

    .line 1641
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p0}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 1642
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p1, p1, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter p1

    .line 1643
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v0, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1644
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1567
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v0, p1}, Lcom/iiordanov/bVNC/input/InputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1569
    :catch_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1556
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUseDpadAsArrows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {v0, p1}, Lcom/iiordanov/bVNC/input/InputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1560
    :catch_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->enableImmersive()V

    :cond_0
    return-void
.end method

.method relayoutViews(Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    .line 478
    const-string v1, "onGlobalLayout: start"

    const-string v2, "RemoteCanvasActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    if-nez v1, :cond_0

    .line 480
    const-string v1, "onGlobalLayout: canvas null, returning"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v3, p1

    .line 486
    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onGlobalLayout: getWindowVisibleDisplayFrame: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 497
    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    const-string v5, "onGlobalLayout: Found r.top to be non-zero"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 498
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v5, :cond_3

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onGlobalLayout: Setting VisibleDesktopHeight to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->setVisibleDesktopHeight(I)V

    .line 501
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->relativePan(FF)Z

    goto :goto_1

    .line 503
    :cond_3
    const-string v5, "onGlobalLayout: canvas.myDrawable is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 514
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v5

    .line 515
    iget-object v6, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v6}, Lcom/undatech/opaque/util/RemoteToolbar;->getBottom()I

    move-result v6

    .line 516
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 517
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutArrowKeys:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 518
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    .line 519
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 520
    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget-object v12, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v12}, Lcom/undatech/opaque/util/RemoteToolbar;->getWidth()I

    move-result v12

    sub-int v18, v11, v12

    .line 521
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v12}, Lcom/undatech/opaque/util/RemoteToolbar;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v12, v12, 0x2

    sub-int v19, v11, v12

    .line 522
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onGlobalLayout: before: r.bottom: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rootViewHeight: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " re.top: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " re.bottom: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " layoutKeysBottom: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " rootViewBottom: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " toolbarBottom: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 p1, v6

    const-string v6, " diffLayoutKeysPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v20, v6

    const-string v6, " diffToolbarPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v17, v13

    move-object/from16 v16, v14

    int-to-double v13, v5

    move-object/from16 v21, v6

    int-to-double v5, v3

    const-wide v22, 0x3fe9eb851eb851ecL    # 0.81

    mul-double v5, v5, v22

    cmpl-double v5, v13, v5

    const-string v14, "onGlobalLayout: shifting arrow keys by: "

    const/4 v13, 0x0

    if-lez v5, :cond_7

    .line 529
    const-string v5, "onGlobalLayout: Less than 19% of screen is covered"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-boolean v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    .line 533
    iput-boolean v13, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    .line 536
    iget-object v13, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_6

    .line 537
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "onGlobalLayout: shifting on-screen buttons down by: "

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v6, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->offsetTopAndBottom(I)V

    .line 539
    iget-object v6, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbar()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarMoved()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 543
    :cond_4
    iget-object v13, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    iget-object v6, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarX()I

    move-result v6

    move-object/from16 v24, v14

    iget-object v14, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 544
    invoke-interface {v14}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarY()I

    move-result v25

    iget v14, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v26, v7

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v27, v11

    move-object/from16 v22, v17

    const/4 v11, 0x0

    move-object/from16 v28, v16

    move-object/from16 v11, v24

    move/from16 v16, v14

    move v14, v6

    move-object v6, v15

    move/from16 v15, v25

    move/from16 v17, v7

    .line 543
    invoke-virtual/range {v13 .. v19}, Lcom/undatech/opaque/util/RemoteToolbar;->makeVisible(IIIIII)V

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v26, v7

    move-object/from16 v27, v11

    move-object v11, v14

    move-object v6, v15

    move-object/from16 v28, v16

    move-object/from16 v22, v17

    .line 540
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v7, v10}, Lcom/undatech/opaque/util/RemoteToolbar;->offsetTopAndBottom(I)V

    .line 550
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutArrowKeys:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->offsetLeftAndRight(I)V

    if-eqz v5, :cond_b

    .line 553
    const-string v5, "onGlobalLayout: hiding on-screen buttons"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 554
    invoke-direct {v0, v5, v7}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    .line 555
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidate()V

    goto/16 :goto_7

    :cond_6
    move-object/from16 v26, v7

    move-object/from16 v27, v11

    move-object v6, v15

    move-object/from16 v28, v16

    move-object/from16 v22, v17

    goto/16 :goto_7

    :cond_7
    move-object/from16 v26, v7

    move-object/from16 v27, v11

    move-object v11, v14

    move-object v6, v15

    move-object/from16 v28, v16

    move-object/from16 v22, v17

    .line 559
    const-string v5, "onGlobalLayout: More than 19% of screen is covered"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 560
    iput-boolean v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    .line 563
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_b

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "onGlobalLayout: shifting on-screen buttons up by: "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->offsetTopAndBottom(I)V

    .line 566
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v7}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbar()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v7}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarMoved()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    .line 570
    :cond_8
    iget-object v13, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v7}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarX()I

    move-result v14

    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    .line 571
    invoke-interface {v7}, Lcom/undatech/opaque/Connection;->getUseLastPositionToolbarY()I

    move-result v15

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v7

    move/from16 v17, v5

    .line 570
    invoke-virtual/range {v13 .. v19}, Lcom/undatech/opaque/util/RemoteToolbar;->makeVisible(IIIIII)V

    goto :goto_5

    .line 567
    :cond_9
    :goto_4
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbar:Lcom/undatech/opaque/util/RemoteToolbar;

    invoke-virtual {v5, v10}, Lcom/undatech/opaque/util/RemoteToolbar;->offsetTopAndBottom(I)V

    .line 577
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutArrowKeys:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->offsetLeftAndRight(I)V

    .line 579
    iget-boolean v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->extraKeysHidden:Z

    if-eqz v5, :cond_a

    .line 580
    const-string v5, "onGlobalLayout: on-screen buttons should be hidden"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 581
    invoke-direct {v0, v5, v7}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 583
    const-string v5, "onGlobalLayout: on-screen buttons should be showing"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 584
    invoke-direct {v0, v7, v5}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->setExtraKeysVisibility(IZ)V

    .line 586
    :goto_6
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidate()V

    .line 589
    :cond_b
    :goto_7
    iget-object v5, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v5

    .line 590
    iget-object v7, v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->layoutKeys:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 591
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "onGlobalLayout: after: r.bottom: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendShortVibration()V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->myVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1

    .line 718
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 720
    :cond_0
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "Device cannot vibrate, not sending vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setInputMode(I)Z
    .locals 3

    .line 1451
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1453
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    .line 1454
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/iiordanov/bVNC/input/InputHandler;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/undatech/opaque/Connection;->setInputMode(Ljava/lang/String;)V

    .line 1455
    invoke-interface {p1}, Lcom/iiordanov/bVNC/input/InputHandler;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TOUCHPAD_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1456
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, v1}, Lcom/undatech/opaque/Connection;->setFollowMouse(Z)V

    .line 1457
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, v1}, Lcom/undatech/opaque/Connection;->setFollowPan(Z)V

    goto :goto_0

    .line 1459
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, v0}, Lcom/undatech/opaque/Connection;->setFollowMouse(Z)V

    .line 1460
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, v0}, Lcom/undatech/opaque/Connection;->setFollowPan(Z)V

    .line 1461
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->setRelativeEvents(Z)V

    .line 1464
    :goto_0
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showPanningState(Z)V

    .line 1465
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p0}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    return v1

    :cond_1
    return v0
.end method

.method setModes()V
    .locals 3

    .line 1060
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "setModes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getInputMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerByName(Ljava/lang/String;)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    .line 1062
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getScaleMode()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/AbstractScaling;->getByScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/iiordanov/bVNC/AbstractScaling;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/AbstractScaling;->setScaleTypeForActivity(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    .line 1063
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->initializeOnScreenKeys()V

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getColorModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/COLORMODEL;->valueOf(Ljava/lang/String;)Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1068
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1070
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1071
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setFocusableInTouchMode(Z)V

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setFocusedByDefault(Z)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->requestFocus()Z

    .line 1076
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public setPanner(Lcom/iiordanov/bVNC/input/Panner;)V
    .locals 0

    .line 1717
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->panner:Lcom/iiordanov/bVNC/input/Panner;

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .line 1665
    const-string v0, "RemoteCanvasActivity"

    const-string v1, "Showing keyboard and hiding action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1667
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->requestFocus()Z

    .line 1668
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    .line 1669
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    .line 1670
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    return-void
.end method

.method public showPanningState(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1531
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {p1}, Lcom/iiordanov/bVNC/input/InputHandler;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1532
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;

    invoke-direct {v0, p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$24;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Landroid/widget/Toast;)V

    .line 1539
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1540
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1542
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    invoke-interface {p1}, Lcom/iiordanov/bVNC/input/InputHandler;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1543
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public showToolbar()V
    .locals 6

    .line 1631
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 1632
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1633
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->toolbarHider:Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x9c4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopPanner()V
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->panner:Lcom/iiordanov/bVNC/input/Panner;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/Panner;->stop()V

    return-void
.end method

.method public toggleKeyboard(Landroid/view/MenuItem;)V
    .locals 0

    .line 1656
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->softKeyboardUp:Z

    if-eqz p1, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->hideKeyboard()V

    goto :goto_0

    .line 1660
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->showKeyboard()V

    :goto_0
    return-void
.end method

.method updateInputMenu()V
    .locals 6

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMenuItems:[Landroid/view/MenuItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1307
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v4, v4, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iiordanov/bVNC/AbstractScaling;->isValidInputMode(I)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1308
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getInputHandlerById(I)Lcom/iiordanov/bVNC/input/InputHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputHandler:Lcom/iiordanov/bVNC/input/InputHandler;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 1309
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method updateScalingMenu()V
    .locals 8

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->scalingModeMenuItems:[Landroid/view/MenuItem;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 1281
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sget v6, Lcom/undatech/remoteClientUi/R$id;->itemFitToScreen:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 1282
    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v5, v5, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapheight:I

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v6, v6, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v6, v6, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferheight:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v5, v5, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v5, v5, Lcom/iiordanov/bVNC/AbstractBitmapData;->bitmapwidth:I

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v6, v6, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget v6, v6, Lcom/iiordanov/bVNC/AbstractBitmapData;->framebufferwidth:I

    if-eq v5, v6, :cond_1

    .line 1285
    :cond_0
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1287
    :cond_1
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1290
    :cond_2
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1293
    :goto_1
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/iiordanov/bVNC/AbstractScaling;->getById(I)Lcom/iiordanov/bVNC/AbstractScaling;

    move-result-object v5

    .line 1294
    iget-object v5, v5, Lcom/iiordanov/bVNC/AbstractScaling;->scaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v6}, Lcom/undatech/opaque/Connection;->getScaleMode()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 1295
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method
