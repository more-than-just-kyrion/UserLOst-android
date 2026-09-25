package com.google.mlkit.md.camera;

import java.nio.ByteBuffer;
import kotlin.Metadata;

/* JADX INFO: compiled from: FrameProcessor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&¨\u0006\u000b"}, d2 = {"Lcom/google/mlkit/md/camera/FrameProcessor;", "", "process", "", "data", "Ljava/nio/ByteBuffer;", "frameMetadata", "Lcom/google/mlkit/md/camera/FrameMetadata;", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "stop", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface FrameProcessor {
    void process(ByteBuffer data, FrameMetadata frameMetadata, GraphicOverlay graphicOverlay);

    void stop();
}
