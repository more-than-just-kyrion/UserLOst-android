.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;
.super Ljava/lang/Object;
.source "Ed25519ScalarOps.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/math/ScalarOps;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiplyAndAdd([B[B[B)[B
    .locals 85

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 342
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v4

    const v5, 0x1fffff

    and-int/2addr v4, v5

    int-to-long v6, v4

    const/4 v4, 0x2

    .line 343
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v8

    const/4 v10, 0x5

    shr-long/2addr v8, v10

    const-wide/32 v11, 0x1fffff

    and-long/2addr v8, v11

    .line 344
    invoke-static {v0, v10}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    shr-int/2addr v13, v4

    and-int/2addr v13, v5

    int-to-long v13, v13

    const/4 v15, 0x7

    .line 345
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    shr-long v16, v16, v15

    and-long v16, v16, v11

    const/16 v3, 0xa

    .line 346
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v19

    const/16 v21, 0x4

    shr-long v19, v19, v21

    and-long v19, v19, v11

    const/16 v3, 0xd

    .line 347
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v22

    const/16 v23, 0x1

    shr-int/lit8 v22, v22, 0x1

    and-int v3, v22, v5

    int-to-long v4, v3

    const/16 v3, 0xf

    .line 348
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v25

    const/16 v27, 0x6

    shr-long v25, v25, v27

    and-long v25, v25, v11

    const/16 v3, 0x12

    .line 349
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v28

    const/16 v29, 0x3

    shr-int/lit8 v28, v28, 0x3

    const v22, 0x1fffff

    and-int v3, v28, v22

    int-to-long v11, v3

    const/16 v3, 0x15

    .line 350
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v28

    and-int v3, v28, v22

    move-wide/from16 v33, v11

    int-to-long v10, v3

    const/16 v3, 0x17

    .line 351
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v35

    const/4 v3, 0x5

    shr-long v35, v35, v3

    const-wide/32 v30, 0x1fffff

    and-long v35, v35, v30

    const/16 v3, 0x1a

    .line 352
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v3

    const/4 v12, 0x2

    shr-int/2addr v3, v12

    and-int v3, v3, v22

    move-wide/from16 v37, v13

    int-to-long v12, v3

    const/16 v3, 0x1c

    .line 353
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v39

    shr-long v39, v39, v15

    const/4 v0, 0x0

    .line 354
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v3

    and-int v0, v3, v22

    move-wide/from16 v41, v12

    int-to-long v12, v0

    const/4 v0, 0x2

    .line 355
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v43

    const/4 v3, 0x5

    shr-long v43, v43, v3

    const-wide/32 v30, 0x1fffff

    and-long v43, v43, v30

    .line 356
    invoke-static {v1, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v3, v14, 0x2

    and-int v0, v3, v22

    move-wide/from16 v45, v10

    int-to-long v10, v0

    .line 357
    invoke-static {v1, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v47

    shr-long v47, v47, v15

    and-long v47, v47, v30

    const/16 v0, 0xa

    .line 358
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v49

    shr-long v49, v49, v21

    and-long v49, v49, v30

    const/16 v0, 0xd

    .line 359
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v3

    shr-int/lit8 v0, v3, 0x1

    and-int v0, v0, v22

    move-wide/from16 v51, v4

    int-to-long v3, v0

    const/16 v0, 0xf

    .line 360
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v53

    shr-long v53, v53, v27

    and-long v53, v53, v30

    const/16 v0, 0x12

    .line 361
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    shr-int/lit8 v0, v5, 0x3

    and-int v0, v0, v22

    move-wide/from16 v55, v3

    int-to-long v3, v0

    const/16 v0, 0x15

    .line 362
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    and-int v0, v5, v22

    move-wide/from16 v57, v3

    int-to-long v3, v0

    const/16 v0, 0x17

    .line 363
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v59

    const/4 v0, 0x5

    shr-long v59, v59, v0

    and-long v59, v59, v30

    const/16 v0, 0x1a

    .line 364
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    const/4 v5, 0x2

    shr-int/2addr v0, v5

    and-int v0, v0, v22

    move-wide/from16 v61, v6

    int-to-long v5, v0

    const/16 v0, 0x1c

    .line 365
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v0

    shr-long/2addr v0, v15

    const/4 v7, 0x0

    .line 366
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    and-int v7, v14, v22

    move-wide/from16 p1, v0

    int-to-long v0, v7

    const/4 v7, 0x2

    .line 367
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v63

    const/4 v14, 0x5

    shr-long v63, v63, v14

    const-wide/32 v30, 0x1fffff

    and-long v63, v63, v30

    .line 368
    invoke-static {v2, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v24

    shr-int/lit8 v14, v24, 0x2

    and-int v7, v14, v22

    move-wide/from16 v65, v5

    int-to-long v5, v7

    .line 369
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v67

    shr-long v67, v67, v15

    and-long v67, v67, v30

    const/16 v7, 0xa

    .line 370
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v69

    shr-long v69, v69, v21

    and-long v69, v69, v30

    const/16 v7, 0xd

    .line 371
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v7, v14, 0x1

    and-int v7, v7, v22

    move-wide/from16 v71, v3

    int-to-long v3, v7

    const/16 v7, 0xf

    .line 372
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v73

    shr-long v73, v73, v27

    and-long v73, v73, v30

    const/16 v7, 0x12

    .line 373
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v7, v14, 0x3

    and-int v7, v7, v22

    move-wide/from16 v75, v3

    int-to-long v3, v7

    const/16 v7, 0x15

    .line 374
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    and-int v7, v14, v22

    move-wide/from16 v77, v3

    int-to-long v3, v7

    const/16 v7, 0x17

    .line 375
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v79

    const/4 v7, 0x5

    shr-long v79, v79, v7

    and-long v30, v79, v30

    const/16 v7, 0x1a

    .line 376
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    const/4 v14, 0x2

    shr-int/2addr v7, v14

    and-int v7, v7, v22

    move-wide/from16 v79, v3

    int-to-long v3, v7

    const/16 v7, 0x1c

    .line 377
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v81

    shr-long v81, v81, v15

    mul-long v83, v61, v12

    add-long v0, v0, v83

    mul-long v83, v61, v43

    add-long v63, v63, v83

    mul-long v83, v8, v12

    add-long v63, v63, v83

    mul-long v83, v61, v10

    add-long v5, v5, v83

    mul-long v83, v8, v43

    add-long v5, v5, v83

    mul-long v83, v37, v12

    add-long v5, v5, v83

    mul-long v83, v61, v47

    add-long v67, v67, v83

    mul-long v83, v8, v10

    add-long v67, v67, v83

    mul-long v83, v37, v43

    add-long v67, v67, v83

    mul-long v83, v16, v12

    add-long v67, v67, v83

    mul-long v83, v61, v49

    add-long v69, v69, v83

    mul-long v83, v8, v47

    add-long v69, v69, v83

    mul-long v83, v37, v10

    add-long v69, v69, v83

    mul-long v83, v16, v43

    add-long v69, v69, v83

    mul-long v83, v19, v12

    add-long v69, v69, v83

    mul-long v83, v61, v55

    add-long v75, v75, v83

    mul-long v83, v8, v49

    add-long v75, v75, v83

    mul-long v83, v37, v47

    add-long v75, v75, v83

    mul-long v83, v16, v10

    add-long v75, v75, v83

    mul-long v83, v19, v43

    add-long v75, v75, v83

    mul-long v83, v51, v12

    add-long v75, v75, v83

    mul-long v83, v61, v53

    add-long v73, v73, v83

    mul-long v83, v8, v55

    add-long v73, v73, v83

    mul-long v83, v37, v49

    add-long v73, v73, v83

    mul-long v83, v16, v47

    add-long v73, v73, v83

    mul-long v83, v19, v10

    add-long v73, v73, v83

    mul-long v83, v51, v43

    add-long v73, v73, v83

    mul-long v83, v25, v12

    add-long v73, v73, v83

    mul-long v83, v61, v57

    add-long v77, v77, v83

    mul-long v83, v8, v53

    add-long v77, v77, v83

    mul-long v83, v37, v55

    add-long v77, v77, v83

    mul-long v83, v16, v49

    add-long v77, v77, v83

    mul-long v83, v19, v47

    add-long v77, v77, v83

    mul-long v83, v51, v10

    add-long v77, v77, v83

    mul-long v83, v25, v43

    add-long v77, v77, v83

    mul-long v83, v33, v12

    add-long v77, v77, v83

    mul-long v83, v61, v71

    add-long v79, v79, v83

    mul-long v83, v8, v57

    add-long v79, v79, v83

    mul-long v83, v37, v53

    add-long v79, v79, v83

    mul-long v83, v16, v55

    add-long v79, v79, v83

    mul-long v83, v19, v49

    add-long v79, v79, v83

    mul-long v83, v51, v47

    add-long v79, v79, v83

    mul-long v83, v25, v10

    add-long v79, v79, v83

    mul-long v83, v33, v43

    add-long v79, v79, v83

    mul-long v83, v45, v12

    add-long v79, v79, v83

    mul-long v83, v61, v59

    add-long v30, v30, v83

    mul-long v83, v8, v71

    add-long v30, v30, v83

    mul-long v83, v37, v57

    add-long v30, v30, v83

    mul-long v83, v16, v53

    add-long v30, v30, v83

    mul-long v83, v19, v55

    add-long v30, v30, v83

    mul-long v83, v51, v49

    add-long v30, v30, v83

    mul-long v83, v25, v47

    add-long v30, v30, v83

    mul-long v83, v33, v10

    add-long v30, v30, v83

    mul-long v83, v45, v43

    add-long v30, v30, v83

    mul-long v83, v35, v12

    add-long v30, v30, v83

    mul-long v83, v61, v65

    add-long v3, v3, v83

    mul-long v83, v8, v59

    add-long v3, v3, v83

    mul-long v83, v37, v71

    add-long v3, v3, v83

    mul-long v83, v16, v57

    add-long v3, v3, v83

    mul-long v83, v19, v53

    add-long v3, v3, v83

    mul-long v83, v51, v55

    add-long v3, v3, v83

    mul-long v83, v25, v49

    add-long v3, v3, v83

    mul-long v83, v33, v47

    add-long v3, v3, v83

    mul-long v83, v45, v10

    add-long v3, v3, v83

    mul-long v83, v35, v43

    add-long v3, v3, v83

    mul-long v83, v41, v12

    add-long v3, v3, v83

    move-wide/from16 v83, p1

    mul-long v61, v61, v83

    add-long v81, v81, v61

    mul-long v61, v8, v65

    add-long v81, v81, v61

    mul-long v61, v37, v59

    add-long v81, v81, v61

    mul-long v61, v16, v71

    add-long v81, v81, v61

    mul-long v61, v19, v57

    add-long v81, v81, v61

    mul-long v61, v51, v53

    add-long v81, v81, v61

    mul-long v61, v25, v55

    add-long v81, v81, v61

    mul-long v61, v33, v49

    add-long v81, v81, v61

    mul-long v61, v45, v47

    add-long v81, v81, v61

    mul-long v61, v35, v10

    add-long v81, v81, v61

    mul-long v61, v41, v43

    add-long v81, v81, v61

    mul-long v12, v12, v39

    add-long v81, v81, v12

    mul-long v8, v8, v83

    mul-long v13, v37, v65

    add-long/2addr v8, v13

    mul-long v12, v16, v59

    add-long/2addr v8, v12

    mul-long v12, v19, v71

    add-long/2addr v8, v12

    mul-long v12, v51, v57

    add-long/2addr v8, v12

    mul-long v12, v25, v53

    add-long/2addr v8, v12

    mul-long v12, v33, v55

    add-long/2addr v8, v12

    mul-long v12, v45, v49

    add-long/2addr v8, v12

    mul-long v12, v35, v47

    add-long/2addr v8, v12

    mul-long v12, v41, v10

    add-long/2addr v8, v12

    mul-long v43, v43, v39

    add-long v8, v8, v43

    mul-long v13, v37, v83

    mul-long v37, v16, v65

    add-long v13, v13, v37

    mul-long v37, v19, v59

    add-long v13, v13, v37

    mul-long v37, v51, v71

    add-long v13, v13, v37

    mul-long v37, v25, v57

    add-long v13, v13, v37

    mul-long v37, v33, v53

    add-long v13, v13, v37

    mul-long v37, v45, v55

    add-long v13, v13, v37

    mul-long v37, v35, v49

    add-long v13, v13, v37

    mul-long v37, v41, v47

    add-long v13, v13, v37

    mul-long v10, v10, v39

    add-long/2addr v13, v10

    mul-long v16, v16, v83

    mul-long v10, v19, v65

    add-long v16, v16, v10

    mul-long v10, v51, v59

    add-long v16, v16, v10

    mul-long v10, v25, v71

    add-long v16, v16, v10

    mul-long v11, v33, v57

    add-long v16, v16, v11

    mul-long v10, v45, v53

    add-long v16, v16, v10

    mul-long v10, v35, v55

    add-long v16, v16, v10

    mul-long v10, v41, v49

    add-long v16, v16, v10

    mul-long v47, v47, v39

    add-long v16, v16, v47

    mul-long v19, v19, v83

    mul-long v10, v51, v65

    add-long v19, v19, v10

    mul-long v10, v25, v59

    add-long v19, v19, v10

    mul-long v11, v33, v71

    add-long v19, v19, v11

    mul-long v10, v45, v57

    add-long v19, v19, v10

    mul-long v10, v35, v53

    add-long v19, v19, v10

    mul-long v10, v41, v55

    add-long v19, v19, v10

    mul-long v49, v49, v39

    add-long v19, v19, v49

    mul-long v10, v51, v83

    mul-long v37, v25, v65

    add-long v10, v10, v37

    mul-long v37, v33, v59

    add-long v10, v10, v37

    mul-long v37, v45, v71

    add-long v10, v10, v37

    mul-long v37, v35, v57

    add-long v10, v10, v37

    mul-long v37, v41, v53

    add-long v10, v10, v37

    mul-long v37, v39, v55

    add-long v10, v10, v37

    mul-long v25, v25, v83

    mul-long v37, v33, v65

    add-long v25, v25, v37

    mul-long v37, v45, v59

    add-long v25, v25, v37

    mul-long v37, v35, v71

    add-long v25, v25, v37

    mul-long v37, v41, v57

    add-long v25, v25, v37

    mul-long v53, v53, v39

    add-long v25, v25, v53

    mul-long v33, v33, v83

    mul-long v37, v45, v65

    add-long v33, v33, v37

    mul-long v37, v35, v59

    add-long v33, v33, v37

    mul-long v37, v41, v71

    add-long v33, v33, v37

    mul-long v37, v39, v57

    add-long v33, v33, v37

    mul-long v37, v45, v83

    mul-long v43, v35, v65

    add-long v37, v37, v43

    mul-long v43, v41, v59

    add-long v37, v37, v43

    mul-long v43, v39, v71

    add-long v37, v37, v43

    mul-long v35, v35, v83

    mul-long v43, v41, v65

    add-long v35, v35, v43

    mul-long v59, v59, v39

    add-long v35, v35, v59

    mul-long v41, v41, v83

    mul-long v43, v39, v65

    add-long v41, v41, v43

    mul-long v39, v39, v83

    const-wide/32 v43, 0x100000

    add-long v45, v0, v43

    const/16 v2, 0x15

    shr-long v45, v45, v2

    add-long v63, v63, v45

    shl-long v45, v45, v2

    sub-long v0, v0, v45

    add-long v45, v5, v43

    shr-long v45, v45, v2

    add-long v67, v67, v45

    shl-long v45, v45, v2

    sub-long v5, v5, v45

    add-long v45, v69, v43

    shr-long v45, v45, v2

    add-long v75, v75, v45

    shl-long v45, v45, v2

    sub-long v69, v69, v45

    add-long v45, v73, v43

    shr-long v45, v45, v2

    add-long v77, v77, v45

    shl-long v45, v45, v2

    sub-long v73, v73, v45

    add-long v45, v79, v43

    shr-long v45, v45, v2

    add-long v30, v30, v45

    shl-long v45, v45, v2

    sub-long v79, v79, v45

    add-long v45, v3, v43

    shr-long v45, v45, v2

    add-long v81, v81, v45

    shl-long v45, v45, v2

    sub-long v3, v3, v45

    add-long v45, v8, v43

    shr-long v45, v45, v2

    add-long v13, v13, v45

    shl-long v45, v45, v2

    sub-long v8, v8, v45

    add-long v45, v16, v43

    shr-long v45, v45, v2

    add-long v19, v19, v45

    shl-long v45, v45, v2

    sub-long v16, v16, v45

    add-long v45, v10, v43

    shr-long v45, v45, v2

    add-long v25, v25, v45

    shl-long v45, v45, v2

    sub-long v10, v10, v45

    add-long v45, v33, v43

    shr-long v45, v45, v2

    add-long v37, v37, v45

    shl-long v45, v45, v2

    sub-long v33, v33, v45

    add-long v45, v35, v43

    shr-long v45, v45, v2

    add-long v41, v41, v45

    shl-long v45, v45, v2

    sub-long v35, v35, v45

    add-long v45, v39, v43

    shr-long v45, v45, v2

    shl-long v47, v45, v2

    sub-long v39, v39, v47

    add-long v47, v63, v43

    shr-long v47, v47, v2

    add-long v5, v5, v47

    shl-long v47, v47, v2

    sub-long v63, v63, v47

    add-long v47, v67, v43

    shr-long v47, v47, v2

    add-long v69, v69, v47

    shl-long v47, v47, v2

    sub-long v67, v67, v47

    add-long v47, v75, v43

    shr-long v47, v47, v2

    add-long v73, v73, v47

    shl-long v47, v47, v2

    sub-long v75, v75, v47

    add-long v47, v77, v43

    shr-long v47, v47, v2

    add-long v79, v79, v47

    shl-long v47, v47, v2

    sub-long v77, v77, v47

    add-long v47, v30, v43

    shr-long v47, v47, v2

    add-long v3, v3, v47

    shl-long v47, v47, v2

    sub-long v30, v30, v47

    add-long v47, v81, v43

    shr-long v47, v47, v2

    add-long v8, v8, v47

    shl-long v47, v47, v2

    sub-long v81, v81, v47

    add-long v47, v13, v43

    shr-long v47, v47, v2

    add-long v16, v16, v47

    shl-long v47, v47, v2

    sub-long v13, v13, v47

    add-long v47, v19, v43

    shr-long v47, v47, v2

    add-long v10, v10, v47

    shl-long v47, v47, v2

    sub-long v19, v19, v47

    add-long v47, v25, v43

    shr-long v47, v47, v2

    add-long v33, v33, v47

    shl-long v47, v47, v2

    sub-long v25, v25, v47

    add-long v47, v37, v43

    shr-long v47, v47, v2

    add-long v35, v35, v47

    shl-long v47, v47, v2

    sub-long v37, v37, v47

    add-long v47, v41, v43

    shr-long v47, v47, v2

    add-long v39, v39, v47

    shl-long v47, v47, v2

    sub-long v41, v41, v47

    const-wide/32 v47, 0xa2c13

    mul-long v49, v45, v47

    add-long v81, v81, v49

    const-wide/32 v49, 0x72d18

    mul-long v51, v45, v49

    add-long v8, v8, v51

    const-wide/32 v51, 0x9fb67

    mul-long v53, v45, v51

    add-long v13, v13, v53

    const-wide/32 v53, 0xf39ad

    mul-long v55, v45, v53

    sub-long v16, v16, v55

    const-wide/32 v55, 0x215d1

    mul-long v57, v45, v55

    add-long v19, v19, v57

    const-wide/32 v57, 0xa6f7d

    mul-long v45, v45, v57

    sub-long v10, v10, v45

    mul-long v45, v39, v47

    add-long v3, v3, v45

    mul-long v45, v39, v49

    add-long v81, v81, v45

    mul-long v45, v39, v51

    add-long v8, v8, v45

    mul-long v45, v39, v53

    sub-long v13, v13, v45

    mul-long v45, v39, v55

    add-long v16, v16, v45

    mul-long v39, v39, v57

    sub-long v19, v19, v39

    mul-long v39, v41, v47

    add-long v30, v30, v39

    mul-long v39, v41, v49

    add-long v3, v3, v39

    mul-long v39, v41, v51

    add-long v81, v81, v39

    mul-long v39, v41, v53

    sub-long v8, v8, v39

    mul-long v39, v41, v55

    add-long v13, v13, v39

    mul-long v41, v41, v57

    sub-long v16, v16, v41

    mul-long v39, v35, v47

    add-long v79, v79, v39

    mul-long v39, v35, v49

    add-long v30, v30, v39

    mul-long v39, v35, v51

    add-long v3, v3, v39

    mul-long v39, v35, v53

    sub-long v81, v81, v39

    mul-long v39, v35, v55

    add-long v8, v8, v39

    mul-long v35, v35, v57

    sub-long v13, v13, v35

    mul-long v35, v37, v47

    add-long v77, v77, v35

    mul-long v35, v37, v49

    add-long v79, v79, v35

    mul-long v35, v37, v51

    add-long v30, v30, v35

    mul-long v35, v37, v53

    sub-long v3, v3, v35

    mul-long v35, v37, v55

    add-long v81, v81, v35

    mul-long v37, v37, v57

    sub-long v8, v8, v37

    mul-long v35, v33, v47

    add-long v73, v73, v35

    mul-long v35, v33, v49

    add-long v77, v77, v35

    mul-long v35, v33, v51

    add-long v79, v79, v35

    mul-long v35, v33, v53

    sub-long v30, v30, v35

    mul-long v35, v33, v55

    add-long v3, v3, v35

    mul-long v33, v33, v57

    sub-long v81, v81, v33

    add-long v33, v73, v43

    const/16 v2, 0x15

    shr-long v32, v33, v2

    add-long v77, v77, v32

    shl-long v32, v32, v2

    sub-long v73, v73, v32

    add-long v32, v79, v43

    shr-long v32, v32, v2

    add-long v30, v30, v32

    shl-long v32, v32, v2

    sub-long v79, v79, v32

    add-long v32, v3, v43

    shr-long v32, v32, v2

    add-long v81, v81, v32

    shl-long v32, v32, v2

    sub-long v3, v3, v32

    add-long v32, v8, v43

    shr-long v32, v32, v2

    add-long v13, v13, v32

    shl-long v32, v32, v2

    sub-long v8, v8, v32

    add-long v32, v16, v43

    shr-long v32, v32, v2

    add-long v19, v19, v32

    shl-long v32, v32, v2

    sub-long v16, v16, v32

    add-long v32, v10, v43

    shr-long v32, v32, v2

    add-long v25, v25, v32

    shl-long v32, v32, v2

    sub-long v10, v10, v32

    add-long v32, v77, v43

    shr-long v32, v32, v2

    add-long v79, v79, v32

    shl-long v32, v32, v2

    sub-long v77, v77, v32

    add-long v32, v30, v43

    shr-long v32, v32, v2

    add-long v3, v3, v32

    shl-long v32, v32, v2

    sub-long v30, v30, v32

    add-long v32, v81, v43

    shr-long v32, v32, v2

    add-long v8, v8, v32

    shl-long v32, v32, v2

    sub-long v81, v81, v32

    add-long v32, v13, v43

    shr-long v32, v32, v2

    add-long v16, v16, v32

    shl-long v32, v32, v2

    sub-long v13, v13, v32

    add-long v32, v19, v43

    shr-long v32, v32, v2

    add-long v10, v10, v32

    shl-long v33, v32, v2

    sub-long v19, v19, v33

    mul-long v33, v25, v47

    add-long v75, v75, v33

    mul-long v33, v25, v49

    add-long v73, v73, v33

    mul-long v33, v25, v51

    add-long v77, v77, v33

    mul-long v33, v25, v53

    sub-long v79, v79, v33

    mul-long v33, v25, v55

    add-long v30, v30, v33

    mul-long v25, v25, v57

    sub-long v3, v3, v25

    mul-long v25, v10, v47

    add-long v69, v69, v25

    mul-long v25, v10, v49

    add-long v75, v75, v25

    mul-long v25, v10, v51

    add-long v73, v73, v25

    mul-long v25, v10, v53

    sub-long v77, v77, v25

    mul-long v25, v10, v55

    add-long v79, v79, v25

    mul-long v10, v10, v57

    sub-long v30, v30, v10

    mul-long v10, v19, v47

    add-long v67, v67, v10

    mul-long v10, v19, v49

    add-long v69, v69, v10

    mul-long v10, v19, v51

    add-long v75, v75, v10

    mul-long v10, v19, v53

    sub-long v73, v73, v10

    mul-long v10, v19, v55

    add-long v77, v77, v10

    mul-long v19, v19, v57

    sub-long v79, v79, v19

    mul-long v10, v16, v47

    add-long/2addr v5, v10

    mul-long v10, v16, v49

    add-long v67, v67, v10

    mul-long v10, v16, v51

    add-long v69, v69, v10

    mul-long v10, v16, v53

    sub-long v75, v75, v10

    mul-long v10, v16, v55

    add-long v73, v73, v10

    mul-long v16, v16, v57

    sub-long v77, v77, v16

    mul-long v10, v13, v47

    add-long v63, v63, v10

    mul-long v10, v13, v49

    add-long/2addr v5, v10

    mul-long v10, v13, v51

    add-long v67, v67, v10

    mul-long v10, v13, v53

    sub-long v69, v69, v10

    mul-long v10, v13, v55

    add-long v75, v75, v10

    mul-long v13, v13, v57

    sub-long v73, v73, v13

    mul-long v10, v8, v47

    add-long/2addr v0, v10

    mul-long v10, v8, v49

    add-long v63, v63, v10

    mul-long v10, v8, v51

    add-long/2addr v5, v10

    mul-long v10, v8, v53

    sub-long v67, v67, v10

    mul-long v10, v8, v55

    add-long v69, v69, v10

    mul-long v8, v8, v57

    sub-long v75, v75, v8

    add-long v7, v0, v43

    const/16 v2, 0x15

    shr-long/2addr v7, v2

    add-long v63, v63, v7

    shl-long/2addr v7, v2

    sub-long/2addr v0, v7

    add-long v7, v5, v43

    shr-long/2addr v7, v2

    add-long v67, v67, v7

    shl-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long v7, v69, v43

    shr-long/2addr v7, v2

    add-long v75, v75, v7

    shl-long/2addr v7, v2

    sub-long v69, v69, v7

    add-long v7, v73, v43

    shr-long/2addr v7, v2

    add-long v77, v77, v7

    shl-long/2addr v7, v2

    sub-long v73, v73, v7

    add-long v7, v79, v43

    shr-long/2addr v7, v2

    add-long v30, v30, v7

    shl-long/2addr v7, v2

    sub-long v79, v79, v7

    add-long v7, v3, v43

    shr-long/2addr v7, v2

    add-long v81, v81, v7

    shl-long/2addr v7, v2

    sub-long/2addr v3, v7

    add-long v7, v63, v43

    shr-long/2addr v7, v2

    add-long/2addr v5, v7

    shl-long/2addr v7, v2

    sub-long v63, v63, v7

    add-long v7, v67, v43

    shr-long/2addr v7, v2

    add-long v69, v69, v7

    shl-long/2addr v7, v2

    sub-long v67, v67, v7

    add-long v7, v75, v43

    shr-long/2addr v7, v2

    add-long v73, v73, v7

    shl-long/2addr v7, v2

    sub-long v75, v75, v7

    add-long v7, v77, v43

    shr-long/2addr v7, v2

    add-long v79, v79, v7

    shl-long/2addr v7, v2

    sub-long v77, v77, v7

    add-long v7, v30, v43

    shr-long/2addr v7, v2

    add-long/2addr v3, v7

    shl-long/2addr v7, v2

    sub-long v30, v30, v7

    add-long v43, v81, v43

    shr-long v7, v43, v2

    shl-long v9, v7, v2

    sub-long v81, v81, v9

    mul-long v9, v7, v47

    add-long/2addr v0, v9

    mul-long v9, v7, v49

    add-long v63, v63, v9

    mul-long v9, v7, v51

    add-long/2addr v5, v9

    mul-long v9, v7, v53

    sub-long v67, v67, v9

    mul-long v9, v7, v55

    add-long v69, v69, v9

    mul-long v7, v7, v57

    sub-long v75, v75, v7

    const/16 v2, 0x15

    shr-long v7, v0, v2

    add-long v63, v63, v7

    shl-long/2addr v7, v2

    sub-long/2addr v0, v7

    shr-long v7, v63, v2

    add-long/2addr v5, v7

    shl-long/2addr v7, v2

    sub-long v63, v63, v7

    shr-long v7, v5, v2

    add-long v67, v67, v7

    shl-long/2addr v7, v2

    sub-long/2addr v5, v7

    shr-long v7, v67, v2

    add-long v69, v69, v7

    shl-long/2addr v7, v2

    sub-long v67, v67, v7

    shr-long v7, v69, v2

    add-long v75, v75, v7

    shl-long/2addr v7, v2

    sub-long v69, v69, v7

    shr-long v7, v75, v2

    add-long v73, v73, v7

    shl-long/2addr v7, v2

    sub-long v75, v75, v7

    shr-long v7, v73, v2

    add-long v77, v77, v7

    shl-long/2addr v7, v2

    sub-long v73, v73, v7

    shr-long v7, v77, v2

    add-long v79, v79, v7

    shl-long/2addr v7, v2

    sub-long v77, v77, v7

    shr-long v7, v79, v2

    add-long v30, v30, v7

    shl-long/2addr v7, v2

    sub-long v79, v79, v7

    shr-long v7, v30, v2

    add-long/2addr v3, v7

    shl-long/2addr v7, v2

    sub-long v30, v30, v7

    shr-long v7, v3, v2

    add-long v81, v81, v7

    shl-long/2addr v7, v2

    sub-long/2addr v3, v7

    shr-long v7, v81, v2

    shl-long v9, v7, v2

    sub-long v81, v81, v9

    mul-long v47, v47, v7

    add-long v0, v0, v47

    mul-long v49, v49, v7

    add-long v63, v63, v49

    mul-long v51, v51, v7

    add-long v5, v5, v51

    mul-long v53, v53, v7

    sub-long v67, v67, v53

    mul-long v55, v55, v7

    add-long v69, v69, v55

    mul-long v7, v7, v57

    sub-long v75, v75, v7

    const/16 v2, 0x15

    shr-long v7, v0, v2

    add-long v63, v63, v7

    shl-long/2addr v7, v2

    sub-long/2addr v0, v7

    shr-long v7, v63, v2

    add-long/2addr v5, v7

    shl-long/2addr v7, v2

    sub-long v63, v63, v7

    shr-long v7, v5, v2

    add-long v67, v67, v7

    shl-long/2addr v7, v2

    sub-long/2addr v5, v7

    shr-long v7, v67, v2

    add-long v69, v69, v7

    shl-long/2addr v7, v2

    sub-long v67, v67, v7

    shr-long v7, v69, v2

    add-long v75, v75, v7

    shl-long/2addr v7, v2

    sub-long v69, v69, v7

    shr-long v7, v75, v2

    add-long v73, v73, v7

    shl-long/2addr v7, v2

    sub-long v75, v75, v7

    shr-long v7, v73, v2

    add-long v77, v77, v7

    shl-long/2addr v7, v2

    sub-long v73, v73, v7

    shr-long v7, v77, v2

    add-long v79, v79, v7

    shl-long/2addr v7, v2

    sub-long v77, v77, v7

    shr-long v7, v79, v2

    add-long v30, v30, v7

    shl-long/2addr v7, v2

    sub-long v7, v79, v7

    shr-long v9, v30, v2

    add-long/2addr v3, v9

    shl-long/2addr v9, v2

    sub-long v30, v30, v9

    shr-long v9, v3, v2

    add-long v81, v81, v9

    shl-long/2addr v9, v2

    sub-long/2addr v3, v9

    long-to-int v2, v0

    int-to-byte v2, v2

    const/16 v9, 0x8

    shr-long v9, v0, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x10

    shr-long/2addr v0, v10

    const/4 v10, 0x5

    shl-long v11, v63, v10

    or-long/2addr v0, v11

    long-to-int v0, v0

    int-to-byte v0, v0

    shr-long v10, v63, v29

    long-to-int v1, v10

    int-to-byte v1, v1

    const/16 v10, 0xb

    shr-long v10, v63, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0x13

    shr-long v11, v63, v11

    const/4 v13, 0x2

    shl-long v16, v5, v13

    or-long v11, v11, v16

    long-to-int v11, v11

    int-to-byte v11, v11

    shr-long v12, v5, v27

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0xe

    shr-long/2addr v5, v13

    shl-long v13, v67, v15

    or-long/2addr v5, v13

    long-to-int v5, v5

    int-to-byte v5, v5

    shr-long v13, v67, v23

    long-to-int v6, v13

    int-to-byte v6, v6

    const/16 v13, 0x9

    shr-long v13, v67, v13

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x11

    shr-long v16, v67, v14

    shl-long v19, v69, v21

    move/from16 v22, v13

    or-long v13, v16, v19

    long-to-int v13, v13

    int-to-byte v13, v13

    move/from16 v16, v13

    shr-long v13, v69, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0xc

    move/from16 v17, v13

    shr-long v13, v69, v14

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x14

    shr-long v19, v69, v14

    shl-long v25, v75, v23

    move/from16 v33, v13

    or-long v13, v19, v25

    long-to-int v13, v13

    int-to-byte v13, v13

    move/from16 v19, v13

    shr-long v13, v75, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0xf

    shr-long v25, v75, v14

    shl-long v34, v73, v27

    move/from16 v20, v13

    or-long v13, v25, v34

    long-to-int v13, v13

    int-to-byte v13, v13

    move/from16 v25, v5

    move/from16 v26, v6

    const/4 v14, 0x2

    shr-long v5, v73, v14

    long-to-int v5, v5

    int-to-byte v5, v5

    move/from16 v34, v13

    const/16 v6, 0xa

    shr-long v13, v73, v6

    long-to-int v6, v13

    int-to-byte v6, v6

    const/16 v13, 0x12

    shr-long v35, v73, v13

    shl-long v13, v77, v29

    or-long v13, v35, v13

    long-to-int v13, v13

    int-to-byte v13, v13

    move/from16 v35, v5

    move/from16 v36, v6

    const/4 v14, 0x5

    shr-long v5, v77, v14

    long-to-int v5, v5

    int-to-byte v5, v5

    move/from16 v37, v13

    const/16 v6, 0xd

    shr-long v13, v77, v6

    long-to-int v6, v13

    int-to-byte v6, v6

    long-to-int v13, v7

    int-to-byte v13, v13

    const/16 v14, 0x8

    move/from16 v38, v13

    shr-long v13, v7, v14

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x10

    shr-long/2addr v7, v14

    const/4 v14, 0x5

    shl-long v39, v30, v14

    or-long v7, v7, v39

    long-to-int v7, v7

    int-to-byte v7, v7

    move v14, v7

    shr-long v7, v30, v29

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0xb

    move/from16 v39, v7

    shr-long v7, v30, v8

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x13

    shr-long v30, v30, v8

    const/4 v8, 0x2

    shl-long v40, v3, v8

    move/from16 v42, v7

    or-long v7, v30, v40

    long-to-int v7, v7

    int-to-byte v7, v7

    move/from16 v30, v7

    shr-long v7, v3, v27

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0xe

    shr-long/2addr v3, v8

    shl-long v40, v81, v15

    or-long v3, v3, v40

    long-to-int v3, v3

    int-to-byte v3, v3

    move v8, v3

    shr-long v3, v81, v23

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    move/from16 v31, v3

    shr-long v3, v81, v4

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x11

    move/from16 v40, v3

    shr-long v3, v81, v4

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x20

    .line 690
    new-array v4, v4, [B

    const/16 v18, 0x0

    aput-byte v2, v4, v18

    aput-byte v9, v4, v23

    const/4 v2, 0x2

    aput-byte v0, v4, v2

    aput-byte v1, v4, v29

    aput-byte v10, v4, v21

    const/4 v0, 0x5

    aput-byte v11, v4, v0

    aput-byte v12, v4, v27

    aput-byte v25, v4, v15

    const/16 v0, 0x8

    aput-byte v26, v4, v0

    const/16 v0, 0x9

    aput-byte v22, v4, v0

    const/16 v0, 0xa

    aput-byte v16, v4, v0

    const/16 v0, 0xb

    aput-byte v17, v4, v0

    const/16 v0, 0xc

    aput-byte v33, v4, v0

    const/16 v0, 0xd

    aput-byte v19, v4, v0

    const/16 v0, 0xe

    aput-byte v20, v4, v0

    const/16 v0, 0xf

    aput-byte v34, v4, v0

    const/16 v0, 0x10

    aput-byte v35, v4, v0

    const/16 v0, 0x11

    aput-byte v36, v4, v0

    const/16 v0, 0x12

    aput-byte v37, v4, v0

    const/16 v0, 0x13

    aput-byte v5, v4, v0

    const/16 v0, 0x14

    aput-byte v6, v4, v0

    const/16 v0, 0x15

    aput-byte v38, v4, v0

    const/16 v0, 0x16

    aput-byte v13, v4, v0

    const/16 v0, 0x17

    aput-byte v14, v4, v0

    const/16 v0, 0x18

    aput-byte v39, v4, v0

    const/16 v0, 0x19

    aput-byte v42, v4, v0

    const/16 v0, 0x1a

    aput-byte v30, v4, v0

    const/16 v0, 0x1b

    aput-byte v7, v4, v0

    const/16 v0, 0x1c

    aput-byte v8, v4, v0

    const/16 v0, 0x1d

    aput-byte v31, v4, v0

    const/16 v0, 0x1e

    aput-byte v40, v4, v0

    const/16 v0, 0x1f

    aput-byte v3, v4, v0

    return-object v4
.end method

.method public reduce([B)[B
    .locals 68

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v1

    const v2, 0x1fffff

    and-int/2addr v1, v2

    int-to-long v3, v1

    const/4 v1, 0x2

    .line 41
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v5

    const/4 v7, 0x5

    shr-long/2addr v5, v7

    const-wide/32 v8, 0x1fffff

    and-long/2addr v5, v8

    .line 42
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v10

    shr-int/2addr v10, v1

    and-int/2addr v10, v2

    int-to-long v10, v10

    const/4 v12, 0x7

    .line 43
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v13

    shr-long/2addr v13, v12

    and-long/2addr v13, v8

    const/16 v15, 0xa

    .line 44
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    const/16 v18, 0x4

    shr-long v16, v16, v18

    and-long v16, v16, v8

    const/16 v15, 0xd

    .line 45
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v19

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    and-int v15, v19, v2

    move-wide/from16 v21, v13

    int-to-long v12, v15

    const/16 v14, 0xf

    .line 46
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v23

    const/4 v15, 0x6

    shr-long v23, v23, v15

    and-long v23, v23, v8

    const/16 v14, 0x12

    .line 47
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v25

    const/16 v26, 0x3

    shr-int/lit8 v25, v25, 0x3

    and-int v14, v25, v2

    int-to-long v8, v14

    const/16 v14, 0x15

    .line 48
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v25

    and-int v14, v25, v2

    move-wide/from16 v30, v3

    int-to-long v2, v14

    const/16 v4, 0x17

    .line 49
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v32

    shr-long v32, v32, v7

    const-wide/32 v27, 0x1fffff

    and-long v32, v32, v27

    const/16 v4, 0x1a

    .line 50
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v4

    shr-int/2addr v4, v1

    const v14, 0x1fffff

    and-int/2addr v4, v14

    move-wide/from16 v34, v2

    int-to-long v1, v4

    const/16 v3, 0x1c

    .line 51
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v3

    const/16 v19, 0x7

    shr-long v3, v3, v19

    and-long v3, v3, v27

    const/16 v14, 0x1f

    .line 52
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v36

    shr-long v36, v36, v18

    and-long v36, v36, v27

    const/16 v14, 0x22

    .line 53
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v14, v14, 0x1

    const v25, 0x1fffff

    and-int v14, v14, v25

    move-wide/from16 v38, v8

    int-to-long v7, v14

    const/16 v9, 0x24

    .line 54
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v40

    shr-long v40, v40, v15

    and-long v40, v40, v27

    const/16 v9, 0x27

    .line 55
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    shr-int/lit8 v9, v9, 0x3

    and-int v9, v9, v25

    move-wide/from16 v42, v5

    int-to-long v5, v9

    const/16 v9, 0x2a

    .line 56
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    and-int v9, v9, v25

    move-wide/from16 v44, v10

    int-to-long v9, v9

    const/16 v11, 0x2c

    .line 57
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v46

    const/4 v11, 0x5

    shr-long v46, v46, v11

    const-wide/32 v27, 0x1fffff

    and-long v46, v46, v27

    const/16 v11, 0x2f

    .line 58
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    const/4 v14, 0x2

    shr-int/2addr v11, v14

    and-int v11, v11, v25

    int-to-long v14, v11

    const/16 v11, 0x31

    .line 59
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v48

    const/4 v11, 0x7

    shr-long v48, v48, v11

    and-long v48, v48, v27

    const/16 v11, 0x34

    .line 60
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v50

    shr-long v50, v50, v18

    and-long v50, v50, v27

    const/16 v11, 0x37

    .line 61
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    const v25, 0x1fffff

    and-int v11, v11, v25

    move-wide/from16 v52, v12

    int-to-long v11, v11

    const/16 v13, 0x39

    .line 62
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    const/4 v13, 0x6

    shr-long v54, v54, v13

    and-long v27, v54, v27

    const/16 v13, 0x3c

    .line 63
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    shr-long v54, v54, v26

    const-wide/32 v56, 0xa2c13

    mul-long v58, v54, v56

    add-long v3, v3, v58

    const-wide/32 v58, 0x72d18

    mul-long v60, v54, v58

    add-long v36, v36, v60

    const-wide/32 v60, 0x9fb67

    mul-long v62, v54, v60

    add-long v7, v7, v62

    const-wide/32 v62, 0xf39ad

    mul-long v64, v54, v62

    sub-long v40, v40, v64

    const-wide/32 v64, 0x215d1

    mul-long v66, v54, v64

    add-long v5, v5, v66

    const-wide/32 v66, 0xa6f7d

    mul-long v54, v54, v66

    sub-long v9, v9, v54

    mul-long v54, v27, v56

    add-long v1, v1, v54

    mul-long v54, v27, v58

    add-long v3, v3, v54

    mul-long v54, v27, v60

    add-long v36, v36, v54

    mul-long v54, v27, v62

    sub-long v7, v7, v54

    mul-long v54, v27, v64

    add-long v40, v40, v54

    mul-long v27, v27, v66

    sub-long v5, v5, v27

    mul-long v27, v11, v56

    add-long v32, v32, v27

    mul-long v27, v11, v58

    add-long v1, v1, v27

    mul-long v27, v11, v60

    add-long v3, v3, v27

    mul-long v27, v11, v62

    sub-long v36, v36, v27

    mul-long v27, v11, v64

    add-long v7, v7, v27

    mul-long v11, v11, v66

    sub-long v40, v40, v11

    mul-long v11, v50, v56

    add-long v11, v34, v11

    mul-long v27, v50, v58

    add-long v32, v32, v27

    mul-long v27, v50, v60

    add-long v1, v1, v27

    mul-long v27, v50, v62

    sub-long v3, v3, v27

    mul-long v27, v50, v64

    add-long v36, v36, v27

    mul-long v50, v50, v66

    sub-long v7, v7, v50

    mul-long v27, v48, v56

    add-long v27, v38, v27

    mul-long v34, v48, v58

    add-long v11, v11, v34

    mul-long v34, v48, v60

    add-long v32, v32, v34

    mul-long v34, v48, v62

    sub-long v1, v1, v34

    mul-long v34, v48, v64

    add-long v3, v3, v34

    mul-long v48, v48, v66

    sub-long v36, v36, v48

    mul-long v34, v14, v56

    add-long v23, v23, v34

    mul-long v34, v14, v58

    add-long v27, v27, v34

    mul-long v34, v14, v60

    add-long v11, v11, v34

    mul-long v34, v14, v62

    sub-long v32, v32, v34

    mul-long v34, v14, v64

    add-long v1, v1, v34

    mul-long v14, v14, v66

    sub-long/2addr v3, v14

    const-wide/32 v13, 0x100000

    add-long v34, v23, v13

    const/16 v0, 0x15

    shr-long v34, v34, v0

    add-long v27, v27, v34

    shl-long v34, v34, v0

    sub-long v23, v23, v34

    add-long v34, v11, v13

    shr-long v34, v34, v0

    add-long v32, v32, v34

    shl-long v34, v34, v0

    sub-long v11, v11, v34

    add-long v34, v1, v13

    shr-long v34, v34, v0

    add-long v3, v3, v34

    shl-long v34, v34, v0

    sub-long v1, v1, v34

    add-long v34, v36, v13

    shr-long v34, v34, v0

    add-long v7, v7, v34

    shl-long v34, v34, v0

    sub-long v36, v36, v34

    add-long v34, v40, v13

    shr-long v34, v34, v0

    add-long v5, v5, v34

    shl-long v34, v34, v0

    sub-long v40, v40, v34

    add-long v34, v9, v13

    shr-long v34, v34, v0

    add-long v46, v46, v34

    shl-long v34, v34, v0

    sub-long v9, v9, v34

    add-long v34, v27, v13

    shr-long v34, v34, v0

    add-long v11, v11, v34

    shl-long v34, v34, v0

    sub-long v27, v27, v34

    add-long v34, v32, v13

    shr-long v34, v34, v0

    add-long v1, v1, v34

    shl-long v34, v34, v0

    sub-long v32, v32, v34

    add-long v34, v3, v13

    shr-long v34, v34, v0

    add-long v36, v36, v34

    shl-long v34, v34, v0

    sub-long v3, v3, v34

    add-long v34, v7, v13

    shr-long v34, v34, v0

    add-long v40, v40, v34

    shl-long v34, v34, v0

    sub-long v7, v7, v34

    add-long v34, v5, v13

    shr-long v34, v34, v0

    add-long v9, v9, v34

    shl-long v34, v34, v0

    sub-long v5, v5, v34

    mul-long v34, v46, v56

    add-long v34, v52, v34

    mul-long v38, v46, v58

    add-long v23, v23, v38

    mul-long v38, v46, v60

    add-long v27, v27, v38

    mul-long v38, v46, v62

    sub-long v11, v11, v38

    mul-long v38, v46, v64

    add-long v32, v32, v38

    mul-long v46, v46, v66

    sub-long v1, v1, v46

    mul-long v38, v9, v56

    add-long v16, v16, v38

    mul-long v38, v9, v58

    add-long v34, v34, v38

    mul-long v38, v9, v60

    add-long v23, v23, v38

    mul-long v38, v9, v62

    sub-long v27, v27, v38

    mul-long v38, v9, v64

    add-long v11, v11, v38

    mul-long v9, v9, v66

    sub-long v32, v32, v9

    mul-long v9, v5, v56

    add-long v9, v21, v9

    mul-long v21, v5, v58

    add-long v16, v16, v21

    mul-long v21, v5, v60

    add-long v34, v34, v21

    mul-long v21, v5, v62

    sub-long v23, v23, v21

    mul-long v21, v5, v64

    add-long v27, v27, v21

    mul-long v5, v5, v66

    sub-long/2addr v11, v5

    mul-long v5, v40, v56

    add-long v5, v44, v5

    mul-long v21, v40, v58

    add-long v9, v9, v21

    mul-long v21, v40, v60

    add-long v16, v16, v21

    mul-long v21, v40, v62

    sub-long v34, v34, v21

    mul-long v21, v40, v64

    add-long v23, v23, v21

    mul-long v40, v40, v66

    sub-long v27, v27, v40

    mul-long v21, v7, v56

    add-long v21, v42, v21

    mul-long v38, v7, v58

    add-long v5, v5, v38

    mul-long v38, v7, v60

    add-long v9, v9, v38

    mul-long v38, v7, v62

    sub-long v16, v16, v38

    mul-long v38, v7, v64

    add-long v34, v34, v38

    mul-long v7, v7, v66

    sub-long v23, v23, v7

    mul-long v7, v36, v56

    add-long v7, v30, v7

    mul-long v30, v36, v58

    add-long v21, v21, v30

    mul-long v30, v36, v60

    add-long v5, v5, v30

    mul-long v30, v36, v62

    sub-long v9, v9, v30

    mul-long v30, v36, v64

    add-long v16, v16, v30

    mul-long v36, v36, v66

    sub-long v34, v34, v36

    add-long v30, v7, v13

    const/16 v0, 0x15

    shr-long v29, v30, v0

    add-long v21, v21, v29

    shl-long v29, v29, v0

    sub-long v7, v7, v29

    add-long v29, v5, v13

    shr-long v29, v29, v0

    add-long v9, v9, v29

    shl-long v29, v29, v0

    sub-long v5, v5, v29

    add-long v29, v16, v13

    shr-long v29, v29, v0

    add-long v34, v34, v29

    shl-long v29, v29, v0

    sub-long v16, v16, v29

    add-long v29, v23, v13

    shr-long v29, v29, v0

    add-long v27, v27, v29

    shl-long v29, v29, v0

    sub-long v23, v23, v29

    add-long v29, v11, v13

    shr-long v29, v29, v0

    add-long v32, v32, v29

    shl-long v29, v29, v0

    sub-long v11, v11, v29

    add-long v29, v1, v13

    shr-long v29, v29, v0

    add-long v3, v3, v29

    shl-long v29, v29, v0

    sub-long v1, v1, v29

    add-long v29, v21, v13

    shr-long v29, v29, v0

    add-long v5, v5, v29

    shl-long v29, v29, v0

    sub-long v21, v21, v29

    add-long v29, v9, v13

    shr-long v29, v29, v0

    add-long v16, v16, v29

    shl-long v29, v29, v0

    sub-long v9, v9, v29

    add-long v29, v34, v13

    shr-long v29, v29, v0

    add-long v23, v23, v29

    shl-long v29, v29, v0

    sub-long v34, v34, v29

    add-long v29, v27, v13

    shr-long v29, v29, v0

    add-long v11, v11, v29

    shl-long v29, v29, v0

    sub-long v27, v27, v29

    add-long v29, v32, v13

    shr-long v29, v29, v0

    add-long v1, v1, v29

    shl-long v29, v29, v0

    sub-long v32, v32, v29

    add-long/2addr v13, v3

    shr-long/2addr v13, v0

    shl-long v30, v13, v0

    sub-long v3, v3, v30

    mul-long v30, v13, v56

    add-long v7, v7, v30

    mul-long v30, v13, v58

    add-long v21, v21, v30

    mul-long v30, v13, v60

    add-long v5, v5, v30

    mul-long v30, v13, v62

    sub-long v9, v9, v30

    mul-long v30, v13, v64

    add-long v16, v16, v30

    mul-long v13, v13, v66

    sub-long v34, v34, v13

    const/16 v0, 0x15

    shr-long v13, v7, v0

    add-long v21, v21, v13

    shl-long/2addr v13, v0

    sub-long/2addr v7, v13

    shr-long v13, v21, v0

    add-long/2addr v5, v13

    shl-long/2addr v13, v0

    sub-long v21, v21, v13

    shr-long v13, v5, v0

    add-long/2addr v9, v13

    shl-long/2addr v13, v0

    sub-long/2addr v5, v13

    shr-long v13, v9, v0

    add-long v16, v16, v13

    shl-long/2addr v13, v0

    sub-long/2addr v9, v13

    shr-long v13, v16, v0

    add-long v34, v34, v13

    shl-long/2addr v13, v0

    sub-long v16, v16, v13

    shr-long v13, v34, v0

    add-long v23, v23, v13

    shl-long/2addr v13, v0

    sub-long v34, v34, v13

    shr-long v13, v23, v0

    add-long v27, v27, v13

    shl-long/2addr v13, v0

    sub-long v23, v23, v13

    shr-long v13, v27, v0

    add-long/2addr v11, v13

    shl-long/2addr v13, v0

    sub-long v27, v27, v13

    shr-long v13, v11, v0

    add-long v32, v32, v13

    shl-long/2addr v13, v0

    sub-long/2addr v11, v13

    shr-long v13, v32, v0

    add-long/2addr v1, v13

    shl-long/2addr v13, v0

    sub-long v32, v32, v13

    shr-long v13, v1, v0

    add-long/2addr v3, v13

    shl-long/2addr v13, v0

    sub-long/2addr v1, v13

    shr-long v13, v3, v0

    shl-long v30, v13, v0

    sub-long v3, v3, v30

    mul-long v56, v56, v13

    add-long v7, v7, v56

    mul-long v58, v58, v13

    add-long v21, v21, v58

    mul-long v60, v60, v13

    add-long v5, v5, v60

    mul-long v62, v62, v13

    sub-long v9, v9, v62

    mul-long v64, v64, v13

    add-long v16, v16, v64

    mul-long v13, v13, v66

    sub-long v34, v34, v13

    const/16 v0, 0x15

    shr-long v13, v7, v0

    add-long v21, v21, v13

    shl-long/2addr v13, v0

    sub-long/2addr v7, v13

    shr-long v13, v21, v0

    add-long/2addr v5, v13

    shl-long/2addr v13, v0

    sub-long v21, v21, v13

    shr-long v13, v5, v0

    add-long/2addr v9, v13

    shl-long/2addr v13, v0

    sub-long/2addr v5, v13

    shr-long v13, v9, v0

    add-long v16, v16, v13

    shl-long/2addr v13, v0

    sub-long/2addr v9, v13

    shr-long v13, v16, v0

    add-long v34, v34, v13

    shl-long/2addr v13, v0

    sub-long v16, v16, v13

    shr-long v13, v34, v0

    add-long v23, v23, v13

    shl-long/2addr v13, v0

    sub-long v34, v34, v13

    shr-long v13, v23, v0

    add-long v27, v27, v13

    shl-long/2addr v13, v0

    sub-long v23, v23, v13

    shr-long v13, v27, v0

    add-long/2addr v11, v13

    shl-long/2addr v13, v0

    sub-long v27, v27, v13

    shr-long v13, v11, v0

    add-long v32, v32, v13

    shl-long/2addr v13, v0

    sub-long/2addr v11, v13

    shr-long v13, v32, v0

    add-long/2addr v1, v13

    shl-long/2addr v13, v0

    sub-long v32, v32, v13

    shr-long v13, v1, v0

    add-long/2addr v3, v13

    shl-long/2addr v13, v0

    sub-long/2addr v1, v13

    long-to-int v0, v7

    int-to-byte v0, v0

    const/16 v13, 0x8

    shr-long v14, v7, v13

    long-to-int v14, v14

    int-to-byte v15, v14

    const/16 v14, 0x10

    shr-long/2addr v7, v14

    const/4 v14, 0x5

    shl-long v30, v21, v14

    or-long v7, v7, v30

    long-to-int v7, v7

    int-to-byte v7, v7

    shr-long v13, v21, v26

    long-to-int v8, v13

    int-to-byte v8, v8

    const/16 v13, 0xb

    shr-long v13, v21, v13

    long-to-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x13

    shr-long v21, v21, v14

    const/4 v14, 0x2

    shl-long v30, v5, v14

    move/from16 v25, v15

    or-long v14, v21, v30

    long-to-int v14, v14

    int-to-byte v15, v14

    move/from16 v21, v7

    move/from16 v22, v8

    const/4 v14, 0x6

    shr-long v7, v5, v14

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0xe

    shr-long/2addr v5, v8

    const/4 v8, 0x7

    shl-long v30, v9, v8

    or-long v5, v5, v30

    long-to-int v5, v5

    int-to-byte v5, v5

    move v8, v5

    shr-long v5, v9, v20

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x9

    move/from16 v30, v5

    shr-long v5, v9, v6

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x11

    shr-long/2addr v9, v6

    shl-long v36, v16, v18

    or-long v9, v9, v36

    long-to-int v6, v9

    int-to-byte v6, v6

    shr-long v9, v16, v18

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0xc

    move/from16 v31, v9

    shr-long v9, v16, v10

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x14

    shr-long v16, v16, v10

    shl-long v36, v34, v20

    move/from16 v38, v9

    or-long v9, v16, v36

    long-to-int v9, v9

    int-to-byte v9, v9

    move/from16 v16, v5

    move/from16 v17, v6

    const/4 v10, 0x7

    shr-long v5, v34, v10

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xf

    shr-long v34, v34, v6

    const/4 v6, 0x6

    shl-long v36, v23, v6

    move v10, v5

    or-long v5, v34, v36

    long-to-int v5, v5

    int-to-byte v5, v5

    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v6, 0x2

    shr-long v9, v23, v6

    long-to-int v6, v9

    int-to-byte v6, v6

    move v10, v15

    const/16 v9, 0xa

    shr-long v14, v23, v9

    long-to-int v9, v14

    int-to-byte v9, v9

    const/16 v14, 0x12

    shr-long v23, v23, v14

    shl-long v14, v27, v26

    or-long v14, v23, v14

    long-to-int v14, v14

    int-to-byte v15, v14

    move/from16 v23, v5

    move/from16 v24, v6

    const/4 v14, 0x5

    shr-long v5, v27, v14

    long-to-int v5, v5

    int-to-byte v5, v5

    move/from16 v36, v15

    const/16 v6, 0xd

    shr-long v14, v27, v6

    long-to-int v6, v14

    int-to-byte v6, v6

    long-to-int v14, v11

    int-to-byte v15, v14

    move/from16 v27, v5

    move/from16 v28, v6

    const/16 v14, 0x8

    shr-long v5, v11, v14

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x10

    shr-long/2addr v11, v6

    const/4 v6, 0x5

    shl-long v39, v32, v6

    or-long v11, v11, v39

    long-to-int v6, v11

    int-to-byte v6, v6

    shr-long v11, v32, v26

    long-to-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0xb

    move/from16 v37, v11

    shr-long v11, v32, v12

    long-to-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0x13

    shr-long v32, v32, v12

    const/4 v12, 0x2

    shl-long v39, v1, v12

    move v12, v15

    or-long v14, v32, v39

    long-to-int v14, v14

    int-to-byte v14, v14

    move/from16 v32, v5

    move/from16 v33, v6

    const/4 v15, 0x6

    shr-long v5, v1, v15

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xe

    shr-long/2addr v1, v6

    const/4 v6, 0x7

    shl-long v39, v3, v6

    or-long v1, v1, v39

    long-to-int v1, v1

    int-to-byte v1, v1

    move v6, v1

    shr-long v1, v3, v20

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x9

    move v15, v1

    shr-long v1, v3, v2

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x11

    shr-long v2, v3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x20

    .line 321
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    aput-byte v25, v3, v20

    const/4 v0, 0x2

    aput-byte v21, v3, v0

    aput-byte v22, v3, v26

    aput-byte v13, v3, v18

    const/4 v0, 0x5

    aput-byte v10, v3, v0

    const/4 v0, 0x6

    aput-byte v7, v3, v0

    const/4 v0, 0x7

    aput-byte v8, v3, v0

    const/16 v0, 0x8

    aput-byte v30, v3, v0

    const/16 v0, 0x9

    aput-byte v16, v3, v0

    const/16 v0, 0xa

    aput-byte v17, v3, v0

    const/16 v0, 0xb

    aput-byte v31, v3, v0

    const/16 v0, 0xc

    aput-byte v38, v3, v0

    const/16 v0, 0xd

    aput-byte v34, v3, v0

    const/16 v0, 0xe

    aput-byte v35, v3, v0

    const/16 v0, 0xf

    aput-byte v23, v3, v0

    const/16 v0, 0x10

    aput-byte v24, v3, v0

    const/16 v0, 0x11

    aput-byte v9, v3, v0

    const/16 v0, 0x12

    aput-byte v36, v3, v0

    const/16 v0, 0x13

    aput-byte v27, v3, v0

    const/16 v0, 0x14

    aput-byte v28, v3, v0

    const/16 v0, 0x15

    aput-byte v12, v3, v0

    const/16 v0, 0x16

    aput-byte v32, v3, v0

    const/16 v0, 0x17

    aput-byte v33, v3, v0

    const/16 v0, 0x18

    aput-byte v37, v3, v0

    const/16 v0, 0x19

    aput-byte v11, v3, v0

    const/16 v0, 0x1a

    aput-byte v14, v3, v0

    const/16 v0, 0x1b

    aput-byte v5, v3, v0

    const/16 v0, 0x1c

    aput-byte v6, v3, v0

    const/16 v0, 0x1d

    aput-byte v15, v3, v0

    const/16 v0, 0x1e

    aput-byte v1, v3, v0

    const/16 v0, 0x1f

    aput-byte v2, v3, v0

    return-object v3
.end method
