.class final Lcom/google/android/libraries/vision/visionkit/pipeline/zzbu;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close(JJJJJ)V
    .locals 0

    return-void
.end method

.method public final getAnalyticsLogs(J)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public final initialize([BJJJJJ)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public final initializeFrameBufferReleaseCallback(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public final initializeFrameManager()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final initializeIsolationCallback()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final initializeResultsCallback()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final process(JJJ[BIIII)[B
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzw()[B

    move-result-object p1

    return-object p1
.end method

.method public final processBitmap(JJLandroid/graphics/Bitmap;IIII)[B
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzw()[B

    move-result-object p1

    return-object p1
.end method

.method public final processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzw()[B

    move-result-object p1

    return-object p1
.end method

.method public final start(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation

    return-void
.end method

.method public final stop(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final waitUntilIdle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation

    return-void
.end method

.method public final zza()V
    .locals 0

    return-void
.end method
