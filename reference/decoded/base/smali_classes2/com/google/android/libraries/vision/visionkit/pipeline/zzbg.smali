.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private zza:[B

.field private zzb:J

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

.field private zzd:I

.field private zze:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zza:[B

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzb:J

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;
    .locals 8

    new-instance v7, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zza:[B

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzb:J

    iget-object v4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    iget v5, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzd:I

    iget v6, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zze:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;-><init>([BJLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;II)V

    return-object v7
.end method

.method public final zze(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzd:I

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zze:I

    return-object p0
.end method
