.class public Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KnownHostsEntry"
.end annotation


# instance fields
.field key:Ljava/security/PublicKey;

.field patterns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/trilead/ssh2/KnownHosts;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->this$0:Lcom/trilead/ssh2/KnownHosts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KnownHostsEntry{keyType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
