.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 224
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$mstartEntropyGather(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    return-void
.end method
