.class Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zzbt;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

.field private zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;

.field private zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;

.field private zzd:Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;

    iput-object p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;

    iput-object p3, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzd:Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)V

    const-string p1, "mlkitcommonpipeline"

    .line 2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native close(JJJJJ)V
.end method

.method public closeFileDescriptor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzd:Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;->zze(I)V

    return-void
.end method

.method public native getAnalyticsLogs(J)[B
.end method

.method public native initialize([BJJJJJ)J
.end method

.method public native initializeFrameBufferReleaseCallback(J)J
.end method

.method public native initializeFrameManager()J
.end method

.method public native initializeIsolationCallback()J
.end method

.method public native initializeResultsCallback()J
.end method

.method public onReleaseAtTimestampUs(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;->zzf(J)V

    return-void
.end method

.method public onResult([B)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzd([BLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;->zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    const-string v2, "Error in result from JNI layer"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcp;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public openFileDescriptor(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzd:Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;->zza(Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public native process(JJJ[BIIII)[B
.end method

.method public native processBitmap(JJLandroid/graphics/Bitmap;IIII)[B
.end method

.method public native processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B
.end method

.method public native start(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation
.end method

.method public native stop(J)Z
.end method

.method public native waitUntilIdle(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;
        }
    .end annotation
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdv;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcd;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzc:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcj;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;->zzd:Lcom/google/android/libraries/vision/visionkit/pipeline/zzci;

    return-void
.end method
