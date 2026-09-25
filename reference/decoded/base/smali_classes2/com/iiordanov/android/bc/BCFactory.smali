.class public Lcom/iiordanov/android/bc/BCFactory;
.super Ljava/lang/Object;
.source "BCFactory.java"


# static fields
.field private static _theInstance:Lcom/iiordanov/android/bc/BCFactory;

.field private static scaleDetectorConstructorArgs:[Ljava/lang/Class;


# instance fields
.field private bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

.field private bcGestureDetector:Lcom/iiordanov/android/bc/IBCGestureDetector;

.field private bcHaptic:Lcom/iiordanov/android/bc/IBCHaptic;

.field private bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;

.field private bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/iiordanov/android/bc/BCFactory;

    invoke-direct {v0}, Lcom/iiordanov/android/bc/BCFactory;-><init>()V

    sput-object v0, Lcom/iiordanov/android/bc/BCFactory;->_theInstance:Lcom/iiordanov/android/bc/BCFactory;

    const/4 v0, 0x2

    .line 172
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/iiordanov/android/bc/OnScaleGestureListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iiordanov/android/bc/BCFactory;->scaleDetectorConstructorArgs:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iiordanov/android/bc/BCFactory;
    .locals 1

    .line 253
    sget-object v0, Lcom/iiordanov/android/bc/BCFactory;->_theInstance:Lcom/iiordanov/android/bc/BCFactory;

    return-object v0
.end method


# virtual methods
.method public getBCActivityManager()Lcom/iiordanov/android/bc/IBCActivityManager;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

    if-nez v0, :cond_2

    .line 49
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/iiordanov/android/bc/BCFactory;->getSdkVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCActivityManagerV5"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCActivityManager;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    :try_start_2
    new-instance v1, Lcom/iiordanov/android/bc/BCActivityManagerDefault;

    invoke-direct {v1}, Lcom/iiordanov/android/bc/BCActivityManagerDefault;-><init>()V

    iput-object v1, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :cond_0
    new-instance v0, Lcom/iiordanov/android/bc/BCActivityManagerDefault;

    invoke-direct {v0}, Lcom/iiordanov/android/bc/BCActivityManagerDefault;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

    .line 70
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 72
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcActivityManager:Lcom/iiordanov/android/bc/IBCActivityManager;

    return-object v0
.end method

.method public getBCGestureDetector()Lcom/iiordanov/android/bc/IBCGestureDetector;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcGestureDetector:Lcom/iiordanov/android/bc/IBCGestureDetector;

    if-nez v0, :cond_1

    .line 85
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcGestureDetector:Lcom/iiordanov/android/bc/IBCGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCGestureDetectorDefault"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCGestureDetector;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcGestureDetector:Lcom/iiordanov/android/bc/IBCGestureDetector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcGestureDetector:Lcom/iiordanov/android/bc/IBCGestureDetector;

    return-object v0
.end method

.method public getBCHaptic()Lcom/iiordanov/android/bc/IBCHaptic;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcHaptic:Lcom/iiordanov/android/bc/IBCHaptic;

    if-nez v0, :cond_1

    .line 113
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcHaptic:Lcom/iiordanov/android/bc/IBCHaptic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCHapticDefault"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCHaptic;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcHaptic:Lcom/iiordanov/android/bc/IBCHaptic;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcHaptic:Lcom/iiordanov/android/bc/IBCHaptic;

    return-object v0
.end method

.method public getBCMotionEvent()Lcom/iiordanov/android/bc/IBCMotionEvent;
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;

    if-nez v0, :cond_2

    .line 139
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/iiordanov/android/bc/BCFactory;->getSdkVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 147
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCMotionEvent5"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCMotionEvent;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCMotionEvent4"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCMotionEvent;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 162
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 166
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 168
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcMotionEvent:Lcom/iiordanov/android/bc/IBCMotionEvent;

    return-object v0
.end method

.method public getScaleGestureDetector(Landroid/content/Context;Lcom/iiordanov/android/bc/OnScaleGestureListener;)Lcom/iiordanov/android/bc/IBCScaleGestureDetector;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/iiordanov/android/bc/BCFactory;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.bVNC.input.MyScaleGestureDetector"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/iiordanov/android/bc/BCFactory;->scaleDetectorConstructorArgs:[Ljava/lang/Class;

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/android/bc/IBCScaleGestureDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error instantiating ScaleGestureDetector"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 201
    :cond_0
    new-instance p1, Lcom/iiordanov/android/bc/DummyScaleGestureDetector;

    invoke-direct {p1}, Lcom/iiordanov/android/bc/DummyScaleGestureDetector;-><init>()V

    :goto_0
    return-object p1
.end method

.method getSdkVersion()I
    .locals 1

    .line 33
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStorageContext()Lcom/iiordanov/android/bc/IBCStorageContext;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;

    if-nez v0, :cond_2

    .line 214
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/iiordanov/android/bc/BCFactory;->getSdkVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 222
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCStorageContext8"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCStorageContext;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.iiordanov.android.bc.BCStorageContext7"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/android/bc/IBCStorageContext;

    iput-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 237
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 241
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 243
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/android/bc/BCFactory;->bcStorageContext:Lcom/iiordanov/android/bc/IBCStorageContext;

    return-object v0
.end method
