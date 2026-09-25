.class public interface abstract Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;
.super Ljava/lang/Object;
.source "LibFreeRDP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/services/LibFreeRDP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UIEventListener"
.end annotation


# virtual methods
.method public abstract OnAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
.end method

.method public abstract OnGatewayAuthenticate(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
.end method

.method public abstract OnGraphicsResize(III)V
.end method

.method public abstract OnGraphicsUpdate(IIII)V
.end method

.method public abstract OnRemoteClipboardChanged(Ljava/lang/String;)V
.end method

.method public abstract OnSettingsChanged(III)V
.end method

.method public abstract OnVerifiyCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract OnVerifyChangedCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
