.class interface abstract Lcom/termux/view/TerminalView$CursorController;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/view/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CursorController"
.end annotation


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isActive()Z
.end method

.method public abstract onDetached()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract show()V
.end method

.method public abstract updatePosition()V
.end method

.method public abstract updatePosition(Lcom/termux/view/TerminalView$HandleView;II)V
.end method
