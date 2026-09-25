.class public final Ltech/ulo/library/utils/LocalServerManager;
.super Ljava/lang/Object;
.source "LocalServerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\n\u0010\u001a\u001a\u00020\u000c*\u00020\u001bJ\u000c\u0010\u001c\u001a\u00020\u0003*\u00020\u0010H\u0002J\u000c\u0010\u001d\u001a\u00020\u0003*\u00020\u0010H\u0002J\u000c\u0010\u001e\u001a\u00020\u000c*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Ltech/ulo/library/utils/LocalServerManager;",
        "",
        "applicationFilesDirPath",
        "",
        "busyboxExecutor",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ljava/lang/String;Ltech/ulo/library/utils/BusyboxExecutor;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V",
        "vncDisplayNumber",
        "",
        "deletePidFile",
        "",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "getProperty",
        "name",
        "isServerRunning",
        "",
        "setDisplayNumberAndStartTwm",
        "startSSHServer",
        "startServer",
        "startVNCServer",
        "stopService",
        "pid",
        "Ljava/lang/Process;",
        "pidFilePath",
        "pidRelativeFilePath",
        "serverPid",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final applicationFilesDirPath:Ljava/lang/String;

.field private final busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final vncDisplayNumber:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltech/ulo/library/utils/BusyboxExecutor;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V
    .locals 1

    const-string v0, "applicationFilesDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busyboxExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->applicationFilesDirPath:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    .line 15
    iput-object p3, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    iput-object p4, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    .line 19
    const-string p1, "51"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ltech/ulo/library/utils/LocalServerManager;->vncDisplayNumber:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ltech/ulo/library/utils/BusyboxExecutor;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 16
    new-instance p4, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p4}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p4, Ltech/ulo/library/utils/Logger;

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/utils/LocalServerManager;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BusyboxExecutor;Landroid/content/SharedPreferences;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method private final deletePidFile(Ltech/ulo/library/model/entities/Session;)V
    .locals 1

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pidFilePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 30
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "getInputStream(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of p1, v2, Ljava/io/BufferedReader;

    if-eqz p1, :cond_0

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, p1

    :goto_0
    check-cast v2, Ljava/io/Reader;

    new-instance p1, Ltech/ulo/library/utils/LocalServerManager$getProperty$1;

    invoke-direct {p1, v0}, Ltech/ulo/library/utils/LocalServerManager$getProperty$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, p1}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 33
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final pidFilePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 4

    .line 201
    iget-object v0, p0, Ltech/ulo/library/utils/LocalServerManager;->applicationFilesDirPath:Ljava/lang/String;

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pidRelativeFilePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final pidRelativeFilePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 4

    .line 192
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    .line 193
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "/run/dropbear.pid"

    goto :goto_0

    .line 194
    :cond_0
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Ltech/ulo/library/utils/LocalServerManager;->vncDisplayNumber:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/home/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/.vnc/localhost:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".pid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 195
    :cond_1
    sget-object p1, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "/tmp/xsdl.pidfile"

    goto :goto_0

    .line 196
    :cond_2
    const-string p1, "error"

    :goto_0
    return-object p1
.end method

.method private final serverPid(Ltech/ulo/library/model/entities/Session;)J
    .locals 4

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pidFilePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v1, -0x1

    if-nez p1, :cond_0

    return-wide v1

    :cond_0
    const/4 p1, 0x1

    const/4 v3, 0x0

    .line 208
    :try_start_0
    invoke-static {v0, v3, p1, v3}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v1
.end method

