.class Lcom/termux/app/ExtraKeysInfos$11;
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

    .line 203
    invoke-direct {p0}, Lcom/termux/app/ExtraKeysInfos$CharDisplayMap;-><init>()V

    .line 204
    const-string v0, "ESCAPE"

    const-string v1, "ESC"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "CONTROL"

    const-string v1, "CTRL"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "RETURN"

    const-string v1, "ENTER"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "FUNCTION"

    const-string v1, "FN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "LT"

    const-string v1, "LEFT"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "RT"

    const-string v1, "RIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "DN"

    const-string v1, "DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "PAGEUP"

    const-string v1, "PGUP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "PAGE_UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "PAGE UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "PAGE-UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "PAGEDOWN"

    const-string v1, "PGDN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "PAGE_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "PAGE-DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "DELETE"

    const-string v1, "DEL"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "BACKSPACE"

    const-string v1, "BKSP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "BACKSLASH"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "QUOTE"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "APOSTROPHE"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/ExtraKeysInfos$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
