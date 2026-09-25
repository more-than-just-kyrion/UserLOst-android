.class public final Ltech/ulo/library/utils/ProotDebugLogger;
.super Ljava/lang/Object;
.source "ProotDebugLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltech/ulo/library/utils/ProotDebugLogger;",
        "",
        "defaultSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "(Landroid/content/SharedPreferences;Ltech/ulo/library/utils/UlaFiles;)V",
        "isEnabled",
        "",
        "()Z",
        "logLocation",
        "",
        "logName",
        "prefs",
        "verbosityLevel",
        "getVerbosityLevel",
        "()Ljava/lang/String;",
        "deleteLogs",
        "",
        "logStream",
        "Lkotlinx/coroutines/Job;",
        "inputStream",
        "Ljava/io/InputStream;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.field private final logLocation:Ljava/lang/String;

.field private final logName:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ltech/ulo/library/utils/UlaFiles;)V
    .locals 1

    const-string v0, "defaultSharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ulaFiles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltech/ulo/library/utils/ProotDebugLogger;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 10
    iput-object p1, p0, Ltech/ulo/library/utils/ProotDebugLogger;->prefs:Landroid/content/SharedPreferences;

    .line 18
    const-string p1, "Proot_Debug_Log.txt"

    iput-object p1, p0, Ltech/ulo/library/utils/ProotDebugLogger;->logName:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Ltech/ulo/library/utils/UlaFiles;->getEmulatedUserDir()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/utils/ProotDebugLogger;->logLocation:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLogLocation$p(Ltech/ulo/library/utils/ProotDebugLogger;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Ltech/ulo/library/utils/ProotDebugLogger;->logLocation:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final deleteLogs()V
    .locals 9

    .line 39
    iget-object v0, p0, Ltech/ulo/library/utils/ProotDebugLogger;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v0}, Ltech/ulo/library/utils/UlaFiles;->getEmulatedUserDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, p0, Ltech/ulo/library/utils/ProotDebugLogger;->logName:Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v2, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getVerbosityLevel()Ljava/lang/String;
    .locals 3

    .line 16
    iget-object v0, p0, Ltech/ulo/library/utils/ProotDebugLogger;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_proot_debug_level"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final isEnabled()Z
    .locals 3

    .line 13
    iget-object v0, p0, Ltech/ulo/library/utils/ProotDebugLogger;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_proot_debug_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final logStream(Ljava/io/InputStream;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 8

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ltech/ulo/library/utils/ProotDebugLogger$logStream$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltech/ulo/library/utils/ProotDebugLogger$logStream$1;-><init>(Ltech/ulo/library/utils/ProotDebugLogger;Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
