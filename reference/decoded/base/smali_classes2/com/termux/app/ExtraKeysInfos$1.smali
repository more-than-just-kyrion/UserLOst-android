.class Lcom/termux/app/ExtraKeysInfos$1;
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
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 108
    const-string v0, "LEFT"

    const-string v1, "\u2190"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "RIGHT"

    const-string v1, "\u2192"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "UP"

    const-string v1, "\u2191"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "DOWN"

    const-string v1, "\u2193"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
