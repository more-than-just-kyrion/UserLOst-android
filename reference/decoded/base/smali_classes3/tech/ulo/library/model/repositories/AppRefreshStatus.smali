.class public final Ltech/ulo/library/model/repositories/AppRefreshStatus;
.super Ljava/lang/Object;
.source "AppsRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/AppRefreshStatus;",
        "",
        "refreshStatus",
        "Ltech/ulo/library/model/repositories/RefreshStatus;",
        "message",
        "",
        "(Ltech/ulo/library/model/repositories/RefreshStatus;Ljava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getRefreshStatus",
        "()Ltech/ulo/library/model/repositories/RefreshStatus;",
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
.field private final message:Ljava/lang/String;

.field private final refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/RefreshStatus;Ljava/lang/String;)V
    .locals 1

    const-string v0, "refreshStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/model/repositories/AppRefreshStatus;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    iput-object p2, p0, Ltech/ulo/library/model/repositories/AppRefreshStatus;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppRefreshStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshStatus()Ltech/ulo/library/model/repositories/RefreshStatus;
    .locals 1

    .line 110
    iget-object v0, p0, Ltech/ulo/library/model/repositories/AppRefreshStatus;->refreshStatus:Ltech/ulo/library/model/repositories/RefreshStatus;

    return-object v0
.end method
