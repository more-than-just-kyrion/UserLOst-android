.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;
.super Ljava/lang/Object;
.source "PacketUserauthRequestInteractive.java"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field submethods:[Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x32

    .line 31
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 32
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 34
    const-string v1, "keyboard-interactive"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 35
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    return-object v0
.end method
