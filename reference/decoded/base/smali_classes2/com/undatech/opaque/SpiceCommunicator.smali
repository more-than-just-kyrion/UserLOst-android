.class public Lcom/undatech/opaque/SpiceCommunicator;
.super Ljava/lang/Object;
.source "SpiceCommunicator.java"

# interfaces
.implements Lcom/undatech/opaque/RfbConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;,
        Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;
    }
.end annotation


# static fields
.field static final LALT:I = 0x38

.field static final LCONTROL:I = 0x1d

.field static final LSHIFT:I = 0x2a

.field static final LWIN:I = 0x15b

.field static final RALT:I = 0x138

.field static final RCONTROL:I = 0x11d

.field static final RSHIFT:I = 0x36

.field static final RWIN:I = 0x15c

.field private static final TAG:Ljava/lang/String; = "SpiceCommunicator"

.field private static myself:Lcom/undatech/opaque/SpiceCommunicator;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Lcom/undatech/opaque/Viewable;

.field private context:Landroid/content/Context;

.field private debugLogging:Z

.field private deviceToFdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private height:I

.field isInNormalProtocol:Z

.field private isRequestingNewDisplayResolution:Z

.field mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private maxResolutionRequests:I

.field remoteMetaState:I

.field private resolutionRequests:I

.field private thread:Ljava/lang/Thread;

.field private usbEnabled:Z

.field private vmNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-string v0, "gstreamer_android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    const-string v0, "spice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    sput-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/undatech/opaque/Viewable;ZZZ)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->deviceToFdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 54
    new-instance v1, Lcom/undatech/opaque/SpiceCommunicator$1;

    invoke-direct {v1, p0}, Lcom/undatech/opaque/SpiceCommunicator$1;-><init>(Lcom/undatech/opaque/SpiceCommunicator;)V

    iput-object v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    .line 113
    iput v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->width:I

    .line 114
    iput v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->height:I

    .line 116
    iput-boolean v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->isInNormalProtocol:Z

    .line 118
    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->thread:Ljava/lang/Thread;

    const/4 v1, -0x1

    .line 120
    iput v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->resolutionRequests:I

    const/4 v1, 0x5

    .line 121
    iput v1, p0, Lcom/undatech/opaque/SpiceCommunicator;->maxResolutionRequests:I

    .line 146
    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->vmNames:Ljava/util/ArrayList;

    .line 127
    iput-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->context:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    .line 129
    iput-boolean p4, p0, Lcom/undatech/opaque/SpiceCommunicator;->isRequestingNewDisplayResolution:Z

    .line 130
    iput-boolean p5, p0, Lcom/undatech/opaque/SpiceCommunicator;->usbEnabled:Z

    .line 131
    iput-object p2, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    .line 132
    iput-boolean p6, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    .line 133
    sput-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    .line 134
    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 137
    :try_start_0
    invoke-static {p1}, Lorg/freedesktop/gstreamer/GStreamer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 139
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static AddVm(Ljava/lang/String;)V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding VM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "to list of VMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v0, v0, Lcom/undatech/opaque/SpiceCommunicator;->vmNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static LaunchVncViewer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 515
    const-string v0, "SpiceCommunicator"

    const-string v1, "LaunchVncViewer called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 517
    const-string v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string p0, "port"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string p0, "password"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 p1, 0x17

    .line 521
    iput p1, p0, Landroid/os/Message;->what:I

    .line 522
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 523
    sget-object p1, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p1, p1, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static OnGraphicsUpdate(IIIII)V
    .locals 6

    .line 558
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {p0}, Lcom/undatech/opaque/Viewable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    monitor-enter p0

    .line 561
    :try_start_0
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/undatech/opaque/SpiceCommunicator;->UpdateBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 562
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/undatech/opaque/Viewable;->reDraw(IIII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private static OnMouseMode(Z)V
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnMouseMode called, relative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v0, v0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {v0, p0}, Lcom/undatech/opaque/Viewable;->mouseMode(Z)V

    return-void
.end method

.method private static OnMouseUpdate(II)V
    .locals 1

    .line 571
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v0, v0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {v0, p0, p1}, Lcom/undatech/opaque/Viewable;->setMousePointerPosition(II)V

    return-void
.end method

.method private static OnSettingsChanged(IIII)V
    .locals 0

    .line 553
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/undatech/opaque/SpiceCommunicator;->onSettingsChanged(III)V

    return-void
.end method

.method private static ShowMessage(Ljava/lang/String;)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShowMessage called, message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2f

    .line 581
    invoke-static {v0, p0}, Lcom/undatech/opaque/SpiceCommunicator;->sendMessageWithText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/undatech/opaque/SpiceCommunicator;)Ljava/util/HashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->deviceToFdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/undatech/opaque/SpiceCommunicator;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/undatech/opaque/SpiceCommunicator;)Lcom/undatech/opaque/Viewable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    return-object p0
