.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/HomeActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$4;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
