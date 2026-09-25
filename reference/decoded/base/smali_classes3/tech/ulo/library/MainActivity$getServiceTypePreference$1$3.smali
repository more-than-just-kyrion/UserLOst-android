.class public final Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;->getServiceTypePreference(Ltech/ulo/library/model/entities/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "tech/ulo/library/MainActivity$getServiceTypePreference$1$3",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field final synthetic $floorMb:J

.field final synthetic $vmMemoryLabel:Landroid/widget/TextView;

.field final synthetic this$0:Ltech/ulo/library/MainActivity;


# direct methods
.method constructor <init>(JLandroid/widget/TextView;Ltech/ulo/library/MainActivity;)V
    .locals 0

    iput-wide p1, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->$floorMb:J

    iput-object p3, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->$vmMemoryLabel:Landroid/widget/TextView;

    iput-object p4, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->this$0:Ltech/ulo/library/MainActivity;

    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1629
    iget-object p1, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->$vmMemoryLabel:Landroid/widget/TextView;

    iget-object p3, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->this$0:Ltech/ulo/library/MainActivity;

    iget-wide v0, p0, Ltech/ulo/library/MainActivity$getServiceTypePreference$1$3;->$floorMb:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-static {p1, p3, v0, v1}, Ltech/ulo/library/MainActivity;->access$getServiceTypePreference$lambda$51$updateMemoryLabel(Landroid/widget/TextView;Ltech/ulo/library/MainActivity;J)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
