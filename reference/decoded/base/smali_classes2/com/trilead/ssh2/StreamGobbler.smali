.class public Lcom/trilead/ssh2/StreamGobbler;
.super Ljava/io/InputStream;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private exception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private isClosed:Z

.field private isEOF:Z

.field private read_pos:I

.field private synchronizer:Ljava/lang/Object;

.field private t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

.field private write_pos:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbuffer(Lcom/trilead/ssh2/StreamGobbler;)[B
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetis(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetread_pos(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsynchronizer(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwrite_pos(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbuffer(Lcom/trilead/ssh2/StreamGobbler;[B)V
    .locals 0

    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexception(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisEOF(Lcom/trilead/ssh2/StreamGobbler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputread_pos(Lcom/trilead/ssh2/StreamGobbler;I)V
    .locals 0

    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwrite_pos(Lcom/trilead/ssh2/StreamGobbler;I)V
    .locals 0

    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 111
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    const/16 v1, 0x800

    .line 114
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    .line 115
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 116
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    .line 120
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    .line 121
    new-instance p1, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;-><init>(Lcom/trilead/ssh2/StreamGobbler;)V

    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->setDaemon(Z)V

    .line 123
    iget-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    invoke-virtual {p1}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->start()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_0

    .line 163
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 161
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This StreamGobbler is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v1, :cond_0

    .line 177
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 179
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 180
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 181
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_3

    .line 133
    :catch_0
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_2

    .line 135
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 138
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_0

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    return v0

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    :try_start_2
    throw v1

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 152
    monitor-exit v0

    return v1

    .line 131
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This StreamGobbler is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/StreamGobbler;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    .line 190
    array-length v1, p1

    if-gt v0, v1, :cond_6

    if-ltz v0, :cond_6

    array-length v0, p1

    if-gt p2, v0, :cond_6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_5

    .line 201
    :catch_0
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_3

    .line 203
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 206
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    return p1

    .line 211
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :cond_2
    :try_start_2
    throw v1

    :cond_3
    sub-int/2addr v2, v1

    if-le v2, p3, :cond_4

    goto :goto_1

    :cond_4
    move p3, v2

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 226
    monitor-exit v0

    return p3

    .line 199
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This StreamGobbler is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 191
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
