.class Lcom/undatech/opaque/MessageDialogs$1;
.super Ljava/lang/Object;
.source "MessageDialogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/MessageDialogs;->displayMessage(Landroid/os/Handler;Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$infoId:I

.field final synthetic val$titleId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$infoId:I

    iput p3, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$titleId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$infoId:I

    iget v2, p0, Lcom/undatech/opaque/MessageDialogs$1;->val$titleId:I

    invoke-static {v0, v1, v2}, Lcom/undatech/opaque/MessageDialogs;->displayMessage(Landroid/content/Context;II)V

    return-void
.end method
