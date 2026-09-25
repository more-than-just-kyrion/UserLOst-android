.class final Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserPrompter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/UserFeedbackPrompter;-><init>(Ltech/ulo/library/MainActivity;)V
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
.field final synthetic this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/UserFeedbackPrompter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;->this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-virtual {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 148
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;->this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;->this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;

    invoke-static {v0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->access$getActivity$p(Ltech/ulo/library/utils/UserFeedbackPrompter;)Ltech/ulo/library/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
