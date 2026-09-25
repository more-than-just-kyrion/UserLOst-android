.class public final enum Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;
.super Ljava/lang/Enum;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zznp;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;


# instance fields
.field private final zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v1, "DELEGATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v2, "NNAPI"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v3, "GPU"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v4, "HEXAGON"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v5, "EDGETPU"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v6, "EDGETPU_CORAL"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v7, "XNNPACK"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v8, "CORE_ML"

    const/4 v9, 0x7

    .line 8
    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v9, "ARMNN"

    const/16 v10, 0x8

    .line 9
    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    const-string v10, "MTK_NEURON"

    const/16 v11, 0x9

    .line 10
    invoke-direct {v9, v10, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    filled-new-array/range {v0 .. v9}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzagr;->zzl:I

    return v0
.end method
