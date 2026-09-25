.class final Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/AssetDownloader;->prepareDownloadsForUse(Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetDownloader.kt\ntech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,384:1\n13309#2,2:385\n*S KotlinDebug\n*F\n+ 1 AssetDownloader.kt\ntech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2\n*L\n212#1:385,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.ulo.library.utils.AssetDownloader$prepareDownloadsForUse$2"
    f = "AssetDownloader.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xd8,
        0xdb
    }
    m = "invokeSuspend"
    n = {
        "stagingDirectory",
        "$this$forEach$iv",
        "stagingDirectory",
        "$this$forEach$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $archiverFactory:Ltech/ulo/library/utils/ArchiveFactoryWrapper;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/utils/AssetDownloader;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/AssetDownloader;",
            "Ltech/ulo/library/utils/ArchiveFactoryWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->this$0:Ltech/ulo/library/utils/AssetDownloader;

    iput-object p2, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->$archiverFactory:Ltech/ulo/library/utils/ArchiveFactoryWrapper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;

    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->this$0:Ltech/ulo/library/utils/AssetDownloader;

    iget-object v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->$archiverFactory:Ltech/ulo/library/utils/ArchiveFactoryWrapper;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;-><init>(Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$1:I

    iget v5, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$0:I

    iget-object v6, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$3:Ljava/lang/Object;

    check-cast v6, Ltech/ulo/library/utils/ArchiveFactoryWrapper;

    iget-object v7, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$2:Ljava/lang/Object;

    check-cast v7, Ltech/ulo/library/utils/AssetDownloader;

    iget-object v8, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$1:Ljava/lang/Object;

    check-cast v8, [Ljava/io/File;

    iget-object v9, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 209
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->this$0:Ltech/ulo/library/utils/AssetDownloader;

    invoke-static {v1}, Ltech/ulo/library/utils/AssetDownloader;->access$getUlaFiles$p(Ltech/ulo/library/utils/AssetDownloader;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v1

    invoke-virtual {v1}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/staging"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 211
    iget-object v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->this$0:Ltech/ulo/library/utils/AssetDownloader;

    invoke-static {v1}, Ltech/ulo/library/utils/AssetDownloader;->access$getDownloadDirectory$p(Ltech/ulo/library/utils/AssetDownloader;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 212
    :cond_3
    iget-object v5, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->this$0:Ltech/ulo/library/utils/AssetDownloader;

    iget-object v6, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->$archiverFactory:Ltech/ulo/library/utils/ArchiveFactoryWrapper;

    .line 385
    array-length v7, v1

    move-object v9, p1

    move-object v8, v1

    move v1, v7

    move-object v7, v5

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_7

    aget-object p1, v8, v5

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    const-string v12, "MD5SUMS"

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-static {v10, v12, v2, v4, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .line 215
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "rootfs.tar.gz"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v2, v4, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 216
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v9, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$3:Ljava/lang/Object;

    iput v5, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$0:I

    iput v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$1:I

    iput v3, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->label:I

    invoke-static {v7, p1, p0}, Ltech/ulo/library/utils/AssetDownloader;->access$moveRootfsAssetInternal(Ltech/ulo/library/utils/AssetDownloader;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 219
    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v9, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->L$3:Ljava/lang/Object;

    iput v5, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$0:I

    iput v1, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->I$1:I

    iput v4, p0, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;->label:I

    invoke-static {v7, p1, v9, v6, p0}, Ltech/ulo/library/utils/AssetDownloader;->access$extractAssets(Ltech/ulo/library/utils/AssetDownloader;Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    add-int/2addr v5, v3

    goto :goto_1

    .line 221
    :cond_7
    invoke-static {v9}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 222
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
