.class public Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "FreeRDPSuggestionProvider.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "content://com.freerdp.afreerdp.services.freerdpsuggestionprovider"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addBookmarksToCursor(Ljava/util/ArrayList;Landroid/database/MatrixCursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;",
            "Landroid/database/MatrixCursor;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 89
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 90
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v3

    check-cast v3, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {v3}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getManualBookmarkReference(J)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/freerdp/freerdpcore/R$drawable;->icon_star_on:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 95
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addHistoryToCursor(Ljava/util/ArrayList;Landroid/database/MatrixCursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;",
            "Landroid/database/MatrixCursor;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 104
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 105
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostnameReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/freerdp/freerdpcore/R$drawable;->icon_star_off:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createResultCursor(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    .line 120
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "suggest_text_1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "suggest_text_2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "suggest_intent_data"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "suggest_icon_2"

    aput-object v3, v1, v2

    .line 124
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    if-lez v0, :cond_0

    .line 129
    invoke-direct {p0, p1, v2}, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->addHistoryToCursor(Ljava/util/ArrayList;Landroid/database/MatrixCursor;)V

    .line 130
    invoke-direct {p0, p2, v2}, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->addBookmarksToCursor(Ljava/util/ArrayList;Landroid/database/MatrixCursor;)V

    :cond_0
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 42
    const-string p1, "vnd.android.cursor.item/vnd.freerdp.remote"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    if-eqz p4, :cond_0

    .line 61
    array-length p1, p4

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p4, p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 65
    :goto_0
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;->findHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 70
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findByLabelOrHostnameLike(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findAll()Ljava/util/ArrayList;

    move-result-object p1

    .line 74
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/freerdp/freerdpcore/services/FreeRDPSuggestionProvider;->createResultCursor(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
