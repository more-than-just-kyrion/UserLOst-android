.class public final Ltech/ulo/library/ui/InstallWizardFragment$Companion;
.super Ljava/lang/Object;
.source "InstallWizardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/InstallWizardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/ulo/library/ui/InstallWizardFragment$Companion;",
        "",
        "()V",
        "ARG_TARGET",
        "",
        "NOTIF_CHANNEL_ID",
        "NOTIF_ID",
        "",
        "TAG",
        "sPaired",
        "",
        "getSPaired",
        "()Z",
        "setSPaired",
        "(Z)V",
        "sServerStarted",
        "getSServerStarted",
        "setSServerStarted",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/ui/InstallWizardFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSPaired()Z
    .locals 1

    .line 77
    invoke-static {}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getSPaired$cp()Z

    move-result v0

    return v0
.end method

.method public final getSServerStarted()Z
    .locals 1

    .line 76
    invoke-static {}, Ltech/ulo/library/ui/InstallWizardFragment;->access$getSServerStarted$cp()Z

    move-result v0

    return v0
.end method

.method public final setSPaired(Z)V
    .locals 0

    .line 77
    invoke-static {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setSPaired$cp(Z)V

    return-void
.end method

.method public final setSServerStarted(Z)V
    .locals 0

    .line 76
    invoke-static {p1}, Ltech/ulo/library/ui/InstallWizardFragment;->access$setSServerStarted$cp(Z)V

    return-void
.end method
