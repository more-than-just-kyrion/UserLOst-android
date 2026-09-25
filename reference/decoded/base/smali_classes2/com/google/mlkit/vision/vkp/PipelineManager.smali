.class public Lcom/google/mlkit/vision/vkp/PipelineManager;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/mlkit/vision/vkp/zzc;

.field private final zzc:Z

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/android/libraries/intelligence/acceleration/zzb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

.field private zzi:Lcom/google/mlkit/vision/vkp/zzd;

.field private zzj:Z

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "mlkitcommonpipeline"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/vkp/zzc;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zze:Ljava/util/List;

    new-instance v0, Lcom/google/android/libraries/intelligence/acceleration/zzb;

    const-wide/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/intelligence/acceleration/zzb;-><init>(J)V

    iput-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzf:Lcom/google/android/libraries/intelligence/acceleration/zzb;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzk:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzl:J

    iput-object p1, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb:Lcom/google/mlkit/vision/vkp/zzc;

    iput-boolean p3, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzc:Z

    iput-object p4, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    iput-object p5, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    return-void
.end method

.method public static newInstanceForImageLabeling(Landroid/content/Context;Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;)Lcom/google/mlkit/vision/vkp/PipelineManager;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/mlkit/vision/vkp/PipelineManager;

    const-string v0, "vision-internal-vkp"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    move-result-object v4

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/vkp/PipelineManager;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/vkp/zzc;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;)V

    return-object v6
.end method

