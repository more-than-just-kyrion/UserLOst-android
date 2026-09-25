.class public final Ltech/ulo/library/utils/StorageCalculator;
.super Ljava/lang/Object;
.source "StorageCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/utils/StorageCalculator;",
        "",
        "statFs",
        "Landroid/os/StatFs;",
        "(Landroid/os/StatFs;)V",
        "getAvailableStorageInMB",
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
.field private final statFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/os/StatFs;)V
    .locals 1

    const-string v0, "statFs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/StorageCalculator;->statFs:Landroid/os/StatFs;

    return-void
.end method


# virtual methods
.method public final getAvailableStorageInMB()J
    .locals 4

    .line 8
    iget-object v0, p0, Ltech/ulo/library/utils/StorageCalculator;->statFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    iget-object v2, p0, Ltech/ulo/library/utils/StorageCalculator;->statFs:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const/high16 v2, 0x100000

    int-to-long v2, v2

    .line 9
    div-long/2addr v0, v2

    return-wide v0
.end method
