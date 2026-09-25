.class public interface abstract Lcom/iiordanov/bVNC/input/AbstractInputHandler;
.super Ljava/lang/Object;
.source "AbstractInputHandler.java"


# virtual methods
.method public abstract getHandlerDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;)Z
.end method
