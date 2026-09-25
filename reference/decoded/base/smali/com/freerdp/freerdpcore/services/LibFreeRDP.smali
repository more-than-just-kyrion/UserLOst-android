.class public Lcom/freerdp/freerdpcore/services/LibFreeRDP;
.super Ljava/lang/Object;
.source "LibFreeRDP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;,
        Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibFreeRDP"

.field private static listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener; = null

.field private static mHasH264:Z = true

.field private static final mInstanceState:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    const-string v0, "LibFreeRDP"

    .line 33
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    sput-object v1, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    const/16 v1, 0x9

    .line 38
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "openh264"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "freerdp-openssl"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "ssl"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "crypto"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "jpeg"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "winpr2"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "freerdp2"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "freerdp-client2"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "freerdp-android2"

    aput-object v6, v2, v5

    .line 47
    const-string v5, "java.library.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_0
    if-ge v6, v1, :cond_1

    .line 49
    aget-object v7, v2, v6

    .line 53
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying to load library "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from LD_PATH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to load library "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    sput-boolean v3, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mHasH264:Z

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OnAuthenticate(JLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 502
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 507
    invoke-interface {p0, p2, p3, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private static OnConnectionFailure(J)V
    .locals 1

    .line 457
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0, p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;->OnConnectionFailure(J)V

    .line 459
    :cond_0
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    .line 461
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 463
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static OnConnectionSuccess(J)V
    .locals 2

    .line 446
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;->OnConnectionSuccess(J)V

    .line 448
    :cond_0
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x1

    .line 450
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 452
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static OnDisconnected(J)V
    .locals 1

    .line 480
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0, p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;->OnDisconnected(J)V

    .line 482
    :cond_0
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    .line 484
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 486
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static OnDisconnecting(J)V
    .locals 1

    .line 474
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;->OnDisconnecting(J)V

    :cond_0
    return-void
.end method

.method private static OnGatewayAuthenticate(JLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 514
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 519
    invoke-interface {p0, p2, p3, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnGatewayAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private static OnGraphicsResize(JIII)V
    .locals 0

    .line 563
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 568
    invoke-interface {p0, p2, p3, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnGraphicsResize(III)V

    :cond_1
    return-void
.end method

.method private static OnGraphicsUpdate(JIIII)V
    .locals 0

    .line 553
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 558
    invoke-interface {p0, p2, p3, p4, p5}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnGraphicsUpdate(IIII)V

    :cond_1
    return-void
.end method

.method private static OnPreConnect(J)V
    .locals 1

    .line 468
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;->OnPreConnect(J)V

    :cond_0
    return-void
.end method

.method private static OnRemoteClipboardChanged(JLjava/lang/String;)V
    .locals 0

    .line 573
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 578
    invoke-interface {p0, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnRemoteClipboardChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static OnSettingsChanged(JIII)V
    .locals 0

    .line 491
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 496
    invoke-interface {p0, p2, p3, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnSettingsChanged(III)V

    :cond_1
    return-void
.end method

.method private static OnVerifyCertificate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .line 526
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 531
    invoke-interface/range {v0 .. v5}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnVerifiyCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private static OnVerifyChangedCertificate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 541
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getSession(J)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 544
    :cond_0
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 546
    invoke-interface/range {v2 .. v9}, Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;->OnVerifyChangedCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private static addFlag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancelConnection(J)Z
    .locals 2

    .line 165
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_disconnect(J)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 171
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static connect(J)Z
    .locals 2

    .line 141
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_connect(J)Z

    move-result p0

    return p0

    .line 145
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "instance already connected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static disconnect(J)Z
    .locals 2

    .line 153
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_disconnect(J)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 159
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static freeInstance(J)V
    .locals 4

    .line 118
    sget-object v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_disconnect(J)Z

    .line 124
    :cond_0
    :goto_0
    sget-object v2, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mInstanceState:Landroidx/collection/LongSparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v3}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 135
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-static {p0, p1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_free(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 135
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static native freerdp_connect(J)Z
.end method

.method private static native freerdp_disconnect(J)Z
.end method

.method private static native freerdp_free(J)V
.end method

.method private static native freerdp_get_build_config()Ljava/lang/String;
.end method

.method private static native freerdp_get_build_date()Ljava/lang/String;
.end method

.method private static native freerdp_get_build_revision()Ljava/lang/String;
.end method

.method private static native freerdp_get_jni_version()Ljava/lang/String;
.end method

.method private static native freerdp_get_last_error_string(J)Ljava/lang/String;
.end method

.method private static native freerdp_get_version()Ljava/lang/String;
.end method

.method private static native freerdp_new(Landroid/content/Context;)J
.end method

.method private static native freerdp_parse_arguments(J[Ljava/lang/String;)Z
.end method

.method private static native freerdp_send_clipboard_data(JLjava/lang/String;)Z
.end method

.method private static native freerdp_send_cursor_event(JIII)Z
.end method

.method private static native freerdp_send_key_event(JIZ)Z
.end method

.method private static native freerdp_send_unicodekey_event(JIZ)Z
.end method

.method private static native freerdp_update_graphics(JLandroid/graphics/Bitmap;IIII)Z
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 583
    invoke-static {}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_get_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasH264Support()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mHasH264:Z

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)J
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_new(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static sendClipboardData(JLjava/lang/String;)Z
    .locals 0

    .line 441
    invoke-static {p0, p1, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_send_clipboard_data(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sendCursorEvent(JIII)Z
    .locals 0

    .line 426
    invoke-static {p0, p1, p2, p3, p4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_send_cursor_event(JIII)Z

    move-result p0

    return p0
.end method

.method public static sendKeyEvent(JIZ)Z
    .locals 0

    .line 431
    invoke-static {p0, p1, p2, p3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_send_key_event(JIZ)Z

    move-result p0

    return p0
.end method

.method public static sendUnicodeKeyEvent(JIZ)Z
    .locals 0

    .line 436
    invoke-static {p0, p1, p2, p3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_send_unicodekey_event(JIZ)Z

    move-result p0

    return p0
.end method

.method public static setConnectionInfo(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 7

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const-string v1, "LibFreeRDP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v1, "/gdi:sw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/client-hostname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-virtual {p3}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 371
    const-string v2, ":"

    if-eqz p0, :cond_2

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/v:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/u:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "/"

    if-eqz v4, :cond_4

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    :cond_4
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 403
    :cond_5
    const-string v4, "drive"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 406
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "sdcard,"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 414
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 415
    invoke-static {p1, p2, p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_parse_arguments(J[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setConnectionInfo(Landroid/content/Context;JLcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 9

    .line 186
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    .line 187
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    .line 188
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const-string v4, "LibFreeRDP"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v4, "/gdi:sw"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/client-hostname:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    return v4

    .line 207
    :cond_1
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p0

    check-cast p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getPort()I

    move-result p0

    .line 208
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v6

    check-cast v6, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {v6}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object v6

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/v:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/port:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getUsername()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/u:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDomain()Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/d:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_3
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPassword()Ljava/lang/String;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/p:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_4
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p0, v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v6, "/size:%dx%d"

    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "/bpp:"

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getColors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getConsoleMode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 235
    const-string p0, "/admin"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getSecurity()I

    move-result p0

    if-eq p0, v5, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    goto :goto_0

    .line 241
    :cond_6
    const-string p0, "/sec-nla"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_7
    const-string p0, "/sec-tls"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_8
    const-string p0, "/sec-rdp"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    const-string p0, ""

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 255
    const-string p0, "/cert-name:"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_9
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getActivePerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getRemoteFX()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    const-string v0, "/rfx"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_a
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getGfx()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 266
    const-string v0, "/gfx"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_b
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getH264()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->mHasH264:Z

    if-eqz v0, :cond_c

    .line 271
    const-string v0, "/gfx:AVC444"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_c
    const-string v0, "wallpaper"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getWallpaper()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v0, "window-drag"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFullWindowDrag()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v0, "menu-anims"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getMenuAnimations()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v0, "themes"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getTheming()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "fonts"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFontSmoothing()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "aero"

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getDesktopComposition()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const-string p0, "glyph-cache"

    invoke-static {p0, v4}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const-string p0, "relax-order-checks"

    invoke-static {p0, v5}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRemoteProgram()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "/shell:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRemoteProgram()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_d
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getWorkDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "/shell-dir:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getWorkDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_e
    const-string p0, "async-channels"

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncChannel()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string p0, "async-input"

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncInput()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string p0, "async-update"

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncUpdate()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->addFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSDCard()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 299
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/drive:sdcard,"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_f
    const-string p0, "/clipboard"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p0

    if-ne p0, v5, :cond_12

    .line 307
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p0

    check-cast p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getEnableGatewaySettings()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 310
    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p0

    check-cast p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getHostname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "/g:%s:%d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getUsername()Ljava/lang/String;

    move-result-object p3

    .line 315
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/gu:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_10
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getDomain()Ljava/lang/String;

    move-result-object p3

    .line 320
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/gd:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_11
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPassword()Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_12

    .line 327
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "/gp:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "/audio-mode:"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSound()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSound()I

    move-result p0

    if-nez p0, :cond_13

    .line 337
    const-string p0, "/sound"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_13
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectMicrophone()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 342
    const-string p0, "/microphone"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "/log-level:"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getDebugLevel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 348
    invoke-static {p1, p2, p0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_parse_arguments(J[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;)V
    .locals 0

    .line 108
    sput-object p0, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->listener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;

    return-void
.end method

.method public static updateGraphics(JLandroid/graphics/Bitmap;IIII)Z
    .locals 0

    .line 421
    invoke-static/range {p0 .. p6}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->freerdp_update_graphics(JLandroid/graphics/Bitmap;IIII)Z

    move-result p0

    return p0
.end method
