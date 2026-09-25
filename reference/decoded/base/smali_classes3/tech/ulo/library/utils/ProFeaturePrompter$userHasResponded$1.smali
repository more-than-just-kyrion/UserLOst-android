.class final Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProFeaturePrompter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/ProFeaturePrompter;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/utils/ProFeaturePrompter;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ProFeaturePrompter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 75
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ProFeaturePrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ProFeaturePrompter;->getSavedActivity()Ltech/ulo/library/RequestDirPermissionsActivity;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ProFeaturePrompter;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeInAppPurchase()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ProFeaturePrompter;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeSubPurchase()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ltech/ulo/library/RequestDirPermissionsActivity;->userHasCompletedPayment(Z)V

    return-void
.end method
