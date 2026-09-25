.class public final synthetic Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-wide p2, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-wide v1, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Ltech/ulo/library/ui/CompanionNotificationActionReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2, v3}, Ltech/ulo/library/ui/CompanionNotificationActionReceiver;->$r8$lambda$w8ALFo-hRk-QrmA_SzjV5grFTTs(Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
