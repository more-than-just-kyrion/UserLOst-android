.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcw;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

.field zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

.field final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcw;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgj;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzn()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbcy;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
