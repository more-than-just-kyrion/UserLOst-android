.class final Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AssetRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/repositories/AssetRepository;->getRootFsAssetDownloadRequirements(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.ulo.library.model.repositories.AssetRepository"
    f = "AssetRepository.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xdb,
        0xe4,
        0xe5
    }
    m = "getRootFsAssetDownloadRequirements"
    n = {
        "this",
        "repo",
        "downloadRequirements",
        "filename",
        "rootFsIsDownloaded",
        "this",
        "repo",
        "filename",
        "repo",
        "filename",
        "versionCode"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ltech/ulo/library/model/repositories/AssetRepository;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/repositories/AssetRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/repositories/AssetRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;->result:Ljava/lang/Object;

    iget p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;->label:I

    iget-object p1, p0, Ltech/ulo/library/model/repositories/AssetRepository$getRootFsAssetDownloadRequirements$1;->this$0:Ltech/ulo/library/model/repositories/AssetRepository;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Ltech/ulo/library/model/repositories/AssetRepository;->access$getRootFsAssetDownloadRequirements(Ltech/ulo/library/model/repositories/AssetRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
