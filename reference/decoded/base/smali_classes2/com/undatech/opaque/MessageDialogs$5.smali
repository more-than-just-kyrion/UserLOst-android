.class Lcom/undatech/opaque/MessageDialogs$5;
.super Ljava/lang/Object;
.source "MessageDialogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/MessageDialogs;->displayToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$length:I

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$message:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$message:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/undatech/opaque/MessageDialogs$5;->val$length:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
