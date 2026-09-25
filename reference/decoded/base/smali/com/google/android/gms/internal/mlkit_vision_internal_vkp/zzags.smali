.class public final enum Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;
.super Ljava/lang/Enum;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zznp;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;


# instance fields
.field private final zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v2, "NO_CONNECTION"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v3, "RPC_ERROR"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v4, "RPC_RETURNED_MALFORMED_RESULT"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzd:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 5
    const-string v5, "RPC_EXPONENTIAL_BACKOFF_FAILED"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zze:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    .line 6
    const-string v6, "RPC_CLIENT_ERROR"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzf:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const-string v7, "DIRECTORY_CREATION_FAILED"

    const/16 v9, 0xa

    .line 7
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const/4 v8, 0x7

    const/16 v9, 0xb

    .line 8
    const-string v10, "FILE_WRITE_FAILED"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const/16 v9, 0x8

    const/16 v10, 0xc

    .line 9
    const-string v11, "FILE_READ_FAILED"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzi:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    const/16 v10, 0x9

    const/16 v11, 0xd

    .line 10
    const-string v12, "FILE_READ_RETURNED_MALFORMED_DATA"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzj:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    filled-new-array/range {v0 .. v9}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzags;->zzl:I

    return v0
.end method
