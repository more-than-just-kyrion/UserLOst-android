.class public Lcom/trilead/ssh2/util/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_2
    new-array v2, v3, [Ljava/lang/String;

    move v4, v1

    :goto_1
    if-ge v1, v3, :cond_5

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 37
    const-string v5, ""

    aput-object v5, v2, v1

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 42
    :cond_4
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/2addr v5, v0

    move v4, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method
