package com.iiordanov.bVNC.input;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class InputHandlerSingleHanded extends InputHandlerDirectSwipePan {
    public static final String ID = "SINGLE_HANDED_MODE";
    static final String TAG = "InputHandlerSingleHand";
    int accumulatedScroll;
    private ImageButton cancelButton;
    private ImageButton dragModeButton;
    private int eventAction;
    private int eventMeta;
    private int eventStartX;
    private int eventStartY;
    private ImageButton middleDragModeButton;
    private boolean needInitPan;
    private ImageButton rightDragModeButton;
    private ImageButton scrollButton;
    private RelativeLayout singleHandOpts;
    private ImageButton zoomButton;

    public InputHandlerSingleHanded(RemoteCanvasActivity remoteCanvasActivity, RemoteCanvas remoteCanvas, RemotePointer remotePointer) {
        super(remoteCanvasActivity, remoteCanvas, remotePointer);
        initializeButtons();
    }

    private void initializeButtons() {
        this.singleHandOpts = (RelativeLayout) this.activity.findViewById(R.id.singleHandOpts);
        ImageButton imageButton = (ImageButton) this.activity.findViewById(R.id.singleDrag);
        this.dragModeButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.startNewSingleHandedGesture();
                InputHandlerSingleHanded.this.dragMode = true;
                InputHandlerSingleHanded.this.canvas.getPointer().leftButtonDown(InputHandlerSingleHanded.this.eventStartX, InputHandlerSingleHanded.this.eventStartY, InputHandlerSingleHanded.this.eventMeta);
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_left);
            }
        });
        ImageButton imageButton2 = (ImageButton) this.activity.findViewById(R.id.singleRight);
        this.rightDragModeButton = imageButton2;
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.startNewSingleHandedGesture();
                InputHandlerSingleHanded.this.rightDragMode = true;
                InputHandlerSingleHanded.this.canvas.getPointer().rightButtonDown(InputHandlerSingleHanded.this.eventStartX, InputHandlerSingleHanded.this.eventStartY, InputHandlerSingleHanded.this.eventMeta);
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_right);
            }
        });
        ImageButton imageButton3 = (ImageButton) this.activity.findViewById(R.id.singleMiddle);
        this.middleDragModeButton = imageButton3;
        imageButton3.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.startNewSingleHandedGesture();
                InputHandlerSingleHanded.this.middleDragMode = true;
                InputHandlerSingleHanded.this.canvas.getPointer().middleButtonDown(InputHandlerSingleHanded.this.eventStartX, InputHandlerSingleHanded.this.eventStartY, InputHandlerSingleHanded.this.eventMeta);
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_middle);
            }
        });
        ImageButton imageButton4 = (ImageButton) this.activity.findViewById(R.id.singleScroll);
        this.scrollButton = imageButton4;
        imageButton4.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.startNewSingleHandedGesture();
                InputHandlerSingleHanded.this.canvas.cursorBeingMoved = true;
                InputHandlerSingleHanded.this.inSwiping = true;
                InputHandlerSingleHanded.this.canvas.getPointer().moveMouseButtonUp(InputHandlerSingleHanded.this.eventStartX, InputHandlerSingleHanded.this.eventStartY, InputHandlerSingleHanded.this.eventMeta);
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_scroll);
            }
        });
        ImageButton imageButton5 = (ImageButton) this.activity.findViewById(R.id.singleZoom);
        this.zoomButton = imageButton5;
        imageButton5.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.startNewSingleHandedGesture();
                InputHandlerSingleHanded.this.inScaling = true;
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_zoom);
            }
        });
        ImageButton imageButton6 = (ImageButton) this.activity.findViewById(R.id.singleCancel);
        this.cancelButton = imageButton6;
        imageButton6.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.input.InputHandlerSingleHanded.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputHandlerSingleHanded.this.singleHandOpts.setVisibility(8);
                InputHandlerSingleHanded.this.canvas.displayShortToastMessage(R.string.single_cancel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNewSingleHandedGesture() {
        this.singleHandOpts.setVisibility(8);
        endDragModesAndScrolling();
        this.singleHandedGesture = true;
        this.accumulatedScroll = 0;
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerDirectSwipePan, com.iiordanov.bVNC.input.InputHandler
    public String getDescription() {
        return this.canvas.getResources().getString(R.string.input_method_single_handed_description);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerDirectSwipePan, com.iiordanov.bVNC.input.InputHandler
    public String getId() {
        return ID;
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerDirectSwipePan, com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.singleHandedGesture || this.singleHandedJustEnded) {
            return;
        }
        boolean z = this.singleHandOpts.getVisibility() == 0;
        initializeSingleHandedMode(motionEvent);
        if (z) {
            this.canvas.displayShortToastMessage(R.string.single_reposition);
        } else {
            this.canvas.displayShortToastMessage(R.string.single_choose);
        }
    }

    private void initializeSingleHandedMode(MotionEvent motionEvent) {
        this.eventStartX = getX(motionEvent);
        this.eventStartY = getY(motionEvent);
        this.xInitialFocus = motionEvent.getX();
        this.yInitialFocus = motionEvent.getY();
        this.needInitPan = true;
        this.eventAction = motionEvent.getAction();
        this.eventMeta = motionEvent.getMetaState();
        this.singleHandOpts.setVisibility(0);
        this.canvas.getPointer().moveMouseButtonUp(this.eventStartX, this.eventStartY, this.eventMeta);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerDirectSwipePan, com.iiordanov.bVNC.input.InputHandlerGeneric, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.singleHandOpts.getVisibility() == 0) {
            initializeSingleHandedMode(motionEvent);
            this.canvas.displayShortToastMessage(R.string.single_reposition);
            return true;
        }
        return super.onSingleTapConfirmed(motionEvent);
    }

    @Override // com.iiordanov.bVNC.input.InputHandlerDirectSwipePan, android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.singleHandedGesture) {
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        if (this.inSwiping) {
            this.scrollUp = false;
            this.scrollDown = false;
            this.scrollLeft = false;
            this.scrollRight = false;
            int iAbs = (int) Math.abs(f);
            int iAbs2 = (int) Math.abs(f2);
            if (iAbs2 > iAbs) {
                if (f2 > 0.0f) {
                    this.scrollDown = true;
                } else {
                    this.scrollUp = true;
                }
                this.swipeSpeed = (this.accumulatedScroll + iAbs2) / 15;
                this.accumulatedScroll += iAbs2;
            } else {
                if (f > 0.0f) {
                    this.scrollRight = true;
                } else {
                    this.scrollLeft = true;
                }
                this.swipeSpeed = (iAbs + this.accumulatedScroll) / 15;
                this.accumulatedScroll += iAbs2;
            }
            if (this.swipeSpeed < 1) {
                this.swipeSpeed = 0L;
            } else {
                this.accumulatedScroll = 0;
            }
        } else if (this.inScaling) {
            float f3 = (f2 * 0.01f) + 1.0f;
            if (this.canvas != null && this.canvas.canvasZoomer != null) {
                float zoomFactor = this.canvas.canvasZoomer.getZoomFactor();
                if (this.needInitPan) {
                    this.needInitPan = false;
                    this.canvas.absolutePan((int) (this.canvas.getAbsX() + ((this.xInitialFocus - (this.canvas.getWidth() / 2.0f)) / zoomFactor)), (int) (this.canvas.getAbsY() + ((this.yInitialFocus - (this.canvas.getHeight() / 2.0f)) / zoomFactor)));
                }
                this.canvas.canvasZoomer.changeZoom(this.activity, f3, this.xInitialFocus, this.yInitialFocus);
            }
        }
        return true;
    }
}
