.class public final Ltech/ulo/library/databinding/DiaAppCredentialsBinding;
.super Ljava/lang/Object;
.source "DiaAppCredentialsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final textFilesystemCredentialsReasoning:Landroid/widget/TextView;

.field public final textInputLayoutPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutUsername:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutVncPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final textInputUsername:Lcom/google/android/material/textfield/TextInputEditText;

.field public final textInputVncPassword:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
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
            "textFilesystemCredentialsReasoning",
            "textInputLayoutPassword",
            "textInputLayoutUsername",
            "textInputLayoutVncPassword",
            "textInputPassword",
            "textInputUsername",
            "textInputVncPassword"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->rootView:Landroid/widget/ScrollView;

    .line 53
    iput-object p2, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textFilesystemCredentialsReasoning:Landroid/widget/TextView;

    .line 54
    iput-object p3, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputLayoutPassword:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    iput-object p4, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputLayoutUsername:Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    iput-object p5, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputLayoutVncPassword:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    iput-object p6, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 58
    iput-object p7, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputUsername:Lcom/google/android/material/textfield/TextInputEditText;

    .line 59
    iput-object p8, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->textInputVncPassword:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppCredentialsBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 89
    sget v0, Ltech/ulo/library/R$id;->text_filesystem_credentials_reasoning:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Ltech/ulo/library/R$id;->text_input_layout_password:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v5, :cond_0

    .line 101
    sget v0, Ltech/ulo/library/R$id;->text_input_layout_username:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v6, :cond_0

    .line 107
    sget v0, Ltech/ulo/library/R$id;->text_input_layout_vnc_password:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v7, :cond_0

    .line 113
    sget v0, Ltech/ulo/library/R$id;->text_input_password:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    .line 119
    sget v0, Ltech/ulo/library/R$id;->text_input_username:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v9, :cond_0

    .line 125
    sget v0, Ltech/ulo/library/R$id;->text_input_vnc_password:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    .line 131
    new-instance v0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/DiaAppCredentialsBinding;
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

    .line 70
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppCredentialsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppCredentialsBinding;
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

    .line 76
    sget v0, Ltech/ulo/library/R$layout;->dia_app_credentials:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppCredentialsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 65
    iget-object v0, p0, Ltech/ulo/library/databinding/DiaAppCredentialsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
