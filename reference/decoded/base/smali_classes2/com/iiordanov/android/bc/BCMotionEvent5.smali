.class Lcom/iiordanov/android/bc/BCMotionEvent5;
.super Ljava/lang/Object;
.source "BCMotionEvent5.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCMotionEvent;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 0

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    return p1
.end method
