.class public Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SessionRequestHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private editBookmarkWithConnectionReference(Ljava/lang/String;)V
    .locals 3

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "conRef"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v0, "query"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostnameReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->startSessionWithConnectionReference(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->startSessionWithConnectionReference(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->editBookmarkWithConnectionReference(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startSessionWithConnectionReference(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "conRef"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
