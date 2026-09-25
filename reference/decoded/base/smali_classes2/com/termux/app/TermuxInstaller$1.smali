.class Lcom/termux/app/TermuxInstaller$1;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$PREFIX_FILE:Ljava/io/File;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$1;->val$PREFIX_FILE:Ljava/io/File;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$run$1(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 141
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$run$2(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 136
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/termux/R$string;->bootstrap_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/termux/R$string;->bootstrap_error_body:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/termux/R$string;->bootstrap_error_abort:I

    new-instance v2, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/termux/R$string;->bootstrap_error_try_again:I

    new-instance v2, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$run$3(Landroid/app/ProgressDialog;)V
    .locals 0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxService;->filesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr-staging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-static {v1}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    :cond_0
    const/16 v2, 0x1fa0

    .line 79
    new-array v2, v2, [B

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->loadZipBytes()[B

    move-result-object v4

    .line 83
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 85
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 86
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SYMLINKS.txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 87
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 90
    const-string v8, "\u2190"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 91
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 93
    aget-object v6, v8, v7

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/app/TermuxInstaller;->-$$Nest$smensureDirectoryExists(Ljava/io/File;)V

    goto :goto_1

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed symlink line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v9, v8

    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    :goto_2
    invoke-static {v9}, Lcom/termux/app/TermuxInstaller;->-$$Nest$smensureDirectoryExists(Ljava/io/File;)V

    if-nez v4, :cond_1

    .line 107
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 109
    :goto_3
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 110
    invoke-virtual {v4, v2, v7, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 111
    :cond_5
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 112
    const-string v4, "bin/"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "libexec"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "lib/apt/methods"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1c0

    invoke-static {v4, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 107
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 119
    :cond_7
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 121
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 123
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 124
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$PREFIX_FILE:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 149
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_7

    .line 128
    :cond_9
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to rename staging folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No SYMLINKS.txt encountered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_2
    move-exception v0

    .line 83
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 133
    :try_start_a
    const-string v1, "termux"

    const-string v2, "Bootstrap error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    new-instance v2, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 149
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;)V

    :goto_7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_8
    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/termux/app/TermuxInstaller$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    throw v0
.end method
