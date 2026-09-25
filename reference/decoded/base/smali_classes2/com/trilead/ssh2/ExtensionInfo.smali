.class public Lcom/trilead/ssh2/ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionInfo.java"


# instance fields
.field private final signatureAlgorithmsAccepted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/ExtensionInfo;->signatureAlgorithmsAccepted:Ljava/util/Set;

    return-void
.end method

.method public static fromPacketExtInfo(Lcom/trilead/ssh2/packets/PacketExtInfo;)Lcom/trilead/ssh2/ExtensionInfo;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/PacketExtInfo;->getExtNameToValue()Ljava/util/Map;

    move-result-object p0

    const-string v0, "server-sig-algs"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 30
    new-instance p0, Lcom/trilead/ssh2/ExtensionInfo;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/ExtensionInfo;-><init>(Ljava/util/Set;)V

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 35
    new-instance p0, Lcom/trilead/ssh2/ExtensionInfo;

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/ExtensionInfo;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public static noExtInfoSeen()Lcom/trilead/ssh2/ExtensionInfo;
    .locals 2

    .line 40
    new-instance v0, Lcom/trilead/ssh2/ExtensionInfo;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/ExtensionInfo;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public getSignatureAlgorithmsAccepted()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/ExtensionInfo;->signatureAlgorithmsAccepted:Ljava/util/Set;

    return-object v0
.end method
