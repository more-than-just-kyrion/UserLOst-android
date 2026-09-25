.class final Ltech/ulo/library/viewmodel/MainActivityViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivityViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/MainActivityViewModel;-><init>(Ltech/ulo/library/model/state/AppsStartupFsm;Ltech/ulo/library/model/state/SessionStartupFsm;Ltech/ulo/library/utils/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$2;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Ltech/ulo/library/model/state/SessionStartupState;

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel$2;->invoke(Ltech/ulo/library/model/state/SessionStartupState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ltech/ulo/library/model/state/SessionStartupState;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Ltech/ulo/library/viewmodel/MainActivityViewModel$2;->this$0:Ltech/ulo/library/viewmodel/MainActivityViewModel;

    .line 116
    new-instance v1, Ltech/ulo/library/utils/UlaBreadcrumb;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$getClassName$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$ObservedState;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ObservedState;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$getLogger$p(Ltech/ulo/library/viewmodel/MainActivityViewModel;)Ltech/ulo/library/utils/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Ltech/ulo/library/utils/Logger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 118
    invoke-static {v0, p1}, Ltech/ulo/library/viewmodel/MainActivityViewModel;->access$handleSessionPreparationState(Ltech/ulo/library/viewmodel/MainActivityViewModel;Ltech/ulo/library/model/state/SessionStartupState;)V

    :cond_0
    return-void
.end method
