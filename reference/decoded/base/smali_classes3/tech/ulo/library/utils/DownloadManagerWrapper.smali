.class public final Ltech/ulo/library/utils/DownloadManagerWrapper;
.super Ljava/lang/Object;
.source "AssetDownloader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0016\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0016\u0010$\u001a\u00020\r2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\rH\u0002J\u000e\u0010&\u001a\u00020\'2\u0006\u0010\u0016\u001a\u00020\rR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0008`\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Ltech/ulo/library/utils/DownloadManagerWrapper;",
        "",
        "downloadManager",
        "Landroid/app/DownloadManager;",
        "activity",
        "Ltech/ulo/library/MainActivity;",
        "(Landroid/app/DownloadManager;Ltech/ulo/library/MainActivity;)V",
        "FAIL",
        "",
        "START",
        "SUCCESS",
        "downloadQueue",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "nextQueueEntry",
        "cancelAllDownloads",
        "",
        "downloadIds",
        "",
        "downloadHasFailed",
        "",
        "id",
        "downloadHasSucceeded",
        "enqueue",
        "request",
        "Landroid/app/DownloadManager$Request;",
        "generateCursor",
        "Landroid/database/Cursor;",
        "query",
        "Landroid/app/DownloadManager$Query;",
        "generateDownloadRequest",
        "url",
        "",
        "destination",
        "Ljava/io/File;",
        "generateDownloadRequestAndEnqueue",
        "generateQuery",
        "getDownloadFailureReason",
        "Ltech/ulo/library/utils/DownloadFailureLocalizationData;",
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
.field private final FAIL:I

.field private final START:I

.field private final SUCCESS:I

.field private final activity:Ltech/ulo/library/MainActivity;

.field private final downloadManager:Landroid/app/DownloadManager;

.field private downloadQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextQueueEntry:J


# direct methods
.method public constructor <init>(Landroid/app/DownloadManager;Ltech/ulo/library/MainActivity;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadManager:Landroid/app/DownloadManager;

    iput-object p2, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->activity:Ltech/ulo/library/MainActivity;

    .line 265
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadQueue:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 267
    iput p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->SUCCESS:I

    const/4 p1, 0x2

    .line 268
    iput p1, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->FAIL:I

    return-void
.end method

.method public static final synthetic access$getActivity$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ltech/ulo/library/MainActivity;
    .locals 0

    .line 262
    iget-object p0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->activity:Ltech/ulo/library/MainActivity;

    return-object p0
.end method

.method public static final synthetic access$getDownloadQueue$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)Ljava/util/HashMap;
    .locals 0

    .line 262
    iget-object p0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadQueue:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getFAIL$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I
    .locals 0

    .line 262
    iget p0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->FAIL:I

    return p0
.end method

.method public static final synthetic access$getSTART$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I
    .locals 0

    .line 262
    iget p0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->START:I

    return p0
.end method

.method public static final synthetic access$getSUCCESS$p(Ltech/ulo/library/utils/DownloadManagerWrapper;)I
    .locals 0

    .line 262
    iget p0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->SUCCESS:I

    return p0
.end method

.method private final generateCursor(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 1

    .line 313
    iget-object v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, "query(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final generateQuery(J)Landroid/app/DownloadManager$Query;
    .locals 3

    .line 307
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 308
    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    return-object v0
.end method


# virtual methods
.method public final cancelAllDownloads(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadManager:Landroid/app/DownloadManager;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->remove([J)I

    return-void
.end method

.method public final downloadHasFailed(J)Z
    .locals 1

    .line 342
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateQuery(J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 343
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateCursor(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 345
    const-string p2, "status"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final downloadHasSucceeded(J)Z
    .locals 1

    .line 324
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateQuery(J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateCursor(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 326
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 327
    const-string p2, "status"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final generateDownloadRequest(Ljava/lang/String;Ljava/io/File;)Landroid/app/DownloadManager$Request;
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 272
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 273
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x3

    .line 274
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 275
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 276
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getName(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "-"

    invoke-static {p2, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x0

    .line 277
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 278
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    return-object v0
.end method

.method public final generateDownloadRequestAndEnqueue(Ljava/lang/String;Ljava/io/File;)J
    .locals 11

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-wide v8, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->nextQueueEntry:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v8

    .line 284
    iput-wide v0, p0, Ltech/ulo/library/utils/DownloadManagerWrapper;->nextQueueEntry:J

    .line 285
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p0

    move-wide v3, v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Ltech/ulo/library/utils/DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1;-><init>(Ltech/ulo/library/utils/DownloadManagerWrapper;JLjava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    move-object v4, v10

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    return-wide v8
.end method

.method public final getDownloadFailureReason(J)Ltech/ulo/library/utils/DownloadFailureLocalizationData;
    .locals 2

    .line 353
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateQuery(J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 354
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateCursor(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 355
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 356
    const-string p2, "reason"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 357
    new-instance p2, Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1f5

    if-ge p1, v0, :cond_0

    .line 358
    sget v0, Ltech/ulo/library/R$string;->download_failure_http_error:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_1

    .line 359
    sget v0, Ltech/ulo/library/R$string;->download_failure_cannot_resume:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_2

    .line 360
    sget v0, Ltech/ulo/library/R$string;->download_failure_no_external_devices:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_3

    .line 361
    sget v0, Ltech/ulo/library/R$string;->download_failure_destination_exists:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    .line 362
    sget v0, Ltech/ulo/library/R$string;->download_failure_unknown_file_error:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_5

    .line 363
    sget v0, Ltech/ulo/library/R$string;->download_failure_http_processing:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_6

    .line 364
    sget v0, Ltech/ulo/library/R$string;->download_failure_insufficient_external_storage:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_7

    .line 365
    sget v0, Ltech/ulo/library/R$string;->download_failure_too_many_redirects:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_8

    .line 366
    sget v0, Ltech/ulo/library/R$string;->download_failure_unhandled_http_response:I

    goto :goto_0

    :cond_8
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 367
    sget v0, Ltech/ulo/library/R$string;->download_failure_unknown_error:I

    goto :goto_0

    .line 368
    :cond_9
    sget v0, Ltech/ulo/library/R$string;->download_failure_missing_error:I

    .line 369
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-direct {p2, v0, p1}, Ltech/ulo/library/utils/DownloadFailureLocalizationData;-><init>(ILjava/util/List;)V

    return-object p2

    .line 371
    :cond_a
    new-instance p1, Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    sget p2, Ltech/ulo/library/R$string;->download_failure_reason_not_found:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0, v1}, Ltech/ulo/library/utils/DownloadFailureLocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
