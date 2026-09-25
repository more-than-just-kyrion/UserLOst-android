.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    const-string v0, "/m/0jbk"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    return-void
.end method

.method public static zza(Landroid/content/Context;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzi(Landroid/content/res/AssetManager;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;

    move-result-object p2

    const/4 v1, 0x0

    .line 3
    invoke-static {p2, p3, p1, p4, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzb(Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zze(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zze(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    :cond_0
    return-object v0
.end method

.method public static zzb(Landroid/content/Context;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;JLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzi(Landroid/content/res/AssetManager;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;

    move-result-object p2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zze(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdu;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    move-result-object p4

    .line 4
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;

    move-result-object p5

    .line 5
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcu;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;

    move-result-object v1

    const-string v2, "MobileObjectLocalizerV3_1TfLiteClient"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;->zza(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;

    const-wide/32 v2, 0x493e0

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;->zzb(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;->zza(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzco;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;

    .line 11
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;->zza(Lcom/google/android/libraries/vision/visionkit/pipeline/zzcv;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzeb;

    .line 12
    invoke-virtual {p5}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p5

    check-cast p5, Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;

    .line 13
    invoke-virtual {p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzh(Lcom/google/android/libraries/vision/visionkit/pipeline/zzec;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 15
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zze(Ljava/lang/String;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    :cond_0
    if-eqz p6, :cond_1

    .line 16
    invoke-virtual {p4, p6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzf(Z)I

    move-result p0

    const/4 p5, 0x1

    .line 17
    invoke-virtual {p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzf(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjy;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzi(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzjy;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 19
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzby;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    move-result-object p5

    const/4 p6, 0x0

    .line 20
    invoke-virtual {p5, p6}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;->zzc(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    .line 21
    invoke-virtual {p5, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;->zzb(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    const p0, 0x3e4ccccd    # 0.2f

    .line 22
    invoke-virtual {p5, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;->zzd(F)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    const/4 p0, 0x0

    .line 23
    invoke-virtual {p5, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;->zza(F)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    const/4 p0, 0x3

    .line 24
    invoke-virtual {p5, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;->zze(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;

    .line 25
    invoke-virtual {p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzg(Lcom/google/android/libraries/vision/visionkit/pipeline/zzbw;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;->zze()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;

    move-result-object p0

    .line 27
    invoke-static {p2, p3, p1, p0, p6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    move-result-object p0

    .line 28
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;->zzb(Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzdr;

    return-object p4
.end method

.method public static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Ljava/lang/String;FI)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zze(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzg(F)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzh(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzkz;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhm;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;

    return-object p0
.end method

.method public static zze(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "odt/v1"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to create accelerator directory "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MlKitObjectsConfigs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzf(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;ZLcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzap;->zza()Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    move-result-object p4

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p4, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzd(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    move-result-object v1

    const-string v2, "MobileSSDTfLiteClient"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    .line 6
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    .line 7
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbhv;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsk;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;

    .line 9
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsq;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    .line 10
    invoke-virtual {p4, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zziy;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhg;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhf;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhd;->zza()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;

    move-result-object p1

    const-string p3, "/m/0bl9f"

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;

    const p3, 0x3eeb851f    # 0.46f

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;->zzb(F)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhf;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhc;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhf;

    .line 16
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhf;)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    xor-int/lit8 p0, p2, 0x1

    .line 17
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzh(Z)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzf(Z)I

    move-result p0

    .line 18
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    const p0, 0x3f19999a    # 0.6f

    .line 19
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zze(F)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    const/4 p0, 0x0

    .line 20
    invoke-virtual {p4, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;->zzg(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zzao;

    return-object p4
.end method

.method private static zzh(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p1, "mlkit_odt_localizer/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;->zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(Landroid/content/res/AssetManager;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;
    .locals 4

    .line 1
    const-string v0, "mlkit_odt_localizer"

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbso;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;->zzd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;->zzc(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzhp;->zzc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsn;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbso;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbso;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;

    const-string p1, "mobile_object_localizer_labelmap"

    .line 8
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzh(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;

    const-string p1, "mobile_object_localizer_3_1_anchors.pb"

    .line 9
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzfy;->zzh(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbdd;)Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsl;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbef;->zzt()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbel;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MlKitObjectsConfigs"

    const-string v0, "Failed to create detector client options: "

    .line 11
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;->zzf()Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzbsm;

    move-result-object p0

    return-object p0
.end method
