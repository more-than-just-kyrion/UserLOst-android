.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 110
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->getSectionForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Clicked on item id "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p5}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " in section "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "HomeActivity"

    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p3, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p3}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$100(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isManualBookmarkReference(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 120
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isHostnameReference(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isPlaceholderReference(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 136
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getPlaceholder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "add_bookmark"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    new-instance p1, Landroid/content/Intent;

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-virtual {p2, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string p4, "conRef"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-virtual {p2, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$200(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$200(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_1
    return-void
.end method
