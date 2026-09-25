.class Lcom/iiordanov/bVNC/MainConfiguration$3;
.super Ljava/lang/Object;
.source "MainConfiguration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 173
    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$3;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    new-instance p1, Lcom/undatech/opaque/util/LogcatReader;

    invoke-direct {p1}, Lcom/undatech/opaque/util/LogcatReader;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration$3;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/MainConfiguration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/16 v1, 0x1f4

    .line 178
    invoke-virtual {p1, v1}, Lcom/undatech/opaque/util/LogcatReader;->getMyLogcat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$3;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MainConfiguration;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration$3;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/MainConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->log_copied:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
