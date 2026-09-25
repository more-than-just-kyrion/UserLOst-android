.class public Lcom/antlersoft/util/xml/SimpleHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field public static m_empty:Lorg/xml/sax/helpers/AttributesImpl;


# instance fields
.field private m_current_attributes:Lorg/xml/sax/Attributes;

.field private m_current_element_contents:Ljava/lang/StringBuffer;

.field private m_current_element_name:Ljava/lang/String;

.field private m_element:Lcom/antlersoft/util/xml/ISimpleElement;

.field private m_impl:Lcom/antlersoft/util/xml/IHandlerStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sput-object v0, Lcom/antlersoft/util/xml/SimpleHandler;->m_empty:Lorg/xml/sax/helpers/AttributesImpl;

    return-void
.end method

.method public constructor <init>(Lcom/antlersoft/util/xml/IHandlerStack;Lcom/antlersoft/util/xml/ISimpleElement;)V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_impl:Lcom/antlersoft/util/xml/IHandlerStack;

    iput-object p2, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_element:Lcom/antlersoft/util/xml/ISimpleElement;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static writeElement(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/antlersoft/util/xml/SimpleHandler;->m_empty:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, ""

    invoke-interface {p0, v1, p1, v1, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v0, 0x0

    array-length v2, p2

    invoke-interface {p0, p2, v0, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    invoke-interface {p0, v1, p1, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_element:Lcom/antlersoft/util/xml/ISimpleElement;

    iget-object p2, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_name:Ljava/lang/String;

    iget-object p3, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_attributes:Lorg/xml/sax/Attributes;

    invoke-interface {p1, p2, p3, v0}, Lcom/antlersoft/util/xml/ISimpleElement;->gotElement(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_impl:Lcom/antlersoft/util/xml/IHandlerStack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/antlersoft/util/xml/IHandlerStack;->popHandlerStack()V

    :cond_0
    return-void
.end method

.method getAttributes()Lorg/xml/sax/Attributes;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_attributes:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method getContents()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method getCurrentElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_name:Ljava/lang/String;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p2, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_name:Ljava/lang/String;

    iget-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_element_contents:Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/util/xml/SimpleHandler;->m_current_attributes:Lorg/xml/sax/Attributes;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
