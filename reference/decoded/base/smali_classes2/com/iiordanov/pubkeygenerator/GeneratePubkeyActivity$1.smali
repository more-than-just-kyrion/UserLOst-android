.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 147
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 150
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->rsa:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    const/16 p2, 0x300

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 153
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 154
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    const/16 p2, 0x800

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result v1

    rsub-int v1, v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 157
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 160
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    const-string p2, "RSA"

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputkeyType(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->dsa:I

    if-ne p2, p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    const/16 p2, 0x200

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 164
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 165
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 166
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result v1

    rsub-int v1, v1, 0x400

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 168
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 171
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    const-string p2, "DSA"

    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputkeyType(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
