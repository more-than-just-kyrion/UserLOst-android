.class Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


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


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView$SelectionModifierCursorController;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1210
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-boolean p1, p1, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1214
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1228
    :cond_1
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_0

    .line 1220
    :cond_2
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 1221
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 1223
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_3
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object v1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v1, v1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object v2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v2, v2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v3, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object v3, v3, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelY2:I

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1217
    iget-object p2, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p2, p2, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->clipboardText(Ljava/lang/String;)V

    .line 1231
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {p1}, Lcom/termux/view/TerminalView;->-$$Nest$mstopTextSelectionMode(Lcom/termux/view/TerminalView;)V

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1196
    iget-object p1, p0, Lcom/termux/view/TerminalView$SelectionModifierCursorController$1;->this$1:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    iget-object p1, p1, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 1197
    sget v0, Lcom/termux/view/R$string;->copy_text:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    .line 1198
    sget v4, Lcom/termux/view/R$string;->paste_text:I

    invoke-interface {p2, v1, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x3

    .line 1199
    sget v0, Lcom/termux/view/R$string;->text_selection_more:I

    invoke-interface {p2, v1, p1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
