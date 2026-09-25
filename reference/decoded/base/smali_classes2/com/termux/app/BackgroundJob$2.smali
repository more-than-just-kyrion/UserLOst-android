.class Lcom/termux/app/BackgroundJob$2;
.super Ljava/lang/Thread;
.source "BackgroundJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/BackgroundJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/BackgroundJob;

.field final synthetic val$errResult:Ljava/lang/StringBuilder;

.field final synthetic val$errThread:Ljava/lang/Thread;

.field final synthetic val$outResult:Ljava/lang/StringBuilder;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$pid:I

.field final synthetic val$processDescription:Ljava/lang/String;

.field final synthetic val$result:Landroid/os/Bundle;

.field final synthetic val$service:Lcom/termux/app/TermuxService;


# direct methods
.method constructor <init>(Lcom/termux/app/BackgroundJob;ILjava/lang/String;Ljava/lang/StringBuilder;Lcom/termux/app/TermuxService;Landroid/os/Bundle;Ljava/lang/Thread;Ljava/lang/StringBuilder;Landroid/app/PendingIntent;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/termux/app/BackgroundJob$2;->this$0:Lcom/termux/app/BackgroundJob;

    iput p2, p0, Lcom/termux/app/BackgroundJob$2;->val$pid:I

    iput-object p3, p0, Lcom/termux/app/BackgroundJob$2;->val$processDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/app/BackgroundJob$2;->val$outResult:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/termux/app/BackgroundJob$2;->val$service:Lcom/termux/app/TermuxService;

    iput-object p6, p0, Lcom/termux/app/BackgroundJob$2;->val$result:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/termux/app/BackgroundJob$2;->val$errThread:Ljava/lang/Thread;

    iput-object p8, p0, Lcom/termux/app/BackgroundJob$2;->val$errResult:Ljava/lang/StringBuilder;

    iput-object p9, p0, Lcom/termux/app/BackgroundJob$2;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/termux/app/BackgroundJob$2;->val$pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/termux/app/BackgroundJob$2;->val$processDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "termux-task"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$2;->this$0:Lcom/termux/app/BackgroundJob;

    iget-object v0, v0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 82
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/termux/app/BackgroundJob$2;->val$pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] stdout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/termux/app/BackgroundJob$2;->val$outResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    const-string v3, "Error reading output"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$2;->this$0:Lcom/termux/app/BackgroundJob;

    iget-object v0, v0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 97
    iget-object v3, p0, Lcom/termux/app/BackgroundJob$2;->val$service:Lcom/termux/app/TermuxService;

    iget-object v4, p0, Lcom/termux/app/BackgroundJob$2;->this$0:Lcom/termux/app/BackgroundJob;

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxService;->onBackgroundJobExited(Lcom/termux/app/BackgroundJob;)V

    if-nez v0, :cond_1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/termux/app/BackgroundJob$2;->val$pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] exited normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/termux/app/BackgroundJob$2;->val$pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] exited with code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/termux/app/BackgroundJob$2;->val$result:Landroid/os/Bundle;

    const-string v2, "stdout"

    iget-object v3, p0, Lcom/termux/app/BackgroundJob$2;->val$outResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/termux/app/BackgroundJob$2;->val$result:Landroid/os/Bundle;

    const-string v2, "exitCode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$2;->val$errThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 108
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$2;->val$result:Landroid/os/Bundle;

    const-string v1, "stderr"

    iget-object v2, p0, Lcom/termux/app/BackgroundJob$2;->val$errResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    const-string v1, "result"

    iget-object v2, p0, Lcom/termux/app/BackgroundJob$2;->val$result:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/termux/app/BackgroundJob$2;->val$pendingIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    .line 115
    :try_start_2
    iget-object v2, p0, Lcom/termux/app/BackgroundJob$2;->val$service:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
