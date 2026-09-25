.class public abstract Lcom/antlersoft/android/dbimpl/ImplementationBase;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Gen_populateFromCursor(Landroid/database/Cursor;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/antlersoft/android/dbimpl/ImplementationBase;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "TE;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/antlersoft/android/dbimpl/NewInstance;->get()Lcom/antlersoft/android/dbimpl/ImplementationBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/antlersoft/android/dbimpl/ImplementationBase;->Gen_columnIndices(Landroid/database/Cursor;)[I

    move-result-object v1

    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/antlersoft/android/dbimpl/NewInstance;->get()Lcom/antlersoft/android/dbimpl/ImplementationBase;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/antlersoft/android/dbimpl/ImplementationBase;->Gen_populate(Landroid/database/Cursor;[I)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static getAll(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/antlersoft/android/dbimpl/ImplementationBase;",
            ">(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/antlersoft/android/dbimpl/ImplementationBase;->Gen_populateFromCursor(Landroid/database/Cursor;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public abstract Gen_columnIndices(Landroid/database/Cursor;)[I
.end method

.method public abstract Gen_getValues()Landroid/content/ContentValues;
.end method

.method public abstract Gen_populate(Landroid/content/ContentValues;)V
.end method

.method public abstract Gen_populate(Landroid/database/Cursor;[I)V
.end method

.method public abstract Gen_tableName()Ljava/lang/String;
.end method
