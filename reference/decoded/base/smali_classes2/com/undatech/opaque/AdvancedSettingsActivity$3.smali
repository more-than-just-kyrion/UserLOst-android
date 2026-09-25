.class Lcom/undatech/opaque/AdvancedSettingsActivity$3;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 183
    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$3;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$3;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/AdvancedSettingsActivity;)Lcom/undatech/opaque/ConnectionSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionSettings;->getRdpHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity$3;->this$0:Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-static {v0}, Lcom/undatech/opaque/AdvancedSettingsActivity;->-$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/AdvancedSettingsActivity;)Lcom/undatech/opaque/ConnectionSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setRdpHeight(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
