.class public Lcom/freerdp/freerdpcore/presentation/HomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_BOOKMARK_PLACEHOLDER:Ljava/lang/String; = "add_bookmark"

.field private static final PARAM_SUPERBAR_TEXT:Ljava/lang/String; = "superbar_text"

.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private addBookmarkPlaceholder:Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

.field private clearTextButton:Landroid/widget/Button;

.field private listViewBookmarks:Landroid/widget/ListView;

.field mDecor:Landroid/view/View;

.field private manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

.field private sectionLabelBookmarks:Ljava/lang/String;

.field private separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

.field private superBarEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->sectionLabelBookmarks:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->addBookmarkPlaceholder:Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 279
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getAskOnExit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getAskOnExit(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_dont_show_again:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    sget v2, Lcom/freerdp/freerdpcore/R$string;->dlg_title_exit:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_exit:I

    .line 287
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->yes:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/HomeActivity$5;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$5;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->no:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/HomeActivity$4;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$4;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->mDecor:Landroid/view/View;

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 194
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 199
    sget v1, Lcom/freerdp/freerdpcore/R$id;->bookmark_connect:I

    const-string v2, "conRef"

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 201
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 202
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 209
    :cond_0
    sget v1, Lcom/freerdp/freerdpcore/R$id;->bookmark_edit:I

    if-ne p1, v1, :cond_1

    .line 211
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 212
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 220
    :cond_1
    sget v1, Lcom/freerdp/freerdpcore/R$id;->bookmark_delete:I

    if-ne p1, v1, :cond_3

    .line 222
    invoke-static {v0}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isManualBookmarkReference(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 224
    invoke-static {v0}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getManualBookmarkId(Ljava/lang/String;)J

    move-result-wide v0

    .line 225
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->delete(J)V

    .line 226
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->remove(J)V

    .line 227
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    sget v0, Lcom/freerdp/freerdpcore/R$string;->title_home:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->setTitle(I)V

    .line 67
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/freerdp/freerdpcore/R$layout;->home:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->mDecor:Landroid/view/View;

    const/16 v0, 0x1002

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Max HeapSize: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "App data folder: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freerdp/freerdpcore/R$string;->section_bookmarks:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->sectionLabelBookmarks:Ljava/lang/String;

    .line 82
    new-instance p1, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    invoke-direct {p1}, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->addBookmarkPlaceholder:Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    .line 83
    const-string v0, "add_bookmark"

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->setName(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->addBookmarkPlaceholder:Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    .line 85
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->list_placeholder_add_bookmark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->setLabel(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 91
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getFileReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v1, "conRef"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_0
    sget p1, Lcom/freerdp/freerdpcore/R$id;->clear_search_btn:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->clearTextButton:Landroid/widget/Button;

    .line 105
    sget p1, Lcom/freerdp/freerdpcore/R$id;->superBarEditText:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    .line 107
    sget p1, Lcom/freerdp/freerdpcore/R$id;->listViewBookmarks:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->listViewBookmarks:Landroid/widget/ListView;

    .line 110
    new-instance v0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->listViewBookmarks:Landroid/widget/ListView;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$2;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 165
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$SuperBarTextWatcher;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;Lcom/freerdp/freerdpcore/presentation/HomeActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->clearTextButton:Landroid/widget/Button;

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity$3;-><init>(Lcom/freerdp/freerdpcore/presentation/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 327
    sget v1, Lcom/freerdp/freerdpcore/R$menu;->home_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 337
    sget v0, Lcom/freerdp/freerdpcore/R$id;->newBookmark:I

    if-ne p1, v0, :cond_0

    .line 339
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    :cond_0
    sget v0, Lcom/freerdp/freerdpcore/R$id;->appSettings:I

    if-ne p1, v0, :cond_1

    .line 344
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_1
    sget v0, Lcom/freerdp/freerdpcore/R$id;->help:I

    if-ne p1, v0, :cond_2

    .line 349
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/freerdp/freerdpcore/presentation/HelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    :cond_2
    sget v0, Lcom/freerdp/freerdpcore/R$id;->about:I

    if-ne p1, v0, :cond_3

    .line 354
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/freerdp/freerdpcore/presentation/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 267
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 268
    const-string v0, "HomeActivity"

    const-string v1, "HomeActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->listViewBookmarks:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iput-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    .line 273
    iput-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 320
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    const-string v1, "superbar_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 244
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 245
    const-string v0, "HomeActivity"

    const-string v1, "HomeActivity.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    sget v1, Lcom/freerdp/freerdpcore/R$layout;->bookmark_list_item:I

    .line 249
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    .line 252
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->addBookmarkPlaceholder:Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 255
    new-instance v0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    .line 256
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->sectionLabelBookmarks:Ljava/lang/String;

    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->manualBookmarkAdapter:Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 257
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->listViewBookmarks:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->separatedListAdapter:Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 314
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "superbar_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/HomeActivity;->superBarEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    return v0
.end method
