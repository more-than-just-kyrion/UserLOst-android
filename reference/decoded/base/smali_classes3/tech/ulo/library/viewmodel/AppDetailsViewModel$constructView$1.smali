.class final Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AppDetailsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/AppDetailsViewModel;->constructView(Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "tech.ulo.library.viewmodel.AppDetailsViewModel"
    f = "AppDetailsViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x3a
    }
    m = "constructView"
    n = {
        "this",
        "app"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->result:Ljava/lang/Object;

    iget p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->label:I

    iget-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$constructView$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->access$constructView(Ltech/ulo/library/viewmodel/AppDetailsViewModel;Ltech/ulo/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
