.class public abstract Lcom/trilead/ssh2/auth/SignatureProxy;
.super Ljava/lang/Object;
.source "SignatureProxy.java"


# static fields
.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final SHA256:Ljava/lang/String; = "SHA-256"

.field public static final SHA384:Ljava/lang/String; = "SHA-384"

.field public static final SHA512:Ljava/lang/String; = "SHA-512"


# instance fields
.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/auth/SignatureProxy;->mPublicKey:Ljava/security/PublicKey;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/trilead/ssh2/auth/SignatureProxy;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public abstract sign([BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
