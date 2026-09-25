package com.google.mlkit.md;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.YuvImage;
import android.hardware.Camera;
import android.net.Uri;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.mlkit.md.camera.CameraSizePair;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\b\rJ(\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0006J\u0018\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u001b\u0010\"\u001a\b\u0012\u0004\u0012\u00020\b0#2\u0006\u0010\u000b\u001a\u00020\fH\u0002¢\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ'\u0010&\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010 \u001a\u00020!2\u0006\u0010'\u001a\u00020\u0006H\u0000¢\u0006\u0002\b(J$\u0010)\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020!2\b\u0010+\u001a\u0004\u0018\u00010\u000fH\u0002J\u0015\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0000¢\u0006\u0002\b0J\u0015\u00101\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0000¢\u0006\u0002\b2R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/google/mlkit/md/Utils;", "", "()V", "ASPECT_RATIO_TOLERANCE", "", "REQUEST_CODE_PHOTO_LIBRARY", "", "TAG", "", "allPermissionsGranted", "", "context", "Landroid/content/Context;", "allPermissionsGranted$UserLOstLibrary_UserLOstRelease", "convertToBitmap", "Landroid/graphics/Bitmap;", "data", "Ljava/nio/ByteBuffer;", "width", "height", "rotationDegrees", "generateValidPreviewSizeList", "", "Lcom/google/mlkit/md/camera/CameraSizePair;", PreferenceConstants.CAMERA, "Landroid/hardware/Camera;", "getCornerRoundedBitmap", "srcBitmap", "cornerRadius", "getExifOrientationTag", "resolver", "Landroid/content/ContentResolver;", "imageUri", "Landroid/net/Uri;", "getRequiredPermissions", "", "(Landroid/content/Context;)[Ljava/lang/String;", "isPortraitMode", "loadImage", "maxImageDimension", "loadImage$UserLOstLibrary_UserLOstRelease", "maybeTransformBitmap", "uri", "bitmap", "openImagePicker", "", "activity", "Landroid/app/Activity;", "openImagePicker$UserLOstLibrary_UserLOstRelease", "requestRuntimePermissions", "requestRuntimePermissions$UserLOstLibrary_UserLOstRelease", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Utils {
    public static final float ASPECT_RATIO_TOLERANCE = 0.01f;
    public static final Utils INSTANCE = new Utils();
    public static final int REQUEST_CODE_PHOTO_LIBRARY = 1;
    private static final String TAG = "Utils";

    private Utils() {
    }

    public final void requestRuntimePermissions$UserLOstLibrary_UserLOstRelease(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Activity activity2 = activity;
        String[] requiredPermissions = getRequiredPermissions(activity2);
        ArrayList arrayList = new ArrayList();
        for (String str : requiredPermissions) {
            if (ContextCompat.checkSelfPermission(activity2, str) != 0) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return;
        }
        ActivityCompat.requestPermissions(activity, (String[]) arrayList2.toArray(new String[0]), 0);
    }

    public final boolean allPermissionsGranted$UserLOstLibrary_UserLOstRelease(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        for (String str : getRequiredPermissions(context)) {
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                return false;
            }
        }
        return true;
    }

    private final String[] getRequiredPermissions(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                if (!(strArr.length == 0)) {
                    return strArr;
                }
            }
            return new String[0];
        } catch (Exception unused) {
            return new String[0];
        }
    }

    public final boolean isPortraitMode(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getResources().getConfiguration().orientation == 1;
    }

    public final List<CameraSizePair> generateValidPreviewSizeList(Camera camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        ArrayList arrayList = new ArrayList();
        for (Camera.Size size : supportedPreviewSizes) {
            float f = size.width / size.height;
            for (Camera.Size size2 : supportedPictureSizes) {
                if (Math.abs(f - (size2.width / size2.height)) < 0.01f) {
                    Intrinsics.checkNotNull(size);
                    arrayList.add(new CameraSizePair(size, size2));
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            Log.w(TAG, "No preview sizes have a corresponding same-aspect-ratio picture size.");
            for (Camera.Size size3 : supportedPreviewSizes) {
                Intrinsics.checkNotNull(size3);
                arrayList.add(new CameraSizePair(size3, (Camera.Size) null));
            }
        }
        return arrayList;
    }

    public final Bitmap getCornerRoundedBitmap(Bitmap srcBitmap, int cornerRadius) {
        Intrinsics.checkNotNullParameter(srcBitmap, "srcBitmap");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(srcBitmap.getWidth(), srcBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        float f = cornerRadius;
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, srcBitmap.getWidth(), srcBitmap.getHeight()), f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(srcBitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public final Bitmap convertToBitmap(ByteBuffer data, int width, int height, int rotationDegrees) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.rewind();
        int iLimit = data.limit();
        byte[] bArr = new byte[iLimit];
        data.get(bArr, 0, iLimit);
        try {
            YuvImage yuvImage = new YuvImage(bArr, 17, width, height, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, width, height), 80, byteArrayOutputStream);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
            byteArrayOutputStream.close();
            Matrix matrix = new Matrix();
            matrix.postRotate(rotationDegrees);
            return Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, true);
        } catch (Exception e) {
            Log.e(TAG, "Error: " + e.getMessage());
            return null;
        }
    }

    public final void openImagePicker$UserLOstLibrary_UserLOstRelease(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        activity.startActivityForResult(intent, 1);
    }

    public final Bitmap loadImage$UserLOstLibrary_UserLOstRelease(Context context, Uri imageUri, int maxImageDimension) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(imageUri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, options);
                int iMax = Math.max(options.outWidth / maxImageDimension, options.outHeight / maxImageDimension);
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = iMax;
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(imageUri);
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options2);
                    ContentResolver contentResolver = context.getContentResolver();
                    Intrinsics.checkNotNullExpressionValue(contentResolver, "getContentResolver(...)");
                    Bitmap bitmapMaybeTransformBitmap = maybeTransformBitmap(contentResolver, imageUri, bitmapDecodeStream);
                    if (inputStreamOpenInputStream2 != null) {
                        inputStreamOpenInputStream2.close();
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                    return bitmapMaybeTransformBitmap;
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamOpenInputStream2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStreamOpenInputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenInputStream = null;
        }
    }

    private final Bitmap maybeTransformBitmap(ContentResolver resolver, Uri uri, Bitmap bitmap) {
        Matrix matrix = null;
        switch (getExifOrientationTag(resolver, uri)) {
            case 2:
                matrix = new Matrix();
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix = new Matrix();
                matrix.postRotate(180.0f);
                break;
            case 4:
                matrix = new Matrix();
                matrix.postScale(1.0f, -1.0f);
                break;
            case 5:
                matrix = new Matrix();
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix = new Matrix();
                matrix.postRotate(90.0f);
                break;
            case 7:
                matrix = new Matrix();
                matrix.postRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix = new Matrix();
                matrix.postRotate(-90.0f);
                break;
        }
        Matrix matrix2 = matrix;
        if (matrix2 == null) {
            return bitmap;
        }
        Intrinsics.checkNotNull(bitmap);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0059  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    private final int getExifOrientationTag(ContentResolver resolver, Uri imageUri) {
        ExifInterface exifInterface;
        Throwable th;
        if (!Intrinsics.areEqual("content", imageUri.getScheme()) && !Intrinsics.areEqual("file", imageUri.getScheme())) {
            return 0;
        }
        ExifInterface exifInterface2 = null;
        try {
            InputStream inputStreamOpenInputStream = resolver.openInputStream(imageUri);
            if (inputStreamOpenInputStream != null) {
                try {
                    InputStream inputStream = inputStreamOpenInputStream;
                    try {
                        exifInterface = new ExifInterface(inputStream);
                        try {
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(inputStream, null);
                            exifInterface2 = exifInterface;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(inputStream, th);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        exifInterface = null;
                        th = th4;
                    }
                } catch (IOException e) {
                    e = e;
                    exifInterface2 = exifInterface;
                    Log.e(TAG, "Failed to open file to read rotation meta data: " + imageUri, e);
                    if (exifInterface2 != null) {
                        return exifInterface2.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
                    }
                    return 0;
                }
            }
        } catch (IOException e2) {
            e = e2;
        }
        if (exifInterface2 != null) {
            return exifInterface2.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        }
        return 0;
    }
}
