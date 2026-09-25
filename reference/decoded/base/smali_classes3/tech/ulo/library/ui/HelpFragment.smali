.class public final Ltech/ulo/library/ui/HelpFragment;
.super Landroidx/fragment/app/Fragment;
.source "HelpFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/ulo/library/ui/HelpFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Ltech/ulo/library/databinding/FragHelpBinding;",
        "binding",
        "getBinding",
        "()Ltech/ulo/library/databinding/FragHelpBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onViewCreated",
        "view",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _binding:Ltech/ulo/library/databinding/FragHelpBinding;


# direct methods
.method public static synthetic $r8$lambda$owdW8cqso8XD9Z1vZiC5D6_lxBU(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/HelpFragment;->onViewCreated$lambda$1(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmYLisIXmlS2gMNMLGNz6UFlm6Q(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/HelpFragment;->onViewCreated$lambda$0(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getBinding()Ltech/ulo/library/databinding/FragHelpBinding;
    .locals 1

    .line 19
    iget-object v0, p0, Ltech/ulo/library/ui/HelpFragment;->_binding:Ltech/ulo/library/databinding/FragHelpBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/HelpFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Ltech/ulo/library/ui/HelpFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/HelpFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 22
    invoke-static {p1, p2, p3}, Ltech/ulo/library/databinding/FragHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/HelpFragment;->_binding:Ltech/ulo/library/databinding/FragHelpBinding;

    .line 23
    invoke-direct {p0}, Ltech/ulo/library/ui/HelpFragment;->getBinding()Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/databinding/FragHelpBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Ltech/ulo/library/ui/HelpFragment;->_binding:Ltech/ulo/library/databinding/FragHelpBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Ltech/ulo/library/ui/HelpFragment;->getBinding()Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragHelpBinding;->welcomeText:Landroid/widget/TextView;

    sget p2, Ltech/ulo/library/R$string;->welcome:I

    sget v0, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p0, v0}, Ltech/ulo/library/ui/HelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ltech/ulo/library/ui/HelpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Ltech/ulo/library/ui/HelpFragment;->getBinding()Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragHelpBinding;->githubLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p2, Ltech/ulo/library/ui/HelpFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/HelpFragment$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/HelpFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Ltech/ulo/library/ui/HelpFragment;->getBinding()Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p1

    iget-object p1, p1, Ltech/ulo/library/databinding/FragHelpBinding;->userlandLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p2, Ltech/ulo/library/ui/HelpFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/HelpFragment$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/ui/HelpFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
