.class public final Ltech/ulo/library/utils/AssetFileClearer;
.super Ljava/lang/Object;
.source "AssetFileClearer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u000eJ\u001c\u0010\u0010\u001a\u00020\r2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00a2\u0006\u0002\u0010\u0011R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/ulo/library/utils/AssetFileClearer;",
        "",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "assetDirectoryNames",
        "",
        "",
        "busyboxExecutor",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        "logger",
        "Ltech/ulo/library/utils/Logger;",
        "(Ltech/ulo/library/utils/UlaFiles;Ljava/util/Set;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;)V",
        "clearAllSupportAssets",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearFilesystemSupportAssets",
        "clearTopLevelAssets",
        "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final assetDirectoryNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

.field private final logger:Ltech/ulo/library/utils/Logger;

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ljava/util/Set;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/UlaFiles;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ltech/ulo/library/utils/BusyboxExecutor;",
            "Ltech/ulo/library/utils/Logger;",
            ")V"
        }
    .end annotation

    const-string v0, "ulaFiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetDirectoryNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busyboxExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 9
    iput-object p2, p0, Ltech/ulo/library/utils/AssetFileClearer;->assetDirectoryNames:Ljava/util/Set;

    .line 10
    iput-object p3, p0, Ltech/ulo/library/utils/AssetFileClearer;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    .line 11
    iput-object p4, p0, Ltech/ulo/library/utils/AssetFileClearer;->logger:Ltech/ulo/library/utils/Logger;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/utils/UlaFiles;Ljava/util/Set;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 11
    new-instance p4, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p4}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    check-cast p4, Ltech/ulo/library/utils/Logger;

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/utils/AssetFileClearer;-><init>(Ltech/ulo/library/utils/UlaFiles;Ljava/util/Set;Ltech/ulo/library/utils/BusyboxExecutor;Ltech/ulo/library/utils/Logger;)V

    return-void
.end method

.method public static final synthetic access$clearFilesystemSupportAssets(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/AssetFileClearer;->clearFilesystemSupportAssets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$clearTopLevelAssets(Ltech/ulo/library/utils/AssetFileClearer;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/AssetFileClearer;->clearTopLevelAssets(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final clearFilesystemSupportAssets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;

    iget v1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;-><init>(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->label:I

    const-string v3, "getName(...)"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$3:I

    iget v6, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$2:I

    iget v7, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$1:I

    iget v8, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$0:I

    iget-object v9, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$2:Ljava/lang/Object;

    check-cast v9, [Ljava/io/File;

    iget-object v10, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$1:Ljava/lang/Object;

    check-cast v10, [Ljava/io/File;

    iget-object v11, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ltech/ulo/library/utils/AssetFileClearer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 47
    :cond_3
    array-length v2, p1

    move-object v7, p0

    move v6, v4

    :goto_1
    if-ge v6, v2, :cond_d

    aget-object v8, p1, v6

    .line 48
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_4

    goto/16 :goto_5

    .line 50
    :cond_4
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/support"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_5

    .line 53
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_6

    goto/16 :goto_5

    .line 54
    :cond_6
    array-length v9, v8

    move-object v10, p1

    move-object v11, v7

    move v7, v2

    move v2, v9

    move-object v9, v8

    move v8, v6

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_b

    aget-object p1, v9, v6

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v12

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_7

    goto :goto_4

    .line 58
    :cond_7
    iget-object v12, v11, Ltech/ulo/library/utils/AssetFileClearer;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v13, "getPath(...)"

    invoke-static {p1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$0:I

    iput v7, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$1:I

    iput v6, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$2:I

    iput v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->I$3:I

    iput v5, v0, Ltech/ulo/library/utils/AssetFileClearer$clearFilesystemSupportAssets$1;->label:I

    invoke-virtual {v12, p1, v0}, Ltech/ulo/library/utils/BusyboxExecutor;->recursivelyDelete(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    instance-of p1, p1, Ltech/ulo/library/utils/SuccessfulExecution;

    if-eqz p1, :cond_9

    goto :goto_4

    .line 59
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 60
    iget-object v0, v11, Ltech/ulo/library/utils/AssetFileClearer;->logger:Ltech/ulo/library/utils/Logger;

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 61
    throw p1

    :cond_a
    :goto_4
    add-int/2addr v6, v5

    goto :goto_2

    :cond_b
    move v2, v7

    move v6, v8

    move-object p1, v10

    move-object v7, v11

    :cond_c
    :goto_5
    add-int/2addr v6, v5

    goto/16 :goto_1

    .line 65
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final clearTopLevelAssets(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;

    iget v1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;

    invoke-direct {v0, p0, p2}, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;-><init>(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->I$1:I

    iget v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->I$0:I

    iget-object v4, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$2:Ljava/lang/Object;

    check-cast v4, [Ljava/io/File;

    iget-object v5, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v6, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/utils/AssetFileClearer;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object p2, p0, Ltech/ulo/library/utils/AssetFileClearer;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p2}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :cond_3
    array-length v2, p2

    const/4 v4, 0x0

    move-object v6, p0

    move-object v9, p2

    move-object p2, p1

    move p1, v2

    move v2, v4

    move-object v4, v9

    :goto_1
    if-ge v2, p1, :cond_7

    aget-object v5, v4, v2

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 34
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "support"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 36
    iget-object v7, v6, Ltech/ulo/library/utils/AssetFileClearer;->busyboxExecutor:Ltech/ulo/library/utils/BusyboxExecutor;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v8, "getAbsolutePath(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->I$0:I

    iput p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->I$1:I

    iput v3, v0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    invoke-virtual {v7, v5, v0}, Ltech/ulo/library/utils/BusyboxExecutor;->recursivelyDelete(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v5

    move-object v5, p2

    move-object p2, v9

    :goto_2
    instance-of p2, p2, Ltech/ulo/library/utils/SuccessfulExecution;

    if-eqz p2, :cond_5

    move-object p2, v5

    goto :goto_3

    .line 37
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 38
    iget-object p2, v6, Ltech/ulo/library/utils/AssetFileClearer;->logger:Ltech/ulo/library/utils/Logger;

    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p2, v0}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 39
    throw p1

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    goto :goto_1

    .line 42
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final clearAllSupportAssets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    instance-of v0, p1, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;

    iget v1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;-><init>(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/ulo/library/utils/AssetFileClearer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaFiles;->getBusybox()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iput-object p0, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    invoke-direct {p0, v0}, Ltech/ulo/library/utils/AssetFileClearer;->clearFilesystemSupportAssets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 26
    :goto_1
    iget-object p1, v2, Ltech/ulo/library/utils/AssetFileClearer;->assetDirectoryNames:Ljava/util/Set;

    const/4 v4, 0x0

    iput-object v4, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/ulo/library/utils/AssetFileClearer$clearAllSupportAssets$1;->label:I

    invoke-direct {v2, p1, v0}, Ltech/ulo/library/utils/AssetFileClearer;->clearTopLevelAssets(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 27
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Busybox missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Ltech/ulo/library/utils/AssetFileClearer;->logger:Ltech/ulo/library/utils/Logger;

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 23
    throw p1

    .line 16
    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 17
    iget-object v0, p0, Ltech/ulo/library/utils/AssetFileClearer;->logger:Ltech/ulo/library/utils/Logger;

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ltech/ulo/library/utils/Logger;->addExceptionBreadcrumb(Ljava/lang/Exception;)V

    .line 18
    throw p1
.end method
