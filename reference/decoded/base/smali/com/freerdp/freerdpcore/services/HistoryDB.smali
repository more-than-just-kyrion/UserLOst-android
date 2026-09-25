.class public Lcom/freerdp/freerdpcore/services/HistoryDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HistoryDB.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "history.db"

.field private static final DB_VERSION:I = 0x1

.field public static final QUICK_CONNECT_TABLE_COL_ITEM:Ljava/lang/String; = "item"

.field public static final QUICK_CONNECT_TABLE_COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final QUICK_CONNECT_TABLE_NAME:Ljava/lang/String; = "quick_connect_history"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    const-string v2, "history.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 34
    const-string v0, "CREATE TABLE quick_connect_history (item TEXT PRIMARY KEY, timestamp INTEGER);"

    .line 39
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
