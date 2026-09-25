.class Lcom/freerdp/freerdpcore/presentation/HomeActivity$5;
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

    .line 290
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 293
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$5;->this$0:Lcom/freerdp/freerdpcore/presentation/HomeActivity;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->finish()V

    return-void
.end method
