.class Lcom/termux/view/TerminalView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Lcom/termux/view/TerminalView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/view/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mEndHandle:Lcom/termux/view/TerminalView$HandleView;

.field private final mHandleHeight:I

.field private mIsShowing:Z

.field private mStartHandle:Lcom/termux/view/TerminalView$HandleView;

.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$SelectionModifierCursorController;)I
    .locals 0

    iget p0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mHandleHeight:I

    return p0
.end method

.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 2

    .line 1179
    iput-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    new-instance v0, Lcom/termux/view/TerminalView$HandleView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/termux/view/TerminalView$HandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/TerminalView$CursorController;I)V

    iput-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    .line 1181
    new-instance v0, Lcom/termux/view/TerminalView$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/termux/view/TerminalView$HandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/TerminalView$CursorController;I)V

    iput-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    .line 1183
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-static {p1}, Lcom/termux/view/TerminalView$HandleView;->-$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$HandleView;)I

    move-result p1

    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-static {v0}, Lcom/termux/view/TerminalView$HandleView;->-$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$HandleView;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mHandleHeight:I

    return-void
.end method

.method private getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I
    .locals 5

    const/4 v0, 0x0

    .line 1384
    invoke-virtual {p1, v0, p2, p3, p2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    .line 1385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 1388
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1395
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    if-ge v3, p2, :cond_1

    .line 1396
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1397
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v0

    goto :goto_1

    .line 1399
    :cond_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v2

    move v3, v0

    move v0, v2

    :goto_1
    add-int/2addr v0, v1

    if-le p3, v1, :cond_2

    if-ge p3, v0, :cond_2

    return v0

    :cond_2
    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_4
    :goto_2
    return p3
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$HandleView;->hide()V

    .line 1283
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$HandleView;->hide()V

    const/4 v0, 0x0

    .line 1284
    iput-boolean v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mIsShowing:Z

    .line 1285
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->-$$Nest$fgetmActionMode(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->-$$Nest$fgetmActionMode(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1293
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public isSelectionEndDragged()Z
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1449
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    const/4 v0, 0x1

    .line 1187
    iput-boolean v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mIsShowing:Z

    .line 1188
    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object v3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelY1:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/view/TerminalView$HandleView;->positionAtCursor(IIZ)V

    .line 1189
    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelY2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/termux/view/TerminalView$HandleView;->positionAtCursor(IIZ)V

    .line 1191
    new-instance v1, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;

    invoke-direct {v1, p0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;-><init>(Lcom/termux/view/TerminalView$SelectionModifierCursorController;)V

    .line 1240
    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    new-instance v3, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;

    invoke-direct {v3, p0, v1}, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;-><init>(Lcom/termux/view/TerminalView$SelectionModifierCursorController;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v2, v3, v0}, Lcom/termux/view/TerminalView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/view/TerminalView;->-$$Nest$fputmActionMode(Lcom/termux/view/TerminalView;Landroid/view/ActionMode;)V

    return-void
.end method

.method public updatePosition()V
    .locals 4

    .line 1416
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelY1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/TerminalView$HandleView;->positionAtCursor(IIZ)V

    .line 1422
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mEndHandle:Lcom/termux/view/TerminalView$HandleView;

    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/TerminalView$HandleView;->positionAtCursor(IIZ)V

    .line 1424
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->-$$Nest$fgetmActionMode(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->-$$Nest$fgetmActionMode(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method public updatePosition(Lcom/termux/view/TerminalView$HandleView;II)V
    .locals 4

    .line 1299
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    .line 1301
    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->mStartHandle:Lcom/termux/view/TerminalView$HandleView;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_7

    .line 1302
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/termux/view/TerminalView;->-$$Nest$mgetCursorX(Lcom/termux/view/TerminalView;F)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 1303
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lcom/termux/view/TerminalView;->-$$Nest$mgetCursorY(Lcom/termux/view/TerminalView;F)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 1304
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    if-gez p1, :cond_0

    .line 1305
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput v3, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 1308
    :cond_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    neg-int p2, v1

    if-ge p1, p2, :cond_1

    .line 1309
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    goto :goto_0

    .line 1311
    :cond_1
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 p3, p3, -0x1

    if-le p1, p3, :cond_2

    .line 1312
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 1317
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelY2:I

    if-le p1, p3, :cond_3

    .line 1318
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 1320
    :cond_3
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelY2:I

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelX2:I

    if-le p1, p3, :cond_4

    .line 1321
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 1324
    :cond_4
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1325
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mTopRow:I

    if-gt p1, p3, :cond_5

    .line 1326
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1327
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    if-ge p1, p2, :cond_6

    .line 1328
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    goto :goto_1

    .line 1330
    :cond_5
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_6

    .line 1331
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1332
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    if-lez p1, :cond_6

    .line 1333
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput v3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1339
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelX1:I

    invoke-direct {p0, v0, p2, p3}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    goto/16 :goto_4

    .line 1342
    :cond_7
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/termux/view/TerminalView;->-$$Nest$mgetCursorX(Lcom/termux/view/TerminalView;F)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 1343
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lcom/termux/view/TerminalView;->-$$Nest$mgetCursorY(Lcom/termux/view/TerminalView;F)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 1344
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    if-gez p1, :cond_8

    .line 1345
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput v3, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 1349
    :cond_8
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    neg-int p2, v1

    if-ge p1, p2, :cond_9

    .line 1350
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    goto :goto_2

    .line 1351
    :cond_9
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 p3, p3, -0x1

    if-le p1, p3, :cond_a

    .line 1352
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 1355
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelY2:I

    if-le p1, p3, :cond_b

    .line 1356
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    .line 1358
    :cond_b
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelY2:I

    if-ne p1, p3, :cond_c

    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelX2:I

    if-le p1, p3, :cond_c

    .line 1359
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    iput p3, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 1362
    :cond_c
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result p1

    if-nez p1, :cond_e

    .line 1363
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mTopRow:I

    if-gt p1, p3, :cond_d

    .line 1364
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1365
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    if-ge p1, p2, :cond_e

    .line 1366
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    goto :goto_3

    .line 1368
    :cond_d
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_e

    .line 1369
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1370
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    if-lez p1, :cond_e

    .line 1371
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iput v3, p1, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1376
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mSelY2:I

    iget-object p3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p3, p3, Lcom/termux/view/TerminalView;->mSelX2:I

    invoke-direct {p0, v0, p2, p3}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mSelX2:I

    .line 1379
    :goto_4
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method
