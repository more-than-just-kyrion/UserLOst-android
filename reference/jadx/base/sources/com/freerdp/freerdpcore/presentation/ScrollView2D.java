package com.freerdp.freerdpcore.presentation;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.Scroller;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ScrollView2D extends FrameLayout {
    static final int ANIMATED_SCROLL_GAP = 250;
    static final float MAX_SCROLL_FACTOR = 0.5f;
    private View mChildToScrollTo;
    private boolean mIsBeingDragged;
    private boolean mIsLayoutDirty;
    private float mLastMotionX;
    private float mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private Scroller mScroller;
    private final Rect mTempRect;
    private int mTouchSlop;
    private boolean mTwoDScrollViewMovedFocus;
    private VelocityTracker mVelocityTracker;
    private boolean scrollEnabled;
    private ScrollView2DListener scrollView2DListener;

    public interface ScrollView2DListener {
        void onScrollChanged(ScrollView2D scrollView2D, int i, int i2, int i3, int i4);
    }

    private int clamp(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    public ScrollView2D(Context context) {
        super(context);
        this.mTempRect = new Rect();
        this.scrollView2DListener = null;
        this.scrollEnabled = true;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    public ScrollView2D(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.scrollView2DListener = null;
        this.scrollEnabled = true;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    public ScrollView2D(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        this.scrollView2DListener = null;
        this.scrollEnabled = true;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        initTwoDScrollView();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (getScrollY() < verticalFadingEdgeLength) {
            return getScrollY() / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getLeftFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (getScrollX() < horizontalFadingEdgeLength) {
            return getScrollX() / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getRightFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int right = (getChildAt(0).getRight() - getScrollX()) - (getWidth() - getPaddingRight());
        if (right < horizontalFadingEdgeLength) {
            return right / horizontalFadingEdgeLength;
        }
        return 1.0f;
    }

    public void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
    }

    public int getMaxScrollAmountVertical() {
        return (int) (getHeight() * 0.5f);
    }

    public int getMaxScrollAmountHorizontal() {
        return (int) (getWidth() * 0.5f);
    }

    private void initTwoDScrollView() {
        this.mScroller = new Scroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    private boolean canScroll() {
        View childAt;
        if (this.scrollEnabled && (childAt = getChildAt(0)) != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom() || getWidth() < (childAt.getWidth() + getPaddingLeft()) + getPaddingRight();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        return executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused()) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(33, false);
                }
                return fullScroll(33, false);
            case 20:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(130, false);
                }
                return fullScroll(130, false);
            case 21:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(17, true);
                }
                return fullScroll(17, true);
            case 22:
                if (!keyEvent.isAltPressed()) {
                    return arrowScroll(66, true);
                }
                return fullScroll(66, true);
            default:
                return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        if (!canScroll()) {
            this.mIsBeingDragged = false;
            return false;
        }
        float y = motionEvent.getY();
        float x = motionEvent.getX();
        if (action == 0) {
            this.mLastMotionY = y;
            this.mLastMotionX = x;
            this.mIsBeingDragged = !this.mScroller.isFinished();
        } else if (action == 1) {
            this.mIsBeingDragged = false;
        } else if (action == 2) {
            int iAbs = (int) Math.abs(y - this.mLastMotionY);
            int iAbs2 = (int) Math.abs(x - this.mLastMotionX);
            int i = this.mTouchSlop;
            if (iAbs > i || iAbs2 > i) {
                this.mIsBeingDragged = true;
            }
        } else if (action == 3) {
            this.mIsBeingDragged = false;
        }
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iMin = 0;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || !canScroll()) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        float x = motionEvent.getX();
        if (action == 0) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            this.mLastMotionY = y;
            this.mLastMotionX = x;
        } else if (action == 1) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity();
            int yVelocity = (int) velocityTracker.getYVelocity();
            if (Math.abs(xVelocity) + Math.abs(yVelocity) > this.mMinimumVelocity && getChildCount() > 0) {
                fling(-xVelocity, -yVelocity);
            }
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
        } else if (action == 2) {
            int iMin2 = (int) (this.mLastMotionX - x);
            int i = (int) (this.mLastMotionY - y);
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            if (iMin2 < 0) {
                if (getScrollX() < 0) {
                    iMin2 = 0;
                }
            } else if (iMin2 > 0) {
                int right = (getChildAt(0).getRight() - getScrollX()) - (getWidth() - getPaddingRight());
                if (right > 0) {
                    iMin2 = Math.min(right, iMin2);
                } else {
                    iMin2 = 0;
                }
            }
            if (i < 0) {
                if (getScrollY() >= 0) {
                    iMin = i;
                }
            } else if (i > 0) {
                int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
                if (bottom > 0) {
                    iMin = Math.min(bottom, i);
                }
            } else {
                iMin = i;
            }
            if (iMin != 0 || iMin2 != 0) {
                scrollBy(iMin2, iMin);
            }
        }
        return true;
    }

    private View findFocusableViewInMyBounds(boolean z, int i, boolean z2, int i2, View view) {
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength() / 2;
        int i3 = i + verticalFadingEdgeLength;
        int height = (i + getHeight()) - verticalFadingEdgeLength;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength() / 2;
        int i4 = i2 + horizontalFadingEdgeLength;
        int width = (i2 + getWidth()) - horizontalFadingEdgeLength;
        return (view == null || view.getTop() >= height || view.getBottom() <= i3 || view.getLeft() >= width || view.getRight() <= i4) ? findFocusableViewInBounds(z, i3, height, z2, i4, width) : view;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0086  */
    private View findFocusableViewInBounds(boolean z, int i, int i2, boolean z2, int i3, int i4) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            int left = view2.getLeft();
            int right = view2.getRight();
            if (i < bottom && top < i2 && i3 < right && left < i4) {
                boolean z4 = i < top && bottom < i2 && i3 < left && right < i4;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                    boolean z6 = (z2 && left < view.getLeft()) || (!z2 && right > view.getRight());
                    if (z3) {
                        if (z4 && z5 && z6) {
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else if (z5 && z6) {
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    public boolean fullScroll(int i, boolean z) {
        int childCount;
        int childCount2;
        if (!z) {
            boolean z2 = i == 130;
            int height = getHeight();
            this.mTempRect.top = 0;
            this.mTempRect.bottom = height;
            if (z2 && (childCount2 = getChildCount()) > 0) {
                this.mTempRect.bottom = getChildAt(childCount2 - 1).getBottom();
                Rect rect = this.mTempRect;
                rect.top = rect.bottom - height;
            }
            return scrollAndFocus(i, this.mTempRect.top, this.mTempRect.bottom, 0, 0, 0);
        }
        boolean z3 = i == 130;
        int width = getWidth();
        this.mTempRect.left = 0;
        this.mTempRect.right = width;
        if (z3 && (childCount = getChildCount()) > 0) {
            this.mTempRect.right = getChildAt(childCount - 1).getBottom();
            Rect rect2 = this.mTempRect;
            rect2.left = rect2.right - width;
        }
        return scrollAndFocus(0, 0, 0, i, this.mTempRect.top, this.mTempRect.bottom);
    }

    private boolean scrollAndFocus(int i, int i2, int i3, int i4, int i5, int i6) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i7 = scrollY + height;
        boolean z = true;
        boolean z2 = i == 33;
        int width = getWidth();
        int scrollX = getScrollX();
        int i8 = scrollX + width;
        boolean z3 = i4 == 33;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z2, i2, i3, z3, i5, i6);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if ((i2 < scrollY || i3 > i7) && (i5 < scrollX || i6 > i8)) {
            doScroll(z3 ? i5 - scrollX : i6 - i8, z2 ? i2 - scrollY : i3 - i7);
        } else {
            z = false;
        }
        if (viewFindFocusableViewInBounds != findFocus() && viewFindFocusableViewInBounds.requestFocus(i)) {
            this.mTwoDScrollViewMovedFocus = false;
        }
        return z;
    }

    public boolean arrowScroll(int i, boolean z) {
        int bottom;
        int bottom2;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        int maxScrollAmountHorizontal = z ? getMaxScrollAmountHorizontal() : getMaxScrollAmountVertical();
        if (z) {
            if (viewFindNextFocus != null) {
                viewFindNextFocus.getDrawingRect(this.mTempRect);
                offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
                doScroll(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect), 0);
                viewFindNextFocus.requestFocus(i);
                return true;
            }
            if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = getScrollY();
            } else if (i == 130 && getChildCount() > 0 && (bottom = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = bottom;
            }
            if (maxScrollAmountHorizontal == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
            }
            doScroll(maxScrollAmountHorizontal, 0);
            return true;
        }
        if (viewFindNextFocus != null) {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScroll(0, computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            viewFindNextFocus.requestFocus(i);
            return true;
        }
        if (i == 33 && getScrollY() < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = getScrollY();
        } else if (i == 130 && getChildCount() > 0 && (bottom2 = getChildAt(0).getBottom() - (getScrollY() + getHeight())) < maxScrollAmountHorizontal) {
            maxScrollAmountHorizontal = bottom2;
        }
        if (maxScrollAmountHorizontal == 0) {
            return false;
        }
        if (i != 130) {
            maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
        }
        doScroll(0, maxScrollAmountHorizontal);
        return true;
    }

    private void doScroll(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        smoothScrollBy(i, i2);
    }

    public final void smoothScrollBy(int i, int i2) {
        if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
            this.mScroller.startScroll(getScrollX(), getScrollY(), i, i2);
            awakenScrollBars(this.mScroller.getDuration());
            invalidate();
        } else {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            scrollBy(i, i2);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int i, int i2) {
        smoothScrollBy(i - getScrollX(), i2 - getScrollY());
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return getChildCount() == 0 ? getHeight() : getChildAt(0).getBottom();
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return getChildCount() == 0 ? getWidth() : getChildAt(0).getRight();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 0), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                scrollTo(clamp(currX, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth()), clamp(currY, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight()));
            } else {
                scrollTo(currX, currY);
            }
            if (scrollX != getScrollX() || scrollY != getScrollY()) {
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
            }
            postInvalidate();
        }
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (iComputeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean z) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z2 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z2;
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        int i;
        int i2;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i3 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i3 && rect.top > scrollY) {
            if (rect.height() > height) {
                i2 = rect.top - scrollY;
            } else {
                i2 = rect.bottom - i3;
            }
            return Math.min(i2, getChildAt(0).getBottom() - i3);
        }
        if (rect.top >= scrollY || rect.bottom >= i3) {
            return 0;
        }
        if (rect.height() > height) {
            i = 0 - (i3 - rect.bottom);
        } else {
            i = 0 - (scrollY - rect.top);
        }
        return Math.max(i, -getScrollY());
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mTwoDScrollViewMovedFocus) {
            if (!this.mIsLayoutDirty) {
                scrollToChild(view2);
            } else {
                this.mChildToScrollTo = view2;
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View viewFindNextFocusFromRect;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (viewFindNextFocusFromRect == null) {
            return false;
        }
        return viewFindNextFocusFromRect.requestFocus(i, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return scrollToChildRect(rect, z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mIsLayoutDirty = false;
        View view = this.mChildToScrollTo;
        if (view != null && isViewDescendantOf(view, this)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        scrollTo(getScrollX(), getScrollY());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScroll(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect), computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    private boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    public void fling(int i, int i2) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = getChildAt(0).getHeight();
            this.mScroller.fling(getScrollX(), getScrollY(), i, i2, 0, getChildAt(0).getWidth() - ((getWidth() - getPaddingRight()) - getPaddingLeft()), 0, height2 - height);
            boolean z = i2 > 0;
            View viewFindFocusableViewInMyBounds = findFocusableViewInMyBounds(i > 0, this.mScroller.getFinalX(), z, this.mScroller.getFinalY(), findFocus());
            if (viewFindFocusableViewInMyBounds == null) {
                viewFindFocusableViewInMyBounds = this;
            }
            if (viewFindFocusableViewInMyBounds != findFocus()) {
                if (viewFindFocusableViewInMyBounds.requestFocus(z ? 130 : 33)) {
                    this.mTwoDScrollViewMovedFocus = false;
                }
            }
            awakenScrollBars(this.mScroller.getDuration());
            invalidate();
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int iClamp = clamp(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int iClamp2 = clamp(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (iClamp == getScrollX() && iClamp2 == getScrollY()) {
                return;
            }
            super.scrollTo(iClamp, iClamp2);
        }
    }

    public void setScrollViewListener(ScrollView2DListener scrollView2DListener) {
        this.scrollView2DListener = scrollView2DListener;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        ScrollView2DListener scrollView2DListener = this.scrollView2DListener;
        if (scrollView2DListener != null) {
            scrollView2DListener.onScrollChanged(this, i, i2, i3, i4);
        }
    }
}
