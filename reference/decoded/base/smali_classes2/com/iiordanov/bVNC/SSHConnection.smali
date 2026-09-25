.class public Lcom/iiordanov/bVNC/SSHConnection;
.super Ljava/lang/Object;
.source "SSHConnection.java"

# interfaces
.implements Lcom/trilead/ssh2/InteractiveCallback;
.implements Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;


# static fields
.field private static final MAXTRIES:I = 0x3

.field private static final MAX_AUTH_RETRIES:I = 0x3

.field private static final MAX_DECRYPTION_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SSHConnection"


# instance fields
.field private autoXCommand:Ljava/lang/String;

.field private autoXEnabled:Z

.field private autoXRandFileNm:Ljava/lang/String;

.field private autoXType:I

.field private autoXUnixpw:Z

.field private conn:Lcom/undatech/opaque/Connection;

.field private connection:Lcom/trilead/ssh2/Connection;

.field private connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private host:Ljava/lang/String;

.field private idHash:Ljava/lang/String;

.field private idHashAlg:I

.field private keyboardInteractiveAuth:Z

.field private kp:Ljava/security/KeyPair;

.field private final numPortTries:I

.field private passphrase:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordAuth:Z

.field private privateKey:Ljava/security/PrivateKey;

.field private pubKeyAuth:Z

.field private publicKey:Ljava/security/PublicKey;

.field private remoteStderr:Ljava/io/BufferedInputStream;

.field private remoteStdin:Ljava/io/BufferedOutputStream;

.field private remoteStdout:Ljava/io/BufferedInputStream;

.field private savedIdHash:Ljava/lang/String;

.field private savedServerHostKey:Ljava/lang/String;

.field private serverHostKey:Ljava/lang/String;

.field private session:Lcom/trilead/ssh2/Session;

.field private sshKeyDecryptionAttempts:I

.field private sshPasswordAuthAttempts:I

.field private sshPort:I

.field private sshPrivKey:Ljava/lang/String;

.field private sshRemoteCommand:Ljava/lang/String;

.field private sshRemoteCommandTimeout:I

.field private sshRemoteCommandType:I

.field private targetAddress:Ljava/lang/String;

.field private usePubKey:Z

.field private useSshRemoteCommand:Z

.field private user:Ljava/lang/String;

.field private userInputLatch:Ljava/util/concurrent/CountDownLatch;

.field private verificationCode:Ljava/lang/String;

.field private vncpassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/Connection;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 61
    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->numPortTries:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->passwordAuth:Z

    .line 66
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->keyboardInteractiveAuth:Z

    .line 67
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->pubKeyAuth:Z

    .line 100
    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPasswordAuthAttempts:I

    .line 101
    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshKeyDecryptionAttempts:I

    .line 109
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->host:Ljava/lang/String;

    .line 110
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshPort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPort:I

    .line 111
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    .line 112
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    .line 113
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->vncpassword:Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshPassPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->passphrase:Ljava/lang/String;

    .line 115
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshHostKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->savedServerHostKey:Ljava/lang/String;

    .line 116
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getIdHashAlgorithm()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->idHashAlg:I

    .line 117
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getIdHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->savedIdHash:Ljava/lang/String;

    .line 118
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->targetAddress:Ljava/lang/String;

    .line 119
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUseSshPubKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->usePubKey:Z

    .line 120
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshPrivKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPrivKey:Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getUseSshRemoteCommand()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->useSshRemoteCommand:Z

    .line 122
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshRemoteCommandType()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshRemoteCommandType:I

    .line 123
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getSshRemoteCommand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshRemoteCommand:Ljava/lang/String;

    .line 124
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAutoXEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXEnabled:Z

    .line 125
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAutoXType()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXType:I

    .line 126
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAutoXCommand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXCommand:Ljava/lang/String;

    .line 127
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAutoXUnixpw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXUnixpw:Z

    .line 128
    new-instance v0, Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->host:Ljava/lang/String;

    iget v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPort:I

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    .line 129
    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getAutoXRandFileNm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXRandFileNm:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    .line 131
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    .line 132
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    iput-object p2, p0, Lcom/iiordanov/bVNC/SSHConnection;->verificationCode:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    return-void
.end method