.method public static newInstanceForObjectDetection(Landroid/content/Context;Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;)Lcom/google/mlkit/vision/vkp/PipelineManager;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzi()Z

    move-result v3

    new-instance v6, Lcom/google/mlkit/vision/vkp/PipelineManager;

    .line 2
    const-string v0, "vision-internal-vkp"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzayj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    move-result-object v4

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/vkp/PipelineManager;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/vkp/zzc;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;)V

    return-object v6
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zze:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zzc(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    return-object p1
.end method

.method private final zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zze:Ljava/util/List;

    const-string v1, "r"

    iget-object v2, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    move-result-object p1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zzc(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzho;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to open URI "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzd(Lcom/google/mlkit/common/model/LocalModel;Z)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/LocalModel;->isManifestFile()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 4
    invoke-static {v0, p2, p1}, Lcom/google/mlkit/common/internal/model/ModelUtils;->parseManifestFile(Ljava/lang/String;ZLandroid/content/Context;)Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;->getModelType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "IMAGE_LABELING"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Model type should be: %s."

    .line 7
    invoke-static {p2, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 8
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;->getModelFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 9
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/ModelUtils$AutoMLManifest;->getLabelsFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to parse manifest file."

    .line 5
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    const-string p1, ""

    :goto_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    return-object p2
.end method


# virtual methods
.method public process(Lcom/google/mlkit/vision/common/InputImage;Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;)Lcom/google/mlkit/vision/vkp/VkpResults;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "Input bitmap is not ARGB_8888 config. Converting it to ARGB_8888 from "

    .line 1
    iget-boolean v3, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzc:Z

    const-string v4, "PipelineManager"

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v3

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzl:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_1

    sub-long v7, v5, v7

    const-wide/16 v9, 0x12c

    cmp-long v3, v7, v9

    if-lez v3, :cond_1

    const-string v3, "Pipeline is reset."

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->stop()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->start()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v3

    goto :goto_0

    :cond_1
    iput-wide v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzl:J

    .line 3
    invoke-static {}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v3

    .line 7
    :goto_0
    invoke-virtual {v3}, Lcom/google/mlkit/vision/vkp/VkpStatus;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    .line 8
    invoke-static {v3}, Lcom/google/mlkit/vision/vkp/VkpResults;->zza(Lcom/google/mlkit/vision/vkp/VkpStatus;)Lcom/google/mlkit/vision/vkp/VkpResults;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v3

    const/4 v5, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v3, v5, :cond_4

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v11, :cond_3

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_3
    iget-object v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/vkp/zzd;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v6

    iget v6, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->rotation:I

    invoke-static {v6}, Lcom/google/mlkit/vision/vkp/zze;->zza(I)I

    move-result v6

    .line 17
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzj(JLandroid/graphics/Bitmap;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v2

    goto/16 :goto_1

    .line 18
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/Image$Plane;

    iget-object v3, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/mlkit/vision/vkp/zzd;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long v12, v3, v6

    aget-object v3, v2, v9

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    aget-object v3, v2, v10

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    aget-object v3, v2, v8

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v17

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v18

    aget-object v3, v2, v9

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    aget-object v3, v2, v10

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v20

    aget-object v2, v2, v10

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image$Plane;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    iget v2, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->rotation:I

    invoke-static {v2}, Lcom/google/mlkit/vision/vkp/zze;->zza(I)I

    move-result v22

    .line 30
    invoke-virtual/range {v11 .. v22}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzk(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v2

    goto :goto_1

    .line 31
    :cond_5
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;

    move-result-object v2

    move-object/from16 v3, p1

    .line 32
    invoke-virtual {v2, v3, v10}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;Z)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/vkp/zzd;

    new-instance v4, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    invoke-direct {v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;-><init>()V

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zza([B)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    iget v2, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->rotation:I

    invoke-static {v2}, Lcom/google/mlkit/vision/vkp/zze;->zza(I)I

    move-result v2

    .line 35
    invoke-virtual {v4, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;

    iget v5, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->width:I

    iget v11, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->height:I

    invoke-direct {v2, v5, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;-><init>(II)V

    .line 36
    invoke-virtual {v4, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzcq;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    iget-wide v11, v0, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->timestampMillis:J

    mul-long/2addr v11, v6

    .line 37
    invoke-virtual {v4, v11, v12}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzc(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    .line 38
    invoke-virtual {v4, v8}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zze(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;

    invoke-virtual {v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbg;->zzd()Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;

    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzc(Lcom/google/android/libraries/vision/visionkit/pipeline/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzc()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    iget-object v3, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/vkp/zzd;

    invoke-virtual {v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;->zzd()Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzC()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/vision/visionkit/pipeline/zzc;

    iget-object v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd:Ljava/util/List;

    .line 42
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzc;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzc;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;

    iget-object v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd:Ljava/util/List;

    .line 44
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 45
    invoke-virtual {v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;->zzf()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzf:Lcom/google/android/libraries/intelligence/acceleration/zzb;

    .line 46
    invoke-virtual {v6, v5}, Lcom/google/android/libraries/intelligence/acceleration/zzb;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 47
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzg:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzuo;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;

    .line 49
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaya;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzun;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;->zzba:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;

    .line 50
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzaxr;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzary;)V

    .line 51
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/google/mlkit/vision/common/internal/VisionImageMetadataParcel;->getUprightRotationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-boolean v15, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzk:Z

    .line 53
    invoke-virtual {v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;->zza()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    move-object/from16 v16, v4

    goto/16 :goto_4

    .line 54
    :cond_8
    invoke-virtual {v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzd;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v9

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;

    .line 55
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblb;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblb;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;

    move-result-object v7

    .line 57
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblb;->zzh()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblb;->zzi()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblb;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblu;->zzf()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;->zzi()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 61
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkw;->zzf()Z

    move-result v5

    if-nez v5, :cond_a

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbkw;->zzg()Z

    move-result v5

    if-nez v5, :cond_a

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;->zzh()Z

    move-result v5

    if-nez v5, :cond_a

    .line 64
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbky;->zzg()Z

    move-result v5

    if-nez v5, :cond_a

    .line 65
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_a
    move v5, v10

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_7

    .line 66
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_3
    move-object/from16 v16, v3

    .line 53
    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    .line 67
    invoke-virtual {v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjq;

    move-result-object v5

    move v6, v9

    .line 68
    :goto_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjq;->zza()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 69
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjq;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;->zzd()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;

    move-result-object v8

    new-instance v10, Landroid/graphics/RectF;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zzc()I

    move-result v11

    int-to-float v11, v11

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zzd()I

    move-result v12

    int-to-float v12, v12

    .line 73
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zzc()I

    move-result v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zze()I

    move-result v14

    add-int/2addr v13, v14

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zzd()I

    move-result v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzgp;->zza()I

    move-result v8

    add-int/2addr v14, v8

    int-to-float v8, v13

    int-to-float v13, v14

    invoke-direct {v10, v11, v12, v8, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v0, :cond_c

    .line 75
    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_c
    new-instance v8, Landroid/graphics/Rect;

    .line 76
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 77
    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;->zzg()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 79
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;->zzc()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    :cond_d
    move-object v10, v4

    :goto_6
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    move v12, v9

    .line 80
    :goto_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;->zza()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 81
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjn;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;

    move-result-object v13

    .line 82
    invoke-static {v13}, Lcom/google/mlkit/vision/vkp/VkpImageLabel;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;)Lcom/google/mlkit/vision/vkp/VkpImageLabel;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    new-instance v7, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;

    .line 83
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v11

    invoke-direct {v7, v8, v10, v11}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpDetectedObject;-><init>(Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/util/List;)V

    .line 84
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;-><init>()V

    .line 85
    invoke-virtual {v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdf;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziq;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziq;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzit;

    .line 87
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzit;->zzc()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;

    .line 88
    invoke-static {v5}, Lcom/google/mlkit/vision/vkp/VkpImageLabel;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzha;)Lcom/google/mlkit/vision/vkp/VkpImageLabel;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;

    goto :goto_8

    :cond_11
    new-instance v2, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;

    .line 89
    invoke-static {}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v14

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpResults;-><init>(Lcom/google/mlkit/vision/vkp/VkpStatus;Ljava/util/List;Ljava/util/List;ZLjava/lang/Boolean;)V

    iput-boolean v9, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzk:Z

    return-object v2

    .line 66
    :cond_12
    new-instance v0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;->zzj()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;

    move-result-object v2

    invoke-direct {v0, v9, v4, v2}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;-><init>(ZLcom/google/mlkit/common/MlKitException;Ljava/util/Set;)V

    .line 91
    invoke-static {v0}, Lcom/google/mlkit/vision/vkp/VkpResults;->zza(Lcom/google/mlkit/vision/vkp/VkpStatus;)Lcom/google/mlkit/vision/vkp/VkpResults;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zza(Lcom/google/mlkit/common/MlKitException;)Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/vkp/VkpResults;->zza(Lcom/google/mlkit/vision/vkp/VkpStatus;)Lcom/google/mlkit/vision/vkp/VkpResults;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/google/mlkit/vision/vkp/VkpStatus;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    const-string v0, "com.google.perception"

    iget-boolean v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzj:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    const-string v3, ""

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "Failed to initialize detector. "

    if-nez v2, :cond_10

    :try_start_0
    iget-object v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb:Lcom/google/mlkit/vision/vkp/zzc;

    instance-of v8, v2, Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "PipelineManager"

    if-eqz v8, :cond_4

    .line 2
    :try_start_1
    check-cast v2, Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;

    .line 3
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;->zza()F

    move-result v0

    .line 4
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;->zzb()I

    move-result v8

    .line 5
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;->zzc()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 6
    invoke-static {v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzc(Landroid/content/Context;FI)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object v0

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 8
    invoke-direct {v1, v2, v6}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd(Lcom/google/mlkit/common/model/LocalModel;Z)[Ljava/lang/String;

    move-result-object v2

    aget-object v10, v2, v5

    aget-object v2, v2, v6

    .line 9
    invoke-direct {v1, v10}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v10

    iget-object v11, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 10
    invoke-static {v10, v0, v8, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;FILjava/lang/String;Landroid/content/Context;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object v0

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 12
    invoke-direct {v1, v2, v5}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd(Lcom/google/mlkit/common/model/LocalModel;Z)[Ljava/lang/String;

    move-result-object v2

    aget-object v10, v2, v5

    aget-object v2, v2, v6

    .line 13
    invoke-static {v10, v0, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zza(Ljava/lang/String;FILjava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object v0

    goto/16 :goto_4

    .line 14
    :cond_3
    invoke-virtual {v2}, Lcom/google/mlkit/common/model/LocalModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v2

    iget-object v10, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 15
    invoke-static {v2, v0, v8, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfx;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;FILjava/lang/String;Landroid/content/Context;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    move-result-object v0

    goto/16 :goto_4

    .line 16
    :cond_4
    check-cast v2, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;

    .line 17
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zza()F

    move-result v8

    .line 18
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzb()I

    move-result v10

    .line 19
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzc()Lcom/google/mlkit/common/model/LocalModel;

    move-result-object v11

    .line 20
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzg()Z

    move-result v12

    if-nez v12, :cond_5

    .line 21
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    :goto_0
    move-object v13, v8

    goto/16 :goto_1

    :cond_5
    if-nez v11, :cond_6

    .line 22
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    const-string v8, "mlkit_odt_default_classifier/labeler_with_validation.tflite"

    invoke-direct {v1, v8}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v8

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    move-result-object v8

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {v11}, Lcom/google/mlkit/common/model/LocalModel;->getAssetFilePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 25
    invoke-direct {v1, v11, v6}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd(Lcom/google/mlkit/common/model/LocalModel;Z)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v5

    aget-object v11, v11, v6

    iget-object v13, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 26
    invoke-direct {v1, v12}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v12

    .line 27
    invoke-static {v13, v12, v11, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Ljava/lang/String;FI)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    move-result-object v8

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {v11}, Lcom/google/mlkit/common/model/LocalModel;->getAbsoluteFilePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 29
    invoke-direct {v1, v11, v5}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd(Lcom/google/mlkit/common/model/LocalModel;Z)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v5

    aget-object v11, v11, v6

    .line 30
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    move-result-object v13

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 33
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_8

    .line 34
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzg(F)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 35
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 37
    :cond_9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    goto :goto_0

    :cond_a
    iget-object v12, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 38
    invoke-virtual {v11}, Lcom/google/mlkit/common/model/LocalModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-direct {v1, v11}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v11

    .line 39
    invoke-static {v12, v11, v3, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Ljava/lang/String;FI)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    move-result-object v8

    goto/16 :goto_0

    .line 40
    :goto_1
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzf()Z

    move-result v8

    const/4 v10, 0x2

    if-eq v6, v8, :cond_b

    move v8, v4

    goto :goto_2

    :cond_b
    move v8, v10

    :goto_2
    const-string v11, "mlkit_odt_localizer/localizer_with_validation.tflite"

    .line 41
    invoke-direct {v1, v11}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;

    move-result-object v12

    .line 42
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzf()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    .line 43
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzd()Ljava/lang/String;

    move-result-object v14

    .line 44
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zze()Ljava/lang/String;

    move-result-object v15

    .line 45
    invoke-virtual {v11, v14, v15, v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;

    move-result-object v11

    const-string v14, "Fetching acceleration allowlist"

    .line 46
    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzh:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;

    .line 47
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzd()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zze()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v14, v15, v5, v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzawp;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-object v0, v11

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    .line 50
    :goto_3
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzi()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v10, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzh()Z

    move-result v11

    const-wide/32 v14, 0x493e0

    move-object/from16 v16, v0

    .line 52
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzb(Landroid/content/Context;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;JLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v8}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzj(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 54
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzc(Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 56
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;->zza(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    .line 58
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;->zzb(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    .line 59
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    goto :goto_4

    :cond_d
    iget-object v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    .line 61
    invoke-virtual {v2}, Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;->zzh()Z

    move-result v2

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;

    move-result-object v11

    .line 63
    invoke-static {v5, v2, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v8}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzj(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    if-eqz v0, :cond_e

    .line 65
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 66
    :cond_e
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;->zzc()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzc(Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 68
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfi;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;->zzb(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;

    .line 69
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zzd(Lcom/google/android/libraries/vision/visionkit/pipeline/zzfh;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    .line 71
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;->zzC()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 72
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzg;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;->zza(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;

    iget-object v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza:Landroid/content/Context;

    new-instance v8, Ljava/io/File;

    .line 74
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v10, "com.google.mlkit.acceleration"

    invoke-direct {v8, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 76
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzd:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblh;

    move-result-object v10

    .line 78
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblh;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzblh;

    .line 79
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbli;

    .line 80
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "Failed to create acceleration storage dir"

    .line 81
    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_f
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;

    .line 83
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;->zza(Lcom/google/android/libraries/vision/visionkit/pipeline/zzf;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcf;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;

    new-instance v2, Lcom/google/mlkit/vision/vkp/zzd;

    .line 85
    invoke-direct {v2, v0}, Lcom/google/mlkit/vision/vkp/zzd;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcg;)V

    iput-object v2, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza()V

    .line 87
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const/4 v3, 0x5

    invoke-direct {v2, v7, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-static {v2}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zza(Lcom/google/mlkit/common/MlKitException;)Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v0

    return-object v0

    .line 85
    :cond_10
    :goto_5
    :try_start_2
    iget-object v0, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 88
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzh()V
    :try_end_2
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza()V

    .line 101
    invoke-static {}, Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;->zza()Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;->zzb()V

    iput-boolean v6, v1, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzj:Z

    .line 102
    invoke-static {}, Lcom/google/mlkit/vision/vkp/VkpStatus;->zzb()Lcom/google/mlkit/vision/vkp/VkpStatus;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    .line 89
    :try_start_3
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;->getRootCauseMessage()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzki;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;->getStatusCode()Lcom/google/android/libraries/vision/visionkit/pipeline/zzch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzch;->ordinal()I

    move-result v5

    new-instance v7, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;

    invoke-direct {v7, v6, v5}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;-><init>(II)V

    .line 92
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;

    .line 93
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;->getComponentStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/vision/visionkit/pipeline/zzag;

    .line 94
    invoke-virtual {v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzag;->zzc()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/vision/visionkit/pipeline/zzam;

    .line 95
    invoke-virtual {v7}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzam;->zzd()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tflite::support::TfLiteSupportStatus"

    .line 96
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eq v6, v8, :cond_12

    const/4 v8, 0x0

    goto :goto_7

    :cond_12
    move v8, v4

    .line 95
    :goto_7
    invoke-virtual {v7}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzam;->zza()I

    move-result v7

    new-instance v9, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;

    invoke-direct {v9, v8, v7}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus_VkpError;-><init>(II)V

    .line 97
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;

    goto :goto_6

    :cond_13
    new-instance v0, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;

    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzlc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzld;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3}, Lcom/google/mlkit/vision/vkp/AutoValue_VkpStatus;-><init>(ZLcom/google/mlkit/common/MlKitException;Ljava/util/Set;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza()V

    return-object v0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza()V

    .line 100
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzj:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzi()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcc;->zzd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzi:Lcom/google/mlkit/vision/vkp/zzd;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzj:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzk:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zzl:J

    .line 3
    invoke-virtual {p0}, Lcom/google/mlkit/vision/vkp/PipelineManager;->zza()V

    return-void
.end method

.method final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    const-string v2, "PipelineManager"

    const-string v3, "Failed to close asset model file."

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/vision/vkp/PipelineManager;->zze:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
