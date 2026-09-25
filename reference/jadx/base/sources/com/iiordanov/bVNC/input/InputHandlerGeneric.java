package com.iiordanov.bVNC.input;

import android.os.SystemClock;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
abstract class InputHandlerGeneric extends GestureDetector.SimpleOnGestureListener implements InputHandler, ScaleGestureDetector.OnScaleGestureListener {
    private static final String TAG = "InputHandlerGeneric";
    protected RemoteCanvasActivity activity;
    float baseSwipeDist;
    protected RemoteCanvas canvas;
    float displayDensity;
    Queue<Float> distXQueue;
    Queue<Float> distYQueue;
    protected float dragX;
    protected float dragY;
    protected GestureDetector gestureDetector;
    protected PanRepeater panRepeater;
    protected RemotePointer pointer;
    protected MyScaleGestureDetector scalingGestureDetector;
    float xCurrentFocus;
    float xInitialFocus;
    float xPreviousFocus;
    float yCurrentFocus;
    float yInitialFocus;
    float yPreviousFocus;
    boolean inSwiping = false;
    boolean scrollUp = false;
    boolean scrollDown = false;
    boolean scrollLeft = false;
    boolean scrollRight = false;
    long swipeSpeed = 1;
    final int maxSwipeSpeed = 7;
    final long baseSwipeTime = 400;
    float startSwipeDist = 15.0f;
    float immersiveSwipeDistance = 10.0f;
    boolean immersiveSwipe = false;
    boolean inScrolling = false;
    boolean inScaling = false;
    boolean scalingJustFinished = false;
    final double minScaleFactor = 0.1d;
    int prevMouseOrStylusAction = 0;
    protected boolean panMode = false;
    protected boolean dragMode = false;
    protected boolean rightDragMode = false;
    protected boolean middleDragMode = false;
    protected boolean singleHandedGesture = false;
    protected boolean singleHandedJustEnded = false;
    protected boolean secondPointerWasDown = false;
    protected boolean thirdPointerWasDown = false;
    boolean disregardNextOnFling = false;
    boolean useDpadAsArrows = true;
    boolean rotateDpad = false;

    protected float getSign(float f) {
        return f >= 0.0f ? 1.0f : -1.0f;
    }

    InputHandlerGeneric(RemoteCanvasActivity remoteCanvasActivity, RemoteCanvas remoteCanvas, RemotePointer remotePointer) {
        this.baseSwipeDist = 10.0f;
        this.displayDensity = 0.0f;
        this.activity = remoteCanvasActivity;
        this.canvas = remoteCanvas;
        this.pointer = remotePointer;
        this.gestureDetector = new GestureDetector(remoteCanvasActivity, this);
        this.scalingGestureDetector = new MyScaleGestureDetector(remoteCanvasActivity, this);
        this.gestureDetector.setOnDoubleTapListener(this);
        this.panRepeater = new PanRepeater(remoteCanvas, remoteCanvas.handler);
        this.displayDensity = remoteCanvas.getDisplayDensity();
        this.distXQueue = new LinkedList();
        this.distYQueue = new LinkedList();
        float f = this.baseSwipeDist;
        float f2 = this.displayDensity;
        this.baseSwipeDist = f * f2;
        this.startSwipeDist *= f2;
        this.immersiveSwipeDistance *= f2;
        Log.i(TAG, "displayDensity, baseSwipeDist, immersiveSwipeDistance: " + this.displayDensity + " " + this.baseSwipeDist + " " + this.immersiveSwipeDistance);
    }

    protected int getX(MotionEvent motionEvent) {
        return (int) (this.canvas.getAbsX() + (motionEvent.getX() / this.canvas.getZoomFactor()));
    }

