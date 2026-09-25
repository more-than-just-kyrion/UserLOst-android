.class final Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivityViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/MainActivityViewModel;->handleExtractionState(Ltech/ulo/library/model/state/ExtractionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/MainActivityViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 493
    invoke-virtual {p0}, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 494
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$getState$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Ltech/ulo/library/viewmodel/SessionCanBeStarted;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$handleExtractionState$1;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    invoke-virtual {v2}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->getLastSelectedSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    invoke-direct {v1, v2}, Ltech/ulo/library/viewmodel/SessionCanBeStarted;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
