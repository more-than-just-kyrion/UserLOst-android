.class public final Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;
.super Ltech/ulo/library/viewmodel/FilesystemDeleteState;
.source "FilesystemListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/viewmodel/FilesystemDeleteState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;",
        "Ltech/ulo/library/viewmodel/FilesystemDeleteState;",
        "()V",
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


# static fields
.field public static final INSTANCE:Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;

    invoke-direct {v0}, Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;-><init>()V

    sput-object v0, Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;->INSTANCE:Ltech/ulo/library/viewmodel/FilesystemDeleteState$Success;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/FilesystemDeleteState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
