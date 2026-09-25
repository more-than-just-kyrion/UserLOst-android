.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 437
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetentropy(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 440
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetkeyType(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 443
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1, v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$mconverToBase64AndSendIntent(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/security/KeyPair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 447
    const-string v1, "GeneratePubkeyActivity"

    const-string v2, "Could not generate key pair"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgethandler(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
