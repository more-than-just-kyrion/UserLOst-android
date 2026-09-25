.class Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;
.super Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;
.source "ClipboardManagerProxy.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HCClipboardManager"
.end annotation


# instance fields
.field private mClipboardManager:Landroid/content/ClipboardManager;

.field private mListener:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;-><init>()V

    .line 61
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mClipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public addClipboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mListener:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;

    .line 90
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mListener:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1, v0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;->onClipboardChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeClipboardboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mListener:Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;

    .line 97
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;->mClipboardManager:Landroid/content/ClipboardManager;

    if-nez p1, :cond_0

    .line 67
    const-string p1, ""

    :cond_0
    const-string v1, "rdp-clipboard"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
