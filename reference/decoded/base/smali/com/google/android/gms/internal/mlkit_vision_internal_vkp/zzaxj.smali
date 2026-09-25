.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxv;

    .line 2
    const-string v3, "shared-installation-id"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxu;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxs;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxi;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavd;->zzi()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavg;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavg;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayb;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzarz;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    const-string v1, "o:a:mlkit:1.0.0"

    .line 3
    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;Ljava/lang/String;)V

    return-void
.end method
