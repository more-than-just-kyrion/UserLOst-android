.class public final Ltech/ulo/library/utils/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetDownloader.kt\ntech/ulo/library/utils/AssetDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,384:1\n1549#2:385\n1620#2,3:386\n1#3:389\n*S KotlinDebug\n*F\n+ 1 AssetDownloader.kt\ntech/ulo/library/utils/AssetDownloader\n*L\n75#1:385\n75#1:386,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\rJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u000bJ\u0014\u0010\u0019\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010\u001c\u001a\u00020\u0013J&\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u000bJ\u0016\u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010(J\u0018\u0010)\u001a\u00020\u00162\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Ltech/ulo/library/utils/AssetDownloader;",
        "",
        "assetPreferences",
        "Ltech/ulo/library/utils/preferences/AssetPreferences;",
        "downloadManagerWrapper",
        "Ltech/ulo/library/utils/DownloadManagerWrapper;",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "(Ltech/ulo/library/utils/preferences/AssetPreferences;Ltech/ulo/library/utils/DownloadManagerWrapper;Ltech/ulo/library/utils/UlaFiles;)V",
        "completedDownloadIds",
        "",
        "",
        "downloadDirectory",
        "Ljava/io/File;",
        "enqueuedDownloadIds",
        "calculateMD5",
        "",
        "updateFile",
        "checkMD5",
        "",
        "md5",
        "clearPreviousDownloadsFromDownloadsDirectory",
        "",
        "downloadIsForUserland",
        "id",
        "downloadRequirements",
        "",
        "Ltech/ulo/library/model/repositories/DownloadMetadata;",
        "downloadStateHasBeenCached",
        "extractAssets",
        "tarFile",
        "stagingDirectory",
        "archiverFactory",
        "Ltech/ulo/library/utils/ArchiveFactoryWrapper;",
        "(Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleDownloadComplete",
        "Ltech/ulo/library/utils/AssetDownloadState;",
        "downloadId",
        "moveRootfsAssetInternal",
        "rootFsFile",
        "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prepareDownloadsForUse",
        "(Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "syncStateWithCache",
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
.field private final assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

.field private final completedDownloadIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadDirectory:Ljava/io/File;

.field private final downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

