package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* JADX INFO: loaded from: classes.dex */
public class DoubleGestureDetector {
    private static final long DOUBLE_TOUCH_TIMEOUT = 100;
    private static final int MODE_PINCH_ZOOM = 1;
    private static final int MODE_SCROLL = 2;
    private static final int MODE_UNKNOWN = 0;
    private static final int SCROLL_SCORE_TO_REACH = 20;
    private static final long SINGLE_DOUBLE_TOUCH_TIMEOUT = 1000;
    private static final int TAP = 1;
    private boolean mCancelDetection;
    private MotionEvent mCurrentDoubleDownEvent;
    private MotionEvent mCurrentDownEvent;
    private int mCurrentMode;
    private boolean mDoubleInProgress;
    private GestureHandler mHandler;
    private final OnDoubleGestureListener mListener;
    private int mPointerDistanceSquare;
    private MotionEvent mPreviousPointerUpEvent;
    private MotionEvent mPreviousUpEvent;
    private int mScrollDetectionScore;
    private ScaleGestureDetector scaleGestureDetector;

    public interface OnDoubleGestureListener {
        boolean onDoubleTouchDown(MotionEvent motionEvent);

        boolean onDoubleTouchScroll(MotionEvent motionEvent, MotionEvent motionEvent2);

        boolean onDoubleTouchSingleTap(MotionEvent motionEvent);

        boolean onDoubleTouchUp(MotionEvent motionEvent);
    }

    public DoubleGestureDetector(Context context, Handler handler, OnDoubleGestureListener onDoubleGestureListener) {
        this.mListener = onDoubleGestureListener;
        init(context, handler);
    }

    private void init(Context context, Handler handler) {
        if (this.mListener == null) {
            throw new NullPointerException("OnGestureListener must not be null");
        }
        if (handler != null) {
            this.mHandler = new GestureHandler(handler);
        } else {
            this.mHandler = new GestureHandler();
        }
        float f = context.getResources().getDisplayMetrics().xdpi * 0.19685039f;
        float f2 = context.getResources().getDisplayMetrics().ydpi * 0.19685039f;
        this.mPointerDistanceSquare = (int) ((f * f) + (f2 * f2));
    }

