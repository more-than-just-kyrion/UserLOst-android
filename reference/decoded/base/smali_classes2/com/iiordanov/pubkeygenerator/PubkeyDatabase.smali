.class public Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;
.super Lcom/iiordanov/pubkeygenerator/RobustSQLiteOpenHelper;
.source "PubkeyDatabase.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "pubkeys"

.field public static final DB_VERSION:I = 0x2

.field public static final FIELD_PUBKEY_CONFIRMUSE:Ljava/lang/String; = "confirmuse"

.field public static final FIELD_PUBKEY_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field public static final FIELD_PUBKEY_LIFETIME:Ljava/lang/String; = "lifetime"

.field public static final FIELD_PUBKEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final FIELD_PUBKEY_PRIVATE:Ljava/lang/String; = "private"

.field public static final FIELD_PUBKEY_PUBLIC:Ljava/lang/String; = "public"

.field public static final FIELD_PUBKEY_STARTUP:Ljava/lang/String; = "startup"

.field public static final FIELD_PUBKEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_TYPE_DSA:Ljava/lang/String; = "DSA"

.field public static final KEY_TYPE_IMPORTED:Ljava/lang/String; = "IMPORTED"

.field public static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field public static final TABLE_PUBKEYS:Ljava/lang/String; = "pubkeys"

.field public static final TAG:Ljava/lang/String; = "ConnectBot.PubkeyDatabase"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "pubkeys"

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->addTableName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 62
    const-string v2, "pubkeys"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/iiordanov/pubkeygenerator/RobustSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 64
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->context:Landroid/content/Context;

    return-void
.end method

.method private createPubkeyBean(Landroid/database/Cursor;)Lcom/iiordanov/pubkeygenerator/PubkeyBean;
    .locals 4

    .line 195
    new-instance v0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;

    invoke-direct {v0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;-><init>()V

    .line 197
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setId(J)V

    .line 198
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 199
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 200
    const-string v1, "private"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setPrivateKey([B)V

    .line 201
    const-string v1, "public"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setPublicKey([B)V

    .line 202
    const-string v1, "encrypted"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setEncrypted(Z)V

    .line 203
    const-string v1, "startup"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setStartup(Z)V

    .line 204
    const-string v1, "confirmuse"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setConfirmUse(Z)V

    .line 205
    const-string v1, "lifetime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setLifetime(I)V

    return-object v0
.end method

.method private getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iiordanov/pubkeygenerator/PubkeyBean;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 130
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 132
    const-string v1, "pubkeys"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 136
    const-string v2, "nickname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 137
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 138
    const-string v4, "private"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 139
    const-string v5, "public"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 140
    const-string v6, "encrypted"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 141
    const-string v7, "startup"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 142
    const-string v10, "confirmuse"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 143
    const-string v11, "lifetime"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 145
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 146
    new-instance v12, Lcom/iiordanov/pubkeygenerator/PubkeyBean;

    invoke-direct {v12}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;-><init>()V

    .line 148
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setId(J)V

    .line 149
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setPrivateKey([B)V

    .line 152
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setPublicKey([B)V

    .line 153
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v13, :cond_0

    move v13, v14

    goto :goto_1

    :cond_0
    move v13, v15

    :goto_1
    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setEncrypted(Z)V

    .line 154
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_1

    move v13, v14

    goto :goto_2

    :cond_1
    move v13, v15

    :goto_2
    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setStartup(Z)V

    .line 155
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_2

    goto :goto_3

    :cond_2
    move v14, v15

    :goto_3
    invoke-virtual {v12, v14}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setConfirmUse(Z)V

    .line 156
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setLifetime(I)V

    .line 158
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v9
.end method


# virtual methods
.method public allPubkeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iiordanov/pubkeygenerator/PubkeyBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0, v0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allValues(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v1, 0x2

    .line 218
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    const-string v2, "pubkeys"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 224
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public deletePubkey(Lcom/iiordanov/pubkeygenerator/PubkeyBean;)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "pubkeys"

    const-string v2, "_id = ?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public findPubkeyById(J)Lcom/iiordanov/pubkeygenerator/PubkeyBean;
    .locals 9

    .line 174
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v0, 0x1

    .line 176
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 177
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 176
    const-string v1, "pubkeys"

    const/4 v2, 0x0

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 183
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->createPubkeyBean(Landroid/database/Cursor;)Lcom/iiordanov/pubkeygenerator/PubkeyBean;

    move-result-object p2

    .line 186
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p2
.end method

.method public getAllStartPubkeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iiordanov/pubkeygenerator/PubkeyBean;",
            ">;"
        }
    .end annotation

    .line 124
    const-string v0, "startup = 1 AND encrypted = 0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNickname(J)Ljava/lang/String;
    .locals 10

    .line 238
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v0, 0x2

    .line 239
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v9, "nickname"

    aput-object v9, v2, v0

    new-array v4, v0, [Ljava/lang/String;

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 239
    const-string v1, "pubkeys"

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 244
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 247
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/iiordanov/pubkeygenerator/RobustSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    const-string v0, "CREATE TABLE pubkeys (_id INTEGER PRIMARY KEY, nickname TEXT, type TEXT, private BLOB, public BLOB, encrypted INTEGER, startup INTEGER, confirmuse INTEGER DEFAULT 0, lifetime INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onRobustUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const-string p2, "ALTER TABLE pubkeys ADD COLUMN confirmuse INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string p2, "ALTER TABLE pubkeys ADD COLUMN lifetime INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public savePubkey(Lcom/iiordanov/pubkeygenerator/PubkeyBean;)Lcom/iiordanov/pubkeygenerator/PubkeyBean;
    .locals 6

    .line 306
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "pubkeys"

    if-lez v2, :cond_0

    .line 312
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 313
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "_id = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 319
    invoke-virtual {p1, v1, v2}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setId(J)V

    .line 322
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p1
.end method
