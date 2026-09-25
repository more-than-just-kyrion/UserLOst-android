.class Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;
.super Ljava/util/AbstractList;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/util/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeUnmodifiableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final array1:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final array2:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 95
    aget-object p1, v0, p1

    goto :goto_0

    .line 96
    :cond_0
    array-length v1, v0

    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 97
    array-length v0, v0

    sub-int/2addr p1, v0

    aget-object p1, v2, p1

    :goto_0
    return-object p1

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", Size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
