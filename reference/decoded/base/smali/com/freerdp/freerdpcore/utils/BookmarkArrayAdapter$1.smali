.class Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;
.super Ljava/lang/Object;
.source "BookmarkArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;->this$0:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    const-string v1, "conRef"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;->this$0:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;->this$0:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
