.class public interface abstract Lcom/antlersoft/util/xml/IHandlerStack;
.super Ljava/lang/Object;


# virtual methods
.method public abstract popHandlerStack()V
.end method

.method public abstract pushHandlerStack(Lorg/xml/sax/helpers/DefaultHandler;)V
.end method

.method public abstract startWithHandler(Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
