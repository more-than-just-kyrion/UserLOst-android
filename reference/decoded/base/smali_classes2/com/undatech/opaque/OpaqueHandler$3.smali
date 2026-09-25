.class Lcom/undatech/opaque/OpaqueHandler$3;
.super Ljava/lang/Object;
.source "OpaqueHandler.java"

# interfaces
.implements Lcom/undatech/opaque/dialogs/ChoiceFragment$OnFragmentDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/OpaqueHandler;->validateX509Cert(Ljava/security/cert/X509Certificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/OpaqueHandler;

.field final synthetic val$certData:[B


# direct methods
.method constructor <init>(Lcom/undatech/opaque/OpaqueHandler;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    iput-object p2, p0, Lcom/undatech/opaque/OpaqueHandler$3;->val$certData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseObtained(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 327
    invoke-static {}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "We were told to continue"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-static {p1}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$fgetsettings(Lcom/undatech/opaque/OpaqueHandler;)Lcom/undatech/opaque/Connection;

    move-result-object p1

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler$3;->val$certData:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/undatech/opaque/Connection;->setOvirtCaData(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-static {p1}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$fgetsettings(Lcom/undatech/opaque/OpaqueHandler;)Lcom/undatech/opaque/Connection;

    move-result-object p1

    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-static {v0}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$fgetcontext(Lcom/undatech/opaque/OpaqueHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 330
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    monitor-enter p1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "We were told not to continue"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$3;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-static {p1}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$fgetcontext(Lcom/undatech/opaque/OpaqueHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
