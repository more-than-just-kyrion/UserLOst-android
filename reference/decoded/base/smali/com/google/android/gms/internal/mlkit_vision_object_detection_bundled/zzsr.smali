.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    const-string v2, "CANONICAL"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    const-string v3, "TFLITE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    const-string v4, "TFLITE_SUPPORT"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzf:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzsr;->zzf:I

    return v0
.end method
