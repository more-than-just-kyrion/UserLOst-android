package com.iiordanov.android.drawing;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.iiordanov.util.ObjectPool;
import com.iiordanov.util.SafeObjectPool;

/* JADX INFO: loaded from: classes2.dex */
public class OverlappingCopy {
    private static SafeObjectPool<Rect> ocRectPool = new SafeObjectPool<Rect>() { // from class: com.iiordanov.android.drawing.OverlappingCopy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.iiordanov.util.ObjectPool
        public Rect itemForPool() {
            return new Rect();
        }
    };

    private static void transformRect(Rect rect, Rect rect2, int i, int i2) {
        rect2.set(i < 0 ? rect.right * (-1) : rect.left, i2 < 0 ? rect.bottom * (-1) : rect.top, i < 0 ? rect.left * (-1) : rect.right, i2 < 0 ? rect.top * (-1) : rect.bottom);
    }

    private static void copyTransformedRect(Rect rect, Rect rect2, int i, int i2, Bitmap bitmap, Canvas canvas, Paint paint) {
        transformRect(rect, rect, i, i2);
        rect2.set(rect);
        rect2.offset(i, i2);
        canvas.drawBitmap(bitmap, rect, rect2, paint);
    }

    public static void Copy(Bitmap bitmap, Canvas canvas, Paint paint, Rect rect, int i, int i2) {
        Copy(bitmap, canvas, paint, rect, i, i2, ocRectPool);
    }

    public static void Copy(Bitmap bitmap, Canvas canvas, Paint paint, Rect rect, int i, int i2, ObjectPool<Rect> objectPool) {
        int i3;
        int i4;
        boolean z;
        int i5 = i - rect.left;
        int i6 = i2 - rect.top;
        int i7 = i5 < 0 ? -i5 : i5;
        int i8 = i6 < 0 ? -i6 : i6;
        if (i7 == 0 && i8 == 0) {
            return;
        }
        if (i7 >= rect.right - rect.left || i8 >= rect.bottom - rect.top) {
            ObjectPool.Entry<Rect> entryReserve = objectPool.reserve();
            Rect rect2 = entryReserve.get();
            rect2.set(rect.left + i5, rect.top + i6, rect.right + i5, rect.bottom + i6);
            canvas.drawBitmap(bitmap, rect, rect2, paint);
            objectPool.release(entryReserve);
            return;
        }
        ObjectPool.Entry<Rect> entryReserve2 = objectPool.reserve();
        Rect rect3 = entryReserve2.get();
        transformRect(rect, rect3, i5, i6);
        ObjectPool.Entry<Rect> entryReserve3 = objectPool.reserve();
        Rect rect4 = entryReserve3.get();
        rect4.set(rect3);
        rect4.offset(i7, i8);
        ObjectPool.Entry<Rect> entryReserve4 = objectPool.reserve();
        Rect rect5 = entryReserve4.get();
        rect5.setIntersect(rect3, rect4);
        if (i7 > i8) {
            i4 = (rect.bottom - rect.top) - i8;
            i3 = i7;
        } else {
            i3 = (rect.right - rect.left) - i7;
            i4 = i8;
        }
        ObjectPool.Entry<Rect> entryReserve5 = objectPool.reserve();
        Rect rect6 = entryReserve5.get();
        ObjectPool.Entry<Rect> entryReserve6 = objectPool.reserve();
        Rect rect7 = entryReserve6.get();
        boolean z2 = false;
        int i9 = 0;
        while (!z2) {
            int i10 = rect5.right - (i9 * i3);
            boolean z3 = z2;
            int i11 = i10 - i3;
            int i12 = i3;
            if (i11 <= rect5.left) {
                i11 = rect5.left;
                z = true;
            } else {
                z = z3;
            }
            boolean z4 = false;
            int i13 = 0;
            while (!z4) {
                boolean z5 = z;
                int i14 = rect5.bottom - (i13 * i4);
                ObjectPool.Entry<Rect> entry = entryReserve6;
                int i15 = i14 - i4;
                ObjectPool.Entry<Rect> entry2 = entryReserve5;
                if (i15 <= rect5.top) {
                    i15 = rect5.top;
                    z4 = true;
                }
                rect6.set(i11, i15, i10, i14);
                copyTransformedRect(rect6, rect7, i5, i6, bitmap, canvas, paint);
                i13++;
                i11 = i11;
                rect6 = rect6;
                rect5 = rect5;
                entryReserve6 = entry;
                entryReserve3 = entryReserve3;
                i10 = i10;
                entryReserve2 = entryReserve2;
                entryReserve5 = entry2;
                entryReserve4 = entryReserve4;
                z = z5;
            }
            i9++;
            z2 = z;
            entryReserve3 = entryReserve3;
            entryReserve2 = entryReserve2;
            i3 = i12;
        }
        Rect rect8 = rect6;
        ObjectPool.Entry<Rect> entry3 = entryReserve5;
        ObjectPool.Entry<Rect> entry4 = entryReserve4;
        ObjectPool.Entry<Rect> entry5 = entryReserve2;
        ObjectPool.Entry<Rect> entry6 = entryReserve3;
        ObjectPool.Entry<Rect> entry7 = entryReserve6;
        Rect rect9 = rect5;
        if (i7 > 0) {
            rect8.set(rect3.left, rect3.top, rect9.left, rect3.bottom);
            copyTransformedRect(rect8, rect7, i5, i6, bitmap, canvas, paint);
        }
        if (i8 > 0) {
            rect8.set(rect9.left, rect3.top, rect3.right, rect9.top);
            copyTransformedRect(rect8, rect7, i5, i6, bitmap, canvas, paint);
        }
        objectPool.release(entry7);
        objectPool.release(entry3);
        objectPool.release(entry4);
        objectPool.release(entry6);
        objectPool.release(entry5);
    }
}
