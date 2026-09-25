package tech.ula.library.model.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001e\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J;\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010$\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\nHÖ\u0001R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006("}, d2 = {"Ltech/ula/library/model/entities/DisplayPreferences;", "", "orientation", "", "locked", "", "scaling", "", "remember", "geometry", "", "(IZFZLjava/lang/String;)V", "getGeometry", "()Ljava/lang/String;", "setGeometry", "(Ljava/lang/String;)V", "getLocked", "()Z", "setLocked", "(Z)V", "getOrientation", "()I", "setOrientation", "(I)V", "getRemember", "setRemember", "getScaling", "()F", "setScaling", "(F)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DisplayPreferences {
    private String geometry;
    private boolean locked;
    private int orientation;
    private boolean remember;
    private float scaling;

    public DisplayPreferences() {
        this(0, false, 0.0f, false, null, 31, null);
    }

    public static /* synthetic */ DisplayPreferences copy$default(DisplayPreferences displayPreferences, int i, boolean z, float f, boolean z2, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = displayPreferences.orientation;
        }
        if ((i2 & 2) != 0) {
            z = displayPreferences.locked;
        }
        boolean z3 = z;
        if ((i2 & 4) != 0) {
            f = displayPreferences.scaling;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            z2 = displayPreferences.remember;
        }
        boolean z4 = z2;
        if ((i2 & 16) != 0) {
            str = displayPreferences.geometry;
        }
        return displayPreferences.copy(i, z3, f2, z4, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getOrientation() {
        return this.orientation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getLocked() {
        return this.locked;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getScaling() {
        return this.scaling;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getRemember() {
        return this.remember;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGeometry() {
        return this.geometry;
    }

    public final DisplayPreferences copy(int orientation, boolean locked, float scaling, boolean remember, String geometry) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        return new DisplayPreferences(orientation, locked, scaling, remember, geometry);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DisplayPreferences)) {
            return false;
        }
        DisplayPreferences displayPreferences = (DisplayPreferences) other;
        return this.orientation == displayPreferences.orientation && this.locked == displayPreferences.locked && Float.compare(this.scaling, displayPreferences.scaling) == 0 && this.remember == displayPreferences.remember && Intrinsics.areEqual(this.geometry, displayPreferences.geometry);
    }

    public int hashCode() {
        return (((((((Integer.hashCode(this.orientation) * 31) + Boolean.hashCode(this.locked)) * 31) + Float.hashCode(this.scaling)) * 31) + Boolean.hashCode(this.remember)) * 31) + this.geometry.hashCode();
    }

    public String toString() {
        return "DisplayPreferences(orientation=" + this.orientation + ", locked=" + this.locked + ", scaling=" + this.scaling + ", remember=" + this.remember + ", geometry=" + this.geometry + ")";
    }

    public DisplayPreferences(int i, boolean z, float f, boolean z2, String geometry) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        this.orientation = i;
        this.locked = z;
        this.scaling = f;
        this.remember = z2;
        this.geometry = geometry;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final boolean getLocked() {
        return this.locked;
    }

    public final void setLocked(boolean z) {
        this.locked = z;
    }

    public final float getScaling() {
        return this.scaling;
    }

    public final void setScaling(float f) {
        this.scaling = f;
    }

    public final boolean getRemember() {
        return this.remember;
    }

    public final void setRemember(boolean z) {
        this.remember = z;
    }

    public /* synthetic */ DisplayPreferences(int i, boolean z, float f, boolean z2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? 1.0f : f, (i2 & 8) == 0 ? z2 : false, (i2 & 16) != 0 ? "800x600" : str);
    }

    public final String getGeometry() {
        return this.geometry;
    }

    public final void setGeometry(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.geometry = str;
    }
}
