.class public interface abstract Lcom/freerdp/freerdpcore/services/LibFreeRDP$EventListener;
.super Ljava/lang/Object;
.source "LibFreeRDP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/services/LibFreeRDP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract OnConnectionFailure(J)V
.end method

.method public abstract OnConnectionSuccess(J)V
.end method

.method public abstract OnDisconnected(J)V
.end method

.method public abstract OnDisconnecting(J)V
.end method

.method public abstract OnPreConnect(J)V
.end method
