.class Lcom/termux/view/TerminalView$2;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 297
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 299
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 303
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return p2
.end method

.method public deleteSurroundingText(II)Z
    .locals 3

    .line 313
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    :goto_0
    if-ge v2, p1, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public finishComposingText()Z
    .locals 1

    .line 285
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 287
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method sendTextToTerminal(Ljava/lang/CharSequence;)V
    .locals 7

    .line 319
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->-$$Nest$mstopTextSelectionMode(Lcom/termux/view/TerminalView;)V

    .line 320
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 322
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 324
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    .line 326
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_1

    :cond_0
    const v3, 0xfffd

    :cond_1
    :goto_1
    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-gt v3, v4, :cond_3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const/16 v3, 0xd

    :cond_2
    packed-switch v3, :pswitch_data_0

    add-int/lit8 v3, v3, 0x60

    goto :goto_2

    :pswitch_0
    const/16 v3, 0x5f

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x5e

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x5d

    goto :goto_2

    :pswitch_3
    const/16 v3, 0x5c

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v1

    .line 366
    :goto_3
    iget-object v6, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v6, v3, v4, v1}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
