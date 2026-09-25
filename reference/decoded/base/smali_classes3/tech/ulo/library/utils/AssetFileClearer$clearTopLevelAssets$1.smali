.class final Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AssetFileClearer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/AssetFileClearer;->clearTopLevelAssets(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.utils.AssetFileClearer"
    f = "AssetFileClearer.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x24
    }
    m = "clearTopLevelAssets"
    n = {
        "this",
        "assetDirectoryNames",
        "files"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ltech/ulo/library/utils/AssetFileClearer;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/AssetFileClearer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/AssetFileClearer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->this$0:Ltech/ulo/library/utils/AssetFileClearer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->result:Ljava/lang/Object;

    iget p1, p0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->label:I

    iget-object p1, p0, Ltech/ulo/library/utils/AssetFileClearer$clearTopLevelAssets$1;->this$0:Ltech/ulo/library/utils/AssetFileClearer;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Ltech/ulo/library/utils/AssetFileClearer;->access$clearTopLevelAssets(Ltech/ulo/library/utils/AssetFileClearer;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
