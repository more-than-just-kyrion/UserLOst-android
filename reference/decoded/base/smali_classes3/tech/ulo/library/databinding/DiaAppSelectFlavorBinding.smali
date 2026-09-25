.class public final Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;
.super Ljava/lang/Object;
.source "DiaAppSelectFlavorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final radioAvfPreference:Landroid/widget/RadioButton;

.field public final radioExecutionTypePreference:Landroid/widget/RadioGroup;

.field public final radioFilesystemFlavorPreference:Landroid/widget/RadioGroup;

.field public final radioProotPreference:Landroid/widget/RadioButton;

.field public final radioQemuPreference:Landroid/widget/RadioButton;

.field private final rootView:Landroid/widget/ScrollView;

.field public final textTitleExecutionType:Landroid/widget/TextView;

.field public final textTitleFlavorDescription:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            "radioAvfPreference",
            "radioExecutionTypePreference",
            "radioFilesystemFlavorPreference",
            "radioProotPreference",
            "radioQemuPreference",
            "textTitleExecutionType",
            "textTitleFlavorDescription"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->rootView:Landroid/widget/ScrollView;

    .line 51
    iput-object p2, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->radioAvfPreference:Landroid/widget/RadioButton;

    .line 52
    iput-object p3, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->radioExecutionTypePreference:Landroid/widget/RadioGroup;

    .line 53
    iput-object p4, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->radioFilesystemFlavorPreference:Landroid/widget/RadioGroup;

    .line 54
    iput-object p5, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->radioProotPreference:Landroid/widget/RadioButton;

    .line 55
    iput-object p6, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->radioQemuPreference:Landroid/widget/RadioButton;

    .line 56
    iput-object p7, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->textTitleExecutionType:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->textTitleFlavorDescription:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 87
    sget v0, Ltech/ulo/library/R$id;->radio_avf_preference:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 93
    sget v0, Ltech/ulo/library/R$id;->radio_execution_type_preference:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioGroup;

    if-eqz v5, :cond_0

    .line 99
    sget v0, Ltech/ulo/library/R$id;->radio_filesystem_flavor_preference:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioGroup;

    if-eqz v6, :cond_0

    .line 105
    sget v0, Ltech/ulo/library/R$id;->radio_proot_preference:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 111
    sget v0, Ltech/ulo/library/R$id;->radio_qemu_preference:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 117
    sget v0, Ltech/ulo/library/R$id;->text_title_execution_type:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 123
    sget v0, Ltech/ulo/library/R$id;->text_title_flavor_description:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 129
    new-instance v0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;
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

    .line 68
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;
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

    .line 74
    sget v0, Ltech/ulo/library/R$layout;->dia_app_select_flavor:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 63
    iget-object v0, p0, Ltech/ulo/library/databinding/DiaAppSelectFlavorBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
