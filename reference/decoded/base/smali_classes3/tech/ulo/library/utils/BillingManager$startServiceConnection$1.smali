.class public final Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;
.super Ljava/lang/Object;
.source "BillingManager.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/BillingManager;->startServiceConnection(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "tech/ulo/library/utils/BillingManager$startServiceConnection$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingServiceDisconnected",
        "",
        "onBillingSetupFinished",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
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
.field final synthetic $task:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltech/ulo/library/utils/BillingManager;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/BillingManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/utils/BillingManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    iput-object p2, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->$task:Lkotlin/jvm/functions/Function0;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 155
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const-string v1, "onBillingServiceDisconnected()"

    invoke-static {v0, v1}, Ltech/ulo/library/utils/BillingManager;->access$log(Ltech/ulo/library/utils/BillingManager;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltech/ulo/library/utils/BillingManager;->setBillingServiceConnected(Z)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBillingSetupFinished(...), billingResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/ulo/library/utils/BillingManager;->access$log(Ltech/ulo/library/utils/BillingManager;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltech/ulo/library/utils/BillingManager;->setBillingServiceConnected(Z)V

    .line 150
    iget-object p1, p0, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;->$task:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