.end method

.method public static openUsbDevice(II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 436
    const-string v0, "SpiceCommunicator"

    const-string v1, "Attempting to open a USB device and return a file descriptor."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-boolean v0, v0, Lcom/undatech/opaque/SpiceCommunicator;->usbEnabled:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    sget-object v2, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v2, v2, Lcom/undatech/opaque/SpiceCommunicator;->deviceToFdMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v4, 0x1388

    move v5, v3

    :goto_0
    if-nez v5, :cond_2

    if-lez v4, :cond_2

    .line 450
    sget-object v6, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v6, v6, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v6

    .line 451
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 453
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 454
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    .line 456
    const-string v8, "SpiceCommunicator"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEVICE: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    if-ne v8, p0, :cond_0

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 458
    const-string v2, "SpiceCommunicator"

    const-string v5, "USB device successfully matched."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v2, v7

    :cond_1
    add-int/lit8 v4, v4, -0x64

    const-wide/16 v6, 0x64

    .line 465
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_5

    .line 472
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 474
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v1

    goto :goto_1

    .line 477
    :cond_3
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->deviceToFdMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    monitor-enter p0

    .line 478
    :try_start_0
    sget-object p1, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p1, p1, Lcom/undatech/opaque/SpiceCommunicator;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.undatech.opaque.USB_PERMISSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 481
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.undatech.opaque.USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 482
    sget-object v4, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v5, v4, Lcom/undatech/opaque/SpiceCommunicator;->context:Landroid/content/Context;

    iget-object v4, v4, Lcom/undatech/opaque/SpiceCommunicator;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 484
    sget-object v3, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v3, v3, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v2, p1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 486
    sget-object p1, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p1, p1, Lcom/undatech/opaque/SpiceCommunicator;->deviceToFdMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-wide/16 v3, 0x3a98

    invoke-virtual {p1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 488
    sget-object p1, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p1, p1, Lcom/undatech/opaque/SpiceCommunicator;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 490
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result p1

    move v1, p1

    .line 492
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return v1
.end method

.method public static sendMessage(I)V
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage called with message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object v0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object v0, v0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static sendMessageWithText(ILjava/lang/String;)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessageWithText called with messageId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and messageText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object p1, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p1, p1, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 509
    iput p0, p1, Landroid/os/Message;->what:I

    .line 510
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 511
    sget-object p0, Lcom/undatech/opaque/SpiceCommunicator;->myself:Lcom/undatech/opaque/SpiceCommunicator;

    iget-object p0, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendModifierKeys(Z)V
    .locals 4

    .line 336
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    and-int/lit16 v0, v0, 0x1000

    const-string v1, "SpiceCommunicator"

    if-eqz v0, :cond_0

    .line 337
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendModifierKeys: Sending CTRL: 29 down: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1d

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    .line 341
    :cond_0
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 342
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendModifierKeys: Sending LALT: 56 down: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    .line 346
    :cond_1
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 347
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendModifierKeys: Sending RALT: 312 down: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x138

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    .line 351
    :cond_2
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 352
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendModifierKeys: Sending LWIN: 347 down: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15b

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    .line 356
    :cond_3
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 357
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendModifierKeys: Sending SHIFT: 42 down: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2a

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    :cond_4
    return-void
.end method


# virtual methods
.method public native CreateOvirtSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
.end method

.method public native FetchVmNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public native SpiceButtonEvent(IIIIZ)V
.end method

.method public native SpiceClientConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public native SpiceClientDisconnect()V
.end method

.method public native SpiceKeyEvent(ZI)V
.end method

.method public native SpiceRequestResolution(II)V
.end method

.method public native StartSessionFromVvFile(Ljava/lang/String;Z)I
.end method

.method public native UpdateBitmap(Landroid/graphics/Bitmap;IIII)V
.end method

.method public close()V
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/undatech/opaque/SpiceCommunicator;->disconnect()V

    return-void
.end method

.method public connectOvirt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectOvirt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v5, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v6, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpiceCommunicator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/undatech/opaque/SpiceCommunicator$OvirtThread;-><init>(Lcom/undatech/opaque/SpiceCommunicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v1, p0

    iput-object v0, v1, Lcom/undatech/opaque/SpiceCommunicator;->thread:Ljava/lang/Thread;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public connectSpice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectSpice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v5, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v6, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpiceCommunicator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/undatech/opaque/SpiceCommunicator$SpiceThread;-><init>(Lcom/undatech/opaque/SpiceCommunicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, p0

    iput-object v0, v1, Lcom/undatech/opaque/SpiceCommunicator;->thread:Ljava/lang/Thread;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public desktopName()Ljava/lang/String;
    .locals 1

    .line 299
    const-string v0, ""

    return-object v0
.end method

.method public disconnect()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->isInNormalProtocol:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/undatech/opaque/SpiceCommunicator;->SpiceClientDisconnect()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->thread:Ljava/lang/Thread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public fetchOvirtVmNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->vmNames:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "//api"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/undatech/opaque/SpiceCommunicator;->FetchVmNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public framebufferHeight()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->height:I

    return v0
.end method

.method public framebufferWidth()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->width:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 322
    const-string v0, ""

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVmNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->vmNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCertificateAccepted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInNormalProtocol()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->isInNormalProtocol:Z

    return v0
.end method

.method public onSettingsChanged(III)V
    .locals 2

    .line 532
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onSettingsChanged called, wxh: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SpiceCommunicator"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/SpiceCommunicator;->setFramebufferWidth(I)V

    .line 535
    invoke-virtual {p0, p2}, Lcom/undatech/opaque/SpiceCommunicator;->setFramebufferHeight(I)V

    .line 537
    iget-object p3, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {p3, p1, p2}, Lcom/undatech/opaque/Viewable;->reallocateDrawable(II)V

    const/4 p1, 0x1

    .line 539
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/SpiceCommunicator;->setIsInNormalProtocol(Z)V

    .line 540
    iget-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    iget-boolean p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->isRequestingNewDisplayResolution:Z

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {p1}, Lcom/undatech/opaque/Viewable;->getDesiredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {p2}, Lcom/undatech/opaque/Viewable;->getDesiredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/SpiceCommunicator;->requestResolution(II)V

    .line 544
    iget-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/undatech/opaque/SpiceCommunicator$2;

    invoke-direct {p2, p0}, Lcom/undatech/opaque/SpiceCommunicator$2;-><init>(Lcom/undatech/opaque/SpiceCommunicator;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public requestResolution(II)V
    .locals 5

    .line 407
    const-string v0, "requestResolution()"

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->isRequestingNewDisplayResolution:Z

    if-nez v0, :cond_0

    .line 409
    const-string p1, "Requesting remote resolution is disabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_0
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->isInNormalProtocol:Z

    if-eqz v0, :cond_4

    .line 413
    iget v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->width:I

    .line 414
    iget v2, p0, Lcom/undatech/opaque/SpiceCommunicator;->height:I

    .line 416
    iget v3, p0, Lcom/undatech/opaque/SpiceCommunicator;->resolutionRequests:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-ne v0, p1, :cond_1

    if-eq v2, p2, :cond_2

    :cond_1
    iget v4, p0, Lcom/undatech/opaque/SpiceCommunicator;->maxResolutionRequests:I

    if-ge v3, v4, :cond_2

    .line 418
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->canvas:Lcom/undatech/opaque/Viewable;

    invoke-interface {v0}, Lcom/undatech/opaque/Viewable;->waitUntilInflated()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Requesting new resolution: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/SpiceCommunicator;->SpiceRequestResolution(II)V

    .line 421
    iget p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->resolutionRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->resolutionRequests:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    if-ne v0, p1, :cond_3

    if-ne v2, p2, :cond_3

    .line 423
    const-string p1, "Resolution request satisfied, resetting resolutionRequests count"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput v3, p0, Lcom/undatech/opaque/SpiceCommunicator;->resolutionRequests:I

    goto :goto_0

    .line 426
    :cond_3
    const-string p1, "Resolution request disabled or last request unsatisfied (resolution request loop?)."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-boolean v3, p0, Lcom/undatech/opaque/SpiceCommunicator;->isRequestingNewDisplayResolution:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public requestUpdate(Z)V
    .locals 0

    return-void
.end method

.method public sendMouseEvent(IIIIZ)V
    .locals 0

    .line 272
    invoke-virtual/range {p0 .. p5}, Lcom/undatech/opaque/SpiceCommunicator;->SpiceButtonEvent(IIIIZ)V

    return-void
.end method

.method public sendSpiceKeyEvent(ZI)V
    .locals 3

    .line 276
    iget-boolean v0, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSpiceKeyEvent: down: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpiceCommunicator"

    invoke-static {v0, v2, v1}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/SpiceCommunicator;->SpiceKeyEvent(ZI)V

    return-void
.end method

.method public setCertificateAccepted(Z)V
    .locals 0

    return-void
.end method

.method public setFramebufferHeight(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->height:I

    return-void
.end method

.method public setFramebufferWidth(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->width:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setIsInNormalProtocol(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->isInNormalProtocol:Z

    return-void
.end method

.method public startSessionFromVvFile(Ljava/lang/String;Z)I
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting connection from vv file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/SpiceCommunicator;->StartSessionFromVvFile(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public writeClientCutText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writeFramebufferUpdateRequest(IIIIZ)V
    .locals 0

    return-void
.end method

.method public writeKeyEvent(IIZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 365
    iput p2, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    const/4 p2, 0x1

    .line 366
    invoke-direct {p0, p2}, Lcom/undatech/opaque/SpiceCommunicator;->sendModifierKeys(Z)V

    .line 369
    :cond_0
    iget-boolean p2, p0, Lcom/undatech/opaque/SpiceCommunicator;->debugLogging:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeKeyEvent: Sending scanCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Is it down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpiceCommunicator"

    invoke-static {p2, v1, v0}, Lcom/undatech/opaque/util/GeneralUtils;->debugLog(ZLjava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3, p1}, Lcom/undatech/opaque/SpiceCommunicator;->sendSpiceKeyEvent(ZI)V

    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 374
    invoke-direct {p0, p1}, Lcom/undatech/opaque/SpiceCommunicator;->sendModifierKeys(Z)V

    .line 375
    iput p1, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    :cond_1
    return-void
.end method

.method public writePointerEvent(IIIIZ)V
    .locals 2

    .line 327
    iput p3, p0, Lcom/undatech/opaque/SpiceCommunicator;->remoteMetaState:I

    const v0, 0x8000

    and-int/2addr v0, p4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, v1}, Lcom/undatech/opaque/SpiceCommunicator;->sendModifierKeys(Z)V

    .line 330
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/undatech/opaque/SpiceCommunicator;->sendMouseEvent(IIIIZ)V

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/undatech/opaque/SpiceCommunicator;->sendModifierKeys(Z)V

    :cond_1
    return-void
.end method

.method public writeSetPixelFormat(IIZZIIIIIIZ)V
    .locals 0

    return-void
.end method
