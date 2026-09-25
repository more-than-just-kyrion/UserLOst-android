.class public interface abstract Lcom/freerdp/freerdpcore/presentation/SessionView$SessionViewListener;
.super Ljava/lang/Object;
.source "SessionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionViewListener"
.end annotation


# virtual methods
.method public abstract onSessionViewBeginTouch()V
.end method

.method public abstract onSessionViewEndTouch()V
.end method

.method public abstract onSessionViewLeftTouch(IIZ)V
.end method

.method public abstract onSessionViewMove(II)V
.end method

.method public abstract onSessionViewRightTouch(IIZ)V
.end method

.method public abstract onSessionViewScroll(Z)V
.end method
