.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    const-string v2, "TYPE_THIN"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    const-string v3, "TYPE_THICK"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    const-string v4, "TYPE_GMV"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zze:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzoz;->zzf:I

    return v0
.end method
