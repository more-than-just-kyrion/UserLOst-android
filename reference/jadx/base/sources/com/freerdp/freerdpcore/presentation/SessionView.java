package com.freerdp.freerdpcore.presentation;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.freerdp.freerdpcore.application.SessionState;
import com.freerdp.freerdpcore.utils.DoubleGestureDetector;
import com.freerdp.freerdpcore.utils.GestureDetector;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class SessionView extends View {
    public static final float MAX_SCALE_FACTOR = 3.0f;
    public static final float MIN_SCALE_FACTOR = 1.0f;
    private static final float SCALE_FACTOR_DELTA = 1.0E-4f;
    private static final String TAG = "SessionView";
    private static final float TOUCH_SCROLL_DELTA = 10.0f;
    private SessionState currentSession;
    private DoubleGestureDetector doubleGestureDetector;
    private GestureDetector gestureDetector;
    private int height;
    private Matrix invScaleMatrix;
    private RectF invalidRegionF;
    private Stack<Rect> invalidRegions;
    private float scaleFactor;
    private Matrix scaleMatrix;
    private SessionViewListener sessionViewListener;
    private BitmapDrawable surface;
    private int touchPointerPaddingHeight;
    private int touchPointerPaddingWidth;
    private int width;

    public interface SessionViewListener {
        void onSessionViewBeginTouch();

        void onSessionViewEndTouch();

        void onSessionViewLeftTouch(int i, int i2, boolean z);

        void onSessionViewMove(int i, int i2);

        void onSessionViewRightTouch(int i, int i2, boolean z);

        void onSessionViewScroll(boolean z);
    }

    public SessionView(Context context) {
        super(context);
        this.touchPointerPaddingWidth = 0;
        this.touchPointerPaddingHeight = 0;
        this.sessionViewListener = null;
        this.scaleFactor = 1.0f;
        initSessionView(context);
    }

    public SessionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.touchPointerPaddingWidth = 0;
        this.touchPointerPaddingHeight = 0;
        this.sessionViewListener = null;
        this.scaleFactor = 1.0f;
        initSessionView(context);
    }

    public SessionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.touchPointerPaddingWidth = 0;
        this.touchPointerPaddingHeight = 0;
        this.sessionViewListener = null;
        this.scaleFactor = 1.0f;
        initSessionView(context);
    }

    private void initSessionView(Context context) {
        this.invalidRegions = new Stack<>();
        this.gestureDetector = new GestureDetector(context, new SessionGestureListener(), null, true);
        this.doubleGestureDetector = new DoubleGestureDetector(context, null, new SessionDoubleGestureListener());
        this.scaleFactor = 1.0f;
        this.scaleMatrix = new Matrix();
        this.invScaleMatrix = new Matrix();
        this.invalidRegionF = new RectF();
        setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    public void setScaleGestureDetector(ScaleGestureDetector scaleGestureDetector) {
        this.doubleGestureDetector.setScaleGestureDetector(scaleGestureDetector);
    }

    public void setSessionViewListener(SessionViewListener sessionViewListener) {
        this.sessionViewListener = sessionViewListener;
    }

    public void addInvalidRegion(Rect rect) {
        this.invalidRegionF.set(rect);
        this.scaleMatrix.mapRect(this.invalidRegionF);
        this.invalidRegionF.roundOut(rect);
        this.invalidRegions.add(rect);
    }

    public void invalidateRegion() {
        invalidate(this.invalidRegions.pop());
    }

    public void onSurfaceChange(SessionState sessionState) {
        BitmapDrawable surface = sessionState.getSurface();
        this.surface = surface;
        Bitmap bitmap = surface.getBitmap();
        this.width = bitmap.getWidth();
        int height = bitmap.getHeight();
        this.height = height;
        this.surface.setBounds(0, 0, this.width, height);
        setMinimumWidth(this.width);
        setMinimumHeight(this.height);
        requestLayout();
        this.currentSession = sessionState;
    }

    public float getZoom() {
        return this.scaleFactor;
    }

    public void setZoom(float f) {
        this.scaleFactor = f;
        this.scaleMatrix.setScale(f, f);
        Matrix matrix = this.invScaleMatrix;
        float f2 = this.scaleFactor;
        matrix.setScale(1.0f / f2, 1.0f / f2);
        requestLayout();
    }

    public boolean isAtMaxZoom() {
        return this.scaleFactor > 2.9999f;
    }

    public boolean isAtMinZoom() {
        return this.scaleFactor < 1.0001f;
    }

    public boolean zoomIn(float f) {
        boolean z;
        float f2 = this.scaleFactor + f;
        this.scaleFactor = f2;
        if (f2 > 2.9999f) {
            this.scaleFactor = 3.0f;
            z = false;
        } else {
            z = true;
        }
        setZoom(this.scaleFactor);
        return z;
    }

    public boolean zoomOut(float f) {
        boolean z;
        float f2 = this.scaleFactor - f;
        this.scaleFactor = f2;
        if (f2 < 1.0001f) {
            this.scaleFactor = 1.0f;
            z = false;
        } else {
            z = true;
        }
        setZoom(this.scaleFactor);
        return z;
    }

    public void setTouchPointerPadding(int i, int i2) {
        this.touchPointerPaddingWidth = i;
        this.touchPointerPaddingHeight = i2;
        requestLayout();
    }

    public int getTouchPointerPaddingWidth() {
        return this.touchPointerPaddingWidth;
    }

    public int getTouchPointerPaddingHeight() {
        return this.touchPointerPaddingHeight;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        Log.v(TAG, this.width + "x" + this.height);
        float f = this.width;
        float f2 = this.scaleFactor;
        setMeasuredDimension(((int) (f * f2)) + this.touchPointerPaddingWidth, ((int) (this.height * f2)) + this.touchPointerPaddingHeight);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.concat(this.scaleMatrix);
        this.surface.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 0) {
            ((SessionActivity) getContext()).onBackPressed();
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MotionEvent mapTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float[] fArr = {motionEventObtain.getX(), motionEventObtain.getY()};
        this.invScaleMatrix.mapPoints(fArr);
        motionEventObtain.setLocation(fArr[0], fArr[1]);
        return motionEventObtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MotionEvent mapDoubleTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float[] fArr = {(motionEventObtain.getX(0) + motionEventObtain.getX(1)) / 2.0f, (motionEventObtain.getY(0) + motionEventObtain.getY(1)) / 2.0f};
        this.invScaleMatrix.mapPoints(fArr);
        motionEventObtain.setLocation(fArr[0], fArr[1]);
        return motionEventObtain;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.doubleGestureDetector.onTouchEvent(motionEvent) | this.gestureDetector.onTouchEvent(motionEvent);
    }

    private class SessionGestureListener extends GestureDetector.SimpleOnGestureListener {
        boolean longPressInProgress;

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        private SessionGestureListener() {
            this.longPressInProgress = false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onUp(MotionEvent motionEvent) {
            SessionView.this.sessionViewListener.onSessionViewEndTouch();
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            MotionEvent motionEventMapTouchEvent = SessionView.this.mapTouchEvent(motionEvent);
            SessionView.this.sessionViewListener.onSessionViewBeginTouch();
            SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), true);
            this.longPressInProgress = true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPressUp(MotionEvent motionEvent) {
            MotionEvent motionEventMapTouchEvent = SessionView.this.mapTouchEvent(motionEvent);
            SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), false);
            this.longPressInProgress = false;
            SessionView.this.sessionViewListener.onSessionViewEndTouch();
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!this.longPressInProgress) {
                return false;
            }
            MotionEvent motionEventMapTouchEvent = SessionView.this.mapTouchEvent(motionEvent2);
            SessionView.this.sessionViewListener.onSessionViewMove((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY());
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            MotionEvent motionEventMapTouchEvent = SessionView.this.mapTouchEvent(motionEvent);
            SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), true);
            SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), false);
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.SimpleOnGestureListener, com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            MotionEvent motionEventMapTouchEvent = SessionView.this.mapTouchEvent(motionEvent);
            SessionView.this.sessionViewListener.onSessionViewBeginTouch();
            int buttonState = motionEvent.getButtonState();
            if (buttonState == 1) {
                SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), true);
                SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), false);
            } else if (buttonState == 2) {
                SessionView.this.sessionViewListener.onSessionViewRightTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), true);
                SessionView.this.sessionViewListener.onSessionViewRightTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), false);
                SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), true);
                SessionView.this.sessionViewListener.onSessionViewLeftTouch((int) motionEventMapTouchEvent.getX(), (int) motionEventMapTouchEvent.getY(), false);
            }
            SessionView.this.sessionViewListener.onSessionViewEndTouch();
            return true;
        }
    }

    private class SessionDoubleGestureListener implements DoubleGestureDetector.OnDoubleGestureListener {
        private MotionEvent prevEvent;

        private SessionDoubleGestureListener() {
            this.prevEvent = null;
        }

        @Override // com.freerdp.freerdpcore.utils.DoubleGestureDetector.OnDoubleGestureListener
        public boolean onDoubleTouchDown(MotionEvent motionEvent) {
            SessionView.this.sessionViewListener.onSessionViewBeginTouch();
            this.prevEvent = MotionEvent.obtain(motionEvent);
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.DoubleGestureDetector.OnDoubleGestureListener
        public boolean onDoubleTouchUp(MotionEvent motionEvent) {
            MotionEvent motionEvent2 = this.prevEvent;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
                this.prevEvent = null;
            }
            SessionView.this.sessionViewListener.onSessionViewEndTouch();
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.DoubleGestureDetector.OnDoubleGestureListener
        public boolean onDoubleTouchScroll(MotionEvent motionEvent, MotionEvent motionEvent2) {
            float y = motionEvent2.getY() - this.prevEvent.getY();
            if (y > SessionView.TOUCH_SCROLL_DELTA) {
                SessionView.this.sessionViewListener.onSessionViewScroll(true);
                this.prevEvent.recycle();
                this.prevEvent = MotionEvent.obtain(motionEvent2);
            } else if (y < -10.0f) {
                SessionView.this.sessionViewListener.onSessionViewScroll(false);
                this.prevEvent.recycle();
                this.prevEvent = MotionEvent.obtain(motionEvent2);
            }
            return true;
        }

        @Override // com.freerdp.freerdpcore.utils.DoubleGestureDetector.OnDoubleGestureListener
        public boolean onDoubleTouchSingleTap(MotionEvent motionEvent) {
            MotionEvent motionEventMapDoubleTouchEvent = SessionView.this.mapDoubleTouchEvent(motionEvent);
            SessionView.this.sessionViewListener.onSessionViewRightTouch((int) motionEventMapDoubleTouchEvent.getX(), (int) motionEventMapDoubleTouchEvent.getY(), true);
            SessionView.this.sessionViewListener.onSessionViewRightTouch((int) motionEventMapDoubleTouchEvent.getX(), (int) motionEventMapDoubleTouchEvent.getY(), false);
            return true;
        }
    }
}
