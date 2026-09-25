.class final Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Extensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/ExtensionsKt;->zipLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TA;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "A",
        "B",
        "it",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lastA:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TA;>;"
        }
    .end annotation
.end field

.field final synthetic $lastB:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TB;>;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lkotlin/Pair<",
            "TA;TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TA;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TB;>;",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lkotlin/Pair<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$lastA:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$lastB:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$lastA:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$lastA:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$lastB:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Ltech/ulo/library/utils/ExtensionsKt$zipLiveData$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {p1, v0, v1}, Ltech/ulo/library/utils/ExtensionsKt;->access$zipLiveData$lambda$2$update(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;)V

    return-void
.end method
