.class public final Lorg/yaml/snakeyaml/error/Mark;
.super Ljava/lang/Object;
.source "Mark.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private buffer:[I

.field private column:I

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[CI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[CI)V
    .locals 7

    .line 45
    invoke-static {p5}, Lorg/yaml/snakeyaml/error/Mark;->toCodePoints([C)[I

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[II)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    .line 62
    iput p3, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    .line 63
    iput p4, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    .line 64
    iput-object p5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    .line 65
    iput p6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    return-void
.end method

.method private isLineBreak(I)Z
    .locals 1

    .line 69
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result p1

    return p1
.end method

.method private static toCodePoints([C)[I
    .locals 4

    .line 35
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    new-array v0, v0, [I

    move v2, v1

    .line 36
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 37
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    .line 38
    aput v3, v0, v2

    .line 39
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBuffer()[I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPointer()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    return v0
.end method

.method public get_snippet()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x4b

    .line 113
    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_snippet(II)Ljava/lang/String;
    .locals 8

    .line 73
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 74
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 76
    :goto_0
    const-string v1, " ... "

    const-string v2, ""

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 78
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    move-object v3, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 85
    :goto_1
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 86
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget v5, v5, v4

    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 88
    iget v6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2

    add-int/lit8 v4, v4, -0x4

    goto :goto_3

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 95
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    .line 96
    :goto_4
    const-string v6, " "

    if-ge v5, p1, :cond_4

    .line 97
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_5

    .line 101
    iget-object v7, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    aget v7, v7, v5

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_6
    iget v1, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    if-ge v2, v1, :cond_6

    .line 106
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 108
    :cond_6
    const-string p1, "^"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, ", line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
