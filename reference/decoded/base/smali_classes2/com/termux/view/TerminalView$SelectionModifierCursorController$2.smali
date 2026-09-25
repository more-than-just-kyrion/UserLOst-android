.class Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;
.super Landroid/view/ActionMode$Callback2;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView$SelectionModifierCursorController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView$SelectionModifierCursorController;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iput-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1263
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget p2, p2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1264
    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mSelX2:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v0, v0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1265
    iget-object v0, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v0, v0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v1, v1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v1, v1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1266
    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v1, v1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v2, v2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v2, v2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le p1, p2, :cond_0

    move v3, p2

    move p2, p1

    move p1, v3

    .line 1275
    :cond_0
    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-static {v2}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->-$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$SelectionModifierCursorController;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$2;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-static {v2}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->-$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$SelectionModifierCursorController;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
