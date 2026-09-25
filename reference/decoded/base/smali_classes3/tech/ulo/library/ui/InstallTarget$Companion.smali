.class public final Ltech/ulo/library/ui/InstallTarget$Companion;
.super Ljava/lang/Object;
.source "InstallWizardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/InstallTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u000e\u0010\u000b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/ulo/library/ui/InstallTarget$Companion;",
        "",
        "()V",
        "AVF",
        "Ltech/ulo/library/ui/InstallTarget;",
        "getAVF",
        "()Ltech/ulo/library/ui/InstallTarget;",
        "AVF_ARG",
        "",
        "QEMU",
        "getQEMU",
        "QEMU_ARG",
        "fromArg",
        "arg",
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

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/ui/InstallTarget$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromArg(Ljava/lang/String;)Ltech/ulo/library/ui/InstallTarget;
    .locals 1

    .line 903
    const-string v0, "qemu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallTarget$Companion;->getQEMU()Ltech/ulo/library/ui/InstallTarget;

    move-result-object p1

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p0}, Ltech/ulo/library/ui/InstallTarget$Companion;->getAVF()Ltech/ulo/library/ui/InstallTarget;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAVF()Ltech/ulo/library/ui/InstallTarget;
    .locals 1

    .line 870
    invoke-static {}, Ltech/ulo/library/ui/InstallTarget;->access$getAVF$cp()Ltech/ulo/library/ui/InstallTarget;

    move-result-object v0

    return-object v0
.end method

.method public final getQEMU()Ltech/ulo/library/ui/InstallTarget;
    .locals 1

    .line 891
    invoke-static {}, Ltech/ulo/library/ui/InstallTarget;->access$getQEMU$cp()Ltech/ulo/library/ui/InstallTarget;

    move-result-object v0

    return-object v0
.end method
