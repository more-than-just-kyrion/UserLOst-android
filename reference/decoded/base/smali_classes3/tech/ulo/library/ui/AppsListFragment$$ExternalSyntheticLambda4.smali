.class public final synthetic Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/ui/AppsListFragment;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/ui/AppsListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda4;->f$0:Ltech/ulo/library/ui/AppsListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragment$$ExternalSyntheticLambda4;->f$0:Ltech/ulo/library/ui/AppsListFragment;

    check-cast p1, Ltech/ulo/library/model/repositories/AppRefreshStatus;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/AppsListFragment;->$r8$lambda$pUCRF1HwpTcQYCnpwZxW72sM8_U(Ltech/ulo/library/ui/AppsListFragment;Ltech/ulo/library/model/repositories/AppRefreshStatus;)V

    return-void
.end method
