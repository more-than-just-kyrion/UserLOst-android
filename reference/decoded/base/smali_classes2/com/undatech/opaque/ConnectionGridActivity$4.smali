.class Lcom/undatech/opaque/ConnectionGridActivity$4;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 164
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$4;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$4;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->addNewConnection()V

    return-void
.end method
