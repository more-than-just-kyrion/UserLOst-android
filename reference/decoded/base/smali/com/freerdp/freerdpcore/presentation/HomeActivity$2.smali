.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 154
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 156
    invoke-static {p2}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isHostnameReference(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 157
    invoke-static {p2}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isPlaceholderReference(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    sget p3, Lcom/freerdp/freerdpcore/R$menu;->bookmark_context_menu:I

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/freerdp/freerdpcore/R$string;->menu_title_bookmark:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_1
    return-void
.end method
