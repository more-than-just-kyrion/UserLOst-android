.class public final Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;
.super Landroid/database/ContentObserver;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "tech/ulo/library/ui/InstallWizardFragment$settingsObserver$1",
        "Landroid/database/ContentObserver;",
        "onChange",
        "",
        "selfChange",
        "",
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
.method constructor <init>(Ltech/ulo/library/ui/InstallWizardFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    .line 124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 126
    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$get_binding$p(Ltech/ulo/library/ui/InstallWizardFragment;)Ltech/ulo/library/databinding/FragInstallWizardBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/InstallWizardFragment$settingsObserver$1;->this$0:Ltech/ulo/library/ui/InstallWizardFragment;

    invoke-static {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$onSettingsChanged(Ltech/ulo/library/ui/InstallWizardFragment;)V

    :cond_0
    return-void
.end method
