.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 167
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$3;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$3;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->access$200(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
