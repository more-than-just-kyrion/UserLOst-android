.class public final Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "InstallWizardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/InstallWizardFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "tech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/InstallWizardFragment;


# direct methods
.method public static synthetic $r8$lambda$KoiDnuvTK7P7Q3QicBK2INAKmTw(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;->onReceive$lambda$0(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    .line 130
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static final onReceive$lambda$0(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$get_binding$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getConnectionPort$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 139
    invoke-static {p0, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;Z)V

    .line 140
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$showInstallSection(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    .line 141
    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$doInstall(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$startNsd(Ltech/ulo/library/ui/InstallWizardFragment;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 133
    sget-object p2, Ltech/ulo/library/ui/InstallWizardFragment;->Companion:Ltech/ulo/library/ui/InstallWizardFragment$Companion;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ltech/ulo/library/ui/InstallWizardFragment$Companion;->setSPaired(Z)V

    .line 134
    iget-object p2, p0, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p2}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getNm$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/app/NotificationManager;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "nm"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 135
    iget-object p2, p0, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p2}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getMainHandler$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment$pairedReceiver$1$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
