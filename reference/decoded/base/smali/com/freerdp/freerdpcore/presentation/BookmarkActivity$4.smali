.class Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 695
    const-class v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    return-void
.end method

.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;->this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 699
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;->this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    .line 700
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 699
    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 703
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 705
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object p1

    .line 708
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getQuickConnectHistoryGateway()Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;

    move-result-object p2

    .line 709
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/services/QuickConnectHistoryGateway;->removeHistoryItem(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 720
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->update(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->insert(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)V

    .line 724
    :goto_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;->this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V

    :cond_1
    return-void
.end method
