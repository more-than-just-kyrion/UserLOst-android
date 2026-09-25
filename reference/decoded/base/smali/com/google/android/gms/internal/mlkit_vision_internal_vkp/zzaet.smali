.class public final enum Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;
.super Ljava/lang/Enum;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    const-string v2, "LEGACY_STRICT"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    const-string v3, "STRICT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaet;

    return-object v0
.end method
