.class public final synthetic Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Ltech/ulo/library/utils/PermissionHandler$Companion;->$r8$lambda$TaJvZ6aYv_gegva6PSHhkSUsRdc(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
