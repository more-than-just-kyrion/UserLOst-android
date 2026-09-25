.class public Lcom/iiordanov/bVNC/RemoteCanvas;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RemoteCanvas.java"

# interfaces
.implements Lcom/undatech/opaque/Viewable;
.implements Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteCanvas"


# instance fields
.field absoluteXPosition:I

.field absoluteYPosition:I

.field public canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

.field private capacity:I

.field clipboard:Landroid/text/ClipboardManager;

.field clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

.field clipboardMonitorTimer:Ljava/util/Timer;

.field compact:Z

.field public connection:Lcom/undatech/opaque/Connection;

.field public cursorBeingMoved:Z

.field database:Lcom/iiordanov/bVNC/Database;

.field decoder:Lcom/iiordanov/bVNC/Decoder;

.field private desktopInfo:Ljava/lang/Runnable;

.field displayDensity:F

.field displayHeight:I

.field displayWidth:I

.field private drawableSetter:Ljava/lang/Runnable;

.field public handler:Landroid/os/Handler;

.field public hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

.field invalidateCanvasRunnable:Ljava/lang/Runnable;

.field isOpaque:Z

.field isRdp:Z

.field isSpice:Z

.field isVnc:Z

.field keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

.field lastDraw:J

.field public maintainConnection:Z

.field public myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

.field public pd:Landroid/app/ProgressDialog;

.field pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

.field private rdpcomm:Lcom/undatech/opaque/RdpCommunicator;

.field public rfb:Lcom/iiordanov/bVNC/RfbProto;

.field public rfbconn:Lcom/undatech/opaque/RfbConnectable;

.field screenMessage:Ljava/lang/CharSequence;

.field public serverJustCutText:Z

.field public setModes:Ljava/lang/Runnable;

.field shiftX:F

.field shiftY:F

.field showDialogMessage:Ljava/lang/Runnable;

.field private showMessage:Ljava/lang/Runnable;

.field public spiceUpdateReceived:Z

.field public spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

.field public sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

.field sshTunneled:Z

.field useFull:Z

.field userPanned:Z

.field visibleHeight:I

