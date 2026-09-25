.class Lcom/termux/app/ExtraKeysInfos$8;
.super Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;
.source "ExtraKeysInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/ExtraKeysInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 173
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->classicArrowsDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$8;->putAll(Ljava/util/Map;)V

    .line 174
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->wellKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$8;->putAll(Ljava/util/Map;)V

    .line 175
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->lessKnownCharactersDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$8;->putAll(Ljava/util/Map;)V

    .line 176
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->nicerLookingDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$8;->putAll(Ljava/util/Map;)V

    return-void
.end method
