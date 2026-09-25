.class public final Lorg/yaml/snakeyaml/tokens/TagTuple;
.super Ljava/lang/Object;
.source "TagTuple.java"


# instance fields
.field private final handle:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 26
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->handle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->suffix:Ljava/lang/String;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Suffix must be provided."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHandle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->handle:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->suffix:Ljava/lang/String;

    return-object v0
.end method
