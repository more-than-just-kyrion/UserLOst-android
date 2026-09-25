.class public final Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;
.super Ljava/lang/Object;
.source "InstallWizardFragment.kt"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "tech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1",
        "Landroid/net/nsd/NsdManager$ResolveListener;",
        "onResolveFailed",
        "",
        "i",
        "Landroid/net/nsd/NsdServiceInfo;",
        "e",
        "",
        "onServiceResolved",
        "resolved",
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
.field final synthetic $isPairing:Z

.field final synthetic this$0:Ltech/ulo/library/ui/InstallWizardFragment;


# direct methods
.method public static synthetic $r8$lambda$B8vvtR1vug5C9HUPSmGj5NHmcB0(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->onServiceResolved$lambda$0(Ltech/ulo/library/ui/InstallWizardFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YeDzQ16bK9MbQaWw4eVY6RUAUYk(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->onServiceResolved$lambda$1(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ltech/ulo/library/ui/InstallWizardFragment;Z)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    iput-boolean p2, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->$isPairing:Z

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onServiceResolved$lambda$0(Ltech/ulo/library/ui/InstallWizardFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$get_binding$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getBinding(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    iget-object v0, v0, Ltech/ulo/library/databinding/FragInstallWizardBinding;->tvPairStatus:Landroid/widget/TextView;

    .line 467
    sget v1, Ltech/ulo/library/R$string;->install_wizard_pairing_detected:I

    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 466
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final onServiceResolved$lambda$1(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$get_binding$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getNm$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "nm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 477
    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$showInstallSection(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    .line 478
    invoke-static {p0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$doInstall(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    const-string p2, "i"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    const-string v0, "resolved"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$isLocalAddress(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 461
    iget-boolean v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->$isPairing:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setPairingPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$updatePairingNotification(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getMainHandler$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 470
    :cond_1
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setConnectionPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    .line 471
    sget-object v0, Ltech/ulo/library/ui/InstallWizardFragment;->Companion:Ltech/ulo/library/ui/InstallWizardFragment$Companion;

    invoke-virtual {v0}, Ltech/ulo/library/ui/InstallWizardFragment$Companion;->getSPaired()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setDoInstallDispatched$p(Ltech/ulo/library/ui/InstallWizardFragment;Z)V

    .line 473
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-virtual {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 474
    :cond_3
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getMainHandler$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    new-instance v2, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 480
    :cond_4
    sget-object v0, Ltech/ulo/library/ui/InstallWizardFragment;->Companion:Ltech/ulo/library/ui/InstallWizardFragment$Companion;

    invoke-virtual {v0}, Ltech/ulo/library/ui/InstallWizardFragment$Companion;->getSPaired()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getLastAutoConnectPort$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 495
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setLastAutoConnectPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0, p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$checkIfAlreadyPaired(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
