.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;


# instance fields
.field private zzA:I

.field private zzB:F

.field private zzC:Z

.field private zzD:I

.field private zzE:B

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazv;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazv;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazv;

.field private zzj:Ljava/lang/String;

.field private zzk:F

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzn:F

.field private zzo:Ljava/lang/String;

.field private zzp:Z

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbah;

.field private zzv:Z

.field private zzw:I

.field private zzx:I

.field private zzy:I

.field private zzz:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbby;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzE:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzj:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzm:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzo:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzq:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

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
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzE:B

    return-object v3

    .line 1
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    return-object v1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbao;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbao;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazt;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;-><init>()V

    return-object v1

    .line 2
    :cond_4
    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbr;

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazx;

    const-class v14, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazz;

    const-class v17, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbof;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbep;

    move-result-object v29

    const-string v31, "zzC"

    const-string v32, "zzD"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string v7, "zzj"

    const-string v8, "zzk"

    const-string v9, "zzm"

    const-string v11, "zzn"

    const-string v12, "zzo"

    const-string v13, "zzl"

    const-string v15, "zzp"

    const-string v16, "zzq"

    const-string v18, "zzr"

    const-string v19, "zzs"

    const-string v20, "zzt"

    const-string v21, "zzu"

    const-string v22, "zzv"

    const-string v23, "zzw"

    const-string v24, "zzx"

    const-string v25, "zzi"

    const-string v26, "zzy"

    const-string v27, "zzz"

    const-string v28, "zzA"

    const-string v30, "zzB"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;

    const-string v3, "\u0001\u0019\u0000\u0001\u0001d\u0019\u0000\u0004\u0006\u0001\u041b\u0002\u1409\u0000\u0003\u1409\u0001\u0004\u1008\u0003\u0005\u1001\u0004\u0006\u001b\u0007\u1001\u0005\u0008\u1008\u0006\t\u041b\n\u1007\u0007\u000b\u001b\u000c\u1004\u0008\r\u1004\t\u000e\u1007\n\u000f\u1409\u000b\u0010\u1007\u000c\u0011\u1004\r\u0012\u1004\u000e\u0013\u1409\u0002\u0014\u1004\u000f\u0015\u1009\u0010\u0016\u180c\u0011\u0017\u1001\u0012\u0018\u1007\u0013d\u1004\u0014"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    iget-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbap;->zzE:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
