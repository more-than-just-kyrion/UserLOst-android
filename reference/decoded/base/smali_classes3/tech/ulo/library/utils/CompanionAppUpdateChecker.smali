.class public final Ltech/ulo/library/utils/CompanionAppUpdateChecker;
.super Ljava/lang/Object;
.source "CompanionAppUpdateChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompanionAppUpdateChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompanionAppUpdateChecker.kt\ntech/ulo/library/utils/CompanionAppUpdateChecker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\"\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltech/ulo/library/utils/CompanionAppUpdateChecker;",
        "",
        "()V",
        "CHECK_INTERVAL_MS",
        "",
        "PREFS_NAME",
        "",
        "TAG",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "installedVersion",
        "Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;",
        "context",
        "Landroid/content/Context;",
        "packageName",
        "isUpdateRequired",
        "",
        "versionManifestUrl",
        "latestVersion",
        "url",
        "SemVer",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHECK_INTERVAL_MS:J

.field public static final INSTANCE:Ltech/ulo/library/utils/CompanionAppUpdateChecker;

.field private static final PREFS_NAME:Ljava/lang/String; = "companion_app_updates"

.field private static final TAG:Ljava/lang/String; = "CompanionAppUpdateChecker"

.field private static final httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker;

    invoke-direct {v0}, Ltech/ulo/library/utils/CompanionAppUpdateChecker;-><init>()V

    sput-object v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->INSTANCE:Ltech/ulo/library/utils/CompanionAppUpdateChecker;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->CHECK_INTERVAL_MS:J

    .line 32
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 33
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final installedVersion(Landroid/content/Context;Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
    .locals 1

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p2, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    invoke-virtual {p2, p1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;->parse(Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    invoke-direct {p1, v0, v0}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;-><init>(II)V

    :cond_1
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final latestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
    .locals 11

    .line 81
    const-string v0, "CompanionAppUpdateChecker"

    .line 0
    const-string v1, "latestVersion: HTTP "

    .line 81
    const-string v2, "companion_app_updates"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cachedVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cachedVersionTime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 86
    invoke-interface {p1, p2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-gtz v5, :cond_1

    .line 87
    sget-wide v9, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->CHECK_INTERVAL_MS:J

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    .line 88
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    invoke-virtual {p2, p1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;->parse(Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object v6

    :cond_0
    return-object v6

    .line 92
    :cond_1
    :try_start_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 93
    sget-object v7, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v7, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v5

    check-cast v7, Lokhttp3/Response;

    .line 94
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    .line 95
    invoke-virtual {v7}, Lokhttp3/Response;->isSuccessful()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v8, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 101
    invoke-interface {v7, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 102
    invoke-interface {v7, p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 103
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    sget-object p2, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    invoke-virtual {p2, v1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;->parse(Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 96
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object v1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;->parse(Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move-object p2, v6

    :goto_1
    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 93
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v5, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p2

    .line 107
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "latestVersion: failed to fetch "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    invoke-virtual {p2, p1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;->parse(Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object v6

    :cond_5
    move-object p2, v6

    :goto_2
    return-object p2
.end method


# virtual methods
.method public final isUpdateRequired(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionManifestUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->installedVersion(Landroid/content/Context;Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/utils/CompanionAppUpdateChecker;->latestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->getMajor()I

    move-result p1

    invoke-virtual {v0}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->getMajor()I

    move-result p2

    if-le p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
