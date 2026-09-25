.class public Lcom/undatech/opaque/util/ConnectionLoader;
.super Ljava/lang/Object;
.source "ConnectionLoader.java"


# static fields
.field private static TAG:Ljava/lang/String; = "ConnectionLoader"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appContext:Landroid/content/Context;

.field private connectionPreferenceFiles:[Ljava/lang/String;

.field private connectionsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private connectionsInSharedPrefs:Z

.field private numConnections:I

.field private permissionsManager:Lcom/iiordanov/util/PermissionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->numConnections:I

    .line 32
    iput-object p1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->appContext:Landroid/content/Context;

    .line 33
    iput-boolean p3, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsInSharedPrefs:Z

    .line 34
    iput-object p2, p0, Lcom/undatech/opaque/util/ConnectionLoader;->activity:Landroid/app/Activity;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsById:Ljava/util/Map;

    .line 36
    new-instance p1, Lcom/iiordanov/util/PermissionsManager;

    invoke-direct {p1}, Lcom/iiordanov/util/PermissionsManager;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    .line 37
    invoke-virtual {p0}, Lcom/undatech/opaque/util/ConnectionLoader;->load()V

    return-void
.end method

.method private loadFromDatabase()V
    .locals 6

    .line 50
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    iget-object v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const-string v3, "CONNECTION_BEAN"

    sget-object v4, Lcom/iiordanov/bVNC/ConnectionBean;->newInstance:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {v1, v3, v2, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->getAll(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 55
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->numConnections:I

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/undatech/opaque/util/ConnectionLoader;->TAG:Ljava/lang/String;

    const-string v2, "No connections in the database"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/undatech/opaque/Connection;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/undatech/opaque/Connection;->setRuntimeId(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsById:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    return-void
.end method

.method private loadFromSharedPrefs()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->appContext:Landroid/content/Context;

    const-string v1, "generalSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    const-string v1, "connections"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/undatech/opaque/util/ConnectionLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading connections from this list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 73
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionPreferenceFiles:[Ljava/lang/String;

    .line 75
    array-length v0, v0

    iput v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->numConnections:I

    .line 76
    :goto_0
    iget v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->numConnections:I

    if-ge v2, v0, :cond_0

    .line 77
    new-instance v0, Lcom/undatech/opaque/ConnectionSettings;

    iget-object v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionPreferenceFiles:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/undatech/opaque/ConnectionSettings;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->setRuntimeId(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->appContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->load(Landroid/content/Context;)V

    .line 80
    sget-object v1, Lcom/undatech/opaque/util/ConnectionLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding label: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsById:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getConnectionPreferenceFiles()[Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionPreferenceFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionsById()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/Connection;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsById:Ljava/util/Map;

    return-object v0
.end method

.method public getNumConnections()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->numConnections:I

    return v0
.end method

.method public isConnectionsInSharedPrefs()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsInSharedPrefs:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    iget-object v1, p0, Lcom/undatech/opaque/util/ConnectionLoader;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 42
    iget-boolean v0, p0, Lcom/undatech/opaque/util/ConnectionLoader;->connectionsInSharedPrefs:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/undatech/opaque/util/ConnectionLoader;->loadFromSharedPrefs()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/undatech/opaque/util/ConnectionLoader;->loadFromDatabase()V

    :goto_0
    return-void
.end method
