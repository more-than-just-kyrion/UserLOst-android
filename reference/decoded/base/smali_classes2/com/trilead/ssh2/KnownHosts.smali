.class public Lcom/trilead/ssh2/KnownHosts;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    }
.end annotation


# static fields
.field public static final HOSTKEY_HAS_CHANGED:I = 0x2

.field public static final HOSTKEY_IS_NEW:I = 0x1

.field public static final HOSTKEY_IS_OK:I


# instance fields
.field private final ALGOS_FOR_RSA:[Ljava/lang/String;

.field private final ALGO_FOR_DSS:Ljava/lang/String;

.field private final ALGO_FOR_EDDSA:Ljava/lang/String;

.field protected final publicKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 543
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rsa-sha2-512"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rsa-sha2-256"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ssh-rsa"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGOS_FOR_RSA:[Ljava/lang/String;

    .line 549
    const-string v0, "ssh-dss"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_DSS:Ljava/lang/String;

    .line 551
    const-string v0, "ssh-ed25519"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_EDDSA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 543
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rsa-sha2-512"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rsa-sha2-256"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ssh-rsa"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGOS_FOR_RSA:[Ljava/lang/String;

    .line 549
    const-string v0, "ssh-dss"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_DSS:Ljava/lang/String;

    .line 551
    const-string v0, "ssh-ed25519"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_EDDSA:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 543
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rsa-sha2-512"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rsa-sha2-256"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ssh-rsa"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGOS_FOR_RSA:[Ljava/lang/String;

    .line 549
    const-string v0, "ssh-dss"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_DSS:Ljava/lang/String;

    .line 551
    const-string v0, "ssh-ed25519"

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->ALGO_FOR_EDDSA:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public static final addHostkeyToFile(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 691
    array-length v0, p1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 697
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    const/4 v1, 0x0

    .line 699
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 702
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 703
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    .line 706
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 707
    invoke-virtual {v0, p2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 709
    invoke-static {p3}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write([C)V

    .line 710
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    .line 714
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "rw"

    invoke-direct {p2, p0, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 720
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 721
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    const/16 p3, 0xa

    if-eq p0, p3, :cond_2

    .line 723
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 727
    :cond_2
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    const-string p3, "ISO-8859-1"

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 729
    :catch_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 731
    :goto_1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 695
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 692
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least one hostname specification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 238
    const-string v0, "|1|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x7c

    const/4 v2, 0x3

    .line 241
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v1

    .line 246
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 254
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 264
    array-length v4, v0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v4, v2, :cond_2

    return v1

    .line 270
    :cond_2
    invoke-static {v0, p2}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p2

    move v0, v1

    .line 272
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 273
    aget-byte v2, p2, v0

    aget-byte v4, p1, v0

    if-eq v2, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    :catch_0
    move-exception p1

    .line 267
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VM does not support SHA1"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    return v1
.end method

.method private checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    .line 287
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 291
    iget-object v4, v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 301
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static final createBubblebabbleFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 891
    const-string v0, "sha1"

    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 892
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToBubblebabbleFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final createHashedHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 196
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 203
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 205
    invoke-static {v0, p0}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p0

    .line 207
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 208
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 210
    new-instance p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|1|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VM doesn\'t support SHA1"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 874
    const-string v0, "md5"

    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 875
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 313
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 317
    iget-object v4, v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v3, v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/security/PublicKey;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static final hmacSha1Hash([BLjava/lang/String;)[B
    .locals 5

    .line 217
    const-string v0, "HmacSHA1"

    .line 0
    const-string v1, "Salt has wrong length ("

    .line 217
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 218
    array-length v3, p0

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 220
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :try_start_1
    const-string p0, "ISO-8859-1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 233
    :goto_0
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    array-length p0, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 224
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create SecretKey"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 222
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to HMAC-SHA1"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 370
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 372
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_8

    .line 374
    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 383
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x21

    if-ne v3, v5, :cond_1

    .line 385
    aget-object v3, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    goto :goto_1

    .line 390
    :cond_1
    aget-object v3, p1, v1

    move v5, v0

    :goto_1
    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    goto :goto_3

    .line 401
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_4

    .line 403
    invoke-direct {p0, v3, p2}, Lcom/trilead/ssh2/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v5, :cond_3

    return v0

    :cond_3
    move v2, v4

    goto :goto_3

    .line 412
    :cond_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x3f

    .line 414
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    const/16 v6, 0x2a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_5

    goto :goto_2

    .line 423
    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    if-eqz v5, :cond_3

    return v0

    .line 416
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {p0, v3, v0, v6, v0}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v5, :cond_3

    return v0

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method

.method private initialize(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    .line 466
    new-array v0, v0, [C

    .line 468
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 470
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 472
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 476
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result p1

    if-gez p1, :cond_0

    .line 482
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 484
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 479
    invoke-virtual {v1, v0, v3, p1}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0
.end method

.method private initialize([C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-direct {v1, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 441
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 446
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 448
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 453
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 455
    aget-object v1, p1, v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 457
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 459
    aget-object p1, p1, v3

    invoke-virtual {p0, v1, p1, v2}, Lcom/trilead/ssh2/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private final matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 0

    .line 489
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final pseudoRegex([CI[CI)Z
    .locals 6

    .line 500
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    .line 501
    array-length p1, p3

    if-ne p1, p4, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 503
    :cond_1
    aget-char v0, p1, p2

    const/16 v3, 0x3f

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_7

    add-int/lit8 v5, p2, 0x1

    .line 507
    array-length v0, p1

    if-ne v0, v5, :cond_2

    return v2

    .line 510
    :cond_2
    aget-char v0, p1, v5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    .line 514
    :cond_3
    aget-char v0, p1, v5

    aget-char v3, p3, p4

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, p1, v0, p3, v3}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 517
    array-length v0, p3

    if-ne v0, p4, :cond_3

    return v1

    .line 524
    :cond_5
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    :cond_6
    add-int/lit8 p4, p4, 0x1

    .line 527
    array-length p2, p3

    if-ne p2, p4, :cond_5

    return v1

    .line 532
    :cond_7
    array-length v2, p3

    if-ne v2, p4, :cond_8

    return v1

    :cond_8
    if-eq v0, v3, :cond_9

    .line 535
    aget-char v2, p3, p4

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private static rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    const-string v0, "Unknown hash type "

    .line 747
    :try_start_0
    const-string v1, "md5"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_0

    .line 751
    :cond_0
    const-string v1, "sha1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 753
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_0
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 766
    :cond_1
    const-string v0, "ecdsa-sha2-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 769
    :cond_2
    const-string v0, "ssh-rsa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 772
    :cond_3
    const-string v0, "ssh-dss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 775
    :cond_4
    const-string v0, "rsa-sha2-256"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 778
    :cond_5
    const-string v0, "rsa-sha2-512"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1
    if-eqz p2, :cond_6

    .line 787
    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 788
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 785
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hostkey is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 782
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown key type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 757
    :cond_8
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 760
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final rawToBubblebabbleFingerprint([B)Ljava/lang/String;
    .locals 9

    .line 821
    const-string v0, "aeiouy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 822
    const-string v1, "bcdfghklmnprstvzx"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x78

    if-ge v5, v3, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-lt v7, v3, :cond_1

    .line 834
    array-length v8, p0

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    goto :goto_1

    .line 851
    :cond_0
    rem-int/lit8 v5, v4, 0x6

    aget-char v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    div-int/lit8 v5, v4, 0x6

    aget-char v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    mul-int/lit8 v5, v5, 0x2

    .line 836
    aget-byte v6, p0, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    aget-byte v6, p0, v5

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, 0x3

    div-int/lit8 v8, v4, 0x6

    add-int/2addr v6, v8

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 842
    aget-byte v8, p0, v6

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    .line 843
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    aget-byte v8, p0, v6

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v4, 0x5

    .line 846
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v5, v5, 0x7

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x24

    :cond_2
    :goto_2
    move v5, v7

    goto :goto_0

    .line 857
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5

    .line 798
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 802
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const/16 v3, 0x3a

    .line 805
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 806
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    shr-int/lit8 v4, v4, 0x4

    .line 807
    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 808
    aget-char v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    .line 559
    instance-of v2, v1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    .line 560
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->ALGOS_FOR_RSA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 561
    :cond_1
    instance-of v2, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_2

    .line 562
    const-string v1, "ssh-dss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    :cond_2
    instance-of v2, v1, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    if-eqz v2, :cond_3

    .line 564
    const-string v1, "ssh-ed25519"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    :cond_3
    instance-of v2, v1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_0

    .line 566
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-static {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getSshKeyType(Ljava/security/interfaces/ECKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 586
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    .line 589
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 590
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 592
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 595
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 113
    const-string v0, "ssh-rsa"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rsa-sha2-512"

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rsa-sha2-256"

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 123
    :cond_0
    const-string v0, "ssh-dss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 126
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 130
    :cond_1
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 133
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 135
    :try_start_1
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 137
    :cond_2
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 140
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 142
    :try_start_2
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0

    goto/16 :goto_1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 144
    :cond_3
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 147
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    goto :goto_1

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 151
    :cond_4
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/Ed25519Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 154
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter p3

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit p3

    goto :goto_1

    :catchall_4
    move-exception p1

    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    .line 159
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown host key type ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_6
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 119
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter p3

    .line 121
    :try_start_5
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit p3

    :goto_1
    return-void

    :catchall_5
    move-exception p1

    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    .line 111
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostnames may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHostkeys(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public addHostkeys([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public getPreferredServerHostkeyAlgorithmOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 341
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 350
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 356
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    const-string v0, "ssh-rsa"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rsa-sha2-256"

    .line 620
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "rsa-sha2-512"

    .line 621
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 625
    :cond_0
    const-string v0, "ssh-dss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    goto/16 :goto_1

    .line 629
    :cond_1
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    goto :goto_1

    .line 633
    :cond_2
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    goto :goto_1

    .line 637
    :cond_3
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    goto :goto_1

    .line 641
    :cond_4
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 643
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/Ed25519Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    goto :goto_1

    .line 646
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown hostkey type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :cond_6
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 648
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    move-result p3

    if-nez p3, :cond_7

    return p3

    .line 657
    :cond_7
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    aget-object v2, p1, v1

    .line 665
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    move-result v2

    if-nez v2, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move p3, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    :cond_a
    return p3
.end method
