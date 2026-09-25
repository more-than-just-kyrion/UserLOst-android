.class Lcom/undatech/opaque/ConnectionGridActivity$3;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/ConnectionGridActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/ConnectionGridActivity;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/ConnectionGridActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 139
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetconnectionLoader(Lcom/undatech/opaque/ConnectionGridActivity;)Lcom/undatech/opaque/util/ConnectionLoader;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetgridView(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/widget/GridView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 143
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetgridView(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/widget/GridView;

    move-result-object p1

    new-instance v1, Lcom/undatech/opaque/LabeledImageApapter;

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {v2}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetconnectionLoader(Lcom/undatech/opaque/ConnectionGridActivity;)Lcom/undatech/opaque/util/ConnectionLoader;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/undatech/opaque/ConnectionGridActivity$3;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {v4}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetsearch(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/widget/EditText;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/undatech/opaque/LabeledImageApapter;-><init>(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;I)V

    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

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
