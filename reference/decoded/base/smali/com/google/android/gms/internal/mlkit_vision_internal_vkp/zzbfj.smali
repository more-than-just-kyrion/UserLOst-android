.class final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfj;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgn;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfi;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbee;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbee;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfi;-><init>([Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeu;->zzb:[B

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgm;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zza:I

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfy;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbff;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzm()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfo;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfe;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfn;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfv;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgb;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbgo;->zzm()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfp;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhd;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdw;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfw;

    move-result-object p1

    return-object p1
.end method
