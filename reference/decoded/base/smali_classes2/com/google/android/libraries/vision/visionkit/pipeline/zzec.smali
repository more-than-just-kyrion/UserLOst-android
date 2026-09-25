.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;

.field private zzf:Lcom/google/android/libraries/vision/visionkit/pipeline/zzaw;

.field private zzg:Lcom/google/android/libraries/vision/visionkit/pipeline/zzaj;

.field private zzh:Lcom/google/android/libraries/vision/visionkit/pipeline/zzff;

.field private zzi:Z

.field private zzj:Lcom/google/android/libraries/vision/visionkit/pipeline/zzaz;

.field private zzk:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcy;

.field private zzl:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zze:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzea;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;-><init>()V

    return-object p1

    .line 2
    :cond_3
    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v0, "zzd"

    const-string v1, "zzf"

    const-string v2, "zzj"

    const-string v3, "zze"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0000\u0000\u0001\u1009\u0001\u0003\u1009\u0005\u0004\u1009\u0000\u0005\u1009\u0002\u0006\u1009\u0003\u0007\u1007\u0004\u0008\u1009\u0006\t\u1009\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
