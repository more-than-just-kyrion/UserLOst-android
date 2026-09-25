.class Lcom/iiordanov/bVNC/bVNC$3;
.super Ljava/lang/Object;
.source "bVNC.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/bVNC;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/bVNC;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/bVNC;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 135
    const-string p1, "androidVNC"

    const-string p2, "connectionType onItemSelected called"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iput p3, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    .line 137
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p2, p2, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    .line 138
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->save(Landroid/content/Context;)V

    .line 139
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/16 p2, 0x8

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    goto/16 :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 p3, 0x1

    const-string p4, ""

    const/4 p5, 0x0

    if-ne p1, p3, :cond_2

    .line 147
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1, p5}, Lcom/iiordanov/bVNC/bVNC;->setVisibilityOfSshWidgets(I)V

    .line 148
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1, p2}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$msetVisibilityOfUltraVncWidgets(Lcom/iiordanov/bVNC/bVNC;I)V

    .line 149
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    const-string p2, "localhost"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->address_caption_hint_tunneled:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 152
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->username_hint_optional:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 154
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/bVNC;->setVisibilityOfSshWidgets(I)V

    .line 155
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1, p5}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$msetVisibilityOfUltraVncWidgets(Lcom/iiordanov/bVNC/bVNC;I)V

    .line 156
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->address_caption_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 157
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->username_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget p1, p1, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    .line 159
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/bVNC;->setVisibilityOfSshWidgets(I)V

    .line 160
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgetrepeaterEntry(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgetpasswordText(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgetcheckboxKeepPassword(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->address_caption_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 165
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->username_hint_vencrypt:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_1

    .line 142
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/bVNC;->setVisibilityOfSshWidgets(I)V

    .line 143
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1, p2}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$msetVisibilityOfUltraVncWidgets(Lcom/iiordanov/bVNC/bVNC;I)V

    .line 144
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    iget-object p1, p1, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->address_caption_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 145
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-static {p1}, Lcom/iiordanov/bVNC/bVNC;->-$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->username_hint_optional:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 167
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$3;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/bVNC;->updateViewFromSelected()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
