.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zze:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzd:I

    const-string p1, "MobileObjectLocalizerV3_1TfLiteClient"

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;J)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zze:I

    const-wide/32 p1, 0x493e0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzf:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcn;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;-><init>()V

    return-object p1

    .line 2
    :cond_3
    const-string p1, "zzg"

    const-class p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzct;

    const-string p3, "zzf"

    const-string v0, "zze"

    const-string v1, "zzd"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;

    const-string p3, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u00025\u0000\u0003<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
