.class public abstract Lio/moatwel/crypto/eddsa/EncodedCoordinate;
.super Ljava/lang/Object;
.source "EncodedCoordinate.java"


# instance fields
.field protected final value:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->value:[B

    return-void
.end method


# virtual methods
.method public abstract decode()Lio/moatwel/crypto/eddsa/Coordinate;
.end method

.method public getValue()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EncodedCoordinate;->value:[B

    return-object v0
.end method
