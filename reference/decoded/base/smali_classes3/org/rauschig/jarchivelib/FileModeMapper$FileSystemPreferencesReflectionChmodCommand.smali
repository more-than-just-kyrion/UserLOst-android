.class public Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;
.super Ljava/lang/Object;
.source "FileModeMapper.java"

# interfaces
.implements Lorg/rauschig/jarchivelib/FileModeMapper$ChmodCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/FileModeMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSystemPreferencesReflectionChmodCommand"
.end annotation


# static fields
.field private static method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    sget-object v0, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "java.util.prefs.FileSystemPreferences"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 150
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "chmod"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;->method:Ljava/lang/reflect/Method;

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    :cond_0
    sget-object v0, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public chmod(ILjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
