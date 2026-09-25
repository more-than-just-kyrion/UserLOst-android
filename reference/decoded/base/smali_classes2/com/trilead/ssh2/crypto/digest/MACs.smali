.class public final Lcom/trilead/ssh2/crypto/digest/MACs;
.super Ljava/lang/Object;
.source "MACs.java"


# static fields
.field private static final MAC_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hmac-sha2-256-etm@openssh.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hmac-sha2-512-etm@openssh.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hmac-sha1-etm@openssh.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hmac-sha2-256"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hmac-sha2-512"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hmac-sha1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MACs;->MAC_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkMacList([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 30
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/digest/MACs;->getKeyLen(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getKeyLen(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_4

    .line 39
    const-string v0, "hmac-sha1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x14

    return p0

    .line 41
    :cond_0
    const-string v0, "hmac-md5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x10

    return p0

    .line 43
    :cond_1
    const-string v0, "hmac-sha2-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x20

    return p0

    .line 45
    :cond_2
    const-string v0, "hmac-sha2-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x40

    return p0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getMacList()[Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/trilead/ssh2/crypto/digest/MACs;->MAC_LIST:[Ljava/lang/String;

    return-object v0
.end method
