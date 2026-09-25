package com.freerdp.freerdpcore.presentation;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.utils.GestureDetector;

/* JADX INFO: loaded from: classes.dex */
public class TouchPointerView extends ImageView {
    private static final int DEFAULT_TOUCH_POINTER_RESTORE_DELAY = 150;
    private static final int POINTER_ACTION_CLOSE = 3;
    private static final int POINTER_ACTION_CURSOR = 0;
    private static final int POINTER_ACTION_EXTKEYBOARD = 8;
    private static final int POINTER_ACTION_KEYBOARD = 7;
    private static final int POINTER_ACTION_LCLICK = 4;
    private static final int POINTER_ACTION_MOVE = 4;
    private static final int POINTER_ACTION_RCLICK = 2;
    private static final int POINTER_ACTION_RESET = 6;
    private static final int POINTER_ACTION_SCROLL = 5;
    private static final float SCROLL_DELTA = 10.0f;
    private GestureDetector gestureDetector;
    private TouchPointerListener listener;
    private RectF[] pointerAreaRects;
    private boolean pointerMoving;
    private RectF pointerRect;
    private boolean pointerScrolling;
    private Matrix translationMatrix;
    private UIHandler uiHandler;

    public interface TouchPointerListener {
        void onTouchPointerClose();

        void onTouchPointerLeftClick(int i, int i2, boolean z);

        void onTouchPointerMove(int i, int i2);

        void onTouchPointerResetScrollZoom();

        void onTouchPointerRightClick(int i, int i2, boolean z);

        void onTouchPointerScroll(boolean z);

        void onTouchPointerToggleExtKeyboard();

        void onTouchPointerToggleKeyboard();
    }

    public TouchPointerView(Context context) {
        super(context);
        this.pointerAreaRects = new RectF[9];
        this.pointerMoving = false;
        this.pointerScrolling = false;
        this.listener = null;
        this.uiHandler = new UIHandler();
        initTouchPointer(context);
    }

