package com.google.mlkit.md.camera;

import com.iiordanov.pubkeygenerator.PreferenceConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: FrameMetadata.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/google/mlkit/md/camera/FrameMetadata;", "", "width", "", "height", PreferenceConstants.ROTATION, "(III)V", "getHeight", "()I", "getRotation", "getWidth", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FrameMetadata {
    private final int height;
    private final int rotation;
    private final int width;

    public FrameMetadata(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.rotation = i3;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getRotation() {
        return this.rotation;
    }

    public final int getWidth() {
        return this.width;
    }
}
