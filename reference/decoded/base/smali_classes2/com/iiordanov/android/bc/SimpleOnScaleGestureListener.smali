.class public Lcom/iiordanov/android/bc/SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "SimpleOnScaleGestureListener.java"

# interfaces
.implements Lcom/iiordanov/android/bc/OnScaleGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/iiordanov/android/bc/IBCScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Lcom/iiordanov/android/bc/IBCScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Lcom/iiordanov/android/bc/IBCScaleGestureDetector;)V
    .locals 0

    return-void
.end method
