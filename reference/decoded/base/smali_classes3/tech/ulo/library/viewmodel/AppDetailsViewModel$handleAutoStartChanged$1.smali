.class final Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/AppDetailsViewModel;->handleAutoStartChanged(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;)V
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
    c = "tech.ulo.library.viewmodel.AppDetailsViewModel$handleAutoStartChanged$1"
    f = "AppDetailsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $event:Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;

.field label:I

.field final synthetic this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->$event:Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

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

    new-instance p1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->$event:Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-direct {p1, v0, v1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;-><init>(Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;Ltech/ulo/library/viewmodel/AppDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 135
    iget v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->$event:Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;->getAutoStartEnabled()Z

    move-result p1

    const-string v0, "AutoApp"

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->access$getPrefs$p(Ltech/ulo/library/viewmodel/AppDetailsViewModel;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->$event:Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;

    .line 138
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 139
    invoke-virtual {v1}, Ltech/ulo/library/viewmodel/AppDetailsEvent$AutoStartChanged;->getApp()Ltech/ulo/library/model/entities/App;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewModel$handleAutoStartChanged$1;->this$0:Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    invoke-static {p1}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;->access$getPrefs$p(Ltech/ulo/library/viewmodel/AppDetailsViewModel;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 145
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
