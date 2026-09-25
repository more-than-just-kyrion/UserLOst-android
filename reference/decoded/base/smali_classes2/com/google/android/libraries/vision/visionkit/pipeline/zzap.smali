.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhg;

.field private zzk:F

.field private zzl:Z

.field private zzm:Z

.field private zzn:I

.field private zzo:Z

.field private zzp:F

.field private zzq:I

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbp;

.field private zzs:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zze:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzs:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzn:I

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzi:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhg;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhg;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzf:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zze:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzm:Z

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzn:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;F)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    const p1, 0x3f19999a    # 0.6f

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzp:F

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzq:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :goto_0
    iput-byte v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzs:B

    return-object v3

    .line 1
    :cond_1
    sget-object v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    return-object v1

    :cond_2
    new-instance v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzan;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    invoke-direct {v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;-><init>()V

    return-object v1

    .line 2
    :cond_4
    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    const-string v17, "zzl"

    const-class v18, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcy;

    const-string v2, "zzf"

    const-string v3, "zze"

    const-string v4, "zzd"

    const-string v6, "zzh"

    const-string v7, "zzj"

    const-string v8, "zzm"

    const-string v9, "zzn"

    const-string v10, "zzo"

    const-string v11, "zzg"

    const-string v12, "zzp"

    const-string v13, "zzq"

    const-string v14, "zzi"

    const-string v15, "zzr"

    const-string v16, "zzk"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzb:Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;

    const-string v3, "\u0004\u000e\u0001\u0001\u0001\u000e\u000e\u0000\u0000\u0001\u0001\u043c\u0000\u0002\u1009\u0001\u0003\u1009\u0003\u0004\u1007\u0006\u0005\u1004\u0007\u0006\u1007\u0008\u0007\u1007\u0000\u0008\u1001\t\t\u1004\n\n\u1007\u0002\u000b\u1009\u000b\u000c\u1001\u0004\r\u1007\u0005\u000e<\u0000"

    invoke-static {v2, v3, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    iget-byte v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zzs:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
