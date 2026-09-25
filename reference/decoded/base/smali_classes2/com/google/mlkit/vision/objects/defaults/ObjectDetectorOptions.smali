.class public Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;
.super Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;
.source "com.google.mlkit:object-detection@@17.0.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPTIONS:Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions$Builder;Lcom/google/mlkit/vision/objects/defaults/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase;-><init>(Lcom/google/mlkit/vision/objects/ObjectDetectorOptionsBase$Builder;)V

    return-void
.end method
