.class public final Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;
.super Ljava/lang/Object;
.source "InstallWizardFragment.kt"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/InstallWizardFragment;->makeNsdListener(Z)Landroid/net/nsd/NsdManager$DiscoveryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "tech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1",
        "Landroid/net/nsd/NsdManager$DiscoveryListener;",
        "onDiscoveryStarted",
        "",
        "t",
        "",
        "onDiscoveryStopped",
        "onServiceFound",
        "info",
        "Landroid/net/nsd/NsdServiceInfo;",
        "onServiceLost",
        "onStartDiscoveryFailed",
        "e",
        "",
        "onStopDiscoveryFailed",
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
.method constructor <init>(ZLtech/ulo/library/ui/InstallWizardFragment;)V
    .locals 0

    iput-boolean p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->$isPairing:Z

    iput-object p2, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getNsdManager$p(Ltech/ulo/library/ui/InstallWizardFragment;)Landroid/net/nsd/NsdManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;

    iget-object v2, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    iget-boolean v3, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->$isPairing:Z

    invoke-direct {v1, v2, v3}, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1$onServiceFound$1;-><init>(Ltech/ulo/library/ui/InstallWizardFragment;Z)V

    check-cast v1, Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    :cond_0
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iget-boolean p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->$isPairing:Z

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p1, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setPairingPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$makeNsdListener$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p1, v0}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setConnectionPort$p(Ltech/ulo/library/ui/InstallWizardFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "t"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "t"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
