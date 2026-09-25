.class synthetic Lio/moatwel/crypto/Hashes$1;
.super Ljava/lang/Object;
.source "Hashes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/moatwel/crypto/Hashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$moatwel$crypto$HashAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    invoke-static {}, Lio/moatwel/crypto/HashAlgorithm;->values()[Lio/moatwel/crypto/HashAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/moatwel/crypto/Hashes$1;->$SwitchMap$io$moatwel$crypto$HashAlgorithm:[I

    :try_start_0
    sget-object v1, Lio/moatwel/crypto/HashAlgorithm;->SHAKE_128:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {v1}, Lio/moatwel/crypto/HashAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/moatwel/crypto/Hashes$1;->$SwitchMap$io$moatwel$crypto$HashAlgorithm:[I

    sget-object v1, Lio/moatwel/crypto/HashAlgorithm;->SHAKE_256:Lio/moatwel/crypto/HashAlgorithm;

    invoke-virtual {v1}, Lio/moatwel/crypto/HashAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
