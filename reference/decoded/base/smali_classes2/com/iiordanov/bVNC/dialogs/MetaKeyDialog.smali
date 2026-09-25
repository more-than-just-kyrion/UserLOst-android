.class public Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;
.super Landroid/app/Dialog;
.source "MetaKeyDialog.java"

# interfaces
.implements Lcom/iiordanov/bVNC/ConnectionSettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;
    }
.end annotation


# static fields
.field public static final EMPTY_ARGS:[Ljava/lang/String;

.field static _lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/bVNC/MetaList;",
            ">;"
        }
    .end annotation
.end field

.field private static copyListString:Ljava/lang/String;


# instance fields
.field _canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

.field _checkAlt:Landroid/widget/CheckBox;

.field _checkCtrl:Landroid/widget/CheckBox;

.field _checkShift:Landroid/widget/CheckBox;

.field _checkSuper:Landroid/widget/CheckBox;

.field _connection:Lcom/undatech/opaque/Connection;

.field _currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field _database:Lcom/iiordanov/bVNC/Database;

.field private _justStarted:Z

.field _keysInList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/bVNC/input/MetaKeyBean;",
            ">;"
        }
    .end annotation
.end field

.field _listId:J

.field _spinnerKeySelect:Landroid/widget/Spinner;

.field _spinnerKeysInList:Landroid/widget/Spinner;

.field _spinnerLists:Landroid/widget/Spinner;

.field _textKeyDesc:Landroid/widget/TextView;

