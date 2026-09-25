.class Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$1;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 677
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
