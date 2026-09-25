.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayn;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayn;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;I)V

    return-object v0
.end method

.method private static zzf(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzue;->zza(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavq;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavq;->zzm()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadu;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzb()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzd()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzi(Z)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zze()Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zzf(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zzf()Ljava/lang/Integer;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zzf(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzl(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzavs;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzuo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadu;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadu;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zzd(IZ)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzC()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzadt;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbck;->zzw()[B

    move-result-object p1

    return-object p1
.end method
