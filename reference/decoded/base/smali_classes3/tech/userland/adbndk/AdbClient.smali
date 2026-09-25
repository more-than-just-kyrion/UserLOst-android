.class public final Ltech/userland/adbndk/AdbClient;
.super Ljava/lang/Object;
.source "AdbClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/userland/adbndk/AdbClient$CommandResult;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "adbndk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    invoke-static {p0}, Ltech/userland/adbndk/AdbClient;->nativeConnect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Ljava/lang/String;)Z
    .locals 2

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_0
    invoke-static {p0}, Ltech/userland/adbndk/AdbClient;->nativeInit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native nativeConnect(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;)Z
.end method

.method private static native nativePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeRunCommand([Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeRunCommandChecked([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private static native nativeShutdown()V
.end method

.method public static pair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {p0, p1}, Ltech/userland/adbndk/AdbClient;->nativePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs runCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0}, Ltech/userland/adbndk/AdbClient;->nativeRunCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs runCommandChecked([Ljava/lang/String;)Ltech/userland/adbndk/AdbClient$CommandResult;
    .locals 3

    .line 97
    invoke-static {p0}, Ltech/userland/adbndk/AdbClient;->nativeRunCommandChecked([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 100
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 104
    :goto_0
    new-instance v1, Ltech/userland/adbndk/AdbClient$CommandResult;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Ltech/userland/adbndk/AdbClient$CommandResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static shutdown()V
    .locals 0

    .line 145
    invoke-static {}, Ltech/userland/adbndk/AdbClient;->nativeShutdown()V

    return-void
.end method
