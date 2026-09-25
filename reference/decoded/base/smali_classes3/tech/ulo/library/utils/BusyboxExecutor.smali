.class public final Ltech/ulo/library/utils/BusyboxExecutor;
.super Ljava/lang/Object;
.source "BusyboxExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nH\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nJd\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172$\u0008\u0002\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0019j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`\u001a2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\n2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cJ$\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u000b2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nJ\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0002J\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010$J*\u0010%\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0&2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        "",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "prootDebugLogger",
        "Ltech/ulo/library/utils/ProotDebugLogger;",
        "busyboxWrapper",
        "Ltech/ulo/library/utils/BusyboxWrapper;",
        "(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;)V",
        "discardOutput",
        "Lkotlin/Function1;",
        "",
        "collectOutput",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "listener",
        "executeCommand",
        "Ltech/ulo/library/utils/ExecutionResult;",
        "command",
        "executeProotCommand",
        "filesystemDirName",
        "commandShouldTerminate",
        "",
        "env",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "executeScript",
        "scriptCall",
        "getProcessResult",
        "process",
        "Ljava/lang/Process;",
        "recursivelyDelete",
        "absolutePath",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runCommand",
        "",
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
.field private final busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

.field private final discardOutput:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;)V
    .locals 1

    const-string v0, "ulaFiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prootDebugLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busyboxWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/utils/BusyboxExecutor;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 18
    iput-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

    .line 19
    iput-object p3, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    .line 22
    sget-object p1, Ltech/ulo/library/utils/BusyboxExecutor$discardOutput$1;->INSTANCE:Ltech/ulo/library/utils/BusyboxExecutor$discardOutput$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/BusyboxExecutor;->discardOutput:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 19
    new-instance p3, Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-direct {p3, p1}, Ltech/ulo/library/utils/BusyboxWrapper;-><init>(Ltech/ulo/library/utils/UlaFiles;)V

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/utils/BusyboxExecutor;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;)V

    return-void
.end method

