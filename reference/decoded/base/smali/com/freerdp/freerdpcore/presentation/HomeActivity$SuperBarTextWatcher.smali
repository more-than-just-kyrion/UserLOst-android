.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperBarTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;->findHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 373
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findByLabelOrHostnameLike(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {v2}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$400(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->replaceItems(Ljava/util/List;)V

    .line 375
    new-instance v0, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;-><init>()V

    .line 376
    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;->setLabel(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;->setHostname(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$400(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$400(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    move-result-object p1

    .line 383
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->replaceItems(Ljava/util/List;)V

    .line 384
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$400(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$500(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 387
    :goto_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
