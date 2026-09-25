.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "shared-acceleration-allowlist"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagq;->zzk()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagu;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayb;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzce:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzcd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)V

    return-void
.end method