.method private final collectOutput(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    .line 127
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Reader;

    instance-of p1, v0, Ljava/io/BufferedReader;

    if-eqz p1, :cond_0

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, p1

    .line 129
    :goto_0
    move-object p1, v0

    check-cast p1, Ljava/io/Reader;

    new-instance v1, Ltech/ulo/library/utils/BusyboxExecutor$collectOutput$1;

    invoke-direct {v1, p2}, Ltech/ulo/library/utils/BusyboxExecutor$collectOutput$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public static synthetic executeCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    iget-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->discardOutput:Lkotlin/jvm/functions/Function1;

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/BusyboxExecutor;->executeCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic executeProotCommand$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 66
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 67
    iget-object p5, p0, Ltech/ulo/library/utils/BusyboxExecutor;->discardOutput:Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 68
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p6

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 62
    invoke-virtual/range {v0 .. v6}, Ltech/ulo/library/utils/BusyboxExecutor;->executeProotCommand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic executeScript$default(Ltech/ulo/library/utils/BusyboxExecutor;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 26
    iget-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->discardOutput:Lkotlin/jvm/functions/Function1;

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/BusyboxExecutor;->executeScript(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private final getProcessResult(Ljava/lang/Process;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 3

    .line 135
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ltech/ulo/library/utils/SuccessfulExecution;->INSTANCE:Ltech/ulo/library/utils/SuccessfulExecution;

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ltech/ulo/library/utils/FailedExecution;

    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command failed with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltech/ulo/library/utils/FailedExecution;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    :goto_0
    return-object p1
.end method

.method private final runCommand(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ltech/ulo/library/utils/ExecutionResult;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BusyboxWrapper;->busyboxIsPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance p1, Ltech/ulo/library/utils/MissingExecutionAsset;

    const-string p2, "busybox"

    invoke-direct {p1, p2}, Ltech/ulo/library/utils/MissingExecutionAsset;-><init>(Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BusyboxWrapper;->getBusyboxEnv()Ljava/util/HashMap;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 49
    iget-object p1, p0, Ltech/ulo/library/utils/BusyboxExecutor;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 54
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ltech/ulo/library/utils/BusyboxExecutor;->collectOutput(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BusyboxExecutor;->getProcessResult(Ljava/lang/Process;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ltech/ulo/library/utils/FailedExecution;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ltech/ulo/library/utils/FailedExecution;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final executeCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ltech/ulo/library/utils/ExecutionResult;"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/BusyboxWrapper;->wrapCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/BusyboxExecutor;->runCommand(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    return-object p1
.end method

.method public final executeProotCommand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Ltech/ulo/library/utils/ExecutionResult;"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystemDirName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BusyboxWrapper;->busyboxIsPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance p1, Ltech/ulo/library/utils/MissingExecutionAsset;

    const-string p2, "busybox"

    invoke-direct {p1, p2}, Ltech/ulo/library/utils/MissingExecutionAsset;-><init>(Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BusyboxWrapper;->prootIsPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance p1, Ltech/ulo/library/utils/MissingExecutionAsset;

    const-string p2, "proot"

    invoke-direct {p1, p2}, Ltech/ulo/library/utils/MissingExecutionAsset;-><init>(Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    return-object p1

    .line 75
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BusyboxWrapper;->executionScriptIsPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance p1, Ltech/ulo/library/utils/MissingExecutionAsset;

    const-string p2, "execution script"

    invoke-direct {p1, p2}, Ltech/ulo/library/utils/MissingExecutionAsset;-><init>(Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    return-object p1

    .line 79
    :cond_2
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ProotDebugLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v1, p0, Ltech/ulo/library/utils/BusyboxExecutor;->prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ProotDebugLogger;->getVerbosityLevel()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "-1"

    .line 83
    :goto_0
    iget-object v2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v2, p1}, Ltech/ulo/library/utils/BusyboxWrapper;->addBusyboxAndProot(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 84
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/utils/BusyboxExecutor;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v3}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {p2, p4, v2, v1}, Ltech/ulo/library/utils/BusyboxWrapper;->getProotEnv(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    new-instance p2, Ljava/lang/ProcessBuilder;

    invoke-direct {p2, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 89
    iget-object p1, p0, Ltech/ulo/library/utils/BusyboxExecutor;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object p1

    check-cast p4, Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 94
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const-string p2, "Output redirecting to proot debug log"

    const-string p4, "getInputStream(...)"

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 98
    :try_start_1
    invoke-interface {p5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p6}, Ltech/ulo/library/utils/ProotDebugLogger;->logStream(Ljava/io/InputStream;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BusyboxExecutor;->getProcessResult(Ljava/lang/Process;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 104
    invoke-interface {p5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Ltech/ulo/library/utils/BusyboxExecutor;->prootDebugLogger:Ltech/ulo/library/utils/ProotDebugLogger;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p6}, Ltech/ulo/library/utils/ProotDebugLogger;->logStream(Ljava/io/InputStream;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 106
    new-instance p2, Ltech/ulo/library/utils/OngoingExecution;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ltech/ulo/library/utils/OngoingExecution;-><init>(Ljava/lang/Process;)V

    move-object p1, p2

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 109
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p5}, Ltech/ulo/library/utils/BusyboxExecutor;->collectOutput(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 110
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BusyboxExecutor;->getProcessResult(Ljava/lang/Process;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    goto :goto_1

    .line 113
    :cond_6
    new-instance p2, Ltech/ulo/library/utils/OngoingExecution;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Ltech/ulo/library/utils/OngoingExecution;-><init>(Ljava/lang/Process;)V

    move-object p1, p2

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Ltech/ulo/library/utils/FailedExecution;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ltech/ulo/library/utils/FailedExecution;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ltech/ulo/library/utils/ExecutionResult;

    :goto_1
    return-object p1
.end method

.method public final executeScript(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ltech/ulo/library/utils/ExecutionResult;"
        }
    .end annotation

    const-string v0, "scriptCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Ltech/ulo/library/utils/BusyboxExecutor;->busyboxWrapper:Ltech/ulo/library/utils/BusyboxWrapper;

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/BusyboxWrapper;->wrapScript(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/BusyboxExecutor;->runCommand(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ltech/ulo/library/utils/ExecutionResult;

    move-result-object p1

    return-object p1
.end method

.method public final recursivelyDelete(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/ExecutionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/utils/BusyboxExecutor$recursivelyDelete$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/utils/BusyboxExecutor$recursivelyDelete$2;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BusyboxExecutor;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
