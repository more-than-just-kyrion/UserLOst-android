.class public Lcom/iiordanov/pubkeygenerator/XmlBuilder;
.super Ljava/lang/Object;
.source "XmlBuilder.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lcom/iiordanov/pubkeygenerator/XmlBuilder;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/iiordanov/pubkeygenerator/XmlBuilder;
    .locals 7

    if-nez p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, "<%s/>"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 42
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    const-string v1, "<%s>%s</%s>"

    if-eqz v0, :cond_5

    .line 43
    check-cast p2, Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v5, v0, v4

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7e

    if-le v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    .line 54
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    move-object p2, v2

    :cond_4
    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 55
    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    const-string v2, "<%s>%d</%s>"

    if-eqz v0, :cond_6

    .line 56
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Integer;

    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 57
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 58
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Long;

    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 59
    :cond_7
    instance-of v0, p2, [B

    if-eqz v0, :cond_8

    .line 60
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    check-cast p2, [B

    invoke-static {p2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    filled-new-array {p1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 61
    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
