.class abstract Lcom/iiordanov/pubkeygenerator/AbstractBean;
.super Ljava/lang/Object;
.source "AbstractBean.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBeanName()Ljava/lang/String;
.end method

.method public abstract getValues()Landroid/content/ContentValues;
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .line 34
    new-instance v0, Lcom/iiordanov/pubkeygenerator/XmlBuilder;

    invoke-direct {v0}, Lcom/iiordanov/pubkeygenerator/XmlBuilder;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/AbstractBean;->getBeanName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<%s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->append(Ljava/lang/String;)Lcom/iiordanov/pubkeygenerator/XmlBuilder;

    .line 38
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/AbstractBean;->getValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lcom/iiordanov/pubkeygenerator/XmlBuilder;

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/AbstractBean;->getBeanName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "</%s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->append(Ljava/lang/String;)Lcom/iiordanov/pubkeygenerator/XmlBuilder;

    .line 46
    invoke-virtual {v0}, Lcom/iiordanov/pubkeygenerator/XmlBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
