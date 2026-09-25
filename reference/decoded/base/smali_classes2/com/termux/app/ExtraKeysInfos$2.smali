.class Lcom/termux/app/ExtraKeysInfos$2;
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

    .line 114
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 116
    const-string v0, "ENTER"

    const-string v1, "\u21b2"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "TAB"

    const-string v1, "\u21b9"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "BKSP"

    const-string v1, "\u232b"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "DEL"

    const-string v1, "\u2326"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "DRAWER"

    const-string v1, "\u2630"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "KEYBOARD"

    const-string v1, "\u2328"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
