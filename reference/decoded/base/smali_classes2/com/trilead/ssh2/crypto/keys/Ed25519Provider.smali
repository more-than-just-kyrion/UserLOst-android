.class public Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;
.super Ljava/security/Provider;
.source "Ed25519Provider.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "Ed25519"

.field private static final sInitLock:Ljava/lang/Object;

.field private static sInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 14
    const-string v2, "Not for use elsewhere"

    const-string v3, "ConnectBot Ed25519 Provider"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 15
    new-instance v0, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider$$ExternalSyntheticLambda0;-><init>(Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static insertIfNeeded()V
    .locals 2

    .line 35
    sget-object v0, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-boolean v1, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->sInitialized:Z

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v1, 0x1

    .line 38
    sput-boolean v1, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->sInitialized:Z

    .line 40
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method synthetic lambda$new$0$com-trilead-ssh2-crypto-keys-Ed25519Provider()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->setup()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setup()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Ed25519KeyFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyFactory.Ed25519"

    invoke-virtual {p0, v1, v0}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Ed25519KeyPairGenerator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyPairGenerator.Ed25519"

    invoke-virtual {p0, v1, v0}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "Alg.Alias.KeyFactory.1.3.101.112"

    const-string v1, "Ed25519"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "Alg.Alias.KeyFactory.EdDSA"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "Alg.Alias.KeyPairGenerator.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "Alg.Alias.KeyPairGenerator.EdDSA"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "Alg.Alias.KeyPairGenerator.OID.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
