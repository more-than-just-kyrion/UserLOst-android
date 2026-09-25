package com.google.mlkit.md.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.graphics.RectF;
import android.preference.PreferenceManager;
import com.google.android.gms.common.images.Size;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.md.camera.CameraSizePair;
import com.google.mlkit.md.camera.GraphicOverlay;
import com.google.mlkit.vision.barcode.common.Barcode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import tech.ula.library.R;

/* JADX INFO: compiled from: PreferenceUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0002J\"\u0010\u000e\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u001a"}, d2 = {"Lcom/google/mlkit/md/settings/PreferenceUtils;", "", "()V", "getBarcodeReticleBox", "Landroid/graphics/RectF;", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "getBooleanPref", "", "context", "Landroid/content/Context;", "prefKeyId", "", "defaultValue", "getIntPref", "getProgressToMeetBarcodeSizeRequirement", "", OptionalModuleUtils.BARCODE, "Lcom/google/mlkit/vision/barcode/common/Barcode;", "getUserSpecifiedPreviewSize", "Lcom/google/mlkit/md/camera/CameraSizePair;", "saveStringPreference", "", "value", "", "shouldDelayLoadingBarcodeResult", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PreferenceUtils {
    public static final PreferenceUtils INSTANCE = new PreferenceUtils();

    public final boolean shouldDelayLoadingBarcodeResult(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return false;
    }

    private PreferenceUtils() {
    }

    public final void saveStringPreference(Context context, int prefKeyId, String value) {
        Intrinsics.checkNotNullParameter(context, "context");
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(context.getString(prefKeyId), value).apply();
    }

    public final float getProgressToMeetBarcodeSizeRequirement(GraphicOverlay overlay, Barcode barcode) {
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(barcode, "barcode");
        Context context = overlay.getContext();
        Intrinsics.checkNotNull(context);
        if (!getBooleanPref(context, R.string.pref_key_enable_barcode_size_check, false)) {
            return 1.0f;
        }
        float fWidth = getBarcodeReticleBox(overlay).width();
        Rect boundingBox = barcode.getBoundingBox();
        return RangesKt.coerceAtMost(overlay.translateX(boundingBox != null ? boundingBox.width() : 0.0f) / ((fWidth * getIntPref(context, R.string.pref_key_minimum_barcode_width, 50)) / 100), 1.0f);
    }

    public final RectF getBarcodeReticleBox(GraphicOverlay overlay) {
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Context context = overlay.getContext();
        float width = overlay.getWidth();
        float height = overlay.getHeight();
        Intrinsics.checkNotNull(context);
        float f = 100;
        float intPref = (getIntPref(context, R.string.pref_key_barcode_reticle_width, 80) * width) / f;
        float intPref2 = (getIntPref(context, R.string.pref_key_barcode_reticle_height, 35) * height) / f;
        float f2 = 2;
        float f3 = width / f2;
        float f4 = height / f2;
        float f5 = intPref / f2;
        float f6 = intPref2 / f2;
        return new RectF(f3 - f5, f4 - f6, f3 + f5, f4 + f6);
    }

    private final int getIntPref(Context context, int prefKeyId, int defaultValue) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = context.getString(prefKeyId);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return defaultSharedPreferences.getInt(string, defaultValue);
    }

    public final CameraSizePair getUserSpecifiedPreviewSize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            String string = context.getString(R.string.pref_key_rear_camera_preview_size);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = context.getString(R.string.pref_key_rear_camera_picture_size);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            String string3 = defaultSharedPreferences.getString(string, null);
            String string4 = defaultSharedPreferences.getString(string2, null);
            if (string3 == null || string4 == null) {
                return null;
            }
            Size size = Size.parseSize(string3);
            Intrinsics.checkNotNullExpressionValue(size, "parseSize(...)");
            return new CameraSizePair(size, Size.parseSize(string4));
        } catch (Exception unused) {
            return null;
        }
    }

    private final boolean getBooleanPref(Context context, int prefKeyId, boolean defaultValue) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(context.getString(prefKeyId), defaultValue);
    }
}
