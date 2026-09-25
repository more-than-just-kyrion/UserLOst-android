.class Lcom/termux/app/ExtraKeyButton;
.super Ljava/lang/Object;
.source "ExtraKeysInfos.java"


# instance fields
.field private display:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private macro:Z

.field private popup:Lcom/termux/app/ExtraKeyButton;


# direct methods
.method public constructor <init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/ExtraKeyButton;-><init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;Lcom/termux/app/ExtraKeyButton;)V

    return-void
.end method

.method public constructor <init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Lorg/json/JSONObject;Lcom/termux/app/ExtraKeyButton;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/termux/app/ExtraKeyButton;->popup:Lcom/termux/app/ExtraKeyButton;

    .line 291
    const-string v1, "key"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    const-string v2, "macro"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Both key and macro can\'t be set for the same key"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_1
    :goto_0
    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 297
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    .line 298
    iput-boolean v4, p0, Lcom/termux/app/ExtraKeyButton;->macro:Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 301
    iput-boolean v5, p0, Lcom/termux/app/ExtraKeyButton;->macro:Z

    .line 306
    :goto_1
    array-length v1, v2

    if-ge v4, v1, :cond_3

    .line 307
    aget-object v1, v2, v4

    invoke-static {v1}, Lcom/termux/app/ExtraKeysInfos;->replaceAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 310
    :cond_3
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/ExtraKeyButton;->key:Ljava/lang/String;

    .line 312
    const-string v1, "display"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 314
    iput-object p2, p0, Lcom/termux/app/ExtraKeyButton;->display:Ljava/lang/String;

    goto :goto_2

    .line 316
    :cond_4
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/termux/app/ExtraKeyButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/termux/app/ExtraKeyButton$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;)V

    .line 317
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 318
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/termux/app/ExtraKeyButton;->display:Ljava/lang/String;

    .line 321
    :goto_2
    iput-object p3, p0, Lcom/termux/app/ExtraKeyButton;->popup:Lcom/termux/app/ExtraKeyButton;

    return-void

    .line 303
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "All keys have to specify either key or macro"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$new$0(Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 317
    invoke-virtual {p0, p1, p1}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/termux/app/ExtraKeyButton;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/termux/app/ExtraKeyButton;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPopup()Lcom/termux/app/ExtraKeyButton;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/termux/app/ExtraKeyButton;->popup:Lcom/termux/app/ExtraKeyButton;

    return-object v0
.end method

.method public isMacro()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/termux/app/ExtraKeyButton;->macro:Z

    return v0
.end method
