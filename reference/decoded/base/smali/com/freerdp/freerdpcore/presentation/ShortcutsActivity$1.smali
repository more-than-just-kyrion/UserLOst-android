.class Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$1;
.super Ljava/lang/Object;
.source "ShortcutsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    sget p3, Lcom/freerdp/freerdpcore/R$id;->bookmark_text1:I

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

    invoke-static {p3, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->access$000(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
