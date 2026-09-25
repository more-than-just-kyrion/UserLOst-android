.class Lcom/undatech/opaque/AdvancedSettingsActivity$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/AdvancedSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/AdvancedSettingsActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$1;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

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

    .line 132
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$1;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetlayoutMapSpinner(Lcom/undatech/opaque/AdvancedSettingsActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$1;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetlayoutMapSpinner(Lcom/undatech/opaque/AdvancedSettingsActivity;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$1;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetlayoutMapSpinner(Lcom/undatech/opaque/AdvancedSettingsActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 138
    iget-object p2, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$1;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {p2}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/AdvancedSettingsActivity;)Lcom/undatech/opaque/ConnectionSettings;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/undatech/opaque/ConnectionSettings;->setLayoutMap(Ljava/lang/String;)V

    :cond_1
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
