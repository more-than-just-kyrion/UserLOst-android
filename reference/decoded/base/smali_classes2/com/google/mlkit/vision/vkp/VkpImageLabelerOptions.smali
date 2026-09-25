.class public abstract Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;
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

.method public static from(FILcom/google/mlkit/common/model/LocalModel;)Lcom/google/mlkit/vision/vkp/VkpImageLabelerOptions;
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/vkp/zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mlkit/vision/vkp/zza;-><init>(FILcom/google/mlkit/common/model/LocalModel;)V

    return-object v0
.end method


# virtual methods
.method abstract zza()F
.end method

.method abstract zzb()I
.end method

.method abstract zzc()Lcom/google/mlkit/common/model/LocalModel;
.end method
