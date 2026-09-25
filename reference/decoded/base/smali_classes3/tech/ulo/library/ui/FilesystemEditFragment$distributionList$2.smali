.class final Ltech/ulo/library/ui/FilesystemEditFragment$distributionList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesystemEditFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/FilesystemEditFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Ltech/ulo/library/ui/FilesystemEditFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/FilesystemEditFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemEditFragment$distributionList$2;->this$0:Ltech/ulo/library/ui/FilesystemEditFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Ltech/ulo/library/ui/FilesystemEditFragment$distributionList$2;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ltech/ulo/library/utils/preferences/AppsPreferences;

    iget-object v1, p0, Ltech/ulo/library/ui/FilesystemEditFragment$distributionList$2;->this$0:Ltech/ulo/library/ui/FilesystemEditFragment;

    invoke-static {v1}, Ltech/ulo/library/ui/FilesystemEditFragment;->access$getActivityContext$p(Ltech/ulo/library/ui/FilesystemEditFragment;)Ltech/ulo/library/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "activityContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/preferences/AppsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ltech/ulo/library/utils/preferences/AppsPreferences;->getDistributionsList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
