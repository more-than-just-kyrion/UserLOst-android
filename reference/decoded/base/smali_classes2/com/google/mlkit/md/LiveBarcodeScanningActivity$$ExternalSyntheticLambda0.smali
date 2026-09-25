.class public final synthetic Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/google/mlkit/md/LiveBarcodeScanningActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/LiveBarcodeScanningActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/mlkit/md/LiveBarcodeScanningActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/LiveBarcodeScanningActivity;

    check-cast p1, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-static {v0, p1}, Lcom/google/mlkit/md/LiveBarcodeScanningActivity;->$r8$lambda$gHbZ5CoPjnRERkFqlSeqRhdwfJw(Lcom/google/mlkit/md/LiveBarcodeScanningActivity;Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V

    return-void
.end method
