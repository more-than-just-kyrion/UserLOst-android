.class public interface abstract Lcom/antlersoft/util/xml/IElement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getElementTag()Ljava/lang/String;
.end method

.method public abstract readFromXML(Lcom/antlersoft/util/xml/IHandlerStack;)Lorg/xml/sax/helpers/DefaultHandler;
.end method

.method public abstract writeToXML(Lorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
