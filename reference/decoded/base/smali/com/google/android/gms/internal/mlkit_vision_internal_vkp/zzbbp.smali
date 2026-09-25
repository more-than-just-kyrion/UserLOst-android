.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;
.super Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbft;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:F

.field private zzh:F

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Ljava/lang/String;

.field private zzo:F

.field private zzp:Ljava/lang/String;

.field private zzq:F

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzs:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

.field private zzt:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

.field private zzu:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

.field private zzv:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

.field private zzw:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzR(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzp:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzr:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzI()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzs:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzI()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzt:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzL()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzu:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbet;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzI()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzv:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzI()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzw:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbeq;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbo;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzazt;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;-><init>()V

    return-object v0

    .line 2
    :cond_3
    const-string v19, "zzv"

    const-string v20, "zzw"

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

    const-string v11, "zzp"

    const-string v12, "zzr"

    const-string v13, "zzn"

    const-string v14, "zzo"

    const-string v15, "zzq"

    const-string v16, "zzs"

    const-string v17, "zzt"

    const-string v18, "zzu"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;

    const-string v2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0006\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1008\u000b\u000b\u001a\u000c\u1008\t\r\u1001\n\u000e\u1001\u000c\u000f$\u0010$\u0011\u001a\u0012$\u0013$"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbbp;->zzO(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbfs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
