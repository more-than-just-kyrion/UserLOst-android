.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;
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

    .line 228
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 231
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decryptAndRecoverKey()Z

    return-void
.end method
