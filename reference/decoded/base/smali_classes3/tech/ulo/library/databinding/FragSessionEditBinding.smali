.class public final Ltech/ulo/library/databinding/FragSessionEditBinding;
.super Ljava/lang/Object;
.source "FragSessionEditBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final sessionProtected:Landroid/widget/CheckBox;

.field public final spinnerFilesystemList:Landroid/widget/Spinner;

.field public final spinnerSessionServiceType:Landroid/widget/Spinner;

.field public final textFilesystem:Landroid/widget/TextView;

.field public final textInputLayoutSessionName:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutUsername:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputSessionName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final textInputUsername:Lcom/google/android/material/textfield/TextInputEditText;

.field public final textSessionServiceType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;)V
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "sessionProtected",
            "spinnerFilesystemList",
            "spinnerSessionServiceType",
            "textFilesystem",
            "textInputLayoutSessionName",
            "textInputLayoutUsername",
            "textInputSessionName",
            "textInputUsername",
            "textSessionServiceType"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->rootView:Landroid/widget/ScrollView;

    .line 60
    iput-object p2, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->sessionProtected:Landroid/widget/CheckBox;

    .line 61
    iput-object p3, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->spinnerFilesystemList:Landroid/widget/Spinner;

    .line 62
    iput-object p4, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->spinnerSessionServiceType:Landroid/widget/Spinner;

    .line 63
    iput-object p5, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textFilesystem:Landroid/widget/TextView;

    .line 64
    iput-object p6, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textInputLayoutSessionName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    iput-object p7, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textInputLayoutUsername:Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    iput-object p8, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textInputSessionName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 67
    iput-object p9, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textInputUsername:Lcom/google/android/material/textfield/TextInputEditText;

    .line 68
    iput-object p10, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->textSessionServiceType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragSessionEditBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 98
    sget v0, Ltech/ulo/library/R$id;->session_protected:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Ltech/ulo/library/R$id;->spinner_filesystem_list:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Ltech/ulo/library/R$id;->spinner_session_service_type:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Spinner;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Ltech/ulo/library/R$id;->text_filesystem:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 122
    sget v0, Ltech/ulo/library/R$id;->text_input_layout_session_name:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v8, :cond_0

    .line 128
    sget v0, Ltech/ulo/library/R$id;->text_input_layout_username:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v9, :cond_0

    .line 134
    sget v0, Ltech/ulo/library/R$id;->text_input_session_name:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    .line 140
    sget v0, Ltech/ulo/library/R$id;->text_input_username:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Ltech/ulo/library/R$id;->text_session_service_type:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 152
    new-instance v0, Ltech/ulo/library/databinding/FragSessionEditBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Ltech/ulo/library/databinding/FragSessionEditBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;)V

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/FragSessionEditBinding;
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

    .line 79
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/FragSessionEditBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragSessionEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragSessionEditBinding;
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

    .line 85
    sget v0, Ltech/ulo/library/R$layout;->frag_session_edit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/FragSessionEditBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragSessionEditBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ltech/ulo/library/databinding/FragSessionEditBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 74
    iget-object v0, p0, Ltech/ulo/library/databinding/FragSessionEditBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
