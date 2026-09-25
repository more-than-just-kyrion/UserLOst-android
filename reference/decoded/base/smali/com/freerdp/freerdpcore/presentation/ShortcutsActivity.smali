.class public Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;
.super Landroid/app/ListActivity;
.source "ShortcutsActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShortcutsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->setupShortcut(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 116
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_title_create_shortcut:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_create_shortcut:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;-><init>(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x104000a

    .line 123
    invoke-virtual {v6, p1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$2;

    invoke-direct {p2, p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$2;-><init>(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;)V

    const/high16 v0, 0x1040000

    .line 150
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 45
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$1;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$1;-><init>(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 78
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 67
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 69
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;

    const v2, 0x1090004

    invoke-direct {v1, p0, v2, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
