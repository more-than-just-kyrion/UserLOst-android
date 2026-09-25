.class public Lcom/trilead/ssh2/packets/PacketKexDHInit;
.super Ljava/lang/Object;
.source "PacketKexDHInit.java"


# instance fields
.field payload:[B

.field publicKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->publicKey:[B

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x1e

    .line 25
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 26
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->publicKey:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 27
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    return-object v0
.end method
