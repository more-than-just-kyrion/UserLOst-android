.class public Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;
.super Ljava/lang/Object;
.source "CodecEncoding.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field private static canonicalCodecsToSpecifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x0

    .line 31
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    const/16 v1, 0x74

    .line 37
    new-array v1, v1, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v9, 0x8

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x9

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0xa

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xb

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xc

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0xd

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0xe

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xf

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x11

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x12

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x13

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x14

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x15

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x16

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v10, 0x20

    invoke-direct {v2, v8, v10}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v11, 0x17

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v11, 0x18

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v11, 0x19

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v11, 0x40

    invoke-direct {v2, v8, v11}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v12, 0x1a

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v12, 0x1b

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v12, 0x1c

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v12, 0x80

    invoke-direct {v2, v8, v12}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v13, 0x1d

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v13, 0x1e

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v13, 0x1f

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x21

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x22

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x23

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x24

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x25

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x26

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x27

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x28

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x29

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2a

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2b

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2c

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2d

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v8, 0xc0

    invoke-direct {v2, v5, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v13, 0x2f

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v13, 0xe0

    invoke-direct {v2, v5, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v14, 0x30

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v14, 0xf0

    invoke-direct {v2, v5, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v15, 0x31

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v15, 0xf8

    invoke-direct {v2, v5, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v16, 0x32

    aput-object v2, v1, v16

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v7, 0xfc

    invoke-direct {v2, v5, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v17, 0x33

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x34

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x35

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x36

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x37

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x38

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x39

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3a

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3b

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3c

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3d

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3e

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3f

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x41

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x42

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x43

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x44

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x45

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x46

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x47

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x48

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x49

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x4a

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4b

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4c

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4d

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4e

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4f

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x50

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x51

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x52

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x53

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x54

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x55

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x56

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x57

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x58

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x59

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5a

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5b

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5c

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v5, 0x4

    invoke-direct {v2, v5, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5d

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5e

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5f

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x60

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x61

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x62

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x63

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x64

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x65

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x66

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x67

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x68

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x69

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6a

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6b

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6c

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6d

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6e

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6f

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x70

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x71

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x72

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v3, 0x73

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 64
    new-instance v2, Ljava/util/HashMap;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    :goto_0
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 66
    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    sput-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v1, v0

    const/16 v2, 0x74

    if-ne v1, v2, :cond_18

    if-ltz p0, :cond_17

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/16 v1, 0x73

    if-gt p0, v1, :cond_1

    .line 102
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v2, :cond_4

    .line 105
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 106
    const-string p2, "End of buffer read whilst trying to decode codec"

    const/4 v2, -0x1

    if-eq p0, v2, :cond_3

    and-int/lit8 v3, p0, 0x1

    shr-int/lit8 v4, p0, 0x1

    and-int/2addr v4, v0

    shr-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v1

    .line 114
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eq p1, v2, :cond_2

    add-int/2addr p1, v1

    .line 120
    new-instance p2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p2, p0, p1, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    return-object p2

    .line 116
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v2, 0x75

    const/4 v3, 0x0

    if-lt p0, v2, :cond_d

    const/16 v4, 0x8c

    if-gt p0, v4, :cond_d

    sub-int/2addr p0, v2

    and-int/lit8 v2, p0, 0x3

    shr-int/lit8 v4, p0, 0x2

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_5

    move v4, v1

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    shr-int/lit8 v5, p0, 0x3

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_6

    move v5, v1

    goto :goto_1

    :cond_6
    move v5, v3

    :goto_1
    shr-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_7

    move v3, v1

    :cond_7
    if-eqz v5, :cond_9

    if-nez v3, :cond_8

    goto :goto_2

    .line 131
    :cond_8
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "ADef and BDef should never both be true"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    .line 133
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_a
    add-int/2addr v0, v1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    int-to-double v1, v2

    .line 134
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int p0, v1

    mul-int/2addr v0, p0

    if-eqz v5, :cond_b

    move-object p0, p2

    goto :goto_3

    .line 139
    :cond_b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    :goto_3
    if-eqz v3, :cond_c

    goto :goto_4

    .line 144
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 146
    :goto_4
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    invoke-direct {p1, v0, p0, p2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;-><init>(ILorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    :cond_d
    const/16 v0, 0x8d

    if-lt p0, v0, :cond_16

    const/16 v2, 0xbc

    if-gt p0, v2, :cond_16

    sub-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_5

    :cond_e
    move v0, v3

    :goto_5
    shr-int/lit8 v2, p0, 0x1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_f

    move v2, v1

    goto :goto_6

    :cond_f
    move v2, v3

    :goto_6
    shr-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v3

    :goto_7
    const/16 v3, 0xc

    .line 157
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 158
    aget p0, v3, p0

    if-eqz v1, :cond_13

    if-eqz v0, :cond_11

    move-object v0, p2

    goto :goto_8

    .line 163
    :cond_11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    :goto_8
    if-eqz v2, :cond_12

    goto :goto_9

    .line 164
    :cond_12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 170
    :goto_9
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {p1, v0, p0, p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    :cond_13
    if-eqz v0, :cond_14

    move-object p0, p2

    goto :goto_a

    .line 172
    :cond_14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    .line 173
    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    if-eqz v2, :cond_15

    goto :goto_b

    .line 174
    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p2

    .line 175
    :goto_b
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {p1, p0, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object p1

    .line 149
    :cond_16
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid codec encoding byte ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") found"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encoding cannot be less than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_18
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Canonical encodings have been incorrectly modified"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I
    .locals 9

    .line 179
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 184
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v0

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result p0

    sub-int/2addr p0, v2

    const/16 v0, 0x74

    filled-new-array {v0, p1, p0}, [I

    move-result-object p0

    return-object p0

    .line 191
    :cond_1
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 192
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getK()I

    move-result v0

    const/4 v5, 0x3

    if-gt v0, v3, :cond_2

    sub-int/2addr v0, v2

    move v3, v4

    goto :goto_0

    :cond_2
    const/16 v6, 0x1000

    if-gt v0, v6, :cond_3

    .line 201
    div-int/lit8 v0, v0, 0x10

    sub-int/2addr v0, v2

    move v3, v2

    goto :goto_0

    :cond_3
    const/high16 v7, 0x10000

    if-gt v0, v7, :cond_4

    .line 204
    div-int/2addr v0, v3

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_0

    .line 207
    :cond_4
    div-int/2addr v0, v6

    sub-int/2addr v0, v2

    move v3, v5

    .line 209
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getACodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v6

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getBCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object p0

    .line 212
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v1

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    add-int/lit8 v3, v3, 0x75

    if-ne v0, v5, :cond_7

    move v8, v4

    goto :goto_2

    :cond_7
    const/4 v8, 0x4

    :goto_2
    add-int/2addr v3, v8

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v3, v8

    if-ne v7, v2, :cond_8

    .line 218
    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    :cond_8
    invoke-static {v6, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v6

    :goto_3
    if-ne v7, v1, :cond_9

    .line 219
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_4

    :cond_9
    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    :goto_4
    if-ne v0, v5, :cond_a

    move p1, v4

    goto :goto_5

    :cond_a
    move p1, v2

    :goto_5
    add-int/2addr p1, v2

    .line 220
    array-length v7, v6

    add-int/2addr p1, v7

    array-length v7, p0

    add-int/2addr p1, v7

    new-array p1, p1, [I

    .line 221
    aput v3, p1, v4

    if-eq v0, v5, :cond_b

    .line 224
    aput v0, p1, v2

    goto :goto_6

    :cond_b
    move v1, v2

    .line 227
    :goto_6
    array-length v0, v6

    move v3, v4

    :goto_7
    if-ge v3, v0, :cond_c

    aget v5, v6, v3

    .line 228
    aput v5, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 231
    :cond_c
    array-length v0, p0

    :goto_8
    if-ge v4, v0, :cond_d

    aget v3, p0, v4

    .line 232
    aput v3, p1, v1

    add-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    return-object p1

    .line 237
    :cond_e
    instance-of v0, p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v0, :cond_17

    .line 238
    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getTokenCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v5

    .line 242
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 243
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object p0

    if-eqz p0, :cond_10

    .line 247
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-ne v0, p0, :cond_f

    move p0, v2

    goto :goto_9

    .line 249
    :cond_f
    instance-of p0, v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz p0, :cond_10

    .line 250
    move-object p0, v0

    check-cast p0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v8

    if-nez v8, :cond_10

    const/16 v8, 0xb

    .line 252
    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result p0

    sub-int/2addr v3, p0

    .line 254
    invoke-static {v8, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_10

    goto :goto_9

    :cond_10
    move p0, v4

    :goto_9
    add-int/lit16 v3, v6, 0x8d

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v3, v8

    mul-int/lit8 v8, p0, 0x4

    add-int/2addr v3, v8

    if-ne v6, v2, :cond_11

    .line 263
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_a

    :cond_11
    invoke-static {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v1

    :goto_a
    if-eqz p0, :cond_12

    .line 264
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_b

    :cond_12
    invoke-static {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    :goto_b
    if-ne v7, v2, :cond_13

    .line 265
    sget-object p1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_c

    :cond_13
    invoke-static {v5, p1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p1

    .line 266
    :goto_c
    array-length v0, v1

    add-int/2addr v0, v2

    array-length v5, p1

    add-int/2addr v0, v5

    array-length v5, p0

    add-int/2addr v0, v5

    new-array v0, v0, [I

    .line 267
    aput v3, v0, v4

    .line 269
    array-length v3, v1

    move v6, v2

    move v5, v4

    :goto_d
    if-ge v5, v3, :cond_14

    aget v7, v1, v5

    .line 270
    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 273
    :cond_14
    array-length v1, p0

    move v3, v4

    :goto_e
    if-ge v3, v1, :cond_15

    aget v5, p0, v3

    .line 274
    aput v5, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 277
    :cond_15
    array-length p0, p1

    :goto_f
    if-ge v4, p0, :cond_16

    aget v1, p1, v4

    .line 278
    aput v1, v0, v6

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifierForDefaultCodec(Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method
