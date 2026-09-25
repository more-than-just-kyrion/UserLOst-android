.class public Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "MessageDigestInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/MessageDigestInputStream;",
        "Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->get()Lorg/apache/commons/io/input/MessageDigestInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MessageDigestInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/MessageDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;Lorg/apache/commons/io/input/MessageDigestInputStream$1;)V

    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method
