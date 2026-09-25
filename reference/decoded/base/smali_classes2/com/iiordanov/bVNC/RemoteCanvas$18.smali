.class Lcom/iiordanov/bVNC/RemoteCanvas$18;
.super Ljava/lang/Object;
.source "RemoteCanvas.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/RemoteCanvas;->validateX509Cert(Ljava/security/cert/X509Certificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2006
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$18;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$18;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2009
    const-string p1, "RemoteCanvas"

    const-string p2, "Certificate accepted by user."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvas$18;->this$0:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RemoteCanvas$18;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->-$$Nest$msaveAndAcceptCert(Lcom/iiordanov/bVNC/RemoteCanvas;Ljava/security/cert/X509Certificate;)V

    return-void
.end method
