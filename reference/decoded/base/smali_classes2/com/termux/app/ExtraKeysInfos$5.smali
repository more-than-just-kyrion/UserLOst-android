.class Lcom/termux/app/ExtraKeysInfos$5;
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

    .line 141
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 144
    const-string v0, "CTRL"

    const-string v1, "\u2388"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "ALT"

    const-string v1, "\u2387"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "ESC"

    const-string v1, "\u238b"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
