.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:[B

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

.field private final zzd:I

.field private final zze:I


# direct methods
.method constructor <init>([BJLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zza:[B

    iput-wide p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzb:J

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    iput p5, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzd:I

    iput p6, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzb:J

    return-wide v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    return-object v0
.end method

.method public final zzc()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zza:[B

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zzd:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;->zze:I

    return v0
.end method
