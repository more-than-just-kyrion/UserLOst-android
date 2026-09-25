.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;Ljava/lang/Object;)V

    return-object v0
.end method

.method static zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbea;->zzk(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhq;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result p1

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdq;->zzF(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method final zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfk;

    return-object v0
.end method