    protected int getY(MotionEvent motionEvent) {
        return (int) (this.canvas.getAbsY() + ((motionEvent.getY() - (this.canvas.getTop() * 1.0f)) / this.canvas.getZoomFactor()));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0094  */
    /* JADX WARN: Code duplicated, block: B:42:0x00db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8  */
    protected boolean handleMouseActions(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int metaState = motionEvent.getMetaState();
        int buttonState = motionEvent.getButtonState();
        float zoomFactor = this.canvas.getZoomFactor();
        int absX = (int) (this.canvas.getAbsX() + (motionEvent.getX() / zoomFactor));
        int absY = (int) (this.canvas.getAbsY() + ((motionEvent.getY() - (this.canvas.getTop() * 1.0f)) / zoomFactor));
        boolean z = true;
        if (actionMasked == 0) {
            if (buttonState != 1) {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.leftButtonDown(absX, absY, metaState);
            } else if (buttonState != 2) {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.rightButtonDown(absX, absY, metaState);
            } else if (buttonState != 4) {
                z = false;
            } else {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.middleButtonDown(absX, absY, metaState);
            }
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 7) {
                    this.activity.showToolbar();
                    this.canvas.movePanToMakePointerVisible();
                    if (buttonState == 1) {
                        this.pointer.leftButtonDown(absX, absY, metaState);
                    } else if (buttonState == 2) {
                        this.pointer.rightButtonDown(absX, absY, metaState);
                    } else if (buttonState == 4) {
                        this.pointer.middleButtonDown(absX, absY, metaState);
                    } else {
                        this.pointer.moveMouseButtonUp(absX, absY, metaState);
                    }
                } else if (actionMasked != 8) {
                    z = false;
                } else {
                    float axisValue = motionEvent.getAxisValue(9);
                    float axisValue2 = motionEvent.getAxisValue(10);
                    this.scrollDown = false;
                    this.scrollUp = false;
                    this.scrollRight = false;
                    this.scrollLeft = false;
                    if (axisValue < 0.0f) {
                        this.swipeSpeed = (int) (axisValue * (-1.0f));
                        this.scrollDown = true;
                    } else if (axisValue > 0.0f) {
                        this.swipeSpeed = (int) axisValue;
                        this.scrollUp = true;
                    } else if (axisValue2 < 0.0f) {
                        this.swipeSpeed = (int) (axisValue2 * (-1.0f));
                        this.scrollRight = true;
                    } else if (axisValue2 > 0.0f) {
                        this.swipeSpeed = (int) axisValue2;
                        this.scrollLeft = true;
                    } else {
                        z = false;
                    }
                    sendScrollEvents(absX, absY, metaState);
                }
            } else if (buttonState != 1) {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.leftButtonDown(absX, absY, metaState);
            } else if (buttonState != 2) {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.rightButtonDown(absX, absY, metaState);
            } else if (buttonState != 4) {
                z = false;
            } else {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.middleButtonDown(absX, absY, metaState);
            }
        } else if (buttonState == 0 ? motionEvent.getToolType(0) == 3 : buttonState == 1 || buttonState == 2 || buttonState == 4) {
            this.canvas.movePanToMakePointerVisible();
            this.pointer.releaseButton(absX, absY, metaState);
        } else {
            z = false;
        }
        this.prevMouseOrStylusAction = actionMasked;
        return z;
    }

    private void sendScrollEvents(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.swipeSpeed && i4 < 7; i4++) {
            if (this.scrollDown) {
                this.pointer.scrollDown(i, i2, i3);
                this.pointer.moveMouseButtonUp(i, i2, i3);
            } else if (this.scrollUp) {
                this.pointer.scrollUp(i, i2, i3);
                this.pointer.moveMouseButtonUp(i, i2, i3);
            } else if (this.scrollRight) {
                this.pointer.scrollRight(i, i2, i3);
                this.pointer.moveMouseButtonUp(i, i2, i3);
            } else if (this.scrollLeft) {
                this.pointer.scrollLeft(i, i2, i3);
                this.pointer.moveMouseButtonUp(i, i2, i3);
            }
        }
        this.pointer.releaseButton(i, i2, i3);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        int metaState = motionEvent.getMetaState();
        this.activity.showToolbar();
        this.pointer.leftButtonDown(getX(motionEvent), getY(motionEvent), metaState);
        SystemClock.sleep(50L);
        this.pointer.releaseButton(getX(motionEvent), getY(motionEvent), metaState);
        this.canvas.movePanToMakePointerVisible();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        int metaState = motionEvent.getMetaState();
        this.pointer.leftButtonDown(getX(motionEvent), getY(motionEvent), metaState);
        SystemClock.sleep(50L);
        this.pointer.releaseButton(getX(motionEvent), getY(motionEvent), metaState);
        SystemClock.sleep(50L);
        this.pointer.leftButtonDown(getX(motionEvent), getY(motionEvent), metaState);
        SystemClock.sleep(50L);
        this.pointer.releaseButton(getX(motionEvent), getY(motionEvent), metaState);
        this.canvas.movePanToMakePointerVisible();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        int metaState = motionEvent.getMetaState();
        if (this.secondPointerWasDown || this.thirdPointerWasDown) {
            return;
        }
        this.activity.sendShortVibration();
        this.dragMode = true;
        this.pointer.leftButtonDown(getX(motionEvent), getY(motionEvent), metaState);
    }

    protected boolean endDragModesAndScrolling() {
        this.canvas.cursorBeingMoved = false;
        this.panMode = false;
        this.inScaling = false;
        this.inSwiping = false;
        this.inScrolling = false;
        this.immersiveSwipe = false;
        if (!this.dragMode && !this.rightDragMode && !this.middleDragMode) {
            return false;
        }
        this.dragMode = false;
        this.rightDragMode = false;
        this.middleDragMode = false;
        return true;
    }

    private void setEventCoordinates(MotionEvent motionEvent, float f, float f2) {
        motionEvent.setLocation(f, f2);
    }

    private void detectImmersiveSwipe(float f) {
        if (Constants.SDK_INT >= 19 && (f <= this.immersiveSwipeDistance || this.canvas.getHeight() - f <= this.immersiveSwipeDistance)) {
            this.inSwiping = true;
            this.immersiveSwipe = true;
        } else {
            if (this.singleHandedGesture) {
                return;
            }
            this.inSwiping = false;
            this.immersiveSwipe = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int metaState = motionEvent.getMetaState();
        float pressure = motionEvent.getPressure();
        if (pressure > 2.0f) {
            pressure /= 50.0f;
        }
        if (pressure > 0.92f) {
            this.disregardNextOnFling = true;
        }
        if (handleMouseActions(motionEvent)) {
            return true;
        }
        if (actionMasked == 1) {
            this.canvas.myDrawable.paint.setFilterBitmap(true);
            this.canvas.invalidate();
        }
        if (pointerId != 0) {
            if (pointerId != 1) {
                if (pointerId == 2 && actionMasked == 5 && !this.inScaling) {
                    this.thirdPointerWasDown = true;
                    this.pointer.middleButtonDown(getX(motionEvent), getY(motionEvent), metaState);
                    this.middleDragMode = true;
                }
            } else if (actionMasked == 5) {
                this.xInitialFocus = (this.dragX + motionEvent.getX(pointerId)) * 0.5f;
                this.yInitialFocus = (this.dragY + motionEvent.getY(pointerId)) * 0.5f;
                endDragModesAndScrolling();
                this.secondPointerWasDown = true;
                this.thirdPointerWasDown = false;
            } else if (actionMasked == 6 && !this.inSwiping && !this.inScaling && !this.thirdPointerWasDown) {
                this.pointer.rightButtonDown(getX(motionEvent), getY(motionEvent), metaState);
                this.rightDragMode = true;
            }
        } else if (actionMasked == 0) {
            this.disregardNextOnFling = false;
            this.singleHandedJustEnded = false;
            this.secondPointerWasDown = false;
            this.thirdPointerWasDown = false;
            this.scalingJustFinished = false;
            if (!this.singleHandedGesture) {
                endDragModesAndScrolling();
            }
            this.canvas.cursorBeingMoved = true;
            this.canvas.myDrawable.paint.setFilterBitmap(false);
            this.dragX = motionEvent.getX();
            float y = motionEvent.getY();
            this.dragY = y;
            detectImmersiveSwipe(y);
        } else if (actionMasked == 1) {
            this.singleHandedGesture = false;
            this.singleHandedJustEnded = true;
            if (this.immersiveSwipe && Math.abs(this.dragY - motionEvent.getY()) > this.immersiveSwipeDistance) {
                endDragModesAndScrolling();
                return true;
            }
            if (endDragModesAndScrolling()) {
                this.pointer.releaseButton(getX(motionEvent), getY(motionEvent), metaState);
                return true;
            }
        } else if (actionMasked == 2) {
            if (this.panMode) {
                float zoomFactor = this.canvas.getZoomFactor();
                this.canvas.relativePan(-((int) ((motionEvent.getX() - this.dragX) * zoomFactor)), -((int) ((motionEvent.getY() - this.dragY) * zoomFactor)));
                this.dragX = motionEvent.getX();
                this.dragY = motionEvent.getY();
                return true;
            }
            if (this.dragMode || this.rightDragMode || this.middleDragMode) {
                this.canvas.movePanToMakePointerVisible();
                this.pointer.moveMouseButtonDown(getX(motionEvent), getY(motionEvent), metaState);
                return true;
            }
            if (this.inSwiping) {
                float x = motionEvent.getX();
                float y2 = motionEvent.getY();
                setEventCoordinates(motionEvent, this.xInitialFocus, this.yInitialFocus);
                sendScrollEvents(getX(motionEvent), getY(motionEvent), metaState);
                setEventCoordinates(motionEvent, x, y2);
            } else if (this.immersiveSwipe) {
                return true;
            }
        }
        this.scalingGestureDetector.onTouchEvent(motionEvent);
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0034  */
    /* JADX WARN: Code duplicated, block: B:33:0x0092  */
    /* JADX WARN: Code duplicated, block: B:36:0x009e  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        boolean z;
        RemoteCanvas remoteCanvas;
        long timeDelta;
        long j;
        this.xCurrentFocus = scaleGestureDetector.getFocusX();
        float focusY = scaleGestureDetector.getFocusY();
        this.yCurrentFocus = focusY;
        if (this.inScaling) {
            z = true;
        } else {
            if (!this.inSwiping) {
                float f = this.yInitialFocus;
                float f2 = this.startSwipeDist;
                if (focusY < f - f2 || focusY > f + f2) {
                    this.inSwiping = true;
                    this.xPreviousFocus = this.xCurrentFocus;
                    this.yPreviousFocus = focusY;
                } else {
                    float f3 = this.xCurrentFocus;
                    float f4 = this.xInitialFocus;
                    if (f3 < f4 - f2 || f3 > f4 + f2) {
                        this.inSwiping = true;
                        this.xPreviousFocus = this.xCurrentFocus;
                        this.yPreviousFocus = focusY;
                    }
                }
            }
            if (this.inSwiping) {
                this.scrollDown = false;
                this.scrollUp = false;
                this.scrollRight = false;
                this.scrollLeft = false;
                float f5 = this.yPreviousFocus;
                float f6 = this.baseSwipeDist;
                if (focusY < f5 - f6) {
                    this.scrollDown = true;
                    this.xPreviousFocus = this.xCurrentFocus;
                    this.yPreviousFocus = focusY;
                } else if (focusY > f5 + f6) {
                    this.scrollUp = true;
                    this.xPreviousFocus = this.xCurrentFocus;
                    this.yPreviousFocus = focusY;
                } else {
                    float f7 = this.xCurrentFocus;
                    float f8 = this.xPreviousFocus;
                    if (f7 < f8 - f6) {
                        this.scrollRight = true;
                        this.xPreviousFocus = f7;
                        this.yPreviousFocus = focusY;
                    } else {
                        if (f7 > f8 + f6) {
                            this.scrollLeft = true;
                            this.xPreviousFocus = f7;
                            this.yPreviousFocus = focusY;
                        } else {
                            z = false;
                        }
                        timeDelta = scaleGestureDetector.getTimeDelta();
                        if (timeDelta < 10) {
                            timeDelta = 10;
                        }
                        j = 400 / timeDelta;
                        this.swipeSpeed = j;
                        if (j == 0) {
                            this.swipeSpeed = 1L;
                        }
                    }
                }
                z = true;
                timeDelta = scaleGestureDetector.getTimeDelta();
                if (timeDelta < 10) {
                    timeDelta = 10;
                }
                j = 400 / timeDelta;
                this.swipeSpeed = j;
                if (j == 0) {
                    this.swipeSpeed = 1L;
                }
            } else {
                z = true;
            }
        }
        if (this.inSwiping) {
            return z;
        }
        boolean z2 = (this.inScaling || Math.abs(1.0d - ((double) scaleGestureDetector.getScaleFactor())) >= 0.1d) ? z : false;
        if (z2 && (remoteCanvas = this.canvas) != null && remoteCanvas.canvasZoomer != null) {
            if (!this.inScaling) {
                this.inScaling = true;
            }
            this.canvas.canvasZoomer.changeZoom(this.activity, scaleGestureDetector.getScaleFactor(), this.xCurrentFocus, this.yCurrentFocus);
        }
        return z2;
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.inScaling = false;
        this.scalingJustFinished = false;
        this.inSwiping = false;
        this.scrollDown = false;
        this.scrollUp = false;
        this.scrollRight = false;
        this.scrollLeft = false;
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.inScaling = false;
        this.inSwiping = false;
        this.scalingJustFinished = true;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.canvas.getKeyboard().keyEvent(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.canvas.getKeyboard().keyEvent(i, keyEvent);
    }
}
