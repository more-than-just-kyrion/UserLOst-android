.class public Lcom/iiordanov/bVNC/MostRecentBean;
.super Lcom/antlersoft/android/dbimpl/IdImplementationBase;
.source "MostRecentBean.java"

# interfaces
.implements Lcom/iiordanov/bVNC/IMostRecentBean;


# static fields
.field public static final GEN_COUNT:I = 0x4

.field public static GEN_CREATE:Ljava/lang/String; = "CREATE TABLE MOST_RECENT (_id INTEGER PRIMARY KEY AUTOINCREMENT,CONNECTION_ID INTEGER,SHOW_SPLASH_VERSION INTEGER,TEXT_INDEX INTEGER)"

.field public static final GEN_FIELD_CONNECTION_ID:Ljava/lang/String; = "CONNECTION_ID"

.field public static final GEN_FIELD_SHOW_SPLASH_VERSION:Ljava/lang/String; = "SHOW_SPLASH_VERSION"

.field public static final GEN_FIELD_TEXT_INDEX:Ljava/lang/String; = "TEXT_INDEX"

.field public static final GEN_FIELD__ID:Ljava/lang/String; = "_id"

.field public static final GEN_ID_CONNECTION_ID:I = 0x1

.field public static final GEN_ID_SHOW_SPLASH_VERSION:I = 0x2

.field public static final GEN_ID_TEXT_INDEX:I = 0x3

.field public static final GEN_ID__ID:I = 0x0

.field public static final GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "Lcom/iiordanov/bVNC/MostRecentBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEN_TABLE_NAME:Ljava/lang/String; = "MOST_RECENT"


# instance fields
.field private gen_CONNECTION_ID:J

.field private gen_SHOW_SPLASH_VERSION:J

.field private gen_TEXT_INDEX:J

.field private gen__Id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/iiordanov/bVNC/MostRecentBean$1;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/MostRecentBean$1;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/MostRecentBean;->GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

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

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [I

    .line 70
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 73
    const-string v1, "_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 75
    :cond_0
    const-string v1, "CONNECTION_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 76
    const-string v1, "SHOW_SPLASH_VERSION"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 77
    const-string v1, "TEXT_INDEX"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method

.method public Gen_getValues()Landroid/content/ContentValues;
    .locals 3

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    iget-wide v1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen__Id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-wide v1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_CONNECTION_ID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECTION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-wide v1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_SHOW_SPLASH_VERSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHOW_SPLASH_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-wide v1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_TEXT_INDEX:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEXT_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public Gen_populate(Landroid/content/ContentValues;)V
    .locals 2

    .line 103
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen__Id:J

    .line 104
    const-string v0, "CONNECTION_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_CONNECTION_ID:J

    .line 105
    const-string v0, "SHOW_SPLASH_VERSION"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_SHOW_SPLASH_VERSION:J

    .line 106
    const-string v0, "TEXT_INDEX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_TEXT_INDEX:J

    return-void
.end method

.method public Gen_populate(Landroid/database/Cursor;[I)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    aget v1, p2, v0

    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen__Id:J

    :cond_0
    const/4 v0, 0x1

    .line 88
    aget v1, p2, v0

    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_CONNECTION_ID:J

    :cond_1
    const/4 v0, 0x2

    .line 91
    aget v1, p2, v0

    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_SHOW_SPLASH_VERSION:J

    :cond_2
    const/4 v0, 0x3

    .line 94
    aget v1, p2, v0

    if-ltz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    aget p2, p2, v0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_TEXT_INDEX:J

    :cond_3
    return-void
.end method

.method public Gen_tableName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "MOST_RECENT"

    return-object v0
.end method

.method public getConnectionId()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_CONNECTION_ID:J

    return-wide v0
.end method

.method public getShowSplashVersion()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_SHOW_SPLASH_VERSION:J

    return-wide v0
.end method

.method public getTextIndex()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_TEXT_INDEX:J

    return-wide v0
.end method

.method public get_Id()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen__Id:J

    return-wide v0
.end method

.method public setConnectionId(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_CONNECTION_ID:J

    return-void
.end method

.method public setShowSplashVersion(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_SHOW_SPLASH_VERSION:J

    return-void
.end method

.method public setTextIndex(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen_TEXT_INDEX:J

    return-void
.end method

.method public set_Id(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/iiordanov/bVNC/MostRecentBean;->gen__Id:J

    return-void
.end method
