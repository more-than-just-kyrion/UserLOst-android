package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class GestureDetector {
    private static final int DOUBLE_TAP_SLOP = 100;
    private static final int DOUBLE_TAP_TIMEOUT = 200;
    private static final int LARGE_TOUCH_SLOP = 18;
    private static final int LONG_PRESS = 2;
    private static final int SHOW_PRESS = 1;
    private static final int TAP = 3;
    private static final int TAP_TIMEOUT = 100;
    private boolean mAlwaysInBiggerTapRegion;
    private boolean mAlwaysInTapRegion;
    private MotionEvent mCurrentDownEvent;
    private OnDoubleTapListener mDoubleTapListener;
    private int mDoubleTapSlopSquare;
    private final Handler mHandler;
    private boolean mIgnoreMultitouch;
    private boolean mInLongPress;
    private boolean mIsDoubleTapping;
    private boolean mIsLongpressEnabled;
    private int mLargeTouchSlopSquare;
    private float mLastMotionX;
    private float mLastMotionY;
    private final OnGestureListener mListener;
    private int mLongpressTimeout;
    private MotionEvent mPreviousUpEvent;
    private boolean mStillDown;
    private int mTouchSlopSquare;

    public interface OnDoubleTapListener {
        boolean onDoubleTap(MotionEvent motionEvent);

        boolean onDoubleTapEvent(MotionEvent motionEvent);

        boolean onSingleTapConfirmed(MotionEvent motionEvent);
    }

    public interface OnGestureListener {
        boolean onDown(MotionEvent motionEvent);

        void onLongPress(MotionEvent motionEvent);

        void onLongPressUp(MotionEvent motionEvent);

        boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

        void onShowPress(MotionEvent motionEvent);

        boolean onSingleTapUp(MotionEvent motionEvent);

        boolean onUp(MotionEvent motionEvent);
    }

    public static class SimpleOnGestureListener implements OnGestureListener, OnDoubleTapListener {
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onLongPressUp(MotionEvent motionEvent) {
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.freerdp.freerdpcore.utils.GestureDetector.OnGestureListener
        public boolean onUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener, Handler handler) {
        this(context, onGestureListener, handler, context != null && context.getApplicationInfo().targetSdkVersion >= 8);
    }

    public GestureDetector(Context context, OnGestureListener onGestureListener, Handler handler, boolean z) {
        this.mLongpressTimeout = 100;
        if (handler != null) {
            this.mHandler = new GestureHandler(handler);
        } else {
            this.mHandler = new GestureHandler();
        }
        this.mListener = onGestureListener;
        if (onGestureListener instanceof OnDoubleTapListener) {
            setOnDoubleTapListener((OnDoubleTapListener) onGestureListener);
        }
        init(context, z);
    }

    private void init(Context context, boolean z) {
        int i;
        int scaledDoubleTapSlop;
        int touchSlop;
        if (this.mListener == null) {
            throw new NullPointerException("OnGestureListener must not be null");
        }
        this.mIsLongpressEnabled = true;
        this.mIgnoreMultitouch = z;
        if (context == null) {
            touchSlop = ViewConfiguration.getTouchSlop();
            i = touchSlop + 2;
            scaledDoubleTapSlop = 100;
        } else {
            float f = context.getResources().getDisplayMetrics().density;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            i = (int) ((f * 18.0f) + 0.5f);
            scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            touchSlop = scaledTouchSlop;
        }
        this.mTouchSlopSquare = touchSlop * touchSlop;
        this.mLargeTouchSlopSquare = i * i;
        this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
    }

    public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
        this.mDoubleTapListener = onDoubleTapListener;
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mIsLongpressEnabled = z;
    }

    public boolean isLongpressEnabled() {
        return this.mIsLongpressEnabled;
    }

    public void setLongPressTimeout(int i) {
        this.mLongpressTimeout = i;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnDoubleTap;
        MotionEvent motionEvent2;
        boolean zOnSingleTapUp;
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        float x = motionEvent.getX();
        int i = action & 255;
        if (i == 0) {
            if (this.mDoubleTapListener == null) {
                zOnDoubleTap = false;
            } else {
                boolean zHasMessages = this.mHandler.hasMessages(3);
                if (zHasMessages) {
                    this.mHandler.removeMessages(3);
                }
                MotionEvent motionEvent3 = this.mCurrentDownEvent;
                if (motionEvent3 != null && (motionEvent2 = this.mPreviousUpEvent) != null && zHasMessages && isConsideredDoubleTap(motionEvent3, motionEvent2, motionEvent)) {
                    this.mIsDoubleTapping = true;
                    zOnDoubleTap = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                } else {
                    this.mHandler.sendEmptyMessageDelayed(3, 200L);
                    zOnDoubleTap = false;
                }
            }
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            MotionEvent motionEvent4 = this.mCurrentDownEvent;
            if (motionEvent4 != null) {
                motionEvent4.recycle();
            }
            this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
            this.mAlwaysInTapRegion = true;
            this.mAlwaysInBiggerTapRegion = true;
            this.mStillDown = true;
            this.mInLongPress = false;
            if (this.mIsLongpressEnabled) {
                this.mHandler.removeMessages(2);
                this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + 100 + ((long) this.mLongpressTimeout));
            }
            this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + 100);
            return zOnDoubleTap | this.mListener.onDown(motionEvent);
        }
        if (i == 1) {
            this.mStillDown = false;
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            if (this.mIsDoubleTapping) {
                zOnSingleTapUp = this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
            } else {
                if (this.mInLongPress) {
                    this.mHandler.removeMessages(3);
                    this.mListener.onLongPressUp(motionEvent);
                    this.mInLongPress = false;
                } else if (this.mAlwaysInTapRegion) {
                    zOnSingleTapUp = this.mListener.onSingleTapUp(this.mCurrentDownEvent);
                }
                zOnSingleTapUp = false;
            }
            MotionEvent motionEvent5 = this.mPreviousUpEvent;
            if (motionEvent5 != null) {
                motionEvent5.recycle();
            }
            this.mPreviousUpEvent = motionEventObtain;
            this.mIsDoubleTapping = false;
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            return zOnSingleTapUp | this.mListener.onUp(motionEvent);
        }
        if (i != 2) {
            if (i == 3) {
                cancel();
                return false;
            }
            if (i == 5) {
                if (!this.mIgnoreMultitouch) {
                    return false;
                }
                cancel();
                return false;
            }
            if (i != 6 || !this.mIgnoreMultitouch || motionEvent.getPointerCount() != 2) {
                return false;
            }
            int i2 = ((action & 65280) >> 8) != 0 ? 0 : 1;
            this.mLastMotionX = motionEvent.getX(i2);
            this.mLastMotionY = motionEvent.getY(i2);
            return false;
        }
        if (this.mIgnoreMultitouch && motionEvent.getPointerCount() > 1) {
            return false;
        }
        float f = this.mLastMotionX - x;
        float f2 = this.mLastMotionY - y;
        if (this.mIsDoubleTapping) {
            return this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
        }
        if (!this.mAlwaysInTapRegion) {
            if (Math.abs(f) < 1.0f && Math.abs(f2) < 1.0f) {
                return false;
            }
            boolean zOnScroll = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f, f2);
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            return zOnScroll;
        }
        int x2 = (int) (x - this.mCurrentDownEvent.getX());
        int y2 = (int) (y - this.mCurrentDownEvent.getY());
        int i3 = (x2 * x2) + (y2 * y2);
        if (i3 > this.mTouchSlopSquare) {
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            this.mAlwaysInTapRegion = false;
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
        }
        if (i3 > this.mLargeTouchSlopSquare) {
            this.mAlwaysInBiggerTapRegion = false;
        }
        return this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f, f2);
    }

    private void cancel() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(3);
        this.mAlwaysInTapRegion = false;
        this.mIsDoubleTapping = false;
        this.mStillDown = false;
        if (this.mInLongPress) {
            this.mInLongPress = false;
        }
    }

    private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
        if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > 200) {
            return false;
        }
        int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
        int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
        return (x * x) + (y * y) < this.mDoubleTapSlopSquare;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchLongPress() {
        this.mHandler.removeMessages(3);
        this.mInLongPress = true;
        this.mListener.onLongPress(this.mCurrentDownEvent);
    }

    private class GestureHandler extends Handler {
        GestureHandler() {
        }

        GestureHandler(Handler handler) {
            super(handler.getLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                GestureDetector.this.mListener.onShowPress(GestureDetector.this.mCurrentDownEvent);
                return;
            }
            if (i == 2) {
                GestureDetector.this.dispatchLongPress();
            } else {
                if (i == 3) {
                    if (GestureDetector.this.mDoubleTapListener == null || GestureDetector.this.mStillDown) {
                        return;
                    }
                    GestureDetector.this.mDoubleTapListener.onSingleTapConfirmed(GestureDetector.this.mCurrentDownEvent);
                    return;
                }
                throw new RuntimeException("Unknown message " + message);
            }
        }
    }
}
