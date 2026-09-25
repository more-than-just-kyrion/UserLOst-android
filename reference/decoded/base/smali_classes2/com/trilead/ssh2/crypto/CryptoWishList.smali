.class public Lcom/trilead/ssh2/crypto/CryptoWishList;
.super Ljava/lang/Object;
.source "CryptoWishList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public c2s_comp_algos:[Ljava/lang/String;

.field public c2s_enc_algos:[Ljava/lang/String;

.field public c2s_mac_algos:[Ljava/lang/String;

.field public kexAlgorithms:[Ljava/lang/String;

.field public s2c_comp_algos:[Ljava/lang/String;

.field public s2c_enc_algos:[Ljava/lang/String;

.field public s2c_mac_algos:[Ljava/lang/String;

.field public serverHostKeyAlgorithms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultKexAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MACs;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MACs;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/trilead/ssh2/compression/CompressionFactory;->getDefaultCompressorList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/trilead/ssh2/compression/CompressionFactory;->getDefaultCompressorList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/crypto/CryptoWishList;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/trilead/ssh2/crypto/CryptoWishList;
    .locals 1

    .line 51
    new-instance v0, Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/crypto/CryptoWishList;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/CryptoWishList;->clone()Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-result-object v0

    return-object v0
.end method
