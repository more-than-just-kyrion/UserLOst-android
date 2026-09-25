.class public final Ltech/ulo/library/utils/QemuSessionManager;
.super Ljava/lang/Object;
.source "QemuSessionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/QemuSessionManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQemuSessionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QemuSessionManager.kt\ntech/ulo/library/utils/QemuSessionManager\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,321:1\n49#2:322\n*S KotlinDebug\n*F\n+ 1 QemuSessionManager.kt\ntech/ulo/library/utils/QemuSessionManager\n*L\n254#1:322\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0015\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J2\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00082\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c0\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001eJ.\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0016\u0008\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001dH\u0086@\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\u0014H\u0002J.\u0010\"\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0016\u0008\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001dH\u0086@\u00a2\u0006\u0002\u0010 J\u0012\u0010#\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J.\u0010%\u001a\u00020&2\u0006\u0010\t\u001a\u00020\n2\u0016\u0008\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001dH\u0086@\u00a2\u0006\u0002\u0010\'J\u0016\u0010(\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Ltech/ulo/library/utils/QemuSessionManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "socket",
        "Ltech/ulo/library/utils/CompanionControlSocketClient;",
        "appScriptContent",
        "",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "bind",
        "",
        "getLastErrorRaw",
        "fsId",
        "getStatusRaw",
        "imageRefFor",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "isCorrupted",
        "",
        "isQemuRunnerBindable",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isQemuRunnerInstalled",
        "isUpdateRequired",
        "pollProgressWhileActive",
        "job",
        "Lkotlinx/coroutines/Job;",
        "onProgress",
        "Lkotlin/Function1;",
        "(Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "repair",
        "(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "settingsEnabled",
        "setup",
        "sharedStoragePath",
        "soundSupportScript",
        "startSession",
        "",
        "(Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopSession",
        "(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unbind",
        "Companion",
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


# static fields
.field private static final CONTROL_PORT:I = 0x44c2

.field public static final Companion:Ltech/ulo/library/utils/QemuSessionManager$Companion;

.field private static final QEMU_CONTROL_SERVICE:Ljava/lang/String; = "tech.ulo.qemu.QemuControlService"

.field private static final QEMU_RUNNER_PACKAGE:Ljava/lang/String; = "tech.ulo.qemu"

.field private static final QEMU_VERSION_MANIFEST_URL:Ljava/lang/String; = ""

.field public static final SSH_PORT:I = 0x7e6

.field private static final TAG:Ljava/lang/String; = "QemuSessionManager"

.field public static final VNC_PORT:I = 0x170d


# instance fields
.field private final context:Landroid/content/Context;

.field private final socket:Ltech/ulo/library/utils/CompanionControlSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/utils/QemuSessionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/QemuSessionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/QemuSessionManager;->Companion:Ltech/ulo/library/utils/QemuSessionManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    .line 53
    new-instance p1, Ltech/ulo/library/utils/CompanionControlSocketClient;

    const/16 v0, 0x44c2

    invoke-direct {p1, v0}, Ltech/ulo/library/utils/CompanionControlSocketClient;-><init>(I)V

    iput-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    return-void
.end method

