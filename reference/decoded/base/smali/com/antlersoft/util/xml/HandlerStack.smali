.class public Lcom/antlersoft/util/xml/HandlerStack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antlersoft/util/xml/IHandlerStack;


# instance fields
.field private m_handler_stack:Ljava/util/Stack;

.field private m_reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_handler_stack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    return-void
.end method


# virtual methods
.method public popHandlerStack()V
    .locals 2

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_handler_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_handler_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_handler_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/helpers/DefaultHandler;

    iget-object v1, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v1, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    return-void
.end method

.method public pushHandlerStack(Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_handler_stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/antlersoft/util/xml/HandlerStack;->m_reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    return-void
.end method

.method public startWithHandler(Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/antlersoft/util/xml/HandlerStack;->pushHandlerStack(Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
