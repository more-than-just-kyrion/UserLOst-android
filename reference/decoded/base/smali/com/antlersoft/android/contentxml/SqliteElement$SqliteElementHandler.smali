.class Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/antlersoft/android/contentxml/SqliteElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteElementHandler"
.end annotation


# static fields
.field private static final INSERT_FAILED:J = -0x1L


# instance fields
.field private _currentTable:Ljava/lang/String;

.field private _lastRow:Landroid/content/ContentValues;

.field private _stack:Lcom/antlersoft/util/xml/IHandlerStack;

.field final synthetic this$0:Lcom/antlersoft/android/contentxml/SqliteElement;


# direct methods
.method public constructor <init>(Lcom/antlersoft/android/contentxml/SqliteElement;Lcom/antlersoft/util/xml/IHandlerStack;)V
    .locals 0

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_stack:Lcom/antlersoft/util/xml/IHandlerStack;

    return-void
.end method

.method private saveLastRow()V
    .locals 7

    const-string v0, "Failed to insert row in "

    iget-object v1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    iget-object v2, v2, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    iget-object v4, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v1, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    sget-object v2, Lcom/antlersoft/android/contentxml/SqliteElement$1;->$SwitchMap$com$antlersoft$android$contentxml$SqliteElement$ReplaceStrategy:[I

    iget-object v3, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    invoke-virtual {v3}, Lcom/antlersoft/android/contentxml/SqliteElement;->getReplaceStrategy()Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    iget-object v0, v0, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v0, v2, v4, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    iget-object v0, v0, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    iget-object v3, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " after emptying"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->saveLastRow()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->saveLastRow()V

    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "table_name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    invoke-virtual {p1}, Lcom/antlersoft/android/contentxml/SqliteElement;->getTableNames()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    invoke-virtual {p1}, Lcom/antlersoft/android/contentxml/SqliteElement;->getReplaceStrategy()Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    move-result-object p1

    sget-object p3, Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;->REPLACE_ALL:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->this$0:Lcom/antlersoft/android/contentxml/SqliteElement;

    iget-object p1, p1, Lcom/antlersoft/android/contentxml/SqliteElement;->_db:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object p3, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_currentTable:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "table_name not found in table element."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "row"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    new-instance v1, Lcom/antlersoft/android/contentxml/ContentValuesElement;

    iget-object v2, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_lastRow:Landroid/content/ContentValues;

    invoke-direct {v1, v2, v0}, Lcom/antlersoft/android/contentxml/ContentValuesElement;-><init>(Landroid/content/ContentValues;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antlersoft/android/contentxml/SqliteElement$SqliteElementHandler;->_stack:Lcom/antlersoft/util/xml/IHandlerStack;

    invoke-virtual {v1, v3}, Lcom/antlersoft/android/contentxml/ContentValuesElement;->readFromXML(Lcom/antlersoft/util/xml/IHandlerStack;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/antlersoft/util/xml/IHandlerStack;->startWithHandler(Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_3
    :goto_0
    return-void
.end method
