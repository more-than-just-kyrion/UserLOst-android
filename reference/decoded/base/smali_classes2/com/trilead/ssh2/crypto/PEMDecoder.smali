.class public Lcom/trilead/ssh2/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "PEMDecoder.java"


# static fields
.field private static final OPENSSH_V1_MAGIC:[B

.field public static final PEM_DSA_PRIVATE_KEY:I = 0x2

.field public static final PEM_EC_PRIVATE_KEY:I = 0x3

.field public static final PEM_OPENSSH_PRIVATE_KEY:I = 0x4

.field public static final PEM_RSA_PRIVATE_KEY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 56
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/PEMDecoder;->OPENSSH_V1_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x6ft
        0x70t
        0x65t
        0x6et
        0x73t
        0x73t
        0x68t
        0x2dt
        0x6bt
        0x65t
        0x79t
        0x2dt
        0x76t
        0x31t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 421
    const-string v2, "ISO-8859-1"

    invoke-static/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v3

    const-string v4, "PEM is encrypted, but no password was specified"

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    if-eq v3, v5, :cond_1

    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    :goto_0
    iget v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v3, 0x2

    const-string v6, "DSA"

    const-string v7, "Wrong version ("

    if-ne v2, v3, :cond_5

    .line 435
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 437
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v0

    .line 439
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    const-string v3, "Padding in DSA PRIVATE KEY DER stream."

    if-nez v2, :cond_4

    .line 442
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 444
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 446
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_3

    .line 449
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 450
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 451
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 452
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 453
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v7

    .line 455
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-nez v1, :cond_2

    .line 458
    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v1, v7, v0, v2, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 459
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v3, v5, v0, v2, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 461
    invoke-static {v6, v1, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    .line 456
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in DSA PRIVATE KEY DER stream."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_5
    iget v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const-string v3, "RSA"

    const/4 v8, 0x1

    if-ne v2, v8, :cond_9

    .line 466
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 468
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v0

    .line 470
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-nez v2, :cond_8

    .line 473
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 475
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 477
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 478
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in RSA PRIVATE KEY DER stream."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 481
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 482
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v7

    .line 484
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v8

    .line 485
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v9

    .line 486
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v10

    .line 487
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v11

    .line 488
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v12

    .line 490
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct/range {v4 .. v12}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 491
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 493
    invoke-static {v3, v1, v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    .line 471
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Padding in RSA PRIVATE KEY DER stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_9
    iget v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v9, 0x3

    const-string v10, "EC"

    const/4 v11, 0x0

    if-ne v2, v9, :cond_10

    .line 497
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 499
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v0

    .line 501
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-nez v2, :cond_f

    .line 504
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 506
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 508
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_e

    .line 511
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 515
    :goto_2
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v4

    if-lez v4, :cond_c

    .line 516
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructedType()I

    move-result v4

    .line 517
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;

    move-result-object v5

    if-eqz v4, :cond_b

    if-eq v4, v8, :cond_a

    goto :goto_2

    .line 523
    :cond_a
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object v3

    goto :goto_2

    .line 520
    :cond_b
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 528
    :cond_c
    invoke-static {v2}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getVerifierForOID(Ljava/lang/String;)Lcom/trilead/ssh2/signature/ECDSASHA2Verify;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 532
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v8, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 533
    array-length v0, v3

    sub-int/2addr v0, v8

    new-array v4, v0, [B

    .line 534
    invoke-static {v3, v8, v4, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 536
    invoke-virtual {v1, v4}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->decodeECPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 538
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v3, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 539
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 541
    invoke-static {v10, v3, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    .line 530
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid OID"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in EC PRIVATE KEY DER stream."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Padding in EC PRIVATE KEY DER stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_10
    iget v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    if-ne v2, v5, :cond_22

    .line 545
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object v0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v2, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 546
    sget-object v0, Lcom/trilead/ssh2/crypto/PEMDecoder;->OPENSSH_V1_MAGIC:[B

    array-length v5, v0

    invoke-virtual {v2, v5}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object v5

    .line 547
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 551
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 553
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v7

    .line 554
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v9

    if-ne v9, v8, :cond_20

    .line 562
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 564
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v9

    .line 566
    const-string v12, "bcrypt"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    if-eqz v1, :cond_11

    .line 571
    new-instance v4, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v4, v7}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 572
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v5

    .line 573
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    .line 576
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 578
    :catch_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 580
    :goto_3
    invoke-static {v9, v1, v5, v4, v0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptData([B[B[BILjava/lang/String;)[B

    move-result-object v9

    goto :goto_4

    .line 568
    :cond_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_12
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 585
    :goto_4
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, v9}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 587
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 588
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    if-ne v1, v4, :cond_1e

    .line 594
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v4, "ssh-ed25519"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 598
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 599
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v3

    .line 600
    new-instance v4, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    const/16 v5, 0x20

    .line 601
    invoke-static {v3, v11, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;-><init>([B)V

    .line 602
    new-instance v3, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    invoke-direct {v3, v1}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;-><init>([B)V

    .line 603
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto/16 :goto_8

    .line 604
    :cond_13
    const-string v4, "ecdsa-sha2-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 605
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v3

    .line 608
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 611
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v5

    invoke-virtual {v5}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getCurveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 612
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v1

    goto :goto_5

    .line 613
    :cond_14
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v5

    invoke-virtual {v5}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->getCurveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 614
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v1

    goto :goto_5

    .line 615
    :cond_15
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v5

    invoke-virtual {v5}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->getCurveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 616
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v1

    .line 621
    :goto_5
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 622
    invoke-virtual {v1, v3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->decodeECPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 624
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v1, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 625
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v1, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 626
    invoke-static {v10, v1, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v1

    goto/16 :goto_8

    .line 618
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ECDSA group"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_17
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object v4

    invoke-virtual {v4}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 628
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 629
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 630
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v12

    .line 632
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v5

    .line 633
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v13

    if-eqz v13, :cond_19

    if-nez v5, :cond_18

    goto :goto_6

    .line 639
    :cond_18
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 640
    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 641
    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 642
    new-instance v6, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v9, v6

    move-object v10, v1

    move-object v11, v4

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_7

    .line 637
    :cond_19
    :goto_6
    new-instance v6, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v6, v1, v12}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 646
    :goto_7
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v1, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 648
    invoke-static {v3, v6, v5}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v1

    goto :goto_8

    .line 649
    :cond_1a
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v3

    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 650
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 651
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 652
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 653
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v5

    .line 654
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v7

    .line 656
    new-instance v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v9, v7, v1, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 657
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v5, v1, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 659
    invoke-static {v6, v9, v7}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;

    move-result-object v1

    .line 664
    :goto_8
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 667
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    :goto_9
    if-gt v8, v0, :cond_1c

    .line 669
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v3

    if-ne v8, v3, :cond_1b

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 670
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad padding value on decrypted private keys"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    return-object v1

    .line 661
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown key type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Decryption failed when trying to read private keys"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "encryption not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_20
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only one key supported, but encountered bundle of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_21
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    const-string v2, "Could not find OPENSSH key magic: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PEM problem: it is of unknown type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode([CLjava/lang/String;)Ljava/security/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object p0

    .line 416
    invoke-static {p0, p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method private static decryptData([B[B[BILjava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "des-ede3-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x18

    if-eqz v1, :cond_0

    .line 284
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/DESede$CBC;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/DESede$CBC;-><init>()V

    goto/16 :goto_8

    .line 287
    :cond_0
    const-string v1, "des-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/DES$CBC;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/DES$CBC;-><init>()V

    const/16 v2, 0x8

    goto/16 :goto_8

    .line 292
    :cond_1
    const-string v1, "aes-128-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x10

    if-nez v1, :cond_d

    const-string v1, "aes128-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 297
    :cond_2
    const-string v1, "aes-192-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "aes192-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    .line 302
    :cond_3
    const-string v1, "aes-256-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x20

    if-nez v1, :cond_b

    const-string v1, "aes256-cbc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 307
    :cond_4
    const-string v1, "aes-128-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "aes128-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 312
    :cond_5
    const-string v1, "aes-192-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "aes192-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 317
    :cond_6
    const-string v1, "aes-256-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "aes256-ctr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 324
    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot decrypt PEM structure, unknown cipher "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_8
    :goto_0
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;-><init>()V

    goto :goto_4

    .line 314
    :cond_9
    :goto_1
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;-><init>()V

    goto :goto_8

    .line 309
    :cond_a
    :goto_2
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CTR;-><init>()V

    goto :goto_7

    .line 304
    :cond_b
    :goto_3
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;-><init>()V

    :goto_4
    move v2, v4

    goto :goto_8

    .line 299
    :cond_c
    :goto_5
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;-><init>()V

    goto :goto_8

    .line 294
    :cond_d
    :goto_6
    new-instance p4, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;

    invoke-direct {p4}, Lcom/trilead/ssh2/crypto/cipher/AES$CBC;-><init>()V

    :goto_7
    move v2, v3

    :goto_8
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_e

    .line 329
    invoke-static {p1, p2, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-interface {p4, v1, p1, p2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B[B)V

    goto :goto_9

    .line 333
    :cond_e
    new-array v3, v2, [B

    .line 334
    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v4

    new-array v5, v4, [B

    add-int v6, v2, v4

    .line 336
    new-array v6, v6, [B

    .line 338
    new-instance v7, Lorg/mindrot/jbcrypt/BCrypt;

    invoke-direct {v7}, Lorg/mindrot/jbcrypt/BCrypt;-><init>()V

    invoke-virtual {v7, p1, p2, p3, v6}, Lorg/mindrot/jbcrypt/BCrypt;->pbkdf([B[BI[B)V

    .line 340
    invoke-static {v6, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    invoke-static {v6, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-interface {p4, v1, v3, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B[B)V

    .line 347
    :goto_9
    array-length p1, p0

    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p2

    rem-int/2addr p1, p2

    if-nez p1, :cond_11

    .line 352
    array-length p1, p0

    new-array p1, p1, [B

    .line 354
    :goto_a
    array-length p2, p0

    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v2

    div-int/2addr p2, v2

    if-ge v1, p2, :cond_f

    .line 356
    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p2

    mul-int/2addr p2, v1

    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-interface {p4, p0, p2, p1, v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    if-ne p3, v0, :cond_10

    .line 361
    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p0

    invoke-static {p1, p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->removePadding([BI)[B

    move-result-object p0

    return-object p0

    :cond_10
    return-object p1

    .line 348
    :cond_11
    new-instance p0, Ljava/io/IOException;

    .line 349
    invoke-interface {p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid PEM structure, size of encrypted block is not a multiple of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 377
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    const/4 v3, -0x1

    invoke-static {v2, p1, v1, v3, v0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptData([B[B[BILjava/lang/String;)[B

    move-result-object p1

    .line 381
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 383
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    return-void

    .line 374
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, DEK-Info is incomplete!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, no mode and salt given, but encryption enabled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 109
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    new-array v2, p2, [B

    .line 115
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v3

    new-array v4, v3, [B

    move v5, p2

    .line 119
    :goto_0
    array-length v6, p0

    const/4 v7, 0x0

    invoke-virtual {v0, p0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 120
    invoke-virtual {v0, p1, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    if-ge v5, v3, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v3

    .line 127
    :goto_1
    :try_start_1
    invoke-virtual {v0, v4, v7, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int v8, p2, v5

    .line 132
    invoke-static {v4, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v6

    if-nez v5, :cond_1

    return-object v2

    .line 139
    :cond_1
    invoke-virtual {v0, v4, v7, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    new-instance p1, Ljava/io/IOException;

    const-string p2, "could not digest password"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VM does not support MD5"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt needs to be at least 8 bytes for key generation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateKeyPair(Ljava/lang/String;Ljava/security/spec/KeySpec;Ljava/security/spec/KeySpec;)Ljava/security/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    :try_start_0
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 687
    invoke-virtual {p0, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    .line 688
    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    .line 689
    new-instance p1, Ljava/security/KeyPair;

    invoke-direct {p1, p2, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 693
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid keyspec"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 691
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v3

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 95
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uneven string length in hex encoding."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hexToInt(C)I
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need hex char"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 389
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 390
    sget-object p0, Lcom/trilead/ssh2/crypto/PEMDecoder;->OPENSSH_V1_MAGIC:[B

    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object v1

    .line 391
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 396
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    .line 397
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 392
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Could not find OPENSSH key magic: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 406
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string v0, "ENCRYPTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 407
    :cond_3
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object p0, p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Proc-Type field ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unknown Proc-Type field."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 169
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string v2, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    .line 185
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 186
    const-string p0, "-----END DSA PRIVATE KEY-----"

    goto :goto_0

    .line 189
    :cond_1
    const-string v2, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    .line 192
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 193
    const-string p0, "-----END RSA PRIVATE KEY-----"

    goto :goto_0

    .line 196
    :cond_2
    const-string v2, "-----BEGIN EC PRIVATE KEY-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x3

    .line 198
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 199
    const-string p0, "-----END EC PRIVATE KEY-----"

    goto :goto_0

    .line 202
    :cond_3
    const-string v2, "-----BEGIN OPENSSH PRIVATE KEY-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 204
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 205
    const-string p0, "-----END OPENSSH PRIVATE KEY-----"

    .line 211
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, " missing"

    const-string v4, "Invalid PEM structure, "

    if-eqz v2, :cond_b

    .line 216
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3a

    .line 218
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_8

    .line 248
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-eqz v2, :cond_7

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    new-array v1, p0, [C

    .line 266
    invoke-virtual {v5, v7, p0, v1, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 268
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 270
    iget-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length p0, p0

    if-eqz p0, :cond_5

    return-object v0

    .line 271
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, no data available"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 260
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 253
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 223
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 228
    :goto_2
    array-length v4, v2

    if-ge v7, v4, :cond_9

    .line 229
    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 234
    :cond_9
    const-string v4, "Proc-Type:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 236
    iput-object v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    .line 240
    :cond_a
    const-string v4, "DEK-Info:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    iput-object v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, \'-----BEGIN...\' missing"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static removePadding([BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 149
    const-string v2, "Decrypted PEM has wrong padding, did you specify the correct password?"

    if-lt v0, v1, :cond_2

    if-gt v0, p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    if-gt p1, v0, :cond_1

    .line 154
    array-length v1, p0

    sub-int/2addr v1, p1

    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 159
    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 150
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
