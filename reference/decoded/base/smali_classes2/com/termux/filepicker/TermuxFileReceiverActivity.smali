.class public Lcom/termux/filepicker/TermuxFileReceiverActivity;
.super Landroid/app/Activity;
.source "TermuxFileReceiverActivity.java"


# static fields
.field static final EDITOR_PROGRAM:Ljava/lang/String;

.field static final TERMUX_RECEIVEDIR:Ljava/lang/String;

.field static final URL_OPENER_PROGRAM:Ljava/lang/String;


# instance fields
.field mFinishOnDismissNameDialog:Z


# direct methods
.method public static synthetic $r8$lambda$Oj4gfl4EI-PQzpEEeYe9BYBeAeE(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7TWuI_KF0P5f1zjTu8vNv9SW2M(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$2(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwskFJLGE5Y24ecAtUlAaxc-UXU(Lcom/termux/filepicker/TermuxFileReceiverActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$showErrorDialogAndQuit$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jCvnHqTlLcNbDinTaAGoHvIk4jE(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$3(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBZpTbuZO6UAzzdrJWvQz75DqVQ(Lcom/termux/filepicker/TermuxFileReceiverActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$showErrorDialogAndQuit$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVC1aJXvhfOKsK69BHxrltdF8io(Lcom/termux/filepicker/TermuxFileReceiverActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/home/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin/termux-file-editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->EDITOR_PROGRAM:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->homePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin/termux-url-opener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->URL_OPENER_PROGRAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    return-void
.end method

.method static isSharedTextAnUrl(Ljava/lang/String;)Z
    .locals 1

    .line 41
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "magnet:\\?xt=urn:btih:.*?"

    .line 42
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$promptNameAndSave$2(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p2, Ljava/io/File;

    sget-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->EDITOR_PROGRAM:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    const-string p1, "The following file does not exist:\n$HOME/bin/termux-file-editor\n\nCreate this file as a script or a symlink - it will be called with the received file as only argument."

    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p2, v1}, Ljava/io/File;->setExecutable(Z)Z

    .line 132
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "file"

    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EXECUTE"

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    const-class p2, Lcom/termux/app/TermuxService;

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    new-array p2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "com.termux.execute.arguments"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$promptNameAndSave$3(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.EXECUTE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string p2, "com.termux.execute.cwd"

    sget-object v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-class p2, Lcom/termux/app/TermuxService;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$promptNameAndSave$4(Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$promptNameAndSave$5(Landroid/content/DialogInterface;)V
    .locals 0

    .line 150
    iget-boolean p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showErrorDialogAndQuit$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$showErrorDialogAndQuit$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method


# virtual methods
.method handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    .line 96
    const-string v0, "_display_name"

    const/4 v1, 0x1

    .line 98
    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 99
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 100
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 102
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz v1, :cond_0

    .line 99
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v0

    .line 108
    :goto_2
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to handle shared content:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleContentUri(uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "termux"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method handleUrlAndFinish(Ljava/lang/String;)V
    .locals 4

    .line 178
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/filepicker/TermuxFileReceiverActivity;->URL_OPENER_PROGRAM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const-string p1, "The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as only argument."

    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    .line 189
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EXECUTE"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    const-class v0, Lcom/termux/app/TermuxService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "com.termux.execute.arguments"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "android.intent.extra.TITLE"

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 55
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 59
    invoke-static {v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->isSharedTextAnUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleUrlAndFinish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_0
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    const-string v0, "Send action without content - nothing to save."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v1, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_6
    const-string v1, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_7
    const-string v0, "Unable to receive any file or URL."

    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    .line 117
    sget v1, Lcom/termux/R$string;->file_received_title:I

    sget v3, Lcom/termux/R$string;->file_received_edit_button:I

    new-instance v4, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    sget v5, Lcom/termux/R$string;->file_received_open_folder_button:I

    new-instance v6, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v8, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    new-instance v9, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    const/high16 v7, 0x1040000

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 155
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/filepicker/TermuxFileReceiverActivity;->TERMUX_RECEIVEDIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot create directory: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    return-object v2

    .line 161
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1000

    .line 163
    :try_start_1
    new-array v0, v0, [B

    .line 165
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error saving file:\n\n"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 172
    const-string p2, "termux"

    const-string v0, "Error saving file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method showErrorDialogAndQuit(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
