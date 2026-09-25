.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;


# instance fields
.field private zzA:Z

.field private zzB:B

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:F

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbst;

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbrt;

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbov;

.field private zzs:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsi;

.field private zzt:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;

.field private zzw:Z

.field private zzx:Z

.field private zzy:I

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzB:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzf:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzg:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzh:I

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzj:F

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzu:I

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzB()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    const-string p1, "MobileSSDTfLiteClient"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzl:Z

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzt:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzv:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

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
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzB:B

    return-object v3

    .line 1
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    return-object v1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsj;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;-><init>()V

    return-object v1

    .line 2
    :cond_4
    sget-object v24, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsp;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    const-string v25, "zzA"

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

    const-string v13, "zzp"

    const-string v14, "zzq"

    const-string v15, "zzs"

    const-string v16, "zzu"

    const-string v17, "zzt"

    const-string v18, "zzv"

    const-string v19, "zzw"

    const-string v20, "zzx"

    const-string v21, "zzy"

    const-string v22, "zzr"

    const-string v23, "zzz"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    const-string v3, "\u0001\u0016\u0000\u0001\u0001\u0017\u0016\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u100b\u0001\u0003\u100b\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u001a\u0007\u1007\u0005\u0008\u1007\u0006\t\u1007\u0007\n\u100b\u0008\u000b\u1009\t\u000c\u1009\n\r\u1009\u000c\u000f\u1004\u000e\u0010\u1009\r\u0011\u1009\u000f\u0012\u1007\u0010\u0013\u1007\u0011\u0014\u1004\u0012\u0015\u1009\u000b\u0016\u180c\u0013\u0017\u1007\u0014"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    iget-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzB:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