    public void setScaleGestureDetector(ScaleGestureDetector scaleGestureDetector) {
        this.scaleGestureDetector = scaleGestureDetector;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cf  */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        ScaleGestureDetector scaleGestureDetector;
        int action = motionEvent.getAction();
        int i2 = action & 255;
        boolean zOnTouchEvent = false;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        cancel();
                    } else if (i2 != 5) {
                        if (i2 == 6) {
                            MotionEvent motionEvent2 = this.mPreviousPointerUpEvent;
                            if (motionEvent2 != null) {
                                motionEvent2.recycle();
                            }
                            this.mPreviousPointerUpEvent = MotionEvent.obtain(motionEvent);
                        }
                    } else if (motionEvent.getPointerCount() > 2 || motionEvent.getEventTime() - this.mCurrentDownEvent.getEventTime() > DOUBLE_TOUCH_TIMEOUT) {
                        cancel();
                    } else if (!this.mCancelDetection) {
                        this.mDoubleInProgress = true;
                        MotionEvent motionEvent3 = this.mCurrentDoubleDownEvent;
                        if (motionEvent3 != null) {
                            motionEvent3.recycle();
                        }
                        this.mCurrentDoubleDownEvent = MotionEvent.obtain(motionEvent);
                        this.mCurrentMode = 0;
                        this.mHandler.sendEmptyMessageDelayed(1, 1000L);
                        zOnTouchEvent = this.mListener.onDoubleTouchDown(motionEvent);
                    }
                } else if (!this.mCancelDetection && this.mDoubleInProgress && motionEvent.getPointerCount() == 2) {
                    if (this.mCurrentMode == 0) {
                        if (pointerDistanceChanged(this.mCurrentDoubleDownEvent, motionEvent)) {
                            boolean zOnTouchEvent2 = this.scaleGestureDetector.onTouchEvent(this.mCurrentDownEvent);
                            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                            motionEventObtain.setAction(this.mCurrentDoubleDownEvent.getAction());
                            zOnTouchEvent = zOnTouchEvent2 | this.scaleGestureDetector.onTouchEvent(motionEventObtain);
                            this.mCurrentMode = 1;
                        } else {
                            int i3 = this.mScrollDetectionScore + 1;
                            this.mScrollDetectionScore = i3;
                            if (i3 >= 20) {
                                this.mCurrentMode = 2;
                            }
                            i = this.mCurrentMode;
                            if (i != 1) {
                                scaleGestureDetector = this.scaleGestureDetector;
                                if (scaleGestureDetector != null) {
                                    zOnTouchEvent = scaleGestureDetector.onTouchEvent(motionEvent);
                                }
                            } else if (i != 2) {
                                zOnTouchEvent = this.mListener.onDoubleTouchScroll(this.mCurrentDownEvent, motionEvent);
                            }
                        }
                    } else {
                        i = this.mCurrentMode;
                        if (i != 1) {
                            scaleGestureDetector = this.scaleGestureDetector;
                            if (scaleGestureDetector != null) {
                                zOnTouchEvent = scaleGestureDetector.onTouchEvent(motionEvent);
                            }
                        } else if (i != 2) {
                            zOnTouchEvent = this.mListener.onDoubleTouchScroll(this.mCurrentDownEvent, motionEvent);
                        }
                    }
                }
            } else if (this.mPreviousPointerUpEvent != null && motionEvent.getEventTime() - this.mPreviousPointerUpEvent.getEventTime() > DOUBLE_TOUCH_TIMEOUT) {
                this.mPreviousPointerUpEvent.recycle();
                this.mPreviousPointerUpEvent = null;
                cancel();
            } else if (!this.mCancelDetection && this.mDoubleInProgress) {
                boolean zHasMessages = this.mHandler.hasMessages(1);
                MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                int i4 = this.mCurrentMode;
                if (i4 == 0 && zHasMessages) {
                    zOnTouchEvent = this.mListener.onDoubleTouchSingleTap(this.mCurrentDoubleDownEvent);
                } else if (i4 == 1) {
                    zOnTouchEvent = this.scaleGestureDetector.onTouchEvent(motionEvent);
                }
                MotionEvent motionEvent4 = this.mPreviousUpEvent;
                if (motionEvent4 != null) {
                    motionEvent4.recycle();
                }
                this.mPreviousUpEvent = motionEventObtain2;
                zOnTouchEvent |= this.mListener.onDoubleTouchUp(motionEvent);
            }
            if (action == 2 || zOnTouchEvent) {
                return zOnTouchEvent;
            }
            return true;
        }
        MotionEvent motionEvent5 = this.mCurrentDownEvent;
        if (motionEvent5 != null) {
            motionEvent5.recycle();
        }
        this.mCurrentMode = 0;
        this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
        this.mCancelDetection = false;
        this.mDoubleInProgress = false;
        this.mScrollDetectionScore = 0;
        zOnTouchEvent = true;
        if (action == 2) {
        }
        return zOnTouchEvent;
    }

    private void cancel() {
        this.mHandler.removeMessages(1);
        this.mCurrentMode = 0;
        this.mCancelDetection = true;
        this.mDoubleInProgress = false;
    }

    private boolean pointerDistanceChanged(MotionEvent motionEvent, MotionEvent motionEvent2) {
        int iAbs = Math.abs(((int) motionEvent2.getX(0)) - ((int) motionEvent2.getX(1))) - Math.abs(((int) motionEvent.getX(0)) - ((int) motionEvent.getX(1)));
        int iAbs2 = Math.abs(((int) motionEvent2.getY(0)) - ((int) motionEvent2.getY(1))) - Math.abs(((int) motionEvent.getY(0)) - ((int) motionEvent.getY(1)));
        return (iAbs * iAbs) + (iAbs2 * iAbs2) > this.mPointerDistanceSquare;
    }

    private class GestureHandler extends Handler {
        GestureHandler() {
        }

        GestureHandler(Handler handler) {
            super(handler.getLooper());
        }
    }
}
