.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 202
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 206
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 207
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 208
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 209
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    const/16 p2, 0x800

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 213
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method
