package com.undatech.opaque;

/* JADX INFO: loaded from: classes2.dex */
public interface RfbConnectable {
    void close();

    String desktopName();

    int framebufferHeight();

    int framebufferWidth();

    String getEncoding();

    boolean isCertificateAccepted();

    boolean isInNormalProtocol();

    void requestResolution(int i, int i2) throws Exception;

    void requestUpdate(boolean z);

    void setCertificateAccepted(boolean z);

    void setIsInNormalProtocol(boolean z);

    void writeClientCutText(String str);

    void writeFramebufferUpdateRequest(int i, int i2, int i3, int i4, boolean z);

    void writeKeyEvent(int i, int i2, boolean z);

    void writePointerEvent(int i, int i2, int i3, int i4, boolean z);

    void writeSetPixelFormat(int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z3);
}
