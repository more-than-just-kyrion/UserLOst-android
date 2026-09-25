.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;


# instance fields
.field private zzA:I

.field private zzB:F

.field private zzC:I

.field private zzD:F

.field private zzE:I

.field private zzF:B

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazv;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazv;

.field private zzh:Ljava/lang/String;

.field private zzi:F

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:I

.field private zzt:I

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:I

.field private zzy:Ljava/lang/String;

.field private zzz:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzF:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzh:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzm:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzp:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzy:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzC:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

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
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzF:B

    return-object v3

    .line 1
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    return-object v1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbq;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazt;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;-><init>()V

    return-object v1

    .line 2
    :cond_4
    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbd;

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazx;

    const-class v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazz;

    const-class v17, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbof;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v29

    sget-object v31, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbaq;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    const-string v34, "zzE"

    const-string v35, "zzs"

    const-string v2, "zzd"

    const-string v3, "zze"

    const-string v5, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v8, "zzi"

    const-string v9, "zzk"

    const-string v11, "zzl"

    const-string v12, "zzm"

    const-string v13, "zzj"

    const-string v15, "zzn"

    const-string v16, "zzo"

    const-string v18, "zzp"

    const-string v19, "zzq"

    const-string v20, "zzr"

    const-string v21, "zzt"

    const-string v22, "zzu"

    const-string v23, "zzv"

    const-string v24, "zzw"

    const-string v25, "zzx"

    const-string v26, "zzy"

    const-string v27, "zzz"

    const-string v28, "zzA"

    const-string v30, "zzC"

    const-string v32, "zzB"

    const-string v33, "zzD"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    const-string v3, "\u0001\u001b\u0000\u0001\u0001\u001b\u001b\u0000\u0004\u0004\u0001\u041b\u0002\u1509\u0000\u0003\u1409\u0001\u0004\u1008\u0002\u0005\u1001\u0003\u0006\u001b\u0007\u1007\u0004\u0008\u1008\u0005\t\u041b\n\u1007\u0006\u000b\u001b\u000c\u1007\u0007\r\u1007\u0008\u000e\u1007\t\u000f\u1004\u000b\u0010\u1004\u000c\u0011\u1004\r\u0012\u1004\u000e\u0013\u1004\u000f\u0014\u1008\u0010\u0015\u1001\u0011\u0016\u180c\u0012\u0017\u180c\u0014\u0018\u1001\u0013\u0019\u1001\u0015\u001a\u1004\u0016\u001b\u1004\n"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    iget-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;->zzF:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
