.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:F

.field private zzg:F

.field private zzh:F

.field private zzi:F

.field private zzj:I

.field private zzk:F

.field private zzl:F

.field private zzm:I

.field private zzn:F

.field private zzo:F

.field private zzp:F

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbvq;

.field private zzr:F

.field private zzs:F

.field private zzt:F

.field private zzu:F

.field private zzv:F

.field private zzw:I

.field private zzx:I

.field private zzy:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zze:J

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzf:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzg:F

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzh:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzi:F

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzj:I

    const/high16 v1, -0x41000000    # -0.5f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzk:F

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzl:F

    const v1, 0xf4240

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzm:I

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzn:F

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzo:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzp:F

    const v1, 0x3e19999a    # 0.15f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzr:F

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzs:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzt:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzu:F

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzv:F

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzw:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzx:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzy:F

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjs;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjr;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;-><init>()V

    return-object v0

    .line 2
    :cond_3
    const-string v21, "zzx"

    const-string v22, "zzy"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzk"

    const-string v9, "zzl"

    const-string v10, "zzm"

    const-string v11, "zzn"

    const-string v12, "zzo"

    const-string v13, "zzq"

    const-string v14, "zzp"

    const-string v15, "zzr"

    const-string v16, "zzs"

    const-string v17, "zzt"

    const-string v18, "zzu"

    const-string v19, "zzv"

    const-string v20, "zzw"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;

    const-string v2, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1004\u0005\u0007\u1001\u0006\u0008\u1001\u0007\t\u1004\u0008\n\u1001\t\u000b\u1001\n\u000c\u1009\u000c\r\u1001\u000b\u000e\u1001\r\u000f\u1001\u000e\u0010\u1001\u000f\u0011\u1001\u0010\u0012\u1001\u0011\u0013\u1004\u0012\u0014\u1004\u0013\u0015\u1001\u0014"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjt;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
