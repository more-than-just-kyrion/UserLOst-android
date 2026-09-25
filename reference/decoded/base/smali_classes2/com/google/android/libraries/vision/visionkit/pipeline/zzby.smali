.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:F

.field private zzg:I

.field private zzh:F

.field private zzi:I

.field private zzj:Z

.field private zzk:F

.field private zzl:Z

.field private zzm:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zze:I

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzf:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzg:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzh:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzj:Z

    const v1, 0x3f59999a    # 0.85f

    iput v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzk:F

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzl:Z

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;F)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzk:F

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzl:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzg:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;F)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzh:F

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;I)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzi:I

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzbv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;-><init>()V

    return-object p1

    .line 2
    :cond_3
    sget-object v6, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    const-string v9, "zzl"

    const-string v10, "zzm"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzk"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;

    const-string p3, "\u0004\t\u0000\u0001\u0001\u0011\t\u0000\u0000\u0000\u0001\u1004\u0000\u0005\u1001\u0001\u0006\u1004\u0002\u0007\u1001\u0003\u000c\u180c\u0004\u000e\u1007\u0005\u000f\u1001\u0006\u0010\u1007\u0007\u0011\u1001\u0008"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
