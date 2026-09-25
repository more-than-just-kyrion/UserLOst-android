.class public final Ltech/ulo/library/databinding/FragHelpBinding;
.super Ljava/lang/Object;
.source "FragHelpBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final githubLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final githubMessage:Landroid/widget/TextView;

.field public final layoutTerminology:Landroid/widget/LinearLayout;

.field public final listSupportedServices:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final textSupportedServices:Landroid/widget/TextView;

.field public final userlandLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final welcomeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "githubLogo",
            "githubMessage",
            "layoutTerminology",
            "listSupportedServices",
            "textSupportedServices",
            "userlandLogo",
            "welcomeText"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ltech/ulo/library/databinding/FragHelpBinding;->rootView:Landroid/widget/ScrollView;

    .line 50
    iput-object p2, p0, Ltech/ulo/library/databinding/FragHelpBinding;->githubLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 51
    iput-object p3, p0, Ltech/ulo/library/databinding/FragHelpBinding;->githubMessage:Landroid/widget/TextView;

    .line 52
    iput-object p4, p0, Ltech/ulo/library/databinding/FragHelpBinding;->layoutTerminology:Landroid/widget/LinearLayout;

    .line 53
    iput-object p5, p0, Ltech/ulo/library/databinding/FragHelpBinding;->listSupportedServices:Landroid/widget/LinearLayout;

    .line 54
    iput-object p6, p0, Ltech/ulo/library/databinding/FragHelpBinding;->textSupportedServices:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Ltech/ulo/library/databinding/FragHelpBinding;->userlandLogo:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 56
    iput-object p8, p0, Ltech/ulo/library/databinding/FragHelpBinding;->welcomeText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragHelpBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 86
    sget v0, Ltech/ulo/library/R$id;->github_logo:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Ltech/ulo/library/R$id;->github_message:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Ltech/ulo/library/R$id;->layout_terminology:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 104
    sget v0, Ltech/ulo/library/R$id;->list_supported_services:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 110
    sget v0, Ltech/ulo/library/R$id;->text_supported_services:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 116
    sget v0, Ltech/ulo/library/R$id;->userland_logo:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v9, :cond_0

    .line 122
    sget v0, Ltech/ulo/library/R$id;->welcome_text:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 128
    new-instance v0, Ltech/ulo/library/databinding/FragHelpBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ltech/ulo/library/databinding/FragHelpBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;)V

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/FragHelpBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/FragHelpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragHelpBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 73
    sget v0, Ltech/ulo/library/R$layout;->frag_help:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/FragHelpBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragHelpBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltech/ulo/library/databinding/FragHelpBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 62
    iget-object v0, p0, Ltech/ulo/library/databinding/FragHelpBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
