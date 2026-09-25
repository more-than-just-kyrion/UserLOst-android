.class public abstract Lcom/antlersoft/android/dbimpl/IdImplementationBase;
.super Lcom/antlersoft/android/dbimpl/ImplementationBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antlersoft/android/dbimpl/ImplementationBase;-><init>()V

    return-void
.end method

.method private static removeId(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public Gen_delete(Lnet/sqlcipher/database/SQLiteDatabase;)I
    .locals 4

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_tableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->get_Id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id = ?"

    invoke-virtual {p1, v0, v2, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_tableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_getValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v1}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->removeId(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->set_Id(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public Gen_read(Lnet/sqlcipher/database/SQLiteDatabase;J)Z
    .locals 9

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_tableName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_columnIndices(Landroid/database/Cursor;)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_populate(Landroid/database/Cursor;[I)V

    goto :goto_0

    :cond_0
    move v8, p3

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public Gen_update(Lnet/sqlcipher/database/SQLiteDatabase;)I
    .locals 5

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_tableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->Gen_getValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v1}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->removeId(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;->get_Id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id = ?"

    invoke-virtual {p1, v0, v1, v3, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract get_Id()J
.end method

.method public abstract set_Id(J)V
.end method
