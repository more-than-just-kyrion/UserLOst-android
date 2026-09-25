.class public final Lcom/google/mlkit/vision/objects/defaults/internal/zzb;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.mlkit:object-detection@@17.0.2"


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/objects/defaults/internal/zze;

    iget-object v1, p0, Lcom/google/mlkit/vision/objects/defaults/internal/zzb;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/vision/objects/defaults/internal/zze;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/objects/defaults/ObjectDetectorOptions;)V

    return-object v0
.end method
