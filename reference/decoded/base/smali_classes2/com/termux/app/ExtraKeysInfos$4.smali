.class Lcom/termux/app/ExtraKeysInfos$4;
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

    .line 133
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 135
    const-string v0, "LEFT"

    const-string v1, "\u25c0"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "RIGHT"

    const-string v1, "\u25b6"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "UP"

    const-string v1, "\u25b2"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "DOWN"

    const-string v1, "\u25bc"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
