.class public Lcom/iiordanov/bVNC/Database;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field static final CURRVERS:I = 0x1f5

.field static final DBV_0_5_0:I = 0xc

.field static final DBV_1_2_0:I = 0x14

.field static final DBV_1_5_0:I = 0x16

.field static final DBV_1_6_0:I = 0x123

.field static final DBV_1_7_0:I = 0x124

.field static final DBV_1_8_0:I = 0x125

.field static final DBV_1_9_0:I = 0x134

.field static final DBV_2_0_0:I = 0x135

.field static final DBV_2_1_0:I = 0x149

.field static final DBV_2_1_1:I = 0x14f

.field static final DBV_2_1_2:I = 0x150

.field static final DBV_2_1_3:I = 0x168

.field static final DBV_2_1_4:I = 0x16f

.field static final DBV_2_1_5:I = 0x176

.field static final DBV_2_1_6:I = 0x1af

.field static final DBV_2_1_7:I = 0x1f5

.field public static final TAG:Ljava/lang/String;

.field private static dbName:Ljava/lang/String; = "VncDatabase"

.field private static password:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 59
    sget-object v0, Lcom/iiordanov/bVNC/Database;->dbName:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1f5

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 60
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    return-void
.end method

.method private deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    return-object v0
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .locals 0

    .line 91
    sput-object p0, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeDatabasePassword(Ljava/lang/String;)Z
    .locals 10

    .line 96
    const-string v0, "-BAK"

    sget-object v1, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 98
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v4, "-temp"

    invoke-direct {p0, v3, v4}, Lcom/iiordanov/bVNC/Database;->deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v5, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 105
    sget-object v5, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v6, "Previous database unencrypted, encrypting."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v5, "encrypted"

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    sget-object v5, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v6, "Previous database encrypted, decrypting."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v5, "plaintext"

    goto :goto_0

    .line 113
    :cond_1
    sget-object v5, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v6, "Previous database encrypted, rekeying."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v5, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "PRAGMA key = \'%s\'"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    .line 117
    sget-object v5, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "PRAGMA rekey = \'%s\'"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    move-object v5, v7

    :goto_0
    if-eqz v5, :cond_2

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v5, p1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "ATTACH DATABASE \'%s\' AS %s KEY \'%s\'"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 123
    const-string v6, "select sqlcipher_export(\'%s\')"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 124
    const-string v6, "DETACH DATABASE \'%s\'"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 126
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 127
    sget-object v6, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Done exporting to: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 131
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, v7, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v6

    .line 132
    invoke-virtual {v6, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->setVersion(I)V

    .line 133
    invoke-virtual {v6}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/iiordanov/bVNC/Database;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/iiordanov/bVNC/Database;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v7, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    .line 149
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-direct {p0, v3, v0}, Lcom/iiordanov/bVNC/Database;->deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 152
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/iiordanov/bVNC/Database;->moveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-direct {p0, v3, v0}, Lcom/iiordanov/bVNC/Database;->deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    return v5

    .line 156
    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/iiordanov/bVNC/Database;->deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    .line 159
    throw v1

    .line 136
    :catch_1
    invoke-direct {p0, v3, v4}, Lcom/iiordanov/bVNC/Database;->deleteTempDatabase(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 161
    :cond_2
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 162
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/Database;->close()V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .line 83
    sget-object v0, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .line 79
    sget-object v0, Lcom/iiordanov/bVNC/Database;->password:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/iiordanov/bVNC/AbstractConnectionBean;->GEN_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/iiordanov/bVNC/MostRecentBean;->GEN_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/iiordanov/bVNC/MetaList;->GEN_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->GEN_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/iiordanov/bVNC/SentTextBean;->GEN_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "INSERT INTO META_LIST VALUES ( 1, \'DEFAULT\')"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    const/16 p3, 0xc

    const/16 v0, 0x14

    if-ne p2, p3, :cond_0

    .line 186
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 12 to 20"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN CONNECTIONTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHSERVER TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPORT INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHUSER TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPASSWORD TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN KEEPSSHPASSWORD BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPUBKEY TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPRIVKEY TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHPASSPHRASE TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN USESSHPUBKEY BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHHOSTKEY TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDOS INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMAND TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDTIMEOUT INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN USESSHREMOTECOMMAND BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_0
    const/16 p3, 0x16

    if-ne p2, v0, :cond_1

    .line 221
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 20 to 22"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN USEDPADASARROWS BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN ROTATEDPAD BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN USEPORTRAIT BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_1
    const/16 v0, 0x123

    if-ne p2, p3, :cond_2

    .line 232
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 22 to 291"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SSHREMOTECOMMANDTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXENABLED BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXCOMMAND TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXRESTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXWIDTH INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXHEIGHT INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXSESSIONTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXSESSIONPROG TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXRANDFILENM TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXUNIXPW BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_2
    const/16 p3, 0x124

    if-ne p2, v0, :cond_3

    .line 259
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 291 to 292"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN AUTOXUNIXAUTH BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_3
    const/16 v0, 0x125

    if-ne p2, p3, :cond_4

    .line 266
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 292 to 293"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN EXTRAKEYSTOGGLETYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_4
    const/16 p3, 0x134

    if-ne p2, v0, :cond_5

    .line 273
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 293 to 308"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN PREFENCODING INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_5
    const/16 v0, 0x135

    if-ne p2, p3, :cond_6

    .line 280
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 308 to 309"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPDOMAIN TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPRESTYPE INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPWIDTH INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPHEIGHT INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN RDPCOLOR INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN REMOTEFX BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN DESKTOPBACKGROUND BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN FONTSMOOTHING BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN DESKTOPCOMPOSITION BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN WINDOWCONTENTS BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN MENUANIMATION BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN VISUALSTYLES BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_6
    const/16 p3, 0x149

    if-ne p2, v0, :cond_7

    .line 309
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 309 to 329"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN CACERT TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN CACERTPATH TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN TLSPORT INTEGER"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN CERTSUBJECT TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_7
    const/16 v0, 0x14f

    if-ne p2, p3, :cond_8

    .line 322
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 329 to 335"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLESOUND BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_8
    const/16 p3, 0x150

    if-ne p2, v0, :cond_9

    .line 329
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 335 to 336"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN VIEWONLY BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_9
    const/16 v0, 0x168

    if-ne p2, p3, :cond_a

    .line 336
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 336 to 360"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN CONSOLEMODE BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN REDIRECTSDCARD BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_a
    const/16 p3, 0x16f

    if-ne p2, v0, :cond_b

    .line 345
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 360 to 367"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN LAYOUTMAP TEXT DEFAULT \'English (US)\'"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_b
    const/16 v0, 0x176

    if-ne p2, p3, :cond_c

    .line 352
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 367 to 374"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLERECORDING BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN REMOTESOUNDTYPE INTEGER DEFAULT 2"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v0

    :cond_c
    const/16 p3, 0x1af

    if-ne p2, v0, :cond_d

    .line 361
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string v0, "Doing upgrade from 374 to 430"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN FILENAME TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN X509KEYSIGNATURE TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN SCREENSHOTFILENAME TEXT"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_d
    if-ne p2, p3, :cond_e

    .line 372
    sget-object p2, Lcom/iiordanov/bVNC/Database;->TAG:Ljava/lang/String;

    const-string p3, "Doing upgrade from 430 to 501"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLEGFX BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string p2, "ALTER TABLE CONNECTION_BEAN ADD COLUMN ENABLEGFXH264 BOOLEAN DEFAULT FALSE"

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_e
    return-void
.end method