.method private attemptSshKeyDecryption()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPrivKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->passphrase:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decryptAndRecoverKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    .line 190
    iget v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshKeyDecryptionAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshKeyDecryptionAttempts:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 194
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    .line 195
    const-string v0, "SSHConnection"

    const-string v1, "Requesting SSH passphrase from user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPrivKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->passphrase:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decryptAndRecoverKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_keypair_decryption_failure:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private attemptSshPasswordAuthentication()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    const-string v0, "attemptSshPasswordAuthentication"

    const-string v1, "SSHConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->authenticateWithPassword()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->canAuthWithPass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPasswordAuthAttempts:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPasswordAuthAttempts:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 172
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    .line 173
    const-string v0, "Requesting SSH password from user"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_pwd_auth_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private authenticateWithPassword()Z
    .locals 5

    const-string v0, "Trying SSH password authentication. "

    const/4 v1, 0x0

    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->hasKeyboardInteractiveAuth()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "SSHConnection"

    if-eqz v2, :cond_0

    .line 454
    :try_start_1
    const-string v2, "Trying SSH keyboard-interactive authentication."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    invoke-virtual {v2, v4, p0}, Lcom/trilead/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->hasPasswordAuth()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private authenticateWithPubKey()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->decryptAndRecoverKey()V

    .line 497
    const-string v0, "SSHConnection"

    const-string v1, "Trying SSH pubkey authentication."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;Ljava/security/KeyPair;)Z

    move-result v0

    return v0
.end method

