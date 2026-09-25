.class public Lcom/trilead/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field can_recv_compress:Z

.field can_send_compress:Z

.field cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

.field recv_comp_buffer:[B

.field recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_comp:Lcom/trilead/ssh2/compression/ICompressor;

.field send_comp_buffer:[B

.field send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 31
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 37
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/16 v1, 0x8

    .line 45
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 53
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 57
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 59
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    .line 61
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    const/16 v0, 0x100

    .line 69
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    const/4 v1, 0x5

    .line 71
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 75
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 83
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 84
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {p1, v0, p2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 85
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    return-void
.end method

.method private static calculatePayloadLength(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 328
    const-string v0, ")"

    if-ltz p1, :cond_1

    if-ge p1, p0, :cond_0

    return p1

    .line 332
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive buffer too small ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", need "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 329
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Illegal padding_length in packet from remote ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMacMatches([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 339
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 340
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 343
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Remote sent corrupt MAC."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getPacketLength([BZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    const v0, 0x88b8

    if-gt p0, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    if-lt p0, v2, :cond_1

    return p0

    .line 352
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal packet size! ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 91
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 92
    invoke-interface {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v1

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    if-eqz p2, :cond_1

    .line 93
    invoke-interface {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array v0, p2, [B

    :cond_1
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 94
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 96
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/trilead/ssh2/compression/ICompressor;->getBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp_buffer:[B

    .line 122
    iget-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    invoke-interface {v0}, Lcom/trilead/ssh2/compression/ICompressor;->canCompressPreauth()Z

    move-result v0

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    :cond_0
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 109
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz p2, :cond_1

    .line 110
    invoke-interface {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array p2, p2, [B

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 111
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 113
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Lcom/trilead/ssh2/compression/ICompressor;->getBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 132
    iget-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    invoke-interface {v0}, Lcom/trilead/ssh2/compression/ICompressor;->canCompressPreauth()Z

    move-result v0

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    :cond_0
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .line 149
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public receiveMessage([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->isEncryptThenMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v0, v5, v4, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 264
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-static {v0, v2}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketLength([BZ)I

    move-result v0

    .line 266
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-interface {v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 267
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-interface {v5, v6, v4, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 269
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v5, p1, p2, v6}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->peekPlain([BII)I

    add-int v5, p2, v0

    .line 270
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v7, v6

    invoke-static {p1, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-interface {v5, p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 273
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-interface {v5, v6, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 275
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-static {v5, v6}, Lcom/trilead/ssh2/transport/TransportConnection;->checkMacMatches([B[B)V

    .line 277
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v5, v6, v3, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v0, v5, v4, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 280
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-static {v0, v4}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketLength([BZ)I

    move-result v0

    .line 283
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    .line 285
    invoke-static {p3, v0, v3}, Lcom/trilead/ssh2/transport/TransportConnection;->calculatePayloadLength(III)I

    move-result p3

    .line 287
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 288
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v0, v5, v4, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 290
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v6, v5

    invoke-virtual {v0, v5, v4, v6}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 293
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->isEncryptThenMac()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-interface {v0, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 295
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-interface {v0, v5, v4, v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 296
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 297
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-interface {v0, v1, v4, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 298
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-interface {v0, v1, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 300
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-static {v0, v1}, Lcom/trilead/ssh2/transport/TransportConnection;->checkMacMatches([B[B)V

    .line 304
    :cond_1
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 306
    sget-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes payload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    if-eqz v1, :cond_4

    .line 312
    filled-new-array {p3}, [I

    move-result-object p3

    .line 313
    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/compression/ICompressor;->uncompress([BI[I)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 318
    aget p1, p3, v4

    return p1

    .line 316
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error while inflating remote data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return p3
.end method

.method public resetReceiveSequenceNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    return-void
.end method

.method public resetSendSequenceNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    return-void
.end method

.method public sendMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-le p4, v1, :cond_1

    move p4, v1

    .line 159
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    array-length v2, v2

    array-length v3, p1

    add-int/lit16 v3, v3, 0x400

    if-ge v2, v3, :cond_2

    .line 161
    array-length v2, p1

    add-int/lit16 v2, v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/trilead/ssh2/compression/ICompressor;->compress([BII[B)I

    move-result p3

    .line 163
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->isEncryptThenMac()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    const/4 v4, 0x5

    if-eqz v1, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    add-int/2addr v5, p3

    add-int/2addr v5, p4

    .line 170
    iget p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v6, v5, p4

    if-eqz v6, :cond_6

    sub-int/2addr p4, v6

    add-int/2addr v5, p4

    :cond_6
    const/16 p4, 0x10

    if-ge v5, p4, :cond_7

    move v5, p4

    :cond_7
    if-eqz v1, :cond_8

    move p4, v2

    goto :goto_3

    :cond_8
    move p4, v4

    :goto_3
    add-int/2addr p4, p3

    sub-int p4, v5, p4

    .line 182
    iget-boolean v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    if-eqz v6, :cond_9

    move v6, v3

    :goto_4
    if-ge v6, p4, :cond_a

    .line 194
    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    .line 195
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v9, v7

    aput-byte v9, v8, v6

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    .line 196
    aput-byte v10, v8, v9

    add-int/lit8 v9, v6, 0x2

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    .line 197
    aput-byte v10, v8, v9

    add-int/lit8 v9, v6, 0x3

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    .line 198
    aput-byte v7, v8, v9

    add-int/lit8 v6, v6, 0x4

    goto :goto_4

    :cond_9
    move v6, v3

    :goto_5
    if-ge v6, p4, :cond_a

    .line 205
    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    move v1, v5

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v5, -0x4

    .line 213
    :goto_6
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v6, v3

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    .line 214
    aput-byte v5, v6, v2

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    const/4 v7, 0x2

    .line 215
    aput-byte v5, v6, v7

    int-to-byte v1, v1

    const/4 v5, 0x3

    .line 216
    aput-byte v1, v6, v5

    int-to-byte v1, p4

    .line 217
    aput-byte v1, v6, v0

    .line 219
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->isEncryptThenMac()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 220
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v1, v5, v3, v0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 221
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->startRecording()V

    .line 222
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v1, v5, v0, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    goto :goto_7

    .line 224
    :cond_c
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v1, v5, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 226
    :goto_7
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 227
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v1, v5, v3, p4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 229
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v1, :cond_e

    .line 231
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-interface {v1, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 233
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-interface {v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->isEncryptThenMac()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 234
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-interface {p4, v1, v3, v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 235
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->getRecordedOutput()[B

    move-result-object p4

    .line 236
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    array-length v1, p4

    invoke-interface {v0, p4, v3, v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    goto :goto_8

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-interface {v0, v1, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 239
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 240
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-interface {v0, v1, v3, p4}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 243
    :goto_8
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-interface {p4, v0, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 244
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v0

    invoke-virtual {p4, v0, v3, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 247
    :cond_e
    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 249
    sget-object p4, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Sent "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes payload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5a

    invoke-virtual {p4, p2, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 254
    :cond_f
    iget p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    return-void
.end method

.method public startCompression()V
    .locals 1

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    .line 362
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    return-void
.end method
