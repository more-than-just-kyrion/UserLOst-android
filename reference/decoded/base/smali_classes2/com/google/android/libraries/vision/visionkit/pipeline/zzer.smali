.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjb;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzdx;

.field private zzi:Lcom/google/android/libraries/vision/visionkit/pipeline/zzaa;

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzj:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzj:B

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzep;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzep;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzeo;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;-><init>()V

    return-object p1

    .line 2
    :cond_4
    sget-object v4, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    const-string v5, "zzi"

    const-string v6, "zzf"

    const-string v0, "zzd"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-string v3, "zze"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0001\u0001\u1009\u0002\u0002\u1009\u0003\u0003\u180c\u0000\u0004\u1009\u0004\u0005\u1409\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzer;->zzj:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