.method private canAuthWithPass()Z
    .locals 1

    .line 402
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->hasPasswordAuth()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->hasKeyboardInteractiveAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canAuthWithPubKey()Z
    .locals 3

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    const-string v2, "publickey"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createPortForward(ILjava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    add-int v4, p1, v0

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p2, p3}, Lcom/trilead/ssh2/Connection;->createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private decryptAndRecoverKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    const-string v0, "decryptAndRecoverKey"

    const-string v1, "SSHConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPrivKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->passphrase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->sshPrivKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->isEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    const-string v0, "SSH key not encrypted but passphrase was entered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_passphrase_but_keypair_unencrypted:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->attemptSshKeyDecryption()V

    .line 488
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->privateKey:Ljava/security/PrivateKey;

    .line 489
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->kp:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->publicKey:Ljava/security/PublicKey;

    return-void

    .line 477
    :cond_2
    const-string v0, "SSH key not generated yet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_keypair_missing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private execRemoteCommand(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing remote command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSHConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    .line 526
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 527
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdout:Ljava/io/BufferedInputStream;

    .line 528
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStderr()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStderr:Ljava/io/BufferedInputStream;

    .line 529
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    .line 530
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_ssh_could_not_exec_command:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  \n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error:I

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":  \n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStderr:Ljava/io/BufferedInputStream;

    .line 535
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/SSHConnection;->bufferedInputStreamToString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasKeyboardInteractiveAuth()Z
    .locals 3

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    const-string v2, "keyboard-interactive"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPasswordAuth()Z
    .locals 3

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseRemoteStdoutForPort()I
    .locals 7

    .line 580
    const-string v0, "Parsing remote stdout for PORT="

    const-string v1, "SSHConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v0, "PORT="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-ge v5, v2, :cond_1

    .line 589
    :try_start_0
    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdout:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    if-ne v5, v2, :cond_2

    const/4 v0, 0x5

    .line 599
    new-array v0, v0, [B

    .line 600
    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdout:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 602
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\\s"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 603
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found PORT=, set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 606
    :cond_2
    const-string v0, "Failed to find PORT= in remote stdout."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 614
    :goto_1
    const-string v2, "Failed to parse integer."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 610
    :goto_2
    const-string v2, "Failed to read from remote stdout."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v6
.end method

.method private sendSudoPassword()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    const-string v0, "SSHConnection"

    const-string v1, "Sending sudo password."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 569
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 570
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->error_ssh_could_not_send_sudo_pwd:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->error:I

    .line 571
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  \n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStderr:Ljava/io/BufferedInputStream;

    .line 572
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/SSHConnection;->bufferedInputStreamToString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyHostKey()Z
    .locals 5

    const/4 v0, 0x1

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v1, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 386
    iget v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->idHashAlg:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/SSHConnection;->savedIdHash:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/iiordanov/bVNC/SecureTunnel;->isSignatureEqual(ILjava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "SSHConnection"

    const-string v2, "Validated against provided hash."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 394
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->savedServerHostKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->serverHostKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->savedServerHostKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iiordanov/bVNC/SSHConnection;->serverHostKey:Ljava/lang/String;

    const/4 v4, 0x0

    .line 395
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :cond_2
    :goto_0
    return v0
.end method

.method private writeStringToRemoteCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing string to stdin of remote command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSHConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, p2, v0}, Lcom/iiordanov/bVNC/SSHConnection;->execRemoteCommand(Ljava/lang/String;I)V

    .line 546
    iget-object p2, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 547
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 548
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 549
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    return-void
.end method

.method private writeStringToStdin(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 557
    const-string v0, "SSHConnection"

    const-string v1, "Writing string to remote stdin."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 559
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStdin:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method


# virtual methods
.method bufferedInputStreamToString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 7

    .line 624
    const-string v0, "SSHConnection"

    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 625
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, 0x0

    .line 628
    :try_start_0
    invoke-virtual {p1, v2, v4, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 629
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 631
    :cond_0
    const-string p1, "UTF-8"

    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    const-string v1, "bufferedInputStreamToString:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 637
    const-string v1, "Failed to read from remote stdout."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 640
    const-string p1, ""

    return-object p1
.end method

.method public connect()Z
    .locals 5

    const/4 v0, 0x0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/Connection;->setCompression(Z)V

    .line 353
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    const/16 v2, 0x1770

    const/16 v3, 0x5dc0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 356
    iget-object v1, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->serverHostKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method createLocalPortForward(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->targetAddress:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p1}, Lcom/iiordanov/bVNC/SSHConnection;->createPortForward(ILjava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error_ssh_port_forwarding_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHostKeySignature()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v0, v0, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v1, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    invoke-static {v0, v1}, Lcom/trilead/ssh2/KnownHosts;->createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIdHash()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->idHash:Ljava/lang/String;

    return-object v0
.end method

.method getServerHostKey()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->serverHostKey:Ljava/lang/String;

    return-object v0
.end method

.method public initializeSSHTunnel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/SSHConnection;->connect()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->verifyHostKey()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->usePubKey:Z

    const-string v1, " "

    const/4 v2, 0x1

    const-string v3, "SSHConnection"

    if-nez v0, :cond_1

    .line 229
    const-string v0, "SSH tunnel not configured to use public key, trying password auth"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->canAuthWithPass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->attemptSshPasswordAuthentication()V

    goto/16 :goto_0

    .line 231
    :cond_0
    const-string v0, "SSH server does not support password authentication so throw an error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v5, Lcom/undatech/remoteClientUi/R$string;->error_ssh_kbd_auth_method_unavail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_1
    const-string v0, "SSH tunnel is configured to use public key, will attempt"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->canAuthWithPubKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const-string v0, "SSH server supports pubkey authentication, continuing"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->authenticateWithPubKey()Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->canAuthWithPubKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    const-string v0, "SSH server needs more than key auth, trying password auth in addition"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->ssh_server_needs_password_in_addition_to_key:I

    .line 247
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v0, v1, v3, v2}, Lcom/undatech/opaque/MessageDialogs;->displayToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;I)V

    .line 249
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->attemptSshPasswordAuthentication()V

    goto/16 :goto_0

    .line 251
    :cond_2
    const-string v0, "Failed to authenticate to SSH server with key"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_key_auth_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_3
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->canAuthWithPass()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 258
    const-string v0, "Key auth enabled, but server is asking for password, trying password auth"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    sget v4, Lcom/undatech/remoteClientUi/R$string;->ssh_server_needs_password_in_addition_to_key:I

    .line 260
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {v0, v1, v4, v2}, Lcom/undatech/opaque/MessageDialogs;->displayToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;I)V

    .line 262
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->attemptSshPasswordAuthentication()V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAuthenticationComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAuthenticationPartialSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->isAuthenticationPartialSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 266
    const-string v0, "Key auth enabled, password authenticated succeeded, and server is asking for key auth"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->authenticateWithPubKey()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 270
    :cond_4
    const-string v0, "Key authentication failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_key_auth_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXEnabled:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :catch_0
    :cond_7
    :goto_1
    if-gez v1, :cond_a

    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    .line 291
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXUnixpw:Z

    if-nez v1, :cond_8

    .line 292
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->vncpassword:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "umask 0077 && cat > .x11vnc_temp_pwd_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXRandFileNm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/iiordanov/bVNC/SSHConnection;->writeStringToRemoteCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_8
    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXCommand:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/iiordanov/bVNC/SSHConnection;->execRemoteCommand(Ljava/lang/String;I)V

    .line 300
    iget v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->autoXType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_9

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iiordanov/bVNC/SSHConnection;->writeStringToStdin(Ljava/lang/String;)V

    .line 304
    :cond_9
    invoke-direct {p0}, Lcom/iiordanov/bVNC/SSHConnection;->parseRemoteStdoutForPort()I

    move-result v1

    if-gez v1, :cond_7

    .line 306
    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v4}, Lcom/trilead/ssh2/Session;->close()V

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_7

    mul-int/lit16 v3, v0, 0xdac

    int-to-long v3, v3

    .line 310
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_a
    if-ltz v1, :cond_b

    goto :goto_2

    .line 315
    :cond_b
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->error_ssh_x11vnc_no_port_failure:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->error:I

    .line 316
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  \n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->remoteStderr:Ljava/io/BufferedInputStream;

    .line 317
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/SSHConnection;->bufferedInputStreamToString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    return v1

    .line 274
    :cond_d
    const-string v0, "Password authentication failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_pwd_auth_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_e
    const-string v0, "SSH server does not support key auth, but SSH tunnel is configured to use it"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v2, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v5, Lcom/undatech/remoteClientUi/R$string;->error_ssh_pubkey_auth_method_unavail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_hostkey_changed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    sget v2, Lcom/undatech/remoteClientUi/R$string;->error_ssh_unable_to_connect:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTextObtained(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 3

    if-eqz p3, :cond_0

    .line 681
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 685
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "DIALOG_ID_GET_VERIFICATIONCODE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p3, "DIALOG_ID_GET_SSH_CREDENTIALS"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p3, "DIALOG_ID_GET_SSH_PASSPHRASE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 699
    :goto_0
    const-string p1, "SSHConnection"

    packed-switch v2, :pswitch_data_0

    const-string p2, "Unknown dialog type."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    :pswitch_0
    const-string p3, "Text obtained from DIALOG_ID_GET_VERIFICATIONCODE."

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/SSHConnection;->setVerificationCode(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :pswitch_1
    const-string p3, "Text obtained from DIALOG_ID_GET_SSH_CREDENTIALS."

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    aget-object p1, p2, v1

    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p2, p4}, Lcom/iiordanov/bVNC/SSHConnection;->setUserAndPassword(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 695
    :pswitch_2
    const-string p3, "Text obtained from DIALOG_ID_GET_SSH_PASSPHRASE."

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    aget-object p1, p2, v1

    invoke-virtual {p0, p1, p4}, Lcom/iiordanov/bVNC/SSHConnection;->setPassphrase(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4eca4129 -> :sswitch_2
        -0x4eb21051 -> :sswitch_1
        -0x3e56c0e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 650
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    move p5, p2

    :goto_0
    if-ge p5, p3, :cond_2

    .line 652
    aget-object v0, p4, p2

    const-string v1, "Verification code:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "SSHConnection"

    if-eq v0, v1, :cond_1

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p4, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Will request verification code from user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    const-string v0, ""

    aput-object v0, p1, p5

    goto :goto_2

    .line 658
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    .line 659
    const-string v0, "Requesting verification code from user"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 663
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p4, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Sending verification code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/SSHConnection;->verificationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->verificationCode:Ljava/lang/String;

    aput-object v0, p1, p5

    goto :goto_2

    :catch_0
    move-exception v0

    .line 665
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p4, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Sending SSH password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    aput-object v0, p1, p5

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_2
    return-object p1
.end method

.method public setPassphrase(Ljava/lang/String;Z)V
    .locals 1

    .line 159
    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->passphrase:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setSshPassPhrase(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setKeepSshPassword(Z)V

    .line 162
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setUserAndPassword(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 150
    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->user:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/iiordanov/bVNC/SSHConnection;->password:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    invoke-interface {v0, p1}, Lcom/undatech/opaque/Connection;->setSshUser(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->setSshPassword(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->conn:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, p3}, Lcom/undatech/opaque/Connection;->setKeepSshPassword(Z)V

    .line 155
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setVerificationCode(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->verificationCode:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/iiordanov/bVNC/SSHConnection;->userInputLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public terminateSSHTunnel()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/iiordanov/bVNC/SSHConnection;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V

    return-void
.end method
