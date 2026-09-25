.class public Lcom/freerdp/freerdpcore/presentation/SessionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SessionActivity.java"

# interfaces
.implements Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.implements Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;
.implements Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;
.implements Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;
.implements Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;
.implements Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;,
        Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;,
        Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_DISCARDED_MOVE_EVENTS:I = 0x3

.field public static final PARAM_CONNECTION_REFERENCE:Ljava/lang/String; = "conRef"

.field public static final PARAM_INSTANCE:Ljava/lang/String; = "instance"

.field private static final SCROLLING_DISTANCE:I = 0x14

.field private static final SCROLLING_TIMEOUT:I = 0x32

.field private static final SEND_MOVE_EVENT_TIMEOUT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "FreeRDP.SessionActivity"

.field private static final ZOOMCONTROLS_AUTOHIDE_TIMEOUT:I = 0xfa0

.field private static final ZOOMING_STEP:F = 0.5f


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private callbackDialogResult:Z

.field private connectCancelledByUser:Z

.field private cursorKeyboard:Landroid/inputmethodservice/Keyboard;

.field private discardedMoveEvents:I

.field private dlgUserCredentials:Landroid/app/AlertDialog;

.field private dlgVerifyCertificate:Landroid/app/AlertDialog;

.field private extKeyboardVisible:Z

.field private keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

.field private keyboardView:Landroid/inputmethodservice/KeyboardView;

.field private libFreeRDPBroadcastReceiver:Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;

.field private mClipboardManager:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;

.field mDecor:Landroid/view/View;

.field private modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

.field private modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private numpadKeyboard:Landroid/inputmethodservice/Keyboard;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private screen_height:I

.field private screen_width:I

.field private scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

.field private session:Lcom/freerdp/freerdpcore/application/SessionState;

.field private sessionRunning:Z

.field private sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

.field private specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

.field private sysKeyboardVisible:Z

.field private toggleMouseButtons:Z

.field private touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

.field private uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

.field private userCredView:Landroid/view/View;

.field private zoomControls:Landroid/widget/ZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectCancelledByUser:Z

    .line 110
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionRunning:Z

    .line 111
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    .line 116
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sysKeyboardVisible:Z

    .line 117
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->extKeyboardVisible:Z

    .line 118
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->discardedMoveEvents:I

    return-void
.end method

