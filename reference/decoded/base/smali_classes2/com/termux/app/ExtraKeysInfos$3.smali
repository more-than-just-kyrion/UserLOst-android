.class Lcom/termux/app/ExtraKeysInfos$3;
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

    .line 124
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 127
    const-string v0, "HOME"

    const-string v1, "\u21f1"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "END"

    const-string v1, "\u21f2"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "PGUP"

    const-string v1, "\u21d1"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "PGDN"

    const-string v1, "\u21d3"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
