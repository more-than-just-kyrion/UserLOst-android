.class public final synthetic Ltech/ulo/library/ui/FilesystemListFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/ui/FilesystemListFragment;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/ui/FilesystemListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemListFragment$$ExternalSyntheticLambda1;->f$0:Ltech/ulo/library/ui/FilesystemListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ltech/ulo/library/ui/FilesystemListFragment$$ExternalSyntheticLambda1;->f$0:Ltech/ulo/library/ui/FilesystemListFragment;

    check-cast p1, Ltech/ulo/library/viewmodel/FilesystemListViewState;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/FilesystemListFragment;->$r8$lambda$Toz4tCEH6_SSr-9YOqfqEeqmUrs(Ltech/ulo/library/ui/FilesystemListFragment;Ltech/ulo/library/viewmodel/FilesystemListViewState;)V

    return-void
.end method
