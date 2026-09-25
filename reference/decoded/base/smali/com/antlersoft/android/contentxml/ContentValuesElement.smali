.class public Lcom/antlersoft/android/contentxml/ContentValuesElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antlersoft/util/xml/IElement;
.implements Lcom/antlersoft/util/xml/ISimpleElement;


# instance fields
.field private _elementTag:Ljava/lang/String;

.field private _values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/ContentValuesElement;->_values:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/antlersoft/android/contentxml/ContentValuesElement;->_elementTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/ContentValuesElement;->_elementTag:Ljava/lang/String;

    return-object v0
.end method

.method public gotElement(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/ContentValuesElement;->_values:Landroid/content/ContentValues;

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readFromXML(Lcom/antlersoft/util/xml/IHandlerStack;)Lorg/xml/sax/helpers/DefaultHandler;
    .locals 1

    new-instance v0, Lcom/antlersoft/util/xml/SimpleHandler;

    invoke-direct {v0, p1, p0}, Lcom/antlersoft/util/xml/SimpleHandler;-><init>(Lcom/antlersoft/util/xml/IHandlerStack;Lcom/antlersoft/util/xml/ISimpleElement;)V

    return-object v0
.end method

.method public writeToXML(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/antlersoft/util/xml/SimpleAttributes;

    invoke-direct {v0}, Lcom/antlersoft/util/xml/SimpleAttributes;-><init>()V

    iget-object v1, p0, Lcom/antlersoft/android/contentxml/ContentValuesElement;->_values:Landroid/content/ContentValues;

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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/antlersoft/util/xml/SimpleAttributes;->addValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/ContentValuesElement;->getElementTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/antlersoft/util/xml/SimpleAttributes;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p1, v2, v2, v1, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/ContentValuesElement;->getElementTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
