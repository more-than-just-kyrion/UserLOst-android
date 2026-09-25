.class public Lcom/antlersoft/android/contentxml/SqliteElement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antlersoft/util/xml/IElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/antlersoft/android/contentxml/SqliteElement$XmlSerializerHandler;,
        Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;,
        Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;,
        Lcom/antlersoft/android/contentxml/SqliteElement$StackContentHandler;
    }
.end annotation


# static fields
.field static final ROW_ELEMENT:Ljava/lang/String; = "row"

.field static final TABLE_ARRAY:[Ljava/lang/String;

.field static final TABLE_ELEMENT:Ljava/lang/String; = "table"

.field static final TABLE_NAME_ATTRIBUTE:Ljava/lang/String; = "table_name"


# instance fields
.field private _databaseTag:Ljava/lang/String;

.field _db:Lnet/sqlcipher/database/SQLiteDatabase;

.field private _replaceStrategy:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

.field private _tableNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/antlersoft/android/contentxml/SqliteElement;->TABLE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_databaseTag:Ljava/lang/String;

    sget-object p1, Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;->REPLACE_EXISTING:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_replaceStrategy:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    return-void
.end method

.method public static exportDbAsXmlToStream(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    new-instance p1, Lcom/antlersoft/android/contentxml/SqliteElement;

    const-string v1, "database"

    invoke-direct {p1, p0, v1}, Lcom/antlersoft/android/contentxml/SqliteElement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    new-instance p0, Lcom/antlersoft/android/contentxml/SqliteElement$XmlSerializerHandler;

    invoke-direct {p0, v0}, Lcom/antlersoft/android/contentxml/SqliteElement$XmlSerializerHandler;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p1, p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->writeToXML(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method public static importXmlStreamToDb(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/io/Reader;Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/antlersoft/android/contentxml/SqliteElement;

    const-string v1, "database"

    invoke-direct {v0, p0, v1}, Lcom/antlersoft/android/contentxml/SqliteElement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/antlersoft/android/contentxml/SqliteElement;->setReplaceStrategy(Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;)V

    new-instance p0, Lcom/antlersoft/android/contentxml/SqliteElement$StackContentHandler;

    invoke-direct {p0}, Lcom/antlersoft/android/contentxml/SqliteElement$StackContentHandler;-><init>()V

    invoke-virtual {v0, p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->readFromXML(Lcom/antlersoft/util/xml/IHandlerStack;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/antlersoft/android/contentxml/SqliteElement$StackContentHandler;->pushHandlerStack(Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-static {p1, p0}, Landroid/util/Xml;->parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method


# virtual methods
.method public addTable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getElementTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_databaseTag:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceStrategy()Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;
    .locals 1

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_replaceStrategy:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    return-object v0
.end method

.method getTableNames()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    sget-object v3, Lcom/antlersoft/android/contentxml/SqliteElement;->TABLE_ARRAY:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "sqlite_master"

    const-string v4, "type = \'table\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sqlite_sequence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_tableNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromXML(Lcom/antlersoft/util/xml/IHandlerStack;)Lorg/xml/sax/helpers/DefaultHandler;
    .locals 1

    new-instance v0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;

    invoke-direct {v0, p0, p1}, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;-><init>(Lcom/antlersoft/android/contentxml/SqliteElement;Lcom/antlersoft/util/xml/IHandlerStack;)V

    return-object v0
.end method

.method public removeTable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->getTableNames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReplaceStrategy(Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_replaceStrategy:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    return-void
.end method

.method public writeToXML(Lorg/xml/sax/ContentHandler;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->getElementTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {p1, v2, v2, v0, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->getTableNames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    new-instance v1, Lcom/antlersoft/util/xml/SimpleAttributes;

    invoke-direct {v1}, Lcom/antlersoft/util/xml/SimpleAttributes;-><init>()V

    const-string v3, "table_name"

    invoke-virtual {v1, v3, v4}, Lcom/antlersoft/util/xml/SimpleAttributes;->addValue(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/antlersoft/util/xml/SimpleAttributes;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v1

    const-string v11, "table"

    invoke-interface {p1, v2, v2, v11, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v3, p0, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :cond_0
    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    new-instance v4, Lcom/antlersoft/android/contentxml/ContentValuesElement;

    const-string v5, "row"

    invoke-direct {v4, v3, v5}, Lcom/antlersoft/android/contentxml/ContentValuesElement;-><init>(Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/antlersoft/android/contentxml/ContentValuesElement;->writeToXML(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {p1, v2, v2, v11}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->getElementTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
