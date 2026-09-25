.class public Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;
.super Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;
.source "ManualBookmarkGateway.java"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method private readGatewaySettings(Lcom/freerdp/freerdpcore/domain/ManualBookmark;Landroid/database/Cursor;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object p1

    .line 120
    const-string v0, "gateway_hostname"

    .line 121
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setHostname(Ljava/lang/String;)V

    .line 122
    const-string v0, "gateway_port"

    .line 123
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setPort(I)V

    .line 124
    const-string v0, "gateway_username"

    .line 125
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setUsername(Ljava/lang/String;)V

    .line 126
    const-string v0, "gateway_password"

    .line 127
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setPassword(Ljava/lang/String;)V

    .line 128
    const-string v0, "gateway_domain"

    .line 129
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setDomain(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/ContentValues;)V
    .locals 2

    .line 43
    check-cast p1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    .line 44
    const-string v0, "hostname"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "port"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getEnableGatewaySettings()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_gateway_settings"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getHostname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gateway_hostname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "gateway_port"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gateway_username"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gateway_password"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gateway_domain"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addBookmarkSpecificColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    const-string v0, "hostname"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "enable_gateway_settings"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "gateway_hostname"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "gateway_port"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "gateway_username"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "gateway_password"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "gateway_domain"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 1

    .line 32
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    return-object v0
.end method

.method public findByLabelOrHostname(Ljava/lang/String;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "label = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' OR hostname = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    .line 93
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public findByLabelOrHostnameLike(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label LIKE \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' OR hostname LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method protected getBookmarkTableName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "tbl_manual_bookmarks"

    return-object v0
.end method

.method protected readBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
    .locals 1

    .line 70
    check-cast p1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    .line 71
    const-string v0, "hostname"

    .line 72
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setHostname(Ljava/lang/String;)V

    .line 73
    const-string v0, "port"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setPort(I)V

    .line 75
    const-string v0, "enable_gateway_settings"

    .line 76
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setEnableGatewaySettings(Z)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->readGatewaySettings(Lcom/freerdp/freerdpcore/domain/ManualBookmark;Landroid/database/Cursor;)V

    return-void
.end method
