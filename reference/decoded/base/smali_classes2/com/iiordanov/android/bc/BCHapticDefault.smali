.class Lcom/iiordanov/android/bc/BCHapticDefault;
.super Ljava/lang/Object;
.source "BCHapticDefault.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCHaptic;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performLongPressHaptic(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result p1

    return p1
.end method
