.class Lcom/undatech/opaque/ConnectionSetupActivity$1;
.super Ljava/lang/Object;
.source "ConnectionSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/ConnectionSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/ConnectionSetupActivity;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/ConnectionSetupActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity$1;->this$0:Lcom/undatech/opaque/ConnectionSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity$1;->this$0:Lcom/undatech/opaque/ConnectionSetupActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/undatech/opaque/ConnectionSetupActivity;->-$$Nest$msaveSelectedPreferences(Lcom/undatech/opaque/ConnectionSetupActivity;Z)V

    .line 88
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity$1;->this$0:Lcom/undatech/opaque/ConnectionSetupActivity;

    const-class v1, Lcom/undatech/opaque/AdvancedSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity$1;->this$0:Lcom/undatech/opaque/ConnectionSetupActivity;

    invoke-static {v0}, Lcom/undatech/opaque/ConnectionSetupActivity;->-$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/ConnectionSetupActivity;)Lcom/undatech/opaque/ConnectionSettings;

    move-result-object v0

    const-string v1, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity$1;->this$0:Lcom/undatech/opaque/ConnectionSetupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/undatech/opaque/ConnectionSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
