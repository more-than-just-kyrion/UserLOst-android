.class final Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppsListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/AppsListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/ui/AppsListAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/ui/AppsListAdapter;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/AppsListFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/AppsListFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;->invoke()Ltech/ulo/library/ui/AppsListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/ui/AppsListAdapter;
    .locals 3

    .line 47
    new-instance v0, Ltech/ulo/library/ui/AppsListAdapter;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    invoke-static {v1}, Ltech/ulo/library/ui/AppsListFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/AppsListFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Ltech/ulo/library/ui/AppsListFragment$appsAdapter$2;->this$0:Ltech/ulo/library/ui/AppsListFragment;

    check-cast v2, Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;

    invoke-direct {v0, v1, v2}, Ltech/ulo/library/ui/AppsListAdapter;-><init>(Landroid/app/Activity;Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;)V

    return-object v0
.end method
