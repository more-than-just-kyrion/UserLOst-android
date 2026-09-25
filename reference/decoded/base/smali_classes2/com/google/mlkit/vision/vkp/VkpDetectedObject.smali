.class public abstract Lcom/google/mlkit/vision/vkp/VkpDetectedObject;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBoundingBox()Landroid/graphics/Rect;
.end method

.method public abstract getLabels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/vkp/VkpImageLabel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrackingId()Ljava/lang/Integer;
.end method