.field _textListName:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$mgetCopyListString(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getCopyListString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogForCurrentKey(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->updateDialogForCurrentKey()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;
    .locals 0

    invoke-static {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->EMPTY_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 95
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 97
    check-cast p1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    return-void
.end method

.method private getCopyListString()Ljava/lang/String;
    .locals 6

    .line 372
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->copyListString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO META_KEY ( METALISTID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->Gen_getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "METALISTID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2c

    .line 382
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, " ) SELECT {0} "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, " FROM META_KEY WHERE METALISTID = {1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->copyListString:Ljava/lang/String;

    .line 397
    :cond_2
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->copyListString:Ljava/lang/String;

    return-object v0
.end method

.method private static getSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method private updateDialogForCurrentKey()V
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v0

    .line 595
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkAlt:Landroid/widget/CheckBox;

    and-int/lit8 v2, v0, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 596
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkShift:Landroid/widget/CheckBox;

    and-int/lit16 v2, v0, 0x81

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 597
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkCtrl:Landroid/widget/CheckBox;

    and-int/lit16 v2, v0, 0x5000

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 598
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkSuper:Landroid/widget/CheckBox;

    const/high16 v2, 0x60000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 600
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByMouseButton:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    goto :goto_4

    .line 604
    :cond_4
    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeySym:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    :goto_4
    if-eqz v0, :cond_5

    .line 607
    sget-object v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 609
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeySelect:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textKeyDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 217
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 218
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->metakey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setContentView(I)V

    .line 220
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x20008

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 222
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 223
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x1

    .line 224
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 225
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 226
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 228
    sget p1, Lcom/undatech/remoteClientUi/R$string;->meta_key_title:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setTitle(I)V

    .line 229
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxShift:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkShift:Landroid/widget/CheckBox;

    .line 230
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxCtrl:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkCtrl:Landroid/widget/CheckBox;

    .line 231
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxAlt:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkAlt:Landroid/widget/CheckBox;

    .line 232
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxSuper:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkSuper:Landroid/widget/CheckBox;

    .line 233
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textKeyDesc:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textKeyDesc:Landroid/widget/TextView;

    .line 234
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textListName:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textListName:Landroid/widget/EditText;

    .line 235
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerKeySelect:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeySelect:Landroid/widget/Spinner;

    .line 236
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerKeysInList:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    .line 237
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerLists:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    .line 239
    new-instance p1, Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    .line 240
    sget-object p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    .line 242
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    sget-object v1, Lcom/iiordanov/bVNC/MetaList;->GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    const-string v2, "META_LIST"

    invoke-static {p1, v2, v0, v1}, Lcom/iiordanov/bVNC/MetaList;->getAll(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeySelect:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$layout;->key_list_entry:I

    sget-object v3, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeysNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 245
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeySelect:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 247
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setListSpinner()V

    .line 249
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkShift:Landroid/widget/CheckBox;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkAlt:Landroid/widget/CheckBox;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkCtrl:Landroid/widget/CheckBox;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_checkSuper:Landroid/widget/CheckBox;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;

    const/high16 v1, 0x20000

    invoke-direct {v0, p0, v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$MetaCheckListener;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$3;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$4;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 292
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeySelect:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$5;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 315
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonSend:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$6;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonNewList:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonCopyList:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$menu;->metakeymenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemDeleteKeyList:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 151
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemDeleteKey:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_justStarted:Z

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x52

    if-eq p1, v0, :cond_6

    .line 448
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 450
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    .line 451
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v0

    .line 452
    sget-object v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeyCode:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    if-eqz v1, :cond_2

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1, v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeyBase(Lcom/iiordanov/bVNC/input/MetaKeyBase;)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    xor-int/lit8 p2, v0, 0x2

    move v0, p2

    :cond_4
    const/16 p2, 0x54

    if-ne p1, p2, :cond_5

    xor-int/lit16 v0, v0, 0x1000

    .line 481
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaFlags(I)V

    .line 482
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->updateDialogForCurrentKey()V

    const/4 p1, 0x1

    return p1

    .line 485
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_justStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 495
    sget-object p2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeyCode:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->sendCurrentKey()V

    .line 498
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_justStarted:Z

    .line 503
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 207
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemDeleteKeyList:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaListId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 208
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemDeleteKey:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v3
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->takeKeyEvents(Z)V

    .line 408
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_justStarted:Z

    .line 409
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 410
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 8

    .line 421
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/bVNC/MetaList;

    .line 423
    invoke-virtual {v3}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 425
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textListName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v3}, Lcom/iiordanov/bVNC/MetaList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 428
    invoke-virtual {v3, v0}, Lcom/iiordanov/bVNC/MetaList;->setName(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iiordanov/bVNC/MetaList;->Gen_update(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 430
    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-static {v3}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    .line 431
    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v3, v0, v2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->takeKeyEvents(Z)V

    .line 439
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method sendCurrentKey()V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 520
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v2, v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    .line 521
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-static {v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 527
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/Connection;->setLastMetaKeyId(J)V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 532
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/undatech/opaque/Connection;->setLastMetaKeyId(J)V

    .line 533
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 536
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getCanvas()Lcom/iiordanov/bVNC/RemoteCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvas;->getKeyboard()Lcom/iiordanov/bVNC/input/RemoteKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/input/RemoteKeyboard;->sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    return-void
.end method

.method public setConnection(Lcom/undatech/opaque/Connection;)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    if-eq v0, p1, :cond_0

    .line 618
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    .line 619
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setMetaKeyList()V

    :cond_0
    return-void
.end method

.method setListSpinner()V
    .locals 5

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 626
    :goto_0
    sget-object v2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 628
    sget-object v2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/MetaList;

    .line 629
    invoke-virtual {v2}, Lcom/iiordanov/bVNC/MetaList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/undatech/remoteClientUi/R$layout;->key_list_entry:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method setMetaKeyList()V
    .locals 11

    .line 541
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getMetaListId()J

    move-result-wide v0

    .line 542
    iget-wide v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move v3, v2

    .line 543
    :goto_0
    sget-object v4, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 545
    sget-object v4, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iiordanov/bVNC/MetaList;

    .line 546
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_3

    .line 548
    iget-object v5, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    .line 550
    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v3

    const-string v5, "METALISTID"

    .line 554
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "META_KEY"

    filled-new-array {v7, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 551
    const-string v6, "SELECT * FROM {0} WHERE {1} = {2} ORDER BY KEYDESC"

    invoke-static {v6, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->EMPTY_ARGS:[Ljava/lang/String;

    .line 550
    invoke-virtual {v3, v5, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v3

    .line 556
    iget-object v5, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    sget-object v6, Lcom/iiordanov/bVNC/input/MetaKeyBean;->NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {v3, v5, v6}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->Gen_populateFromCursor(Landroid/database/Cursor;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 560
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 561
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    iget-object v5, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_canvasActivity:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v5}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getConnection()Lcom/undatech/opaque/Connection;

    move-result-object v5

    invoke-interface {v5}, Lcom/undatech/opaque/Connection;->getLastMetaKeyId()J

    move-result-wide v5

    move v7, v2

    move v8, v7

    .line 564
    :goto_1
    iget-object v9, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 566
    iget-object v9, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 567
    invoke-virtual {v9}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v9}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-nez v9, :cond_0

    move v8, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 573
    :cond_1
    iget-object v5, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v7

    sget v9, Lcom/undatech/remoteClientUi/R$layout;->key_list_entry:I

    invoke-direct {v6, v7, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 574
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 576
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 577
    new-instance v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-direct {v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    iput-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    goto :goto_2

    .line 581
    :cond_2
    new-instance v3, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object v5, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    iput-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 583
    :goto_2
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->updateDialogForCurrentKey()V

    .line 584
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textListName:Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/MetaList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 588
    :cond_4
    :goto_3
    iput-wide v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    :cond_5
    return-void
.end method