.method private final setDisplayNumberAndStartTwm(Ltech/ulo/library/model/entities/Session;)J
    .locals 11

    .line 167
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->deletePidFile(Ltech/ulo/library/model/entities/Session;)V

    .line 170
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 171
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    const-string v1, "INITIAL_USERNAME"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string p1, "DISPLAY"

    const-string v1, ":4721"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string p1, "PULSE_SERVER"

    const-string v1, "127.0.0.1:4721"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    const/16 v9, 0x30

    const/4 v10, 0x0

    const-string v3, "/support/startXSDLServer.sh"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Ltech/ulo/library/utils/BusyboxExecutor;->executeProotCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    .line 180
    instance-of v0, p1, Ltech/ulo/library/utils/OngoingExecution;

    if-eqz v0, :cond_0

    check-cast p1, Ltech/ulo/library/utils/OngoingExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/OngoingExecution;->getProcess()Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pid(Ljava/lang/Process;)J

    move-result-wide v0

    goto :goto_0

    .line 181
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/utils/FailedExecution;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "func: setDisplayNumberAndStartTwm err: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    const-string v4, "LocalServerManager"

    invoke-direct {v0, v4, v3, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    :cond_1
    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method private final startSSHServer(Ltech/ulo/library/model/entities/Session;)J
    .locals 11

    .line 79
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->deletePidFile(Ltech/ulo/library/model/entities/Session;)V

    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    :cond_0
    move-object p1, v6

    check-cast p1, Ljava/util/Map;

    const-string v0, "SOUND_SUPPORT"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    iget-object v2, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    const/16 v9, 0x30

    const/4 v10, 0x0

    const-string v3, "/support/common/startSSHServer.sh"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Ltech/ulo/library/utils/BusyboxExecutor;->executeProotCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    .line 88
    instance-of v0, p1, Ltech/ulo/library/utils/OngoingExecution;

    if-eqz v0, :cond_2

    check-cast p1, Ltech/ulo/library/utils/OngoingExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/OngoingExecution;->getProcess()Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pid(Ljava/lang/Process;)J

    move-result-wide v0

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/utils/FailedExecution;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "func: startSshServer err: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    const-string v4, "LocalServerManager"

    invoke-direct {v0, v4, v3, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    :cond_3
    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method private final startVNCServer(Ltech/ulo/library/model/entities/Session;)J
    .locals 11

    .line 100
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->deletePidFile(Ltech/ulo/library/model/entities/Session;)V

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 104
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "camera_supported"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HAS_CAMERA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "microphone_supported"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HAS_MICROPHONE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "INITIAL_USERNAME"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "INITIAL_VNC_PASSWORD"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getVncPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "DIMENSIONS"

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getGeometry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "VERSION_CODE"

    const-string v2, "22920247"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "VERSION_NAME"

    const-string v2, "26.09.05"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "VNC_DISPLAY"

    const-string v2, "51"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "INTENTS_DIR"

    const-string v2, "/Intents/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    :cond_0
    const-string p1, "SOUND_SUPPORT"

    const-string v1, "1"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "env"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_2

    .line 117
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    iget-object v5, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v5, Ltech/ulo/library/utils/LocalServerManager$startVNCServer$type$1;

    invoke-direct {v5}, Ltech/ulo/library/utils/LocalServerManager$startVNCServer$type$1;-><init>()V

    invoke-virtual {v5}, Ltech/ulo/library/utils/LocalServerManager$startVNCServer$type$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v7, "getType(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "fromJson(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/HashMap;

    .line 121
    check-cast p1, Ljava/util/Map;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_custom_hostname_enabled"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "android-device"

    const-string v5, "HOSTNAME"

    if-eqz p1, :cond_3

    .line 124
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_hostname"

    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "unique_id"

    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 127
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "localhost"

    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_4
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "127.0.0.1 localhost\n127.0.0.1 "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HOSTS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_custom_dns_enabled"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "RESOLV"

    if-eqz p1, :cond_5

    .line 133
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_dns"

    const-string v3, "search Home\nnameserver 8.8.8.8\nnameserver 8.8.4.4"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 135
    :cond_5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "search_domains"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 137
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "Home"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "search "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "search Home"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_1
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "current_dns0"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "8.8.8.8"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "/"

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "\nnameserver "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "current_dns1"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 144
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v7, p0, Ltech/ulo/library/utils/LocalServerManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "8.8.4.4"

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    :cond_7
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\nnameserver 8.8.8.8\nnameserver 8.8.4.4"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_8
    :goto_2
    iget-object v2, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    const/16 v9, 0x30

    const/4 v10, 0x0

    const-string v3, "/support/common/startVNCServer.sh"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Ltech/ulo/library/utils/BusyboxExecutor;->executeProotCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    .line 155
    instance-of v0, p1, Ltech/ulo/library/utils/OngoingExecution;

    if-eqz v0, :cond_9

    check-cast p1, Ltech/ulo/library/utils/OngoingExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/OngoingExecution;->getProcess()Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->pid(Ljava/lang/Process;)J

    move-result-wide v0

    goto :goto_3

    .line 156
    :cond_9
    instance-of v0, p1, Ltech/ulo/library/utils/FailedExecution;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_a

    .line 157
    check-cast p1, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "func: startVncServer err: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    const-string v4, "LocalServerManager"

    invoke-direct {v0, v4, v3, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    :cond_a
    move-wide v0, v1

    :goto_3
    return-wide v0
.end method


# virtual methods
.method public final isServerRunning(Ltech/ulo/library/model/entities/Session;)Z
    .locals 4

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->serverPid(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "support/isServerInProcTree.sh "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object p1

    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    return v1

    .line 60
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2, v3}, Ltech/ulo/library/utils/BusyboxExecutor;->executeScript$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    .line 62
    instance-of v0, p1, Ltech/ulo/library/utils/SuccessfulExecution;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/utils/FailedExecution;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 64
    check-cast p1, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "func: isServerRunning err: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    sget-object v2, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v2, Ltech/ulo/library/utils/BreadcrumbType;

    const-string v3, "LocalServerManager"

    invoke-direct {v0, v3, v2, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final pid(Ljava/lang/Process;)J
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Process;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string v0, "pid="

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string v0, ","

    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    const-string v0, "]"

    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final startServer(Ltech/ulo/library/model/entities/Session;)J
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    .line 38
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->startSSHServer(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->startVNCServer(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v0

    goto :goto_0

    .line 40
    :cond_1
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->setDisplayNumberAndStartTwm(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final stopService(Ltech/ulo/library/model/entities/Session;)V
    .locals 5

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getPid()J

    move-result-wide v0

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/LocalServerManager;->serverPid(Ltech/ulo/library/model/entities/Session;)J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "support/killProcTree.sh "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Ltech/ulo/library/utils/LocalServerManager;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Ltech/ulo/library/utils/BusyboxExecutor;->executeScript$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    .line 48
    instance-of v0, p1, Ltech/ulo/library/utils/FailedExecution;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ltech/ulo/library/utils/FailedExecution;->getReason()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "func: stopService err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Ltech/ulo/library/utils/UlaBreadcrumb;

    sget-object v1, Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$RuntimeError;

    check-cast v1, Ltech/ulo/library/utils/BreadcrumbType;

    const-string v2, "LocalServerManager"

    invoke-direct {v0, v2, v1, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Ltech/ulo/library/utils/LocalServerManager;->logger:Ltech/ulo/library/utils/Logger;

    invoke-interface {p1, v0}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    :cond_0
    return-void
.end method
