.class public final synthetic Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/ui/AppsListAdapter;

.field public final synthetic f$1:Ltech/ulo/library/model/entities/App;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;->f$0:Ltech/ulo/library/ui/AppsListAdapter;

    iput-object p2, p0, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;->f$1:Ltech/ulo/library/model/entities/App;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;->f$0:Ltech/ulo/library/ui/AppsListAdapter;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;->f$1:Ltech/ulo/library/model/entities/App;

    invoke-static {v0, v1, p1}, Ltech/ulo/library/ui/AppsListAdapter;->$r8$lambda$jnUou3cyr3xLF5WBSiys9S1IO80(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/View;)V

    return-void
.end method
