.class Lcom/google/crypto/tink/internal/Ed25519$XYZ;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XYZ"
.end annotation


# instance fields
.field final x:[J

.field final y:[J

.field final z:[J


# direct methods
.method constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    .line 76
    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>([J[J[J)V

    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialXYZT"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;-><init>()V

    .line 96
    invoke-static {p0, p1}, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/internal/Ed25519$XYZ;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xyz"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    .line 90
    iget-object v0, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    .line 91
    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    return-void
.end method

.method constructor <init>([J[J[J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    .line 84
    iput-object p2, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    .line 85
    iput-object p3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    return-void
.end method

.method static fromPartialXYZT(Lcom/google/crypto/tink/internal/Ed25519$XYZ;Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/internal/Ed25519$XYZ;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/internal/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    iget-object p1, p1, Lcom/google/crypto/tink/internal/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    return-object p0
.end method


# virtual methods
.method isOnCurve()Z
    .locals 6

    const/16 v0, 0xa

    .line 127
    new-array v1, v0, [J

    .line 128
    iget-object v2, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 129
    new-array v2, v0, [J

    .line 130
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 131
    new-array v3, v0, [J

    .line 132
    iget-object v4, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 133
    new-array v4, v0, [J

    .line 134
    invoke-static {v4, v3}, Lcom/google/crypto/tink/internal/Field25519;->square([J[J)V

    .line 135
    new-array v5, v0, [J

    .line 137
    invoke-static {v5, v2, v1}, Lcom/google/crypto/tink/internal/Field25519;->sub([J[J[J)V

    .line 139
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 140
    new-array v0, v0, [J

    .line 142
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 144
    sget-object v1, Lcom/google/crypto/tink/internal/Ed25519Constants;->D:[J

    invoke-static {v0, v0, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 146
    invoke-static {v0, v4}, Lcom/google/crypto/tink/internal/Field25519;->sum([J[J)V

    .line 149
    invoke-static {v0, v0}, Lcom/google/crypto/tink/internal/Field25519;->reduce([J[J)V

    .line 151
    invoke-static {v5}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    return v0
.end method

.method toBytes()[B
    .locals 4

    const/16 v0, 0xa

    .line 114
    new-array v1, v0, [J

    .line 115
    new-array v2, v0, [J

    .line 116
    new-array v0, v0, [J

    .line 117
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->z:[J

    invoke-static {v1, v3}, Lcom/google/crypto/tink/internal/Field25519;->inverse([J[J)V

    .line 118
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->x:[J

    invoke-static {v2, v3, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 119
    iget-object v3, p0, Lcom/google/crypto/tink/internal/Ed25519$XYZ;->y:[J

    invoke-static {v0, v3, v1}, Lcom/google/crypto/tink/internal/Field25519;->mult([J[J[J)V

    .line 120
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Field25519;->contract([J)[B

    move-result-object v0

    const/16 v1, 0x1f

    .line 121
    aget-byte v3, v0, v1

    invoke-static {v2}, Lcom/google/crypto/tink/internal/Ed25519;->access$000([J)I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