.field private final enqueuedDownloadIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/preferences/AssetPreferences;Ltech/ulo/library/utils/DownloadManagerWrapper;Ltech/ulo/library/utils/UlaFiles;)V
    .locals 1

    const-string v0, "assetPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManagerWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ulaFiles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    .line 36
    iput-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    .line 37
    iput-object p3, p0, Ltech/ulo/library/utils/AssetDownloader;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 40
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Ltech/ulo/library/utils/UlaFiles;->getEmulatedScopedDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "downloads"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadDirectory:Ljava/io/File;

    .line 42
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    .line 43
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static final synthetic access$extractAssets(Ltech/ulo/library/utils/AssetDownloader;Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/ulo/library/utils/AssetDownloader;->extractAssets(Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAssetPreferences$p(Ltech/ulo/library/utils/AssetDownloader;)Ltech/ulo/library/utils/preferences/AssetPreferences;
    .locals 0

    .line 34
    iget-object p0, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    return-object p0
.end method

.method public static final synthetic access$getDownloadDirectory$p(Ltech/ulo/library/utils/AssetDownloader;)Ljava/io/File;
    .locals 0

    .line 34
    iget-object p0, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getUlaFiles$p(Ltech/ulo/library/utils/AssetDownloader;)Ltech/ulo/library/utils/UlaFiles;
    .locals 0

    .line 34
    iget-object p0, p0, Ltech/ulo/library/utils/AssetDownloader;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    return-object p0
.end method

.method public static final synthetic access$moveRootfsAssetInternal(Ltech/ulo/library/utils/AssetDownloader;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader;->moveRootfsAssetInternal(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final clearPreviousDownloadsFromDownloadsDirectory()V
    .locals 4

    .line 199
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final extractAssets(Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ltech/ulo/library/utils/ArchiveFactoryWrapper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 244
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Ltech/ulo/library/utils/AssetDownloader$extractAssets$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/utils/AssetDownloader$extractAssets$2;-><init>(Ljava/io/File;Ljava/io/File;Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final moveRootfsAssetInternal(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 224
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/utils/AssetDownloader$moveRootfsAssetInternal$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/ulo/library/utils/AssetDownloader$moveRootfsAssetInternal$2;-><init>(Ljava/io/File;Ltech/ulo/library/utils/AssetDownloader;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic prepareDownloadsForUse$default(Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 208
    new-instance p1, Ltech/ulo/library/utils/ArchiveFactoryWrapper;

    invoke-direct {p1}, Ltech/ulo/library/utils/ArchiveFactoryWrapper;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader;->prepareDownloadsForUse(Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    .line 157
    const-string v0, "Exception on closing MD5 input stream"

    const-string v1, "MD5"

    const/4 v2, 0x0

    .line 159
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 158
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 166
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 p1, 0x2000

    .line 171
    new-array p1, p1, [B

    .line 174
    :goto_0
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v5, 0x0

    .line 175
    invoke-virtual {v3, p1, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v2, "digest(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    .line 179
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%32s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "format(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v6, 0x20

    const/16 v7, 0x30

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 189
    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 184
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to process file for MD5"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v2, v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 189
    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    throw p1

    :catch_3
    move-exception p1

    .line 168
    const-string v0, "Exception while getting FileInputStream"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_4
    move-exception p1

    .line 161
    const-string v0, "Exception while getting digest"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    const-string v0, "md5"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MD5"

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0, p2}, Ltech/ulo/library/utils/AssetDownloader;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 148
    const-string p1, "calculatedDigest null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calculated digest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provided digest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 153
    invoke-static {p2, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 143
    :cond_2
    :goto_0
    const-string p1, "MD5 string empty or updateFile null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final downloadIsForUserland(J)Z
    .locals 1

    .line 195
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final downloadRequirements(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/repositories/DownloadMetadata;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadRequirements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ltech/ulo/library/utils/AssetDownloader;->clearPreviousDownloadsFromDownloadsDirectory()V

    .line 71
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    invoke-virtual {v0}, Ltech/ulo/library/utils/preferences/AssetPreferences;->clearEnqueuedDownloadsCache()V

    .line 72
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 386
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 387
    check-cast v2, Ltech/ulo/library/model/repositories/DownloadMetadata;

    .line 76
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ltech/ulo/library/model/repositories/DownloadMetadata;->getDownloadTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v2}, Ltech/ulo/library/model/repositories/DownloadMetadata;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ltech/ulo/library/utils/DownloadManagerWrapper;->generateDownloadRequest(Ljava/lang/String;Ljava/io/File;)Landroid/app/DownloadManager$Request;

    move-result-object v2

    .line 79
    iget-object v3, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v3, v2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 387
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 385
    check-cast v1, Ljava/util/Collection;

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/preferences/AssetPreferences;->setDownloadsAreInProgress(Z)V

    .line 85
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/preferences/AssetPreferences;->setEnqueuedDownloads(Ljava/util/Set;)V

    return-void
.end method

.method public final downloadStateHasBeenCached()Z
    .locals 1

    .line 50
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    invoke-virtual {v0}, Ltech/ulo/library/utils/preferences/AssetPreferences;->getDownloadsAreInProgress()Z

    move-result v0

    return v0
.end method

.method public final handleDownloadComplete(J)Ltech/ulo/library/utils/AssetDownloadState;
    .locals 3

    .line 91
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/AssetDownloader;->downloadIsForUserland(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ltech/ulo/library/utils/NonUserlandDownloadFound;->INSTANCE:Ltech/ulo/library/utils/NonUserlandDownloadFound;

    check-cast p1, Ltech/ulo/library/utils/AssetDownloadState;

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadHasFailed(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v0, p1, p2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->getDownloadFailureReason(J)Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    move-result-object p1

    .line 95
    iget-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-virtual {p2, v0}, Ltech/ulo/library/utils/DownloadManagerWrapper;->cancelAllDownloads(Ljava/util/Set;)V

    .line 96
    new-instance p2, Ltech/ulo/library/utils/AssetDownloadFailure;

    invoke-direct {p2, p1}, Ltech/ulo/library/utils/AssetDownloadFailure;-><init>(Ltech/ulo/library/utils/DownloadFailureLocalizationData;)V

    check-cast p2, Ltech/ulo/library/utils/AssetDownloadState;

    return-object p2

    .line 99
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 101
    new-instance p1, Ltech/ulo/library/utils/CompletedDownloadsUpdate;

    iget-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, p2, v0}, Ltech/ulo/library/utils/CompletedDownloadsUpdate;-><init>(II)V

    check-cast p1, Ltech/ulo/library/utils/AssetDownloadState;

    return-object p1

    .line 104
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    iget-object p2, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 105
    new-instance p1, Ltech/ulo/library/utils/AssetDownloadFailure;

    new-instance p2, Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    sget v0, Ltech/ulo/library/R$string;->download_failure_finished_wrong_items:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v1, v2}, Ltech/ulo/library/utils/DownloadFailureLocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p2}, Ltech/ulo/library/utils/AssetDownloadFailure;-><init>(Ltech/ulo/library/utils/DownloadFailureLocalizationData;)V

    check-cast p1, Ltech/ulo/library/utils/AssetDownloadState;

    return-object p1

    .line 134
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 135
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 136
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltech/ulo/library/utils/preferences/AssetPreferences;->setDownloadsAreInProgress(Z)V

    .line 137
    iget-object p1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    invoke-virtual {p1}, Ltech/ulo/library/utils/preferences/AssetPreferences;->clearEnqueuedDownloadsCache()V

    .line 138
    sget-object p1, Ltech/ulo/library/utils/AllDownloadsCompletedSuccessfully;->INSTANCE:Ltech/ulo/library/utils/AllDownloadsCompletedSuccessfully;

    check-cast p1, Ltech/ulo/library/utils/AssetDownloadState;

    return-object p1
.end method

.method public final prepareDownloadsForUse(Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/ArchiveFactoryWrapper;",
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

    .line 208
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ltech/ulo/library/utils/AssetDownloader$prepareDownloadsForUse$2;-><init>(Ltech/ulo/library/utils/AssetDownloader;Ltech/ulo/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final syncStateWithCache()Ltech/ulo/library/utils/AssetDownloadState;
    .locals 4

    .line 54
    invoke-virtual {p0}, Ltech/ulo/library/utils/AssetDownloader;->downloadStateHasBeenCached()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltech/ulo/library/utils/CacheSyncAttemptedWhileCacheIsEmpty;->INSTANCE:Ltech/ulo/library/utils/CacheSyncAttemptedWhileCacheIsEmpty;

    check-cast v0, Ltech/ulo/library/utils/AssetDownloadState;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    iget-object v1, p0, Ltech/ulo/library/utils/AssetDownloader;->assetPreferences:Ltech/ulo/library/utils/preferences/AssetPreferences;

    invoke-virtual {v1}, Ltech/ulo/library/utils/preferences/AssetPreferences;->getEnqueuedDownloads()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 60
    iget-object v3, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v3, v1, v2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadHasFailed(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ltech/ulo/library/utils/AssetDownloader;->downloadManagerWrapper:Ltech/ulo/library/utils/DownloadManagerWrapper;

    invoke-virtual {v3, v1, v2}, Ltech/ulo/library/utils/DownloadManagerWrapper;->downloadHasSucceeded(J)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v1, v2}, Ltech/ulo/library/utils/AssetDownloader;->handleDownloadComplete(J)Ltech/ulo/library/utils/AssetDownloadState;

    move-result-object v1

    .line 64
    instance-of v2, v1, Ltech/ulo/library/utils/CompletedDownloadsUpdate;

    if-nez v2, :cond_1

    return-object v1

    .line 66
    :cond_3
    new-instance v0, Ltech/ulo/library/utils/CompletedDownloadsUpdate;

    iget-object v1, p0, Ltech/ulo/library/utils/AssetDownloader;->completedDownloadIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ltech/ulo/library/utils/AssetDownloader;->enqueuedDownloadIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ltech/ulo/library/utils/CompletedDownloadsUpdate;-><init>(II)V

    check-cast v0, Ltech/ulo/library/utils/AssetDownloadState;

    return-object v0
.end method
