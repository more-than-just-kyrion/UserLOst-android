.class public final synthetic Ltech/ulo/library/ui/AppDetailsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/ui/AppDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/ui/AppDetailsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/AppDetailsFragment$$ExternalSyntheticLambda1;->f$0:Ltech/ulo/library/ui/AppDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragment$$ExternalSyntheticLambda1;->f$0:Ltech/ulo/library/ui/AppDetailsFragment;

    check-cast p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/AppDetailsFragment;->$r8$lambda$bJYelIOi3c3FdLhEBD81WtJV2L0(Ltech/ulo/library/ui/AppDetailsFragment;Ltech/ulo/library/viewmodel/AppDetailsViewState;)V

    return-void
.end method