.field vmNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vvFileName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mhandleUncaughtException(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->handleUncaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAndAcceptCert(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->saveAndAcceptCert(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartRdpConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startRdpConnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSpiceConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startSpiceConnection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVncConnection(Lcom/iiordanov/bVNC/RemoteCanvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startVncConnection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 223
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 121
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->cursorBeingMoved:Z

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    .line 130
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    .line 131
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    .line 132
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rdpcomm:Lcom/undatech/opaque/RdpCommunicator;

    .line 133
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->vmNameToId:Ljava/util/Map;

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 139
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    .line 148
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    .line 149
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->compact:Z

    .line 158
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    .line 167
    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftX:F

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftY:F

    const/4 v1, -0x1

    .line 178
    iput v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->visibleHeight:I

    .line 183
    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayWidth:I

    .line 184
    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayHeight:I

    .line 185
    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayDensity:F

    .line 190
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    .line 195
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isRdp:Z

    .line 200
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    .line 205
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    .line 207
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spiceUpdateReceived:Z

    .line 209
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    .line 213
    iput-boolean p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->userPanned:Z

    .line 1092
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$11;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$11;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showDialogMessage:Ljava/lang/Runnable;

    .line 1627
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$13;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$13;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->drawableSetter:Ljava/lang/Runnable;

    .line 1649
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$14;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$14;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage:Ljava/lang/Runnable;

    .line 1659
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$15;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$15;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->desktopInfo:Ljava/lang/Runnable;

    .line 1674
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$16;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$16;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateCanvasRunnable:Ljava/lang/Runnable;

    .line 225
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboard:Landroid/text/ClipboardManager;

    .line 226
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isVnc(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    .line 227
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isRdp:Z

    .line 228
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    .line 229
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    .line 231
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 232
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 233
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayHeight:I

    .line 236
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayWidth:I

    .line 237
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayDensity:F

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayHeight:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayHeight:I

    .line 243
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayWidth:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayWidth:I

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->info_progress_dialog_connecting:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->info_progress_dialog_establishing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/iiordanov/bVNC/RemoteCanvas$1;

    invoke-direct {v6, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$1;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 248
    invoke-static/range {v1 .. v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    .line 263
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private checkNetworkConnectivity()V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 304
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_not_connected_to_network:I

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_dialog_title:I

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->disconnectAndShowMessage(II)V

    :cond_1
    return-void
.end method

.method private disposeDrawable()V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 1236
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1237
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getRemoteHeight(II)I
    .locals 5

    .line 1028
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpWidth()I

    move-result v0

    .line 1029
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpHeight()I

    move-result v1

    .line 1030
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-lt v0, v4, :cond_0

    if-lt v1, v4, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1034
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1036
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1039
    :goto_0
    rem-int/lit8 p1, v1, 0x2

    if-ne p1, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    return v1
.end method

.method private getRemoteWidth(II)I
    .locals 5

    .line 1008
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpWidth()I

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpHeight()I

    move-result v1

    .line 1010
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-lt v0, v4, :cond_0

    if-lt v1, v4, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1014
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1016
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1019
    :goto_0
    rem-int/lit8 p1, v0, 0x2

    if-ne p1, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method private getVncRemoteHeight(II)I
    .locals 6

    .line 1070
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpWidth()I

    move-result v0

    .line 1071
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpHeight()I

    move-result v1

    .line 1072
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_0

    if-lt v0, v5, :cond_0

    if-lt v1, v5, :cond_0

    move p2, v1

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1078
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1080
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 1083
    :goto_0
    rem-int/lit8 p1, p2, 0x2

    if-ne p1, v4, :cond_4

    add-int/lit8 p2, p2, -0x1

    :cond_4
    return p2
.end method

.method private getVncRemoteWidth(II)I
    .locals 6

    .line 1048
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpWidth()I

    move-result v0

    .line 1049
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpHeight()I

    move-result v1

    .line 1050
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_0

    if-lt v0, v5, :cond_0

    if-lt v1, v5, :cond_0

    move p1, v0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1056
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1058
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1061
    :goto_0
    rem-int/lit8 p2, p1, 0x2

    if-ne p2, v4, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    return p1
.end method

.method private handleUncaughtException(Ljava/lang/Throwable;)V
    .locals 4

    .line 444
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-eqz v0, :cond_5

    .line 445
    const-string v0, "RemoteCanvas"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 451
    :cond_0
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    .line 453
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_out_of_memory:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_connection_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 458
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authentication"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-gt v1, v2, :cond_2

    .line 459
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unknown security result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 460
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "password check failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_vnc_authentication:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_4
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private initializeClipboardMonitor()V
    .locals 8

    .line 341
    new-instance v0, Lcom/iiordanov/bVNC/ClipboardMonitor;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/iiordanov/bVNC/ClipboardMonitor;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

    .line 343
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitorTimer:Ljava/util/Timer;

    .line 345
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private initializeRdpConnection()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    const-string v0, "RemoteCanvas"

    const-string v1, "initializeRdpConnection: Initializing RDP connection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 546
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpDomain()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/iiordanov/bVNC/App;->debugLog:Z

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/undatech/opaque/RdpCommunicator;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/undatech/opaque/Viewable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rdpcomm:Lcom/undatech/opaque/RdpCommunicator;

    .line 548
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    .line 549
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/iiordanov/bVNC/input/RemoteRdpPointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 550
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    sget-boolean v3, Lcom/iiordanov/bVNC/App;->debugLog:Z

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/iiordanov/bVNC/input/RemoteRdpKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    return-void
.end method

.method private initializeSpiceConnection()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    new-instance v7, Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    sget-boolean v6, Lcom/iiordanov/bVNC/App;->debugLog:Z

    const/4 v4, 0x1

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/undatech/opaque/SpiceCommunicator;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/undatech/opaque/Viewable;ZZZ)V

    iput-object v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    .line 507
    iput-object v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    .line 508
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 509
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 510
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getLayoutMap()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/iiordanov/bVNC/App;->debugLog:Z

    move-object v3, v0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;-><init>(Landroid/content/res/Resources;Lcom/undatech/opaque/SpiceCommunicator;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    .line 512
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/SpiceCommunicator;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private initializeVncConnection()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing connection to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getConnectionType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    .line 583
    :goto_0
    new-instance v0, Lcom/iiordanov/bVNC/Decoder;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getUseLocalCursor()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v0, p0, v2}, Lcom/iiordanov/bVNC/Decoder;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Z)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    .line 584
    new-instance v0, Lcom/iiordanov/bVNC/RfbProto;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getPrefEncoding()I

    move-result v7

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getViewOnly()Z

    move-result v8

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 585
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getIdHashAlgorithm()I

    move-result v10

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getX509KeySignature()Ljava/lang/String;

    move-result-object v12

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v12}, Lcom/iiordanov/bVNC/RfbProto;-><init>(Lcom/iiordanov/bVNC/Decoder;Lcom/iiordanov/bVNC/RemoteCanvas;IZZILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    .line 587
    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    .line 588
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteVncPointer;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/iiordanov/bVNC/input/RemoteVncPointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 589
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rAltAsIsoL3Shift"

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 591
    new-instance v0, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    sget-boolean v7, Lcom/iiordanov/bVNC/App;->debugLog:Z

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    return-void
.end method

.method private saveAndAcceptCert(Ljava/security/cert/X509Certificate;)V
    .locals 2

    .line 2053
    const-string v0, "RemoteCanvas"

    const-string v1, "Saving X509 cert fingerprint."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2058
    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 2059
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_x509_could_not_generate_encoding:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2061
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setX509KeySignature(Ljava/lang/String;)V

    .line 2062
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2064
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/RfbProto;->setCertificateAccepted(Z)V

    .line 2065
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    monitor-enter p1

    .line 2066
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2067
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startRdpConnection()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 557
    const-string v1, "RemoteCanvas"

    const-string v2, "startRdpConnection: Starting RDP connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 561
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPort(I)I

    move-result v5

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->waitUntilInflated()V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getRemoteWidth(II)I

    move-result v7

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getRemoteHeight(II)I

    move-result v8

    .line 566
    iget-object v3, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->rdpcomm:Lcom/undatech/opaque/RdpCommunicator;

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getNickname()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 567
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getDesktopBackground()Z

    move-result v9

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getFontSmoothing()Z

    move-result v10

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 568
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getDesktopComposition()Z

    move-result v11

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getWindowContents()Z

    move-result v12

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 569
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getMenuAnimation()Z

    move-result v13

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getVisualStyles()Z

    move-result v14

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 570
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRedirectSdCard()Z

    move-result v15

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getConsoleMode()Z

    move-result v16

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 571
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRemoteSoundType()I

    move-result v17

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getEnableRecording()Z

    move-result v18

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 572
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRemoteFx()Z

    move-result v19

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getEnableGfx()Z

    move-result v20

    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getEnableGfxH264()Z

    move-result v21

    .line 566
    invoke-virtual/range {v3 .. v21}, Lcom/undatech/opaque/RdpCommunicator;->setConnectionParameters(Ljava/lang/String;ILjava/lang/String;IIZZZZZZZZIZZZZ)V

    .line 573
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->rdpcomm:Lcom/undatech/opaque/RdpCommunicator;

    invoke-virtual {v1}, Lcom/undatech/opaque/RdpCommunicator;->connect()V

    .line 574
    iget-object v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method private startSpiceConnection()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 524
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getPort()I

    move-result v0

    if-lez v0, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPort(I)I

    move-result v0

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getTlsPort()I

    move-result v2

    if-lez v2, :cond_1

    .line 531
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPort(I)I

    move-result v2

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 535
    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getCaCertPath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 536
    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getCertSubject()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getEnableSound()Z

    move-result v9

    const/4 v10, 0x0

    move-object v0, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v10

    move-object v7, v8

    move v8, v9

    .line 534
    invoke-virtual/range {v0 .. v8}, Lcom/undatech/opaque/SpiceCommunicator;->connectSpice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startVncConnection()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    const-string v0, "RemoteCanvas"

    .line 0
    const-string v1, "Establishing VNC session to: "

    const/16 v2, 0xe

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 602
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getPort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getPort(I)I

    move-result v5

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", port: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getX509KeySignature()Ljava/lang/String;

    move-result-object v11

    .line 608
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getUserName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 609
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getUseRepeater()Z

    move-result v8

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 610
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRepeaterId()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getConnectionType()I

    move-result v10

    .line 608
    invoke-virtual/range {v3 .. v11}, Lcom/iiordanov/bVNC/RfbProto;->initializeAndAuthenticate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/iiordanov/bVNC/exceptions/AnonCipherUnsupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/iiordanov/bVNC/RfbProto$RfbUsernameRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 624
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/undatech/remoteClientUi/R$string;->error_vnc_unable_to_connect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 625
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->messageAndStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :catch_1
    const-string v1, "Username required, will prompt user for username and password"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 615
    :catch_2
    const-string v1, "Authentication failed, will prompt user for password"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 613
    :catch_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_anon_dh_unsupported:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RfbProto;->writeClientInit()V

    .line 629
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RfbProto;->readServerInit()V

    .line 632
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->waitUntilInflated()V

    .line 634
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVncRemoteWidth(II)I

    move-result v2

    .line 635
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVncRemoteHeight(II)I

    move-result v3

    .line 634
    invoke-virtual {v1, v2, v3}, Lcom/iiordanov/bVNC/RfbProto;->setPreferredFramebufferSize(II)V

    .line 638
    :cond_0
    iget v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayWidth:I

    iget v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->reallocateDrawable(II)V

    .line 639
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {v1, v2}, Lcom/iiordanov/bVNC/Decoder;->setPixelFormat(Lcom/iiordanov/bVNC/RfbProto;)V

    .line 641
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/iiordanov/bVNC/RemoteCanvas$6;

    invoke-direct {v2, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$6;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 647
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->sendUnixAuth()V

    .line 648
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->drawableSetter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 651
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 655
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfb:Lcom/iiordanov/bVNC/RfbProto;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RfbProto;->processProtocol()V
    :try_end_1
    .catch Lcom/iiordanov/bVNC/RfbProto$RfbUltraVncColorMapException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 657
    :catch_4
    const-string v1, "UltraVnc supports only 24bpp. Switching color mode and reconnecting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    sget-object v1, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setColorModel(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 660
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public absolutePan(II)V
    .locals 5

    .line 1597
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    if-eqz v0, :cond_4

    .line 1598
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v0

    .line 1599
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v1

    .line 1600
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result v2

    .line 1601
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result v3

    add-int v4, p1, v0

    if-le v4, v2, :cond_0

    sub-int p1, v2, v0

    :cond_0
    add-int v0, p2, v1

    if-le v0, v3, :cond_1

    sub-int p2, v3, v1

    :cond_1
    const/4 v0, 0x0

    if-gez p1, :cond_2

    move p1, v0

    :cond_2
    if-gez p2, :cond_3

    move p2, v0

    .line 1606
    :cond_3
    iput p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 1607
    iput p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    .line 1608
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    :cond_4
    return-void
.end method

.method public closeConnection()V
    .locals 5

    const/4 v0, 0x0

    .line 1358
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 1360
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    if-eqz v1, :cond_0

    .line 1362
    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->clearMetaState()V

    .line 1363
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    if-eqz v0, :cond_1

    .line 1367
    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->close()V

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1371
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1375
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    if-eqz v0, :cond_3

    .line 1376
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SSHConnection;->terminateSSHTunnel()V

    .line 1377
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    .line 1380
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving screenshot to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getScreenshotFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RemoteCanvas"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getScreenshotFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2d0

    const/16 v4, 0x258

    invoke-static {v0, v2, v1, v3, v4}, Lcom/iiordanov/bVNC/Utils;->writeScreenshotToFile(Landroid/content/Context;Lcom/iiordanov/bVNC/AbstractBitmapData;Ljava/lang/String;II)V

    .line 1382
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    .line 1384
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->onDestroy()V

    return-void
.end method

.method public computeShiftFromFullToView()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftX:F

    .line 1445
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftY:F

    return-void
.end method

.method public disconnectAndShowMessage(II)V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 312
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas$2;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnectAndShowMessage(IILjava/lang/String;)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 321
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/iiordanov/bVNC/RemoteCanvas$3;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnectWithoutMessage()V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 330
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$4;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$4;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public displayShortToastMessage(I)V
    .locals 1

    .line 1302
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->screenMessage:Ljava/lang/CharSequence;

    .line 1303
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1304
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public displayShortToastMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1290
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->screenMessage:Ljava/lang/CharSequence;

    .line 1291
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1292
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doneWaiting()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->doneWaiting()V

    return-void
.end method

.method public getAbsX()I
    .locals 1

    .line 1907
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    return v0
.end method

.method public getAbsY()I
    .locals 1

    .line 1911
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    return v0
.end method

.method getAddress()Ljava/lang/String;
    .locals 2

    .line 1152
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    if-eqz v0, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/String;

    const-string v1, "127.0.0.1"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, v0, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBottomMargin(D)I
    .locals 2

    const-wide v0, 0x4072c00000000000L    # 300.0

    div-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getCenteredXOffset()I
    .locals 2

    .line 1870
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCenteredYOffset()I
    .locals 2

    .line 1874
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->isRequestingNewDisplayResolution()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 493
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 494
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpHeight()I

    move-result v0

    .line 496
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteCanvas"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .line 477
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->isRequestingNewDisplayResolution()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 479
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 480
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRdpWidth()I

    move-result v0

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteCanvas"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDisplayDensity()F
    .locals 1

    .line 1885
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->displayDensity:F

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    return v0
.end method

.method public getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    return-object v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v0, :cond_0

    .line 1879
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getMinimumScale()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMouseFollowPan()Z
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getFollowPan()Z

    move-result v0

    return v0
.end method

.method public getPointer()Lcom/iiordanov/bVNC/input/RemotePointer;
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    return-object v0
.end method

.method getPort(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1128
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    if-eqz v0, :cond_1

    .line 1129
    new-instance v0, Lcom/iiordanov/bVNC/SSHConnection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/SSHConnection;-><init>(Lcom/undatech/opaque/Connection;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    .line 1131
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SSHConnection;->initializeSSHTunnel()I

    move-result v0

    if-lez v0, :cond_0

    move p1, v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/SSHConnection;->createLocalPortForward(I)I

    move-result p1

    goto :goto_0

    .line 1136
    :cond_1
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    if-gt p1, v0, :cond_2

    add-int/lit16 p1, p1, 0x170c

    :cond_2
    :goto_0
    return p1
.end method

.method public getTopMargin(D)I
    .locals 2

    const-wide v0, 0x405b800000000000L    # 110.0

    div-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getVisibleDesktopHeight()I
    .locals 7

    .line 1855
    iget v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->visibleHeight:I

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_0

    int-to-double v3, v0

    .line 1856
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    :goto_0
    float-to-double v5, v0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    double-to-int v0, v3

    return v0

    .line 1858
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v0

    int-to-double v3, v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    goto :goto_0
.end method

.method public getVisibleDesktopWidth()I
    .locals 4

    .line 1847
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1843
    :cond_0
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractScaling;->getZoomFactor()F

    move-result v0

    return v0
.end method

.method init(Lcom/undatech/opaque/Connection;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 8

    .line 267
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 268
    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    .line 269
    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    .line 270
    iput-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    .line 271
    iput-object p5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->vvFileName:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->checkNetworkConnectivity()V

    .line 273
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeClipboardMonitor()V

    .line 274
    new-instance p3, Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->isRequestingNewDisplayResolution()Z

    move-result p4

    const/4 v7, 0x1

    if-nez p4, :cond_1

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getRdpResType()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v4, p4

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v7

    .line 276
    :goto_1
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->isUsbEnabled()Z

    move-result v5

    sget-boolean v6, Lcom/iiordanov/bVNC/App;->debugLog:Z

    move-object v0, p3

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/undatech/opaque/SpiceCommunicator;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/undatech/opaque/Viewable;ZZZ)V

    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    .line 277
    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    .line 278
    new-instance p3, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;

    iget-object p4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-direct {p3, p4, p0, p2}, Lcom/iiordanov/bVNC/input/RemoteSpicePointer;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 280
    :try_start_0
    new-instance p3, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    .line 281
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getLayoutMap()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/iiordanov/bVNC/App;->debugLog:Z

    move-object v0, p3

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/iiordanov/bVNC/input/RemoteSpiceKeyboard;-><init>(Landroid/content/res/Resources;Lcom/undatech/opaque/SpiceCommunicator;Lcom/iiordanov/bVNC/RemoteCanvas;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 283
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->handleUncaughtException(Ljava/lang/Throwable;)V

    .line 285
    :goto_2
    iput-boolean v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    if-nez p5, :cond_3

    .line 287
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getConnectionTypeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/undatech/remoteClientUi/R$string;->connection_type_pve:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startPve()V

    goto :goto_3

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iiordanov/bVNC/Utils;->getHostFromUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setAddress(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->startOvirt()V

    goto :goto_3

    .line 295
    :cond_3
    invoke-virtual {p0, p5}, Lcom/iiordanov/bVNC/RemoteCanvas;->startFromVvFile(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public initializeCanvas(Lcom/undatech/opaque/Connection;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/iiordanov/bVNC/input/RemotePointer;
    .locals 6

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->maintainConnection:Z

    .line 376
    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    .line 377
    iput-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    .line 378
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 379
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getConnectionType()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    .line 380
    new-instance p1, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-direct {p1, p2, p0, p3}, Lcom/iiordanov/bVNC/input/RemoteCanvasHandler;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/Connection;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    .line 383
    :try_start_0
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    if-eqz p1, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeSpiceConnection()V

    goto :goto_1

    .line 385
    :cond_1
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isRdp:Z

    if-eqz p1, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeRdpConnection()V

    goto :goto_1

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeVncConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 391
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->handleUncaughtException(Ljava/lang/Throwable;)V

    .line 394
    :goto_1
    new-instance p1, Lcom/iiordanov/bVNC/RemoteCanvas$5;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$5;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 427
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 429
    new-instance p1, Lcom/iiordanov/bVNC/ClipboardMonitor;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/iiordanov/bVNC/ClipboardMonitor;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/RemoteCanvas;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

    .line 431
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitorTimer:Ljava/util/Timer;

    .line 434
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    :catch_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    return-object p1
.end method

.method initializeSoftCursor()V
    .locals 13

    .line 1808
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$drawable;->cursor:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1809
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1810
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v1, v10, v11

    .line 1811
    new-array v12, v1, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, v12

    move v5, v10

    move v8, v10

    move v9, v11

    .line 1812
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1814
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v3

    move v4, v10

    move v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/iiordanov/bVNC/AbstractBitmapData;->setCursorRect(IIIIII)V

    .line 1816
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1, v12}, Lcom/iiordanov/bVNC/AbstractBitmapData;->setSoftCursor([I)V

    .line 1817
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public initializeSshHostKey()V
    .locals 7

    .line 2120
    const-string v0, "RemoteCanvas"

    const-string v1, "Attempting to initialize SSH HostKey."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->info_ssh_initializing_hostkey:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(Ljava/lang/CharSequence;)V

    .line 2124
    new-instance v0, Lcom/iiordanov/bVNC/SSHConnection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/iiordanov/bVNC/SSHConnection;-><init>(Lcom/undatech/opaque/Connection;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    .line 2125
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SSHConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_ssh_unable_to_connect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 2130
    :cond_0
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$21;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$21;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 2139
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$22;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$22;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 2154
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2155
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->info_continue_connecting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getSshServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2156
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/undatech/remoteClientUi/R$string;->info_ssh_key_fingerprint:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshConnection:Lcom/iiordanov/bVNC/SSHConnection;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/SSHConnection;->getHostKeySignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2157
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/undatech/remoteClientUi/R$string;->info_ssh_key_fingerprint_identical:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2154
    invoke-static {v2, v3, v4, v1, v0}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public invalidateMousePosition()V
    .locals 4

    .line 1758
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/AbstractBitmapData;->moveCursorRect(II)V

    .line 1760
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getCursorRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1761
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(FFFF)V

    :cond_0
    return-void
.end method

.method public isColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)Z
    .locals 2

    .line 1889
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    if-eqz v0, :cond_0

    .line 1890
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Decoder;->getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Decoder;->getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/COLORMODEL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public mouseMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOUCHPAD_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->info_set_touchpad_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setRelativeEvents(Z)V

    :goto_0
    return-void
.end method

.method public movePanToMakePointerVisible()V
    .locals 14

    .line 1465
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    if-nez v0, :cond_0

    return-void

    .line 1473
    :cond_0
    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1475
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1479
    :goto_1
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/AbstractScaling;->isAbleToPan()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 1482
    :cond_3
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/input/RemotePointer;->getX()I

    move-result v4

    .line 1483
    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/input/RemotePointer;->getY()I

    move-result v5

    .line 1485
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v6

    .line 1486
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v7

    .line 1487
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result v8

    .line 1488
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result v9

    .line 1492
    iget v10, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 1493
    iget v11, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    sub-int v12, v4, v10

    add-int/lit8 v13, v6, -0x32

    if-lt v12, v13, :cond_4

    sub-int/2addr v4, v13

    add-int v12, v4, v6

    if-le v12, v8, :cond_6

    sub-int v4, v8, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v10, 0x32

    if-ge v4, v6, :cond_5

    add-int/lit8 v4, v4, -0x32

    if-gez v4, :cond_6

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v10

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    if-eq v4, v10, :cond_7

    .line 1505
    iput v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    sub-int v4, v5, v11

    add-int/lit8 v6, v7, -0x32

    if-lt v4, v6, :cond_8

    sub-int v3, v5, v6

    add-int v4, v3, v7

    if-le v4, v9, :cond_b

    sub-int v3, v9, v7

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v11, 0x32

    if-ge v5, v4, :cond_a

    add-int/lit8 v5, v5, -0x32

    if-gez v5, :cond_9

    goto :goto_4

    :cond_9
    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v11

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    if-eq v3, v11, :cond_c

    .line 1519
    iput v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    goto :goto_5

    :cond_c
    move v2, v0

    :goto_5
    if-eqz v2, :cond_d

    .line 1525
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    :cond_d
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .line 1822
    const-string v0, "onCreateInputConnection called"

    const-string v1, "RemoteCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v3, 0x0

    .line 1824
    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 1825
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1826
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentIme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1392
    const-string v0, "RemoteCanvas"

    const-string v1, "Cleaning up resources"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->removeCallbacksAndMessages()V

    .line 1395
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitorTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1399
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitorTimer:Ljava/util/Timer;

    .line 1401
    :cond_0
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboardMonitor:Lcom/iiordanov/bVNC/ClipboardMonitor;

    .line 1402
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboard:Landroid/text/ClipboardManager;

    .line 1403
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    .line 1404
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    .line 1405
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    .line 1406
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->drawableSetter:Ljava/lang/Runnable;

    .line 1407
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->screenMessage:Ljava/lang/CharSequence;

    .line 1408
    iput-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->desktopInfo:Ljava/lang/Runnable;

    .line 1410
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1617
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onScrollChanged(IIII)V

    .line 1618
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    if-eqz p1, :cond_0

    .line 1619
    iget p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    iget p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    invoke-virtual {p1, p2, p3}, Lcom/iiordanov/bVNC/AbstractBitmapData;->scrollChanged(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1935
    monitor-enter p0

    .line 1936
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1937
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onTextObtained(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4

    if-eqz p3, :cond_0

    .line 2165
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 2169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "DIALOG_ID_GET_OPAQUE_OTP_CODE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string p3, "DIALOG_ID_GET_OPAQUE_CREDENTIALS"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string p3, "DIALOG_ID_GET_OPAQUE_PASSWORD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string p3, "DIALOG_ID_GET_VNC_PASSWORD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string p3, "DIALOG_ID_GET_VNC_CREDENTIALS"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_0

    :sswitch_5
    const-string p3, "DIALOG_ID_GET_SPICE_PASSWORD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_0

    :sswitch_6
    const-string p3, "DIALOG_ID_GET_RDP_CREDENTIALS"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    const/16 p1, 0x10

    packed-switch v3, :pswitch_data_0

    .line 2226
    const-string p1, "RemoteCanvas"

    const-string p2, "Unknown dialog type."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2219
    :pswitch_0
    const-string p1, "RemoteCanvas"

    const-string p3, "Text obtained from DIALOG_ID_GET_OPAQUE_OTP_CODE"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setOtpCode(Ljava/lang/String;)V

    .line 2221
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter p3

    .line 2222
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 2223
    monitor-exit p3

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2202
    :pswitch_1
    const-string p3, "RemoteCanvas"

    const-string v0, "Text obtained from DIALOG_ID_GET_OPAQUE_CREDENTIALS"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object v0, p2, v2

    invoke-interface {p3, v0}, Lcom/undatech/opaque/Connection;->setUserName(Ljava/lang/String;)V

    .line 2204
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v1

    invoke-interface {p3, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2205
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2206
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2207
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 2210
    :pswitch_2
    const-string p1, "RemoteCanvas"

    const-string p3, "Text obtained from DIALOG_ID_GET_OPAQUE_PASSWORD"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2212
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2213
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2214
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    monitor-enter p3

    .line 2215
    :try_start_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->spicecomm:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 2216
    monitor-exit p3

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 2179
    :pswitch_3
    const-string p3, "RemoteCanvas"

    const-string v0, "Text obtained from DIALOG_ID_GET_VNC_PASSWORD."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v2

    invoke-interface {p3, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2181
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2182
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2183
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 2171
    :pswitch_4
    const-string p3, "RemoteCanvas"

    const-string v0, "Text obtained from DIALOG_ID_GET_VNC_USERNAME."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object v0, p2, v2

    invoke-interface {p3, v0}, Lcom/undatech/opaque/Connection;->setUserName(Ljava/lang/String;)V

    .line 2173
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v1

    invoke-interface {p3, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2174
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2175
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2176
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2195
    :pswitch_5
    const-string p3, "RemoteCanvas"

    const-string v0, "Text obtained from DIALOG_ID_GET_SPICE_PASSWORD."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v2

    invoke-interface {p3, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2197
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2198
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2199
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2186
    :pswitch_6
    const-string p3, "RemoteCanvas"

    const-string v3, "Text obtained from DIALOG_ID_GET_VNC_PASSWORD."

    invoke-static {p3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object v2, p2, v2

    invoke-interface {p3, v2}, Lcom/undatech/opaque/Connection;->setUserName(Ljava/lang/String;)V

    .line 2188
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object v1, p2, v1

    invoke-interface {p3, v1}, Lcom/undatech/opaque/Connection;->setRdpDomain(Ljava/lang/String;)V

    .line 2189
    iget-object p3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    aget-object p2, p2, v0

    invoke-interface {p3, p2}, Lcom/undatech/opaque/Connection;->setPassword(Ljava/lang/String;)V

    .line 2190
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p2, p4}, Lcom/undatech/opaque/Connection;->setKeepPassword(Z)V

    .line 2191
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 2192
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x707416db -> :sswitch_6
        -0x64dfc11e -> :sswitch_5
        -0x5303e22e -> :sswitch_4
        -0x451b689b -> :sswitch_3
        -0x1a42525d -> :sswitch_2
        -0xe60892c -> :sswitch_1
        0x66745da9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reDraw(FFFF)V
    .locals 6

    .line 1709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1710
    iget-wide v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->lastDraw:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x4030aaa64c2f837bL    # 16.6666

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1711
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v2

    .line 1712
    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftX:F

    sub-float/2addr p1, v3

    .line 1713
    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftY:F

    sub-float/2addr p2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, p1, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sub-float v5, p2, v3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    add-float/2addr p1, p3

    add-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-int p1, p1

    add-float/2addr p2, p4

    add-float/2addr p2, v3

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 1715
    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->postInvalidate(IIII)V

    .line 1717
    iput-wide v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->lastDraw:J

    goto :goto_0

    .line 1719
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateCanvasRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1720
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateCanvasRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public reDraw(IIII)V
    .locals 6

    .line 1688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1689
    iget-wide v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->lastDraw:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x4030aaa64c2f837bL    # 16.6666

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v2

    int-to-float p1, p1

    .line 1691
    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftX:F

    sub-float/2addr p1, v3

    int-to-float p2, p2

    .line 1692
    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftY:F

    sub-float/2addr p2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, p1, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sub-float v5, p2, v3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    int-to-float p3, p3

    add-float/2addr p1, p3

    add-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p3, p4

    add-float/2addr p2, p3

    add-float/2addr p2, v3

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 1694
    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->postInvalidate(IIII)V

    .line 1696
    iput-wide v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->lastDraw:J

    goto :goto_0

    .line 1698
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateCanvasRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1699
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->invalidateCanvasRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public reallocateDrawable(II)V
    .locals 11

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Desktop name is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->desktopName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Desktop size is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v2}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v2}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v2}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 1173
    invoke-static {}, Lcom/iiordanov/android/bc/BCFactory;->getInstance()Lcom/iiordanov/android/bc/BCFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iiordanov/android/bc/BCFactory;->getBCActivityManager()Lcom/iiordanov/android/bc/IBCActivityManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iiordanov/bVNC/Utils;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iiordanov/android/bc/IBCActivityManager;->getMemoryClass(Landroid/app/ActivityManager;)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    .line 1175
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getForceFull()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x7

    .line 1176
    iget v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    const/high16 v6, 0x100000

    mul-int v7, v5, v6

    if-gt v2, v7, :cond_0

    .line 1177
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    .line 1178
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->compact:Z

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x6

    mul-int/2addr v5, v6

    if-gt v0, v5, :cond_1

    .line 1180
    iput-boolean v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    goto :goto_1

    .line 1182
    :cond_1
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    goto :goto_1

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getForceFull()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    .line 1188
    :goto_1
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    if-nez v0, :cond_4

    .line 1189
    new-instance p1, Lcom/iiordanov/bVNC/UltraCompactBitmapData;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    iget-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    or-int/2addr v0, v2

    invoke-direct {p1, p2, p0, v0}, Lcom/iiordanov/bVNC/UltraCompactBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Z)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1190
    const-string p1, "Using UltraCompactBufferBitmapData."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1191
    :cond_4
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    const-string v2, "Using LargeBitmapData."

    if-nez v0, :cond_5

    .line 1192
    new-instance v0, Lcom/iiordanov/bVNC/LargeBitmapData;

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget v10, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    move-object v5, v0

    move-object v7, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/iiordanov/bVNC/LargeBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;III)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1193
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1198
    :cond_5
    :try_start_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->compact:Z

    if-nez v0, :cond_6

    .line 1199
    new-instance v0, Lcom/iiordanov/bVNC/FullBufferBitmapData;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    invoke-direct {v0, v5, p0, v6}, Lcom/iiordanov/bVNC/FullBufferBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1200
    const-string v0, "Using FullBufferBitmapData."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1202
    :cond_6
    new-instance v0, Lcom/iiordanov/bVNC/CompactBitmapData;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-boolean v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isSpice:Z

    iget-boolean v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    or-int/2addr v6, v7

    invoke-direct {v0, v5, p0, v6}, Lcom/iiordanov/bVNC/CompactBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;Z)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1203
    const-string v0, "Using CompactBufferBitmapData."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1206
    :catchall_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    .line 1208
    iput-boolean v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    .line 1209
    new-instance v0, Lcom/iiordanov/bVNC/LargeBitmapData;

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget v10, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    move-object v5, v0

    move-object v7, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/iiordanov/bVNC/LargeBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;III)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1210
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :goto_2
    :try_start_1
    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isRdp:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isOpaque:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUseLocalCursor()I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 1216
    :cond_7
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeSoftCursor()V

    .line 1218
    :cond_8
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->drawableSetter:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1219
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->syncScroll()V

    .line 1221
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    if-eqz p1, :cond_9

    .line 1222
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/Decoder;->setBitmapData(Lcom/iiordanov/bVNC/AbstractBitmapData;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1225
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_9
    :goto_3
    return-void
.end method

.method public reinitializeCanvas()V
    .locals 3

    .line 354
    const-string v0, "RemoteCanvas"

    const-string v1, "Reinitializing remote canvas"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeCanvas(Lcom/undatech/opaque/Connection;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/iiordanov/bVNC/input/RemotePointer;

    .line 356
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reinitializeOpaque()V
    .locals 8

    .line 363
    const-string v0, "RemoteCanvas"

    const-string v1, "Reinitializing remote canvas opaque"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->vvFileName:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/iiordanov/bVNC/RemoteCanvas;->init(Lcom/undatech/opaque/Connection;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->hideKeyboardAndExtraKeys:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public relativePan(FF)Z
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1545
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "relativePan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RemoteCanvas"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v3, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->canvasZoomer:Lcom/iiordanov/bVNC/AbstractScaling;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/AbstractScaling;->isAbleToPan()Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v3

    float-to-double v5, v3

    float-to-double v7, v1

    div-double v9, v7, v5

    float-to-double v1, v2

    div-double v11, v1, v5

    .line 1556
    invoke-virtual {p0, v5, v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->getBottomMargin(D)I

    move-result v3

    .line 1558
    iget-boolean v13, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->userPanned:Z

    if-eqz v13, :cond_1

    .line 1559
    invoke-virtual {p0, v5, v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->getTopMargin(D)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const-wide/16 v13, 0x0

    cmpl-double v6, v7, v13

    if-nez v6, :cond_3

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 1562
    :goto_2
    iput-boolean v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->userPanned:Z

    .line 1565
    iget v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    int-to-double v7, v1

    add-double/2addr v7, v9

    cmpg-double v2, v7, v13

    if-gez v2, :cond_4

    neg-int v2, v1

    int-to-double v9, v2

    .line 1568
    :cond_4
    iget v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    int-to-double v6, v2

    add-double/2addr v6, v11

    rsub-int/lit8 v8, v5, 0x0

    int-to-double v13, v8

    cmpg-double v6, v6, v13

    if-gez v6, :cond_5

    neg-int v2, v2

    sub-int/2addr v2, v5

    int-to-double v11, v2

    .line 1573
    :cond_5
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, v9

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_6

    .line 1574
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    sub-int/2addr v1, v2

    int-to-double v9, v1

    .line 1575
    :cond_6
    iget v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, v11

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result v5

    add-int/2addr v5, v3

    int-to-double v5, v5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_7

    .line 1576
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getImageHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getVisibleDesktopHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    int-to-double v11, v1

    .line 1578
    :cond_7
    iget v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    int-to-double v1, v1

    add-double/2addr v1, v9

    double-to-int v1, v1

    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    .line 1579
    iget v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    int-to-double v1, v1

    add-double/2addr v1, v11

    double-to-int v1, v1

    iput v1, v0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    const-wide/16 v1, 0x0

    cmpl-double v3, v9, v1

    if-nez v3, :cond_9

    cmpl-double v1, v11, v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    return v4

    .line 1582
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->resetScroll()V

    const/4 v1, 0x1

    return v1
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .line 1415
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1416
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method resetScroll()V
    .locals 4

    .line 1452
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getZoomFactor()F

    move-result v0

    .line 1455
    iget v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteXPosition:I

    int-to-float v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->absoluteYPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->shiftY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->scrollTo(II)V

    return-void
.end method

.method retrieveVvFileFromPve(Ljava/lang/String;Lcom/undatech/opaque/proxmox/ProxmoxClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 754
    const-string v0, "RemoteCanvas"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to connect to PVE host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempfile.vv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v0}, Lcom/undatech/opaque/util/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 758
    new-instance v9, Lcom/iiordanov/bVNC/RemoteCanvas$8;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/iiordanov/bVNC/RemoteCanvas$8;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Lcom/undatech/opaque/proxmox/ProxmoxClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 805
    monitor-enter v0

    .line 807
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 809
    :try_start_1
    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 810
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 812
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 812
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public retrievevvFileName()Ljava/lang/String;
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->vvFileName:Ljava/lang/String;

    return-object v0
.end method

.method sendUnixAuth()V
    .locals 11

    .line 990
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getAutoXUnixAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 992
    invoke-interface {v1}, Lcom/undatech/opaque/Connection;->getSshUser()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    const/4 v1, 0x0

    .line 991
    invoke-virtual {v0, v1, v7}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 993
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x42

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 994
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 996
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    .line 997
    invoke-interface {v5}, Lcom/undatech/opaque/Connection;->getSshPassword()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 996
    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 998
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    .line 999
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->keyboard:Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->keyEvent(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public setClipboardText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)V
    .locals 1

    .line 1897
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->isVnc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    if-eqz v0, :cond_0

    .line 1898
    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/Decoder;->setColorModel(Lcom/iiordanov/bVNC/COLORMODEL;)V

    :cond_0
    return-void
.end method

.method public setMousePointerPosition(II)V
    .locals 0

    .line 1767
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->softCursorMove(II)V

    return-void
.end method

.method public setVisibleDesktopHeight(I)V
    .locals 0

    .line 1851
    iput p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->visibleHeight:I

    return-void
.end method

.method public showConnectionInfo()V
    .locals 5

    .line 1728
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    if-nez v0, :cond_0

    return-void

    .line 1732
    :cond_0
    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->desktopName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1733
    const-string v1, "\n"

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1736
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v3}, Lcom/undatech/opaque/RfbConnectable;->desktopName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1737
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v4}, Lcom/undatech/opaque/RfbConnectable;->desktopName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v0}, Lcom/undatech/opaque/RfbConnectable;->desktopName()Ljava/lang/String;

    move-result-object v0

    .line 1741
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->framebufferWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->framebufferHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1742
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1744
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/Decoder;->getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1745
    const-string v3, ", "

    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {v1}, Lcom/undatech/opaque/RfbConnectable;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/undatech/remoteClientUi/R$string;->info_encoding:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Decoder;->getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/COLORMODEL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Decoder;->getColorModel()Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/COLORMODEL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    :cond_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showFatalMessageAndQuit(Ljava/lang/String;)V
    .locals 2

    .line 1110
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->closeConnection()V

    .line 1111
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$12;

    invoke-direct {v1, p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas$12;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 2

    .line 1098
    const-string v0, "RemoteCanvas"

    const-string v1, "showMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->screenMessage:Ljava/lang/CharSequence;

    .line 1100
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showDialogMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->showDialogMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method declared-synchronized softCursorMove(II)V
    .locals 3

    monitor-enter p0

    .line 1786
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->isNotInitSoftCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getUseLocalCursor()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->initializeSoftCursor()V

    .line 1790
    :cond_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->cursorBeingMoved:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/RemotePointer;->isRelativeEvents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/input/RemotePointer;->setX(I)V

    .line 1792
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pointer:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-virtual {v0, p2}, Lcom/iiordanov/bVNC/input/RemotePointer;->setY(I)V

    .line 1793
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getCursorRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1795
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v1, p1, p2}, Lcom/iiordanov/bVNC/AbstractBitmapData;->moveCursorRect(II)V

    .line 1797
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getCursorRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 1798
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(FFFF)V

    .line 1799
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->reDraw(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method startFromVvFile(Ljava/lang/String;)V
    .locals 1

    .line 825
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$9;

    invoke-direct {v0, p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas$9;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method startOvirt()V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 671
    :cond_0
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$7;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$7;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method startPve()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 845
    :cond_0
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$10;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$10;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 980
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public syncScroll()V
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->syncScroll()V

    return-void
.end method

.method public updateFBSize()V
    .locals 10

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->frameBufferSizeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1252
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1

    .line 1253
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    .line 1256
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->compact:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1257
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->compact:Z

    .line 1259
    :try_start_1
    new-instance v0, Lcom/iiordanov/bVNC/FullBufferBitmapData;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    invoke-direct {v0, v1, p0, v3}, Lcom/iiordanov/bVNC/FullBufferBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1268
    :catchall_1
    :cond_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->disposeDrawable()V

    .line 1270
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    .line 1271
    new-instance v0, Lcom/iiordanov/bVNC/LargeBitmapData;

    iget-object v5, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->capacity:I

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/iiordanov/bVNC/LargeBitmapData;-><init>(Lcom/undatech/opaque/RfbConnectable;Lcom/iiordanov/bVNC/RemoteCanvas;III)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1273
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->decoder:Lcom/iiordanov/bVNC/Decoder;

    if-eqz v0, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/Decoder;->setBitmapData(Lcom/iiordanov/bVNC/AbstractBitmapData;)V

    .line 1278
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->drawableSetter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1279
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->setModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1280
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->syncScroll()V

    return-void
.end method

.method public validateRdpCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2082
    new-instance v0, Lcom/iiordanov/bVNC/RemoteCanvas$19;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$19;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 2090
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$20;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$20;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 2100
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->info_continue_connecting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2101
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/undatech/remoteClientUi/R$string;->info_cert_signatures:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2102
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/undatech/remoteClientUi/R$string;->cert_subject:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":     "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2103
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/undatech/remoteClientUi/R$string;->cert_issuer:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ":      "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2104
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v4, Lcom/undatech/remoteClientUi/R$string;->cert_fingerprint:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2105
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/undatech/remoteClientUi/R$string;->info_cert_signatures_identical:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2100
    invoke-static {v2, v3, p1, v1, v0}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public validateX509Cert(Ljava/security/cert/X509Certificate;)V
    .locals 9

    .line 1958
    const-string v0, "Displaying dialog to validate X509 Cert"

    const-string v1, "RemoteCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getIdHashAlgorithm()I

    move-result v0

    .line 1965
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 1966
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/iiordanov/bVNC/SecureTunnel;->isSignatureEqual(ILjava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1975
    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getX509KeySignature()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 1976
    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v2}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 1978
    const-string v0, "Certificate validated from URI data."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->saveAndAcceptCert(Ljava/security/cert/X509Certificate;)V

    return-void

    .line 1986
    :cond_0
    iget-object v3, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v3}, Lcom/undatech/opaque/Connection;->getX509KeySignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1987
    const-string v0, "Certificate validated from saved key."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->saveAndAcceptCert(Ljava/security/cert/X509Certificate;)V

    return-void

    .line 1990
    :cond_1
    iget-boolean v2, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->sshTunneled:Z

    if-eqz v2, :cond_3

    .line 1991
    const-string v2, "X509 connection tunneled over SSH, so we have no place to save the cert fingerprint."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v6, v7

    .line 1997
    :cond_3
    new-instance v1, Lcom/iiordanov/bVNC/RemoteCanvas$17;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/RemoteCanvas$17;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;)V

    .line 2006
    new-instance v2, Lcom/iiordanov/bVNC/RemoteCanvas$18;

    invoke-direct {v2, p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas$18;-><init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/security/cert/X509Certificate;)V

    if-eqz v6, :cond_4

    .line 2019
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->warning_cert_does_not_match:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2021
    :cond_4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 2022
    invoke-static {v0, v3}, Lcom/iiordanov/bVNC/SecureTunnel;->computeSignatureByAlgorithm(I[B)Ljava/lang/String;

    move-result-object v0

    .line 2023
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2024
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/undatech/remoteClientUi/R$string;->info_cert_tunnel:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2026
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2027
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2028
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v8

    .line 2029
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    filled-new-array {v0, v6, v7, v8, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2024
    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    const-string v4, "\n"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2034
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2035
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->info_continue_connecting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v4}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2034
    invoke-static {v0, v3, p1, v2, v1}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2042
    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 2043
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_x509_could_not_generate_encoding:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2039
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2040
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_x509_could_not_generate_signature:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 1968
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1969
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_x509_could_not_generate_signature:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->showFatalMessageAndQuit(Ljava/lang/String;)V

    return-void
.end method

.method public waitUntilInflated()V
    .locals 1

    .line 1918
    monitor-enter p0

    .line 1919
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1926
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1921
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1923
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1926
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public writeFramebufferUpdateRequest(IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p5}, Lcom/iiordanov/bVNC/AbstractBitmapData;->prepareFullUpdateRequest(Z)V

    .line 1330
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writeFramebufferUpdateRequest(IIIIZ)V

    return-void
.end method

.method public writeFullUpdateRequest(Z)V
    .locals 7

    .line 1338
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/AbstractBitmapData;->prepareFullUpdateRequest(Z)V

    .line 1339
    iget-object v1, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->rfbconn:Lcom/undatech/opaque/RfbConnectable;

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getXoffset()I

    move-result v2

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->getYoffset()I

    move-result v3

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    .line 1340
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->bmWidth()I

    move-result v4

    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvas;->myDrawable:Lcom/iiordanov/bVNC/AbstractBitmapData;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/AbstractBitmapData;->bmHeight()I

    move-result v5

    move v6, p1

    .line 1339
    invoke-interface/range {v1 .. v6}, Lcom/undatech/opaque/RfbConnectable;->writeFramebufferUpdateRequest(IIIIZ)V

    return-void
.end method
