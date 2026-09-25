.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    const-string v2, "LEGACY_STRICT"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    const-string v3, "STRICT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzcp;

    return-object v0
.end method
