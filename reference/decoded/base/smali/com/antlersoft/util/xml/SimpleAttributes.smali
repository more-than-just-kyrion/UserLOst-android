.class public Lcom/antlersoft/util/xml/SimpleAttributes;
.super Ljava/lang/Object;


# instance fields
.field private attr:Lorg/xml/sax/Attributes;

.field public defaultDouble:D

.field public defaultInt:I

.field public defaultString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultInt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultDouble:D

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultInt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultDouble:D

    iput-object p1, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    move-object v1, v0

    check-cast v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    const-string v3, ""

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public booleanValue(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/antlersoft/util/xml/SimpleAttributes;->booleanValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public booleanValue(Ljava/lang/Object;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public doubleValue(Ljava/lang/Object;)D
    .locals 2

    iget-wide v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultDouble:D

    invoke-virtual {p0, p1, v0, v1}, Lcom/antlersoft/util/xml/SimpleAttributes;->doubleValue(Ljava/lang/Object;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public doubleValue(Ljava/lang/Object;D)D
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public getAttributes()Lorg/xml/sax/Attributes;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method public intValue(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultInt:I

    invoke-virtual {p0, p1, v0}, Lcom/antlersoft/util/xml/SimpleAttributes;->intValue(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public intValue(Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method public longValue(Ljava/lang/Object;)J
    .locals 2

    iget v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultInt:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/antlersoft/util/xml/SimpleAttributes;->longValue(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public longValue(Ljava/lang/Object;J)J
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public setDefaultInt(I)V
    .locals 0

    iput p1, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultInt:I

    return-void
.end method

.method public stringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->defaultString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/antlersoft/util/xml/SimpleAttributes;->stringValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleAttributes;->attr:Lorg/xml/sax/Attributes;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method
