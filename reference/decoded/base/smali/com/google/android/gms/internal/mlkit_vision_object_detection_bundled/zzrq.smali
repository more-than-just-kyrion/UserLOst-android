.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    const-string v1, "MODE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    const-string v2, "STREAM"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    const-string v3, "SINGLE_IMAGE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzrq;->zze:I

    return v0
.end method
