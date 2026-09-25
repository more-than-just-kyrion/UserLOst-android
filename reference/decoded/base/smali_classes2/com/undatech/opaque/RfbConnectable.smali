.class public interface abstract Lcom/undatech/opaque/RfbConnectable;
.super Ljava/lang/Object;
.source "RfbConnectable.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract desktopName()Ljava/lang/String;
.end method

.method public abstract framebufferHeight()I
.end method

.method public abstract framebufferWidth()I
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract isCertificateAccepted()Z
.end method

.method public abstract isInNormalProtocol()Z
.end method

.method public abstract requestResolution(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract requestUpdate(Z)V
.end method

.method public abstract setCertificateAccepted(Z)V
.end method

.method public abstract setIsInNormalProtocol(Z)V
.end method

.method public abstract writeClientCutText(Ljava/lang/String;)V
.end method

.method public abstract writeFramebufferUpdateRequest(IIIIZ)V
.end method

.method public abstract writeKeyEvent(IIZ)V
.end method

.method public abstract writePointerEvent(IIIIZ)V
.end method

.method public abstract writeSetPixelFormat(IIZZIIIIIIZ)V
.end method
