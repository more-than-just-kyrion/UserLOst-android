.class Lcom/iiordanov/bVNC/MainConfiguration$4;
.super Ljava/lang/Object;
.source "MainConfiguration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/MainConfiguration;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/MainConfiguration;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

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

    .line 199
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iput p3, p1, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    .line 200
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget-object p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget p2, p2, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    .line 201
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget-object p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object p2, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->save(Landroid/content/Context;)V

    .line 202
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/MainConfiguration;->setVisibilityOfSshWidgets(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 205
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/MainConfiguration;->setVisibilityOfSshWidgets(I)V

    .line 206
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget-object p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget-object p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    const-string p2, "localhost"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$4;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MainConfiguration;->updateViewFromSelected()V

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
