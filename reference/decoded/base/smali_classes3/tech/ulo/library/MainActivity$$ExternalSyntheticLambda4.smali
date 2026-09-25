.class public final synthetic Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Ltech/ulo/library/MainActivity;

.field public final synthetic f$2:Ltech/ulo/library/model/entities/Session;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$1:Ltech/ulo/library/MainActivity;

    iput-object p3, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$2:Ltech/ulo/library/model/entities/Session;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$1:Ltech/ulo/library/MainActivity;

    iget-object v2, p0, Ltech/ulo/library/MainActivity$$ExternalSyntheticLambda4;->f$2:Ltech/ulo/library/model/entities/Session;

    invoke-static {v0, v1, v2, p1}, Ltech/ulo/library/MainActivity;->$r8$lambda$T_N8TYien-47-v9OOJ6iP6iXqjg(Landroid/app/AlertDialog;Ltech/ulo/library/MainActivity;Ltech/ulo/library/model/entities/Session;Landroid/content/DialogInterface;)V

    return-void
.end method
