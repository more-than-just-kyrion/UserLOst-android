.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalSession$SessionChangedCallback;
    }
.end annotation


# static fields
.field private static final MSG_NEW_INPUT:I = 0x1

.field private static final MSG_PROCESS_EXITED:I = 0x4


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field final mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

.field private final mCwd:Ljava/lang/String;

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field final mMainThreadHandler:Landroid/os/Handler;

.field final mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field mShellPid:I

.field private mTerminalFileDescriptor:I

.field final mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

.field private final mUtf8InputBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSession$SessionChangedCallback;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/termux/terminal/TerminalOutput;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 85
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v0, 0x5

    .line 87
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    .line 107
    new-instance v0, Lcom/termux/terminal/TerminalSession$1;

    invoke-direct {v0, p0}, Lcom/termux/terminal/TerminalSession$1;-><init>(Lcom/termux/terminal/TerminalSession;)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 147
    iput-object p5, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 149
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    return-void
.end method

.method private static wrapFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 4

    .line 51
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v1, 0x1

    .line 55
    :try_start_0
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    .line 58
    :catch_2
    :try_start_1
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "fd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 60
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 63
    :goto_1
    const-string v2, "termux"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method cleanupResources(I)V
    .locals 1

    .line 299
    monitor-enter p0

    const/4 v0, -0x1

    .line 300
    :try_start_0
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 301
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 306
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 307
    iget p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {p1}, Lcom/termux/terminal/JNI;->close(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 302
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clipboardText(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public finishIfRunning()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed sending SIGKILL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "termux"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getCwd()Ljava/lang/String;
    .locals 5

    .line 345
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 349
    :cond_0
    :try_start_0
    const-string v1, "/proc/%s/cwd/"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 352
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 355
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 359
    :goto_1
    const-string v1, "termux"

    const-string v3, "Error getting current directory"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v2
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public declared-synchronized getExitStatus()I
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initializeEmulator(II)V
    .locals 8

    .line 177
    new-instance v0, Lcom/termux/terminal/TerminalEmulator;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    .line 179
    new-array v0, v0, [I

    .line 180
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move-object v5, v0

    move v6, p2

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    const/4 p2, 0x0

    .line 181
    aget p2, v0, p2

    iput p2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 183
    invoke-static {p1}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 185
    new-instance p2, Lcom/termux/terminal/TerminalSession$2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TermSessionInputReader[pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 200
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession$2;->start()V

    .line 202
    new-instance p2, Lcom/termux/terminal/TerminalSession$3;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TermSessionOutputWriter[pid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 216
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession$3;->start()V

    .line 218
    new-instance p1, Lcom/termux/terminal/TerminalSession$4;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TermSessionWaiter[pid="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/termux/terminal/TerminalSession$4;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession$4;->start()V

    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    .line 316
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onBell()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 283
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {p1, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V

    goto :goto_0

    .line 160
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1}, Lcom/termux/terminal/JNI;->setPtyWindowSize(III)V

    .line 161
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->resize(II)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    :cond_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 5

    const v0, 0x10ffff

    if-gt p2, v0, :cond_5

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/16 v1, 0x1b

    aput-byte v1, p1, v0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_2

    :cond_2
    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 250
    aput-byte p2, v1, v2

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_3
    const v1, 0xffff

    if-gt p2, v1, :cond_4

    .line 253
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 v3, p1, 0x2

    shr-int/lit8 v4, p2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 255
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    and-int/lit8 p1, p2, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 257
    aput-byte p1, v1, v3

    goto :goto_2

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 v3, p1, 0x2

    shr-int/lit8 v4, p2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 262
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v4, p2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 264
    aput-byte v4, v1, v3

    add-int/lit8 p1, p1, 0x4

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 266
    aput-byte p2, v1, v2

    goto :goto_1

    .line 268
    :goto_2
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    invoke-virtual {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    return-void

    .line 238
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid code point: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
