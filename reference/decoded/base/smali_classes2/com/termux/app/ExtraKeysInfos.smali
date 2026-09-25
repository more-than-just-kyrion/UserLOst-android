.class public Lcom/termux/app/ExtraKeysInfos;
.super Ljava/lang/Object;
.source "ExtraKeysInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;,
        Lcom/termux/app/ExtraKeysInfos$CleverMap;
    }
.end annotation


# static fields
.field static final arrowTriangleVariationDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field private static final arrowsOnlyCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field static final classicArrowsDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field private static final controlCharsAliases:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field private static final defaultCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field private static final fullIsoCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field static final lessKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field private static final lotsOfArrowsCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field static final nicerLookingDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field static final notKnownIsoCharacters:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

.field static final wellKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;


# instance fields
.field private buttons:[[Lcom/termux/app/ExtraKeyButton;

.field private style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$1;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$1;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->classicArrowsDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 114
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$2;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$2;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->wellKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 124
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$3;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$3;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->lessKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 133
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$4;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$4;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->arrowTriangleVariationDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 141
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$5;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$5;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->notKnownIsoCharacters:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 149
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$6;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$6;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->nicerLookingDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 162
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$7;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$7;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->defaultCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 172
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$8;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$8;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->lotsOfArrowsCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 182
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$9;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$9;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->arrowsOnlyCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 192
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$10;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$10;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->fullIsoCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    .line 203
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$11;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$11;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysInfos;->controlCharsAliases:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/termux/app/ExtraKeysInfos;->style:Ljava/lang/String;

    .line 32
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array v0, p1, [[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 34
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 35
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v4, v0, v2

    move v4, v1

    .line 37
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 38
    aget-object v5, v0, v2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-array p2, p1, [[Lcom/termux/app/ExtraKeyButton;

    iput-object p2, p0, Lcom/termux/app/ExtraKeysInfos;->buttons:[[Lcom/termux/app/ExtraKeyButton;

    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 45
    iget-object v2, p0, Lcom/termux/app/ExtraKeysInfos;->buttons:[[Lcom/termux/app/ExtraKeyButton;

    aget-object v3, v0, p2

    array-length v3, v3

    new-array v3, v3, [Lcom/termux/app/ExtraKeyButton;

    aput-object v3, v2, p2

    move v2, v1

    .line 46
    :goto_3
    aget-object v3, v0, p2

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 47
    aget-object v3, v3, v2

    .line 49
    invoke-static {v3}, Lcom/termux/app/ExtraKeysInfos;->normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    const-string v4, "popup"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    new-instance v4, Lcom/termux/app/ExtraKeyButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysInfos;->getSelectedCharMap()Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/termux/app/ExtraKeyButton;-><init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 58
    :cond_2
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/termux/app/ExtraKeysInfos;->normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    new-instance v5, Lcom/termux/app/ExtraKeyButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysInfos;->getSelectedCharMap()Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/termux/app/ExtraKeyButton;-><init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;)V

    .line 60
    new-instance v4, Lcom/termux/app/ExtraKeyButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysInfos;->getSelectedCharMap()Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    move-result-object v6

    invoke-direct {v4, v6, v3, v5}, Lcom/termux/app/ExtraKeyButton;-><init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;Lcom/termux/app/ExtraKeyButton;)V

    .line 63
    :goto_4
    iget-object v3, p0, Lcom/termux/app/ExtraKeysInfos;->buttons:[[Lcom/termux/app/ExtraKeyButton;

    aget-object v3, v3, p2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 76
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 77
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "An key in the extra-key matrix must be a string or an object"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replaceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 257
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->controlCharsAliases:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {v0, p0, p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getMatrix()[[Lcom/termux/app/ExtraKeyButton;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/termux/app/ExtraKeysInfos;->buttons:[[Lcom/termux/app/ExtraKeyButton;

    return-object v0
.end method

.method getSelectedCharMap()Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/termux/app/ExtraKeysInfos;->style:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "arrows-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "arrows-all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 248
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->defaultCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    return-object v0

    .line 246
    :pswitch_0
    new-instance v0, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    return-object v0

    .line 244
    :pswitch_1
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->fullIsoCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    return-object v0

    .line 240
    :pswitch_2
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->arrowsOnlyCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    return-object v0

    .line 242
    :pswitch_3
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->lotsOfArrowsCharDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x661dd922 -> :sswitch_3
        -0x5d96e5f1 -> :sswitch_2
        0x179a1 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
