.class public abstract Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Lcom/google/mlkit/vision/vkp/zzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(ZZZZFILcom/google/mlkit/common/model/LocalModel;)Lcom/google/mlkit/vision/vkp/VkpObjectDetectorOptions;
    .locals 11

    if-nez p6, :cond_0

    .line 1
    const-string v0, "object-detection"

    goto :goto_0

    :cond_0
    const-string v0, "object-detection-custom"

    :goto_0
    move-object v8, v0

    new-instance v10, Lcom/google/mlkit/vision/vkp/zzb;

    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/mlkit/vision/vkp/zzb;-><init>(ZZZZFILcom/google/mlkit/common/model/LocalModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method abstract zza()F
.end method

.method abstract zzb()I
.end method

.method abstract zzc()Lcom/google/mlkit/common/model/LocalModel;
.end method

.method abstract zzd()Ljava/lang/String;
.end method

.method abstract zze()Ljava/lang/String;
.end method

.method abstract zzf()Z
.end method

.method abstract zzg()Z
.end method

.method abstract zzh()Z
.end method

.method abstract zzi()Z
.end method
