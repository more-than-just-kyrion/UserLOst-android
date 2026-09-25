.class public Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;
.super Landroid/app/Dialog;
.source "EnterTextDialog.java"


# static fields
.field static final DELETED_ID:I = -0xa

.field static final NUMBER_SENT_SAVED:I = 0x64


# instance fields
.field private _buttonNextEntry:Landroid/widget/ImageButton;

.field private _buttonPreviousEntry:Landroid/widget/ImageButton;

.field private _canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field private _history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/bVNC/SentTextBean;",
            ">;"
        }
    .end annotation
.end field

.field private _historyIndex:I

.field private _textEnterText:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fget_history(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_textEnterText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_textEnterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_historyIndex(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;I)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->saveText(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendText(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtons(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->updateButtons()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 68
    check-cast p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    return-void
.end method

.method private saveText(Z)Ljava/lang/String;
    .locals 7

    .line 74
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_textEnterText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string p1, ""

    return-object p1

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    .line 78
    iget p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/SentTextBean;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/SentTextBean;->getSentText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 80
    :cond_1
    new-instance p1, Lcom/iiordanov/bVNC/SentTextBean;

    invoke-direct {p1}, Lcom/iiordanov/bVNC/SentTextBean;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/SentTextBean;->setSentText(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Lcom/iiordanov/bVNC/SentTextBean;->Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    .line 84
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 85
    :goto_0
    iget v2, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    add-int/lit8 v2, v2, -0x64

    if-ge p1, v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/SentTextBean;

    .line 88
    invoke-virtual {v2}, Lcom/iiordanov/bVNC/SentTextBean;->get_Id()J

    move-result-wide v3

    const-wide/16 v5, -0xa

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v2, v1}, Lcom/iiordanov/bVNC/SentTextBean;->Gen_delete(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 91
    invoke-virtual {v2, v5, v6}, Lcom/iiordanov/bVNC/SentTextBean;->set_Id(J)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lcom/undatech/opaque/input/RemoteKeyboard;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method private updateButtons()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_buttonPreviousEntry:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_buttonNextEntry:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    iget-object v4, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->entertext:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->setContentView(I)V

    .line 110
    sget p1, Lcom/undatech/remoteClientUi/R$string;->enter_text_title:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->setTitle(I)V

    .line 111
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textEnterText:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_textEnterText:Landroid/widget/EditText;

    .line 112
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonNextEntry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_buttonNextEntry:Landroid/widget/ImageButton;

    .line 113
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonPreviousEntry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_buttonPreviousEntry:Landroid/widget/ImageButton;

    .line 141
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonSendText:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$3;-><init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonSendWithoutSaving:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$4;-><init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonTextDelete:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog$5;-><init>(Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance p1, Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    const-string v0, "select * from SENT_TEXT ORDER BY _id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    sget-object v1, Lcom/iiordanov/bVNC/SentTextBean;->GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {p1, v0, v1}, Lcom/iiordanov/bVNC/SentTextBean;->Gen_populateFromCursor(Landroid/database/Cursor;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 227
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_historyIndex:I

    .line 229
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->updateButtons()V

    return-void

    :catchall_0
    move-exception v0

    .line 225
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 226
    throw v0
.end method

.method protected onStart()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 244
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/EnterTextDialog;->_textEnterText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
