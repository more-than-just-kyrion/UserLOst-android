.class final Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;
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

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;->this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 153
    invoke-virtual {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, ""

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;->this$0:Ltech/ulo/library/utils/UserFeedbackPrompter;

    invoke-static {v1}, Ltech/ulo/library/utils/UserFeedbackPrompter;->access$getActivity$p(Ltech/ulo/library/utils/UserFeedbackPrompter;)Ltech/ulo/library/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltech/ulo/library/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
