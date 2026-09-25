.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    const-string v2, "SIGNED"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    const-string v3, "FIXED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbx;

    return-object v0
.end method
