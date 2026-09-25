.class interface abstract Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# virtual methods
.method public abstract close(JJJJJ)V
.end method

.method public abstract getAnalyticsLogs(J)[B
.end method

.method public abstract initialize([BJJJJJ)J
.end method

.method public abstract initializeFrameBufferReleaseCallback(J)J
.end method

.method public abstract initializeFrameManager()J
.end method

.method public abstract initializeIsolationCallback()J
.end method

.method public abstract initializeResultsCallback()J
.end method

.method public abstract process(JJJ[BIIII)[B
.end method

.method public abstract processBitmap(JJLandroid/graphics/Bitmap;IIII)[B
.end method

.method public abstract processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B
.end method

.method public abstract start(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation
.end method

.method public abstract stop(J)Z
.end method

.method public abstract waitUntilIdle(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation
.end method

.method public abstract zza()V
.end method