.method static synthetic access$002(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    return p1
.end method

.method static synthetic access$100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectCancelledByUser:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/widget/ZoomControls;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectCancelledByUser:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bindSession()V

    return-void
.end method

.method static synthetic access$1600(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_width:I

    return p0
.end method

.method static synthetic access$202(Lcom/freerdp/freerdpcore/presentation/SessionActivity;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_width:I

    return p1
.end method

.method static synthetic access$300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_height:I

    return p0
.end method

.method static synthetic access$302(Lcom/freerdp/freerdpcore/presentation/SessionActivity;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_height:I

    return p1
.end method

.method static synthetic access$400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionRunning:Z

    return p0
.end method

.method static synthetic access$402(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/content/Intent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->resetZoomControlsAutoHideTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    return-object p0
.end method

.method private bindSession()V
    .locals 2

    .line 518
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "bindSession called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0, p0}, Lcom/freerdp/freerdpcore/application/SessionState;->setUIEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;)V

    .line 520
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->onSurfaceChange(Lcom/freerdp/freerdpcore/application/SessionState;)V

    .line 521
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->requestLayout()V

    .line 522
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {v0, p0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->reset(Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;)V

    .line 523
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mDecor:Landroid/view/View;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private cancelDelayedMoveEvent()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    return-void
.end method

.method private connect(Landroid/net/Uri;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/application/GlobalApp;->createSession(Landroid/net/Uri;Landroid/content/Context;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    .line 484
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectWithTitle(Ljava/lang/String;)V

    return-void
.end method

.method private connect(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)V
    .locals 3

    .line 447
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/application/GlobalApp;->createSession(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/Context;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    .line 450
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen Resolution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getResolutionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeRDP.SessionActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->isAutomatic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 458
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_height:I

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    .line 459
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_width:I

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    goto :goto_1

    .line 466
    :cond_0
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_width:I

    iget v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_height:I

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 467
    :goto_0
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    int-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 468
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    .line 471
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->isFitScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_height:I

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    .line 474
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->screen_width:I

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    .line 477
    :cond_3
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectWithTitle(Ljava/lang/String;)V

    return-void
.end method

.method private connectWithTitle(Ljava/lang/String;)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0, p0}, Lcom/freerdp/freerdpcore/application/SessionState;->setUIEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;)V

    .line 491
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 492
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 493
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_connecting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 494
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 502
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 503
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 505
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 511
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createDialogs()V
    .locals 5

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_title_verify_certificate:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$2;

    invoke-direct {v1, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$2;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    const v2, 0x1040013

    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;

    invoke-direct {v1, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    const v2, 0x1040009

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    .line 158
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/freerdp/freerdpcore/R$layout;->credentials:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/freerdp/freerdpcore/R$string;->dlg_title_credentials:I

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/SessionActivity$4;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$4;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    const v3, 0x104000a

    .line 163
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/SessionActivity$3;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$3;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    const/high16 v3, 0x1040000

    .line 175
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    return-void
.end method

.method private hasHardwareMenuButton()Z
    .locals 1

    .line 200
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method private hideSoftInput()V
    .locals 4

    .line 529
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 531
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :goto_0
    return-void
.end method

.method private mapScreenCoordToSessionCoord(II)Landroid/graphics/Point;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->getZoom()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 1109
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->getZoom()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 1110
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1111
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1113
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 1114
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .line 400
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connect(Landroid/net/Uri;)V

    goto :goto_1

    .line 408
    :cond_0
    const-string p1, "instance"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    .line 411
    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    .line 412
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getSurface()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 413
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bindSession()V

    goto :goto_1

    .line 415
    :cond_1
    const-string p1, "conRef"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isHostnameReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    .line 422
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setHostname(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isBookmarkReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isManualBookmarkReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v0

    .line 428
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getManualBookmarkId(Ljava/lang/String;)J

    move-result-wide v1

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findById(J)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 434
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connect(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private resetZoomControlsAutoHideTimeout()V
    .locals 4

    .line 1042
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    .line 1043
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendDelayedMoveEvent(II)V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    .line 637
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->discardedMoveEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->discardedMoveEvents:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->discardedMoveEvents:I

    .line 642
    :goto_0
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->discardedMoveEvents:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 643
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {}, Lcom/freerdp/freerdpcore/utils/Mouse;->getMoveEvent()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    goto :goto_1

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v2, 0x0

    invoke-static {v2, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p1, v1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method private showKeyboard(ZZ)V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hide()V

    .line 551
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 556
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    const/4 v1, 0x2

    .line 558
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 561
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->hideSoftInput()V

    .line 569
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 570
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->hideSoftInput()V

    .line 577
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->clearlAllModifiers()V

    .line 584
    :goto_0
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sysKeyboardVisible:Z

    .line 585
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->extKeyboardVisible:Z

    return-void
.end method

.method private updateModifierKeyStates()V
    .locals 6

    .line 601
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 606
    iget-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->getModifierState(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    iput-boolean v4, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 617
    iput-boolean v4, v1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_0

    .line 621
    :cond_2
    iput-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 622
    iput-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_0

    .line 611
    :cond_3
    iput-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 612
    iput-boolean v4, v1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_0

    .line 629
    :cond_4
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    return-void
.end method


# virtual methods
.method public OnAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    .line 880
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    .line 883
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextUsername:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextDomain:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextPassword:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :try_start_1
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 896
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 903
    :catch_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 904
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 905
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 908
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v1, Lcom/freerdp/freerdpcore/R$id;->editTextUsername:I

    .line 909
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v0, Lcom/freerdp/freerdpcore/R$id;->editTextDomain:I

    .line 911
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 910
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget p2, Lcom/freerdp/freerdpcore/R$id;->editTextPassword:I

    .line 913
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 912
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    return p1
.end method

.method public OnGatewayAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    .line 923
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    .line 926
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextUsername:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextDomain:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v2, Lcom/freerdp/freerdpcore/R$id;->editTextPassword:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :try_start_1
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgUserCredentials:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 939
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 946
    :catch_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 947
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 948
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 951
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v1, Lcom/freerdp/freerdpcore/R$id;->editTextUsername:I

    .line 952
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget v0, Lcom/freerdp/freerdpcore/R$id;->editTextDomain:I

    .line 954
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 953
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->userCredView:Landroid/view/View;

    sget p2, Lcom/freerdp/freerdpcore/R$id;->editTextPassword:I

    .line 956
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 955
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    return p1
.end method

.method public OnGraphicsResize(III)V
    .locals 1

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    .line 863
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 865
    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 866
    :goto_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/application/SessionState;->setSurface(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 872
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public OnGraphicsUpdate(IIII)V
    .locals 8

    .line 847
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->updateGraphics(JLandroid/graphics/Bitmap;IIII)Z

    .line 849
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->addInvalidRegion(Landroid/graphics/Rect;)V

    .line 856
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public OnRemoteClipboardChanged(Ljava/lang/String;)V
    .locals 2

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnRemoteClipboardChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeRDP.SessionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mClipboardManager:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;->setClipboardData(Ljava/lang/String;)V

    return-void
.end method

.method public OnSettingsChanged(III)V
    .locals 3

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    .line 820
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 822
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 824
    :goto_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/application/SessionState;->setSurface(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 826
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    if-ne v1, p1, :cond_3

    .line 839
    :cond_2
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result p1

    if-ne p1, p2, :cond_3

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getColors()I

    move-result p1

    if-eq p1, p3, :cond_4

    .line 840
    :cond_3
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    .line 842
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/freerdp/freerdpcore/R$string;->info_capabilities_changed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 841
    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 840
    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public OnVerifiyCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 966
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getAcceptAllCertificates(Landroid/content/Context;)Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    return p5

    .line 970
    :cond_0
    iput-boolean p5, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    .line 973
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p5, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_verify_certificate:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 974
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "\n\nSubject: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nIssuer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nFingerprint: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 976
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 979
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 p2, 0x5

    iget-object p3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    const/4 p4, 0x0

    invoke-static {p4, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 984
    :try_start_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :try_start_1
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 987
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 993
    :catch_0
    :goto_0
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    return p1
.end method

.method public OnVerifyChangedCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1002
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getAcceptAllCertificates(Landroid/content/Context;)Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    return p5

    .line 1006
    :cond_0
    iput-boolean p5, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    .line 1009
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p5, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_verify_certificate:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1010
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, "\n\nSubject: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nIssuer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nFingerprint: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1012
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 p2, 0x5

    iget-object p3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    const/4 p4, 0x0

    invoke-static {p4, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1020
    :try_start_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :try_start_1
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->dlgVerifyCertificate:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 1023
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    :catch_0
    :goto_0
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->callbackDialogResult:Z

    return p1
.end method

.method public modifiersChanged()V
    .locals 0

    .line 811
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->updateModifierKeyStates()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 701
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sysKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->extKeyboardVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->sendAltF4()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 702
    invoke-direct {p0, v0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    :goto_1
    return-void
.end method

.method public onClipboardChanged(Ljava/lang/String;)V
    .locals 2

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClipboardChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeRDP.SessionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendClipboardData(JLjava/lang/String;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 381
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->modifiers_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 385
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->specialkeys_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 386
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->numpad_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->numpadKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 387
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->cursor_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->cursorKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 390
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 391
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 393
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mDecor:Landroid/view/View;

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 210
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getHideStatusBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 219
    :cond_0
    sget p1, Lcom/freerdp/freerdpcore/R$layout;->session:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->setContentView(I)V

    .line 220
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->hasHardwareMenuButton()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getHideActionBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_1

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 227
    :goto_1
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "Session.onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget p1, Lcom/freerdp/freerdpcore/R$id;->session_root_view:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$5;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    sget p1, Lcom/freerdp/freerdpcore/R$id;->sessionView:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/presentation/SessionView;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    .line 254
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$PinchZoomListener;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setScaleGestureDetector(Landroid/view/ScaleGestureDetector;)V

    .line 256
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setSessionViewListener(Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;)V

    .line 257
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->requestFocus()Z

    .line 259
    sget p1, Lcom/freerdp/freerdpcore/R$id;->touchPointerView:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    .line 260
    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setTouchPointerListener(Lcom/freerdp/freerdpcore/presentation/TouchPointerView$TouchPointerListener;)V

    .line 262
    new-instance p1, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-direct {p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    .line 263
    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->init(Landroid/content/Context;)V

    .line 264
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->reset(Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;)V

    .line 266
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->modifiers_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 267
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->specialkeys_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 268
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->numpad_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->numpadKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 269
    new-instance p1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$xml;->cursor_keyboard:I

    invoke-direct {p1, v0, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->cursorKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 272
    sget p1, Lcom/freerdp/freerdpcore/R$id;->extended_keyboard:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/KeyboardView;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 273
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 274
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 276
    sget p1, Lcom/freerdp/freerdpcore/R$id;->extended_keyboard_header:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/KeyboardView;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 277
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 278
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->modifiersKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 280
    sget p1, Lcom/freerdp/freerdpcore/R$id;->sessionScrollView:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    .line 281
    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setScrollViewListener(Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;)V

    .line 282
    new-instance p1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    invoke-direct {p1, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    .line 283
    new-instance p1, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;

    invoke-direct {p1, p0, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;)V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->libFreeRDPBroadcastReceiver:Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;

    .line 285
    sget p1, Lcom/freerdp/freerdpcore/R$id;->zoomControls:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ZoomControls;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    .line 286
    invoke-virtual {p1}, Landroid/widget/ZoomControls;->hide()V

    .line 287
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$6;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$7;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$7;-><init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    .line 306
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->createDialogs()V

    .line 309
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    const-string v0, "com.freerdp.freerdp.event.freerdp"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->libFreeRDPBroadcastReceiver:Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    invoke-static {p0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;->getClipboardManager(Landroid/content/Context;)Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mClipboardManager:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;

    .line 314
    invoke-virtual {p1, p0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;->addClipboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mDecor:Landroid/view/View;

    const/16 v0, 0x1002

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 656
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$menu;->session_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 356
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 357
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->cancelDisconnectTimer()V

    .line 363
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSessions()Ljava/util/Collection;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/application/SessionState;

    .line 365
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->disconnect(J)Z

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->libFreeRDPBroadcastReceiver:Lcom/freerdp/freerdpcore/presentation/SessionActivity$LibFreeRDPBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mClipboardManager:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;

    invoke-virtual {v0, p0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;->removeClipboardboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V

    .line 374
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->freeSession(J)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1167
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 1171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v3, 0x0

    if-gez v1, :cond_1

    .line 1174
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v4

    .line 1175
    invoke-static {p0, v3}, Lcom/freerdp/freerdpcore/utils/Mouse;->getScrollEvent(Landroid/content/Context;Z)I

    move-result v1

    .line 1174
    invoke-static {v4, v5, v3, v3, v1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    :cond_1
    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 1179
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    .line 1180
    invoke-static {p0, v2}, Lcom/freerdp/freerdpcore/utils/Mouse;->getScrollEvent(Landroid/content/Context;Z)I

    move-result p1

    .line 1179
    invoke-static {v0, v1, v3, v3, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    :cond_2
    :goto_0
    return v2
.end method

.method public onKey(I[I)V
    .locals 0

    .line 744
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {p2, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->processCustomKeyEvent(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 725
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 711
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->disconnect(J)Z

    const/4 p1, 0x1

    return p1

    .line 714
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 737
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {p1, p3}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 730
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardMapper:Lcom/freerdp/freerdpcore/utils/KeyboardMapper;

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->processAndroidKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 666
    sget v0, Lcom/freerdp/freerdpcore/R$id;->session_touch_pointer:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 669
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 671
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setVisibility(I)V

    .line 672
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {p1, v2, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setTouchPointerPadding(II)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-virtual {p1, v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setVisibility(I)V

    .line 677
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getPointerWidth()I

    move-result v0

    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    .line 678
    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getPointerHeight()I

    move-result v2

    .line 677
    invoke-virtual {p1, v0, v2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setTouchPointerPadding(II)V

    goto :goto_0

    .line 681
    :cond_1
    sget v0, Lcom/freerdp/freerdpcore/R$id;->session_sys_keyboard:I

    if-ne p1, v0, :cond_2

    .line 683
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sysKeyboardVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    goto :goto_0

    .line 685
    :cond_2
    sget v0, Lcom/freerdp/freerdpcore/R$id;->session_ext_keyboard:I

    if-ne p1, v0, :cond_3

    .line 687
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->extKeyboardVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, v2, p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    goto :goto_0

    .line 689
    :cond_3
    sget v0, Lcom/freerdp/freerdpcore/R$id;->session_disconnect:I

    if-ne p1, v0, :cond_4

    .line 691
    invoke-direct {p0, v2, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    .line 692
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->disconnect(J)Z

    :cond_4
    :goto_0
    return v1
.end method

.method protected onPause()V
    .locals 2

    .line 341
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 342
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    return-void
.end method

.method public onPress(I)V
    .locals 0

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 329
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 330
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 335
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 336
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrollChanged(Lcom/freerdp/freerdpcore/presentation/ScrollView2D;IIII)V
    .locals 0

    .line 1049
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->isAtMaxZoom()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 1050
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/presentation/SessionView;->isAtMinZoom()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 1051
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getHideZoomControls(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    .line 1052
    invoke-virtual {p1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1053
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p1}, Landroid/widget/ZoomControls;->show()V

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->resetZoomControlsAutoHideTimeout()V

    return-void
.end method

.method public onSessionViewBeginTouch()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setScrollEnabled(Z)V

    return-void
.end method

.method public onSessionViewEndTouch()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setScrollEnabled(Z)V

    return-void
.end method

.method public onSessionViewLeftTouch(IIZ)V
    .locals 3

    if-nez p3, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->cancelDelayedMoveEvent()V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    .line 1075
    iget-boolean v2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    if-eqz v2, :cond_1

    invoke-static {p0, p3}, Lcom/freerdp/freerdpcore/utils/Mouse;->getRightButtonEvent(Landroid/content/Context;Z)I

    move-result v2

    goto :goto_0

    .line 1076
    :cond_1
    invoke-static {p0, p3}, Lcom/freerdp/freerdpcore/utils/Mouse;->getLeftButtonEvent(Landroid/content/Context;Z)I

    move-result v2

    .line 1074
    :goto_0
    invoke-static {v0, v1, p1, p2, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    if-nez p3, :cond_2

    const/4 p1, 0x0

    .line 1079
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    :cond_2
    return-void
.end method

.method public onSessionViewMove(II)V
    .locals 0

    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sendDelayedMoveEvent(II)V

    return-void
.end method

.method public onSessionViewRightTouch(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 1085
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->toggleMouseButtons:Z

    :cond_0
    return-void
.end method

.method public onSessionViewScroll(Z)V
    .locals 3

    .line 1095
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/utils/Mouse;->getScrollEvent(Landroid/content/Context;Z)I

    move-result p1

    invoke-static {v0, v1, v2, v2, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 323
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 324
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 350
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 351
    const-string v0, "FreeRDP.SessionActivity"

    const-string v1, "Session.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTouchPointerClose()V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->touchPointerView:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setTouchPointerPadding(II)V

    return-void
.end method

.method public onTouchPointerLeftClick(IIZ)V
    .locals 2

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mapScreenCoordToSessionCoord(II)Landroid/graphics/Point;

    move-result-object p1

    .line 1120
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1121
    invoke-static {p0, p3}, Lcom/freerdp/freerdpcore/utils/Mouse;->getLeftButtonEvent(Landroid/content/Context;Z)I

    move-result p3

    .line 1120
    invoke-static {v0, v1, p2, p1, p3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    return-void
.end method

.method public onTouchPointerMove(II)V
    .locals 3

    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mapScreenCoordToSessionCoord(II)Landroid/graphics/Point;

    move-result-object p1

    .line 1134
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/freerdp/freerdpcore/utils/Mouse;->getMoveEvent()I

    move-result v2

    invoke-static {v0, v1, p2, p1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    .line 1136
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getAutoScrollTouchPointer(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const/4 p2, 0x7

    .line 1137
    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1139
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "Starting auto-scroll"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->uiHandler:Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onTouchPointerResetScrollZoom()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sessionView:Lcom/freerdp/freerdpcore/presentation/SessionView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->setZoom(F)V

    .line 1162
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->scrollView:Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollTo(II)V

    return-void
.end method

.method public onTouchPointerRightClick(IIZ)V
    .locals 2

    .line 1126
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->mapScreenCoordToSessionCoord(II)Landroid/graphics/Point;

    move-result-object p1

    .line 1127
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1128
    invoke-static {p0, p3}, Lcom/freerdp/freerdpcore/utils/Mouse;->getRightButtonEvent(Landroid/content/Context;Z)I

    move-result p3

    .line 1127
    invoke-static {v0, v1, p2, p1, p3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    return-void
.end method

.method public onTouchPointerScroll(Z)V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/utils/Mouse;->getScrollEvent(Landroid/content/Context;Z)I

    move-result p1

    invoke-static {v0, v1, v2, v2, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    return-void
.end method

.method public onTouchPointerToggleExtKeyboard()V
    .locals 2

    .line 1156
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->extKeyboardVisible:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    return-void
.end method

.method public onTouchPointerToggleKeyboard()V
    .locals 2

    .line 1151
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->sysKeyboardVisible:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->showKeyboard(ZZ)V

    return-void
.end method

.method public processUnicodeKey(I)V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendUnicodeKeyEvent(JIZ)Z

    .line 785
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendUnicodeKeyEvent(JIZ)Z

    return-void
.end method

.method public processVirtualKey(IZ)V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->session:Lcom/freerdp/freerdpcore/application/SessionState;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendKeyEvent(JIZ)Z

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method

.method public switchKeyboard(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->cursorKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->numpadKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 793
    :cond_2
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->specialkeysKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :goto_0
    return-void
.end method
