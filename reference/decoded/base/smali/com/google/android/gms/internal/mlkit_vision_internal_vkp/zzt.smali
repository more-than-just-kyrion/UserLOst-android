.class public final Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;

.field private static final zzd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android."

    aput-object v2, v0, v1

    const-string v2, "com.google."

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "com.chrome."

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "com.nest."

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string v6, "com.waymo."

    aput-object v6, v0, v2

    const/4 v2, 0x5

    const-string v6, "com.waze"

    aput-object v6, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzb:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "media"

    aput-object v2, v0, v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "goldfish"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, ""

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v7, "ranchu"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "androidx.test.services.storage.runfiles"

    :goto_1
    aput-object v2, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-gt v2, v5, :cond_2

    const-string v2, "com.google.android.inputmethod.latin.inputcontent"

    goto :goto_2

    :cond_2
    move-object v2, v6

    :goto_2
    aput-object v2, v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v5, :cond_3

    const-string v6, "com.google.android.inputmethod.latin.dev.inputcontent"

    :cond_3
    aput-object v6, v0, v3

    const-string v1, "com.google.android.apps.docs.storage.legacy"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "android.resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "r"

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    goto/16 :goto_9

    :cond_1
    const-string v2, "content"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_a

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v6, 0x40

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    add-int/2addr v6, v5

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_4

    .line 30
    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzu;

    invoke-direct {v6, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzu;-><init>(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V

    .line 13
    invoke-static {p2, p0, v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zzc(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzu;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v6, v5, :cond_9

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_4

    .line 16
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 19
    invoke-virtual {p0, p1, p2, v6, v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p0

    if-eqz p0, :cond_8

    .line 20
    iget-boolean p0, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc:[Ljava/lang/String;

    .line 21
    array-length p2, p0

    move p2, v4

    :goto_0
    const/4 v5, 0x2

    if-ge p2, v5, :cond_5

    aget-object v5, p0, p2

    .line 22
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzd:[Ljava/lang/String;

    .line 23
    array-length p2, p0

    move p2, v4

    :goto_1
    const/4 v5, 0x3

    if-ge p2, v5, :cond_6

    aget-object v5, p0, p2

    .line 24
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzb:[Ljava/lang/String;

    :goto_2
    const/4 p2, 0x6

    if-ge v4, p2, :cond_8

    aget-object p2, p0, v4

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_7

    .line 26
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    .line 27
    :cond_7
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 30
    :cond_8
    :goto_4
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    goto/16 :goto_9

    .line 15
    :cond_9
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Can\'t open content uri."

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_a
    const-string v2, "file"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 32
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    .line 33
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzd(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    const-string v1, "/proc/"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 50
    const-string v1, "/data/misc/"

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zza(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;)Z

    .line 39
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    move v4, v5

    goto/16 :goto_8

    .line 41
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 42
    :cond_c
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 43
    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzm;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzf(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_6
    if-ge v3, v2, :cond_f

    aget-object v6, v1, v3

    if-eqz v6, :cond_e

    .line 46
    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzn;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzf(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    move v2, v4

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    if-eqz v3, :cond_10

    .line 48
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zzc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 49
    :cond_11
    :goto_8
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzs;)Z

    move-result p0

    if-ne v4, p0, :cond_12

    move-object p0, v0

    :goto_9
    return-object p0

    .line 36
    :cond_12
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "Can\'t open file: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Validation failed."

    .line 51
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zze(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 54
    throw p1

    :catch_1
    move-exception p0

    .line 55
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_internal_vkp/zzt;->zze(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    .line 56
    throw p0

    .line 54
    :cond_13
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Unsupported scheme"

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Content resolver returned null value."

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static zzd(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v1

    const-string v2, "Can\'t open file: "

    if-nez v1, :cond_1

    .line 7
    iget-wide v3, p0, Landroid/system/StructStat;->st_dev:J

    iget-wide v5, v0, Landroid/system/StructStat;->st_dev:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget-wide v3, p0, Landroid/system/StructStat;->st_ino:J

    iget-wide v0, v0, Landroid/system/StructStat;->st_ino:J

    cmp-long p0, v3, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/io/IOException;

    .line 4
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    .line 2
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static zze(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p1, p0}, Ljava/io/FileNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzf(Ljava/util/concurrent/Callable;)[Ljava/io/File;
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    throw p0
.end method