.method public static final synthetic access$appScriptContent(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->appScriptContent(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSocket$p(Ltech/ulo/library/utils/QemuSessionManager;)Ltech/ulo/library/utils/CompanionControlSocketClient;
    .locals 0

    .line 37
    iget-object p0, p0, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    return-object p0
.end method

.method public static final synthetic access$pollProgressWhileActive(Ltech/ulo/library/utils/QemuSessionManager;Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/utils/QemuSessionManager;->pollProgressWhileActive(Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$settingsEnabled(Ltech/ulo/library/utils/QemuSessionManager;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Ltech/ulo/library/utils/QemuSessionManager;->settingsEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sharedStoragePath(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->sharedStoragePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$soundSupportScript(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->soundSupportScript(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final appScriptContent(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 6

    .line 261
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->isAppsSession()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apps/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".sh"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private final getLastErrorRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 319
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "fsId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "put(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getLastError"

    invoke-virtual {v0, v1, p1}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private final getStatusRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 316
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "fsId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "put(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getStatus"

    invoke-virtual {v0, v1, p1}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "idle"

    if-eqz p1, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private final imageRefFor(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;
    .locals 3

    .line 235
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getFlavor()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_1
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ghcr.io//userland-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final pollProgressWhileActive(Lkotlinx/coroutines/Job;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;

    iget v1, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;

    invoke-direct {v0, p0, p4}, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 135
    iget v2, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p3, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/Job;

    iget-object v2, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 136
    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 137
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p4

    invoke-interface {p4}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p4

    .line 138
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p4, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-wide/16 v4, 0x1f4

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x3a98

    .line 139
    :goto_2
    iput-object v2, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/utils/QemuSessionManager$pollProgressWhileActive$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    .line 140
    :cond_5
    :goto_3
    iget-object p4, v2, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "fsId"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "put(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "getProgressMessage"

    invoke-virtual {p4, v5, v4}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    .line 141
    const-string v4, ""

    if-eqz p4, :cond_6

    const-string v5, "result"

    invoke-virtual {p4, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_4

    :cond_6
    const/4 p4, 0x0

    :goto_4
    if-nez p4, :cond_7

    goto :goto_5

    :cond_7
    move-object v4, p4

    .line 142
    :goto_5
    move-object p4, v4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_3

    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 144
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic repair$default(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/ulo/library/utils/QemuSessionManager;->repair(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final settingsEnabled()Z
    .locals 3

    .line 254
    iget-object v0, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    const-string v1, "pref_hide_settings"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic setup$default(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/ulo/library/utils/QemuSessionManager;->setup(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final sharedStoragePath(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getShareStorage()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 246
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final soundSupportScript(Ltech/ulo/library/model/entities/Session;)Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    const-string p1, "\nsudo rm -f /etc/profile.d/sound_support.sh\n"

    return-object p1

    .line 293
    :cond_0
    const-string p1, "\nexport PULSE_SERVER=\"10.0.2.2\"\necho \'export PULSE_SERVER=\"10.0.2.2\"\' | sudo tee /etc/profile.d/sound_support.sh > /dev/null\nsudo chmod +x /etc/profile.d/sound_support.sh\n"

    return-object p1
.end method

.method public static synthetic startSession$default(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/ulo/library/utils/QemuSessionManager;->startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bind()V
    .locals 6

    .line 58
    const-string v0, "QemuSessionManager"

    .line 63
    :try_start_0
    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    .line 64
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "tech.ulo.qemu"

    const-string v5, "tech.ulo.qemu.QemuControlService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 68
    const-string v2, "startForegroundService denied"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 66
    const-string v2, "startForegroundService failed"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final isCorrupted(Ltech/ulo/library/model/entities/Session;)Z
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->getStatusRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "corrupt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isQemuRunnerBindable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;

    iget v1, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget v2, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->I$1:I

    iget v6, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->I$0:I

    iget-object v7, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Ltech/ulo/library/utils/QemuSessionManager;->isQemuRunnerInstalled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 96
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    invoke-static {p1, v4, v5, v3}, Ltech/ulo/library/utils/CompanionControlSocketClient;->isReachable$default(Ltech/ulo/library/utils/CompanionControlSocketClient;IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 97
    :cond_4
    invoke-virtual {p0}, Ltech/ulo/library/utils/QemuSessionManager;->bind()V

    const/16 p1, 0xa

    move-object v7, p0

    move v6, p1

    move v2, v4

    :goto_1
    if-ge v2, v6, :cond_7

    .line 99
    iget-object p1, v7, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    invoke-static {p1, v4, v5, v3}, Ltech/ulo/library/utils/CompanionControlSocketClient;->isReachable$default(Ltech/ulo/library/utils/CompanionControlSocketClient;IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 100
    :cond_5
    iput-object v7, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->I$0:I

    iput v2, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->I$1:I

    iput v5, v0, Ltech/ulo/library/utils/QemuSessionManager$isQemuRunnerBindable$1;->label:I

    const-wide/16 v8, 0xc8

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    add-int/2addr v2, v5

    goto :goto_1

    .line 102
    :cond_7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final isQemuRunnerInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "tech.ulo.qemu"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public final isUpdateRequired()Z
    .locals 4

    .line 88
    sget-object v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->INSTANCE:Ltech/ulo/library/utils/CompanionAppUpdateChecker;

    iget-object v1, p0, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    const-string v2, "tech.ulo.qemu"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->isUpdateRequired(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ltech/ulo/library/utils/QemuSessionManager$repair$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;

    iget v1, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;

    invoke-direct {v0, p0, p3}, Ltech/ulo/library/utils/QemuSessionManager$repair$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 212
    iget v2, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 214
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->imageRefFor(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;

    move-result-object v10

    .line 216
    new-instance p1, Ltech/ulo/library/utils/QemuSessionManager$repair$2;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    move-object v9, p3

    invoke-direct/range {v6 .. v11}, Ltech/ulo/library/utils/QemuSessionManager$repair$2;-><init>(Lkotlin/jvm/functions/Function1;Ltech/ulo/library/utils/QemuSessionManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/utils/QemuSessionManager$repair$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    move-object p1, p3

    .line 225
    :goto_1
    invoke-direct {p2, p1}, Ltech/ulo/library/utils/QemuSessionManager;->getStatusRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ready"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final setup(Ltech/ulo/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Ltech/ulo/library/utils/QemuSessionManager$setup$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager$setup$1;

    iget v2, v1, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Ltech/ulo/library/utils/QemuSessionManager$setup$1;

    invoke-direct {v1, p0, v0}, Ltech/ulo/library/utils/QemuSessionManager$setup$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 111
    iget v1, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->label:I

    const-string v9, "ready"

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-object v1, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 113
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/QemuSessionManager;->imageRefFor(Ltech/ulo/library/model/entities/Filesystem;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-direct {p0, v11}, Ltech/ulo/library/utils/QemuSessionManager;->getStatusRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "running"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 118
    :cond_3
    new-instance v12, Ltech/ulo/library/utils/QemuSessionManager$setup$2;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p2

    move-object v2, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/QemuSessionManager$setup$2;-><init>(Lkotlin/jvm/functions/Function1;Ltech/ulo/library/utils/QemuSessionManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iput-object v6, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->L$0:Ljava/lang/Object;

    iput-object v11, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->L$1:Ljava/lang/Object;

    iput v10, v7, Ltech/ulo/library/utils/QemuSessionManager$setup$1;->label:I

    invoke-static {v12, v7}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    :cond_4
    move-object v2, v6

    move-object v1, v11

    .line 127
    :goto_1
    invoke-direct {v2, v1}, Ltech/ulo/library/utils/QemuSessionManager;->getStatusRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 116
    :cond_5
    :goto_2
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final startSession(Ltech/ulo/library/model/entities/Session;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;

    iget v2, v1, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;

    invoke-direct {v1, v8, v0}, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v1

    iget-object v0, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 154
    iget v1, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->label:I

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v11, :cond_1

    iget-object v1, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ltech/ulo/library/utils/QemuSessionManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 156
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/ServiceType;->toString()Ljava/lang/String;

    move-result-object v13

    .line 158
    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getSoundSupport()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ltech/ulo/library/model/entities/Session;->getMicSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    :cond_3
    sget-object v0, Ltech/ulo/library/utils/PulseAudioServer;->INSTANCE:Ltech/ulo/library/utils/PulseAudioServer;

    iget-object v1, v8, Ltech/ulo/library/utils/QemuSessionManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/ulo/library/utils/PulseAudioServer;->ensureRunning(Landroid/content/Context;)V

    .line 162
    :cond_4
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 163
    new-instance v15, Ltech/ulo/library/utils/QemuSessionManager$startSession$2;

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Ltech/ulo/library/utils/QemuSessionManager$startSession$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/utils/QemuSessionManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    iput-object v8, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$0:Ljava/lang/Object;

    iput-object v12, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$1:Ljava/lang/Object;

    iput-object v13, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$2:Ljava/lang/Object;

    iput-object v14, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->L$3:Ljava/lang/Object;

    iput v11, v9, Ltech/ulo/library/utils/QemuSessionManager$startSession$1;->label:I

    invoke-static {v15, v9}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v4, v8

    move-object v3, v12

    move-object v2, v13

    move-object v1, v14

    .line 183
    :goto_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "start("

    const-string v5, "QemuSessionManager"

    const/4 v6, -0x1

    if-nez v0, :cond_6

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") failed, UserLOst QEMU may be unreachable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 188
    :cond_6
    invoke-direct {v4, v3}, Ltech/ulo/library/utils/QemuSessionManager;->getStatusRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v7, "running"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 190
    invoke-direct {v4, v3}, Ltech/ulo/library/utils/QemuSessionManager;->getLastErrorRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") failed: status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 194
    :cond_7
    iget-object v0, v4, Ltech/ulo/library/utils/QemuSessionManager;->socket:Ltech/ulo/library/utils/CompanionControlSocketClient;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "fsId"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "serviceType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "put(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "getPort"

    invoke-virtual {v0, v2, v1}, Ltech/ulo/library/utils/CompanionControlSocketClient;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 195
    const-string v1, "result"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    :cond_8
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final stopSession(Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 310
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/utils/QemuSessionManager$stopSession$2;-><init>(Ltech/ulo/library/utils/QemuSessionManager;Ltech/ulo/library/model/entities/Session;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final unbind()V
    .locals 0

    return-void
.end method
