.class Lcom/termux/app/ExtraKeysInfos$9;
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

    .line 182
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 183
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->classicArrowsDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$9;->putAll(Ljava/util/Map;)V

    .line 186
    sget-object v0, Lcom/termux/app/ExtraKeysInfos;->nicerLookingDisplay:Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysInfos$9;->putAll(Ljava/util/Map;)V

    return-void
.end method