    public TouchPointerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pointerAreaRects = new RectF[9];
        this.pointerMoving = false;
        this.pointerScrolling = false;
        this.listener = null;
        this.uiHandler = new UIHandler();
        initTouchPointer(context);
    }

    public TouchPointerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.pointerAreaRects = new RectF[9];
        this.pointerMoving = false;
        this.pointerScrolling = false;
        this.listener = null;
        this.uiHandler = new UIHandler();
        initTouchPointer(context);
    }

    private void initTouchPointer(Context context) {
        GestureDetector gestureDetector = new GestureDetector(context, new TouchPointerGestureListener(), null, true);
        this.gestureDetector = gestureDetector;
        gestureDetector.setLongPressTimeout(500);
        this.translationMatrix = new Matrix();
        setScaleType(ImageView.ScaleType.MATRIX);
        setImageMatrix(this.translationMatrix);
        float intrinsicWidth = getDrawable().getIntrinsicWidth() / 3.0f;
        float intrinsicWidth2 = getDrawable().getIntrinsicWidth() / 3.0f;
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = (int) (i2 * intrinsicWidth);
                int i4 = (int) (i * intrinsicWidth2);
                this.pointerAreaRects[(i * 3) + i2] = new RectF(i3, i4, ((int) intrinsicWidth) + i3, ((int) intrinsicWidth2) + i4);
            }
        }
        this.pointerRect = new RectF(0.0f, 0.0f, getDrawable().getIntrinsicWidth(), getDrawable().getIntrinsicHeight());
    }

    public void setTouchPointerListener(TouchPointerListener touchPointerListener) {
        this.listener = touchPointerListener;
    }

    public int getPointerWidth() {
        return getDrawable().getIntrinsicWidth();
    }

    public int getPointerHeight() {
        return getDrawable().getIntrinsicHeight();
    }

    public float[] getPointerPosition() {
        float[] fArr = new float[2];
        this.translationMatrix.mapPoints(fArr);
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void movePointer(float f, float f2) {
        this.translationMatrix.postTranslate(f, f2);
        setImageMatrix(this.translationMatrix);
    }

    private void ensureVisibility(int i, int i2) {
        float[] fArr = new float[2];
        this.translationMatrix.mapPoints(fArr);
        float f = i;
        if (fArr[0] > f - this.pointerRect.width()) {
            fArr[0] = f - this.pointerRect.width();
        }
        if (fArr[0] < 0.0f) {
            fArr[0] = 0.0f;
        }
        float f2 = i2;
        if (fArr[1] > f2 - this.pointerRect.height()) {
            fArr[1] = f2 - this.pointerRect.height();
        }
        if (fArr[1] < 0.0f) {
            fArr[1] = 0.0f;
        }
        this.translationMatrix.setTranslate(fArr[0], fArr[1]);
        setImageMatrix(this.translationMatrix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayPointerImageAction(int i) {
        setPointerImage(i);
        this.uiHandler.sendEmptyMessageDelayed(0, 150L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPointerImage(int i) {
        setImageResource(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCurrentPointerArea(int i) {
        RectF rectF = new RectF(this.pointerAreaRects[i]);
        this.translationMatrix.mapRect(rectF);
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean pointerAreaTouched(MotionEvent motionEvent, int i) {
        RectF rectF = new RectF(this.pointerAreaRects[i]);
        this.translationMatrix.mapRect(rectF);
        return rectF.contains(motionEvent.getX(), motionEvent.getY());
    }

    private boolean pointerTouched(MotionEvent motionEvent) {
        RectF rectF = new RectF(this.pointerRect);
        this.translationMatrix.mapRect(rectF);
        return rectF.contains(motionEvent.getX(), motionEvent.getY());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.pointerMoving || this.pointerScrolling || pointerTouched(motionEvent)) {
            return this.gestureDetector.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            ensureVisibility(i3 - i, i4 - i2);
        }
    }

    private class UIHandler extends Handler {
        UIHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            TouchPointerView.this.setPointerImage(R.drawable.touch_pointer_default);
        }
    }

    private class TouchPointerGestureListener extends GestureDetector.SimpleOnGestureListener {
        private MotionEvent prevEvent;

        private TouchPointerGestureListener() {
            this.prevEvent = null;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (!TouchPointerView.this.pointerAreaTouched(motionEvent, 4)) {
                if (TouchPointerView.this.pointerAreaTouched(motionEvent, 5)) {
                    this.prevEvent = MotionEvent.obtain(motionEvent);
                    TouchPointerView.this.pointerScrolling = true;
                    TouchPointerView.this.setPointerImage(R.drawable.touch_pointer_scroll);
                }
            } else {
                this.prevEvent = MotionEvent.obtain(motionEvent);
                TouchPointerView.this.pointerMoving = true;
            }
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onUp(MotionEvent motionEvent) {
            MotionEvent motionEvent2 = this.prevEvent;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
                this.prevEvent = null;
            }
            if (TouchPointerView.this.pointerScrolling) {
                TouchPointerView.this.setPointerImage(R.drawable.touch_pointer_default);
            }
            TouchPointerView.this.pointerMoving = false;
            TouchPointerView.this.pointerScrolling = false;
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (TouchPointerView.this.pointerAreaTouched(motionEvent, 4)) {
                TouchPointerView.this.setPointerImage(R.drawable.touch_pointer_active);
                TouchPointerView.this.pointerMoving = true;
                RectF currentPointerArea = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), true);
            }
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPressUp(MotionEvent motionEvent) {
            if (TouchPointerView.this.pointerMoving) {
                TouchPointerView.this.setPointerImage(R.drawable.touch_pointer_default);
                TouchPointerView.this.pointerMoving = false;
                RectF currentPointerArea = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), false);
            }
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (TouchPointerView.this.pointerMoving) {
                TouchPointerView.this.movePointer((int) (motionEvent2.getX() - this.prevEvent.getX()), (int) (motionEvent2.getY() - this.prevEvent.getY()));
                this.prevEvent.recycle();
                this.prevEvent = MotionEvent.obtain(motionEvent2);
                RectF currentPointerArea = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerMove((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY());
                return true;
            }
            if (!TouchPointerView.this.pointerScrolling) {
                return false;
            }
            float y = motionEvent2.getY() - this.prevEvent.getY();
            if (y > TouchPointerView.SCROLL_DELTA) {
                TouchPointerView.this.listener.onTouchPointerScroll(true);
                this.prevEvent.recycle();
                this.prevEvent = MotionEvent.obtain(motionEvent2);
            } else if (y < -10.0f) {
                TouchPointerView.this.listener.onTouchPointerScroll(false);
                this.prevEvent.recycle();
                this.prevEvent = MotionEvent.obtain(motionEvent2);
            }
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (TouchPointerView.this.pointerAreaTouched(motionEvent, 3)) {
                TouchPointerView.this.listener.onTouchPointerClose();
            } else if (TouchPointerView.this.pointerAreaTouched(motionEvent, 4)) {
                TouchPointerView.this.displayPointerImageAction(R.drawable.touch_pointer_lclick);
                RectF currentPointerArea = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), true);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), false);
            } else if (TouchPointerView.this.pointerAreaTouched(motionEvent, 2)) {
                TouchPointerView.this.displayPointerImageAction(R.drawable.touch_pointer_rclick);
                RectF currentPointerArea2 = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerRightClick((int) currentPointerArea2.centerX(), (int) currentPointerArea2.centerY(), true);
                TouchPointerView.this.listener.onTouchPointerRightClick((int) currentPointerArea2.centerX(), (int) currentPointerArea2.centerY(), false);
            } else if (TouchPointerView.this.pointerAreaTouched(motionEvent, 7)) {
                TouchPointerView.this.displayPointerImageAction(R.drawable.touch_pointer_keyboard);
                TouchPointerView.this.listener.onTouchPointerToggleKeyboard();
            } else if (TouchPointerView.this.pointerAreaTouched(motionEvent, 8)) {
                TouchPointerView.this.displayPointerImageAction(R.drawable.touch_pointer_extkeyboard);
                TouchPointerView.this.listener.onTouchPointerToggleExtKeyboard();
            } else if (TouchPointerView.this.pointerAreaTouched(motionEvent, 6)) {
                TouchPointerView.this.displayPointerImageAction(R.drawable.touch_pointer_reset);
                TouchPointerView.this.listener.onTouchPointerResetScrollZoom();
            }
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (TouchPointerView.this.pointerAreaTouched(motionEvent, 4)) {
                RectF currentPointerArea = TouchPointerView.this.getCurrentPointerArea(0);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), true);
                TouchPointerView.this.listener.onTouchPointerLeftClick((int) currentPointerArea.centerX(), (int) currentPointerArea.centerY(), false);
            }
            return true;
        }
    }
}
