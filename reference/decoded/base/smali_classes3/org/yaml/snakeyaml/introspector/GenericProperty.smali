.class public abstract Lorg/yaml/snakeyaml/introspector/GenericProperty;
.super Lorg/yaml/snakeyaml/introspector/Property;
.source "GenericProperty.java"


# instance fields
.field private actualClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private actualClassesChecked:Z

.field private genType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    iput-object p3, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    if-nez v0, :cond_7

    .line 38
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 39
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 40
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 41
    array-length v1, v0

    if-lez v1, :cond_6

    .line 42
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Class;

    iput-object v1, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    move v1, v3

    .line 43
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 44
    aget-object v4, v0, v1

    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v5, v1

    goto :goto_1

    .line 46
    :cond_0
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    .line 47
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 48
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v5, v1

    goto :goto_1

    .line 49
    :cond_1
    instance-of v5, v4, Ljava/lang/reflect/GenericArrayType;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 50
    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    .line 51
    invoke-interface {v4}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 52
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 53
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v5, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    goto :goto_2

    .line 60
    :cond_3
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    goto :goto_2

    .line 65
    :cond_4
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_5

    .line 66
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 68
    new-array v1, v2, [Ljava/lang/Class;

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v1, v3

    iput-object v1, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    goto :goto_2

    .line 70
    :cond_5
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 72
    check-cast v0, Ljava/lang/Class;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    new-array v0, v2, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    .line 75
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/GenericProperty;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .line 78
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    .line 80
    :cond_7
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    return-object v0
.end method
