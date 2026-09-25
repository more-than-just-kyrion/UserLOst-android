.class public final Lcom/google/mlkit/md/camera/WorkflowModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WorkflowModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/WorkflowModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "confirmedObject",
        "Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "detectedBarcode",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        "getDetectedBarcode",
        "()Landroidx/lifecycle/MutableLiveData;",
        "<set-?>",
        "",
        "isCameraLive",
        "()Z",
        "objectIdsToSearch",
        "Ljava/util/HashSet;",
        "",
        "workflowState",
        "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
        "getWorkflowState",
        "markCameraFrozen",
        "",
        "markCameraLive",
        "setWorkflowState",
        "WorkflowState",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private confirmedObject:Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;

.field private final detectedBarcode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraLive:Z

.field private final objectIdsToSearch:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final workflowState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->workflowState:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->detectedBarcode:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->objectIdsToSearch:Ljava/util/HashSet;

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/google/mlkit/md/camera/WorkflowModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getDetectedBarcode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->detectedBarcode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getWorkflowState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->workflowState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isCameraLive()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive:Z

    return v0
.end method

.method public final markCameraFrozen()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive:Z

    return-void
.end method

.method public final markCameraLive()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->isCameraLive:Z

    .line 71
    iget-object v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->objectIdsToSearch:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final setWorkflowState(Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;)V
    .locals 1

    const-string v0, "workflowState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    if-eq p1, v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    if-eq p1, v0, :cond_0

    .line 62
    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->confirmedObject:Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/md/camera/WorkflowModel;->workflowState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
