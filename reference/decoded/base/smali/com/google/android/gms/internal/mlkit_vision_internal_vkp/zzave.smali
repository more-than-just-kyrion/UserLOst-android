.class public final enum Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;
.super Ljava/lang/Enum;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zznp;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

.field private static final synthetic zzm:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;


# instance fields
.field private final zzn:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v2, "NO_CONNECTION"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v3, "RPC_ERROR"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v4, "RPC_RETURNED_INVALID_RESULT"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v5, "RPC_RETURNED_MALFORMED_RESULT"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v6, "RPC_EXPONENTIAL_BACKOFF_FAILED"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 7
    const-string v7, "DIRECTORY_CREATION_FAILED"

    const/4 v8, 0x6

    const/16 v9, 0xa

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    .line 8
    const-string v8, "FILE_WRITE_FAILED_DISK_FULL"

    const/4 v10, 0x7

    const/16 v11, 0xb

    invoke-direct {v7, v8, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const/16 v10, 0x8

    const/16 v12, 0xc

    .line 9
    const-string v13, "FILE_WRITE_FAILED"

    invoke-direct {v8, v13, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const/16 v12, 0x9

    const/16 v13, 0xd

    .line 10
    const-string v14, "FILE_READ_FAILED"

    invoke-direct {v10, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v13, "FILE_READ_RETURNED_INVALID_DATA"

    const/16 v14, 0xe

    .line 11
    invoke-direct {v12, v13, v9, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzk:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    const-string v9, "FILE_READ_RETURNED_MALFORMED_DATA"

    const/16 v14, 0xf

    .line 12
    invoke-direct {v13, v9, v11, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzl:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    move-object v9, v10

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzm:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzn:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzm:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzave;->zzn:I

    return v0
.end method
