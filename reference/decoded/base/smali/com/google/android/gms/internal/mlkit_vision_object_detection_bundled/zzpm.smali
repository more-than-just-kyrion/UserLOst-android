.class public final enum Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;
.super Ljava/lang/Enum;
.source "com.google.mlkit:object-detection@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzbw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v1, "CATEGORY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zza:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v2, "CATEGORY_HOME_GOOD"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v3, "CATEGORY_FASHION_GOOD"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v4, "CATEGORY_ANIMAL"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzd:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v5, "CATEGORY_FOOD"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zze:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v6, "CATEGORY_PLACE"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    const-string v7, "CATEGORY_PLANT"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzh:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzh:[Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_object_detection_bundled/zzpm;->zzi:I

    return v0
.end method
