.class public Lcom/iiordanov/bVNC/SentTextBean;
.super Lcom/antlersoft/android/dbimpl/IdImplementationBase;
.source "SentTextBean.java"

# interfaces
.implements Lcom/iiordanov/bVNC/ISentText;


# static fields
.field public static final GEN_COUNT:I = 0x2

.field public static GEN_CREATE:Ljava/lang/String; = "CREATE TABLE SENT_TEXT (_id INTEGER PRIMARY KEY AUTOINCREMENT,SENTTEXT TEXT)"

.field public static final GEN_FIELD_SENTTEXT:Ljava/lang/String; = "SENTTEXT"

.field public static final GEN_FIELD__ID:Ljava/lang/String; = "_id"

.field public static final GEN_ID_SENTTEXT:I = 0x1

.field public static final GEN_ID__ID:I = 0x0

.field public static final GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "Lcom/iiordanov/bVNC/SentTextBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEN_TABLE_NAME:Ljava/lang/String; = "SENT_TEXT"


# instance fields
.field private gen__Id:J

.field private gen_sentText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/iiordanov/bVNC/SentTextBean$1;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/SentTextBean$1;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/SentTextBean;->GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public Gen_columnIndices(Landroid/database/Cursor;)[I
    .locals 4

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [I

    .line 56
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 59
    const-string v1, "_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 61
    :cond_0
    const-string v1, "SENTTEXT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public Gen_getValues()Landroid/content/ContentValues;
    .locals 3

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    iget-wide v1, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen__Id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "SENTTEXT"

    iget-object v2, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen_sentText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public Gen_populate(Landroid/content/ContentValues;)V
    .locals 2

    .line 81
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen__Id:J

    .line 82
    const-string v0, "SENTTEXT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen_sentText:Ljava/lang/String;

    return-void
.end method

.method public Gen_populate(Landroid/database/Cursor;[I)V
    .locals 2

    const/4 v0, 0x0

    .line 69
    aget v1, p2, v0

    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen__Id:J

    :cond_0
    const/4 v0, 0x1

    .line 72
    aget v1, p2, v0

    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    aget p2, p2, v0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen_sentText:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public Gen_tableName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "SENT_TEXT"

    return-object v0
.end method

.method public getSentText()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen_sentText:Ljava/lang/String;

    return-object v0
.end method

.method public get_Id()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen__Id:J

    return-wide v0
.end method

.method public setSentText(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen_sentText:Ljava/lang/String;

    return-void
.end method

.method public set_Id(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/iiordanov/bVNC/SentTextBean;->gen__Id:J

    return-void
.end method
