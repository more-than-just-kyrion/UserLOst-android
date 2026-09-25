.class Lcom/termux/terminal/TerminalSession$1;
.super Landroid/os/Handler;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/terminal/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mReceiveBuffer:[B

.field final synthetic this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 p1, 0x1000

    .line 109
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$1;->mReceiveBuffer:[B

    invoke-virtual {v1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 116
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 119
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->cleanupResources(I)V

    .line 122
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, v1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    .line 125
    const-string v0, ")"

    if-lez p1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\r\n[Process completed (signal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_2
    const-string p1, "\r\n[Process completed"

    .line 132
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - press Enter]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 136
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$1;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    :cond_3
    return-void
.end method
