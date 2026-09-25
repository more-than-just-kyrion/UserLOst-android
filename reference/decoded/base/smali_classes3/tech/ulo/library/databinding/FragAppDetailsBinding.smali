.class public final Ltech/ulo/library/databinding/FragAppDetailsBinding;
.super Ljava/lang/Object;
.source "FragAppDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appsDescription:Landroid/widget/TextView;

.field public final appsIcon:Landroid/widget/ImageView;

.field public final appsServiceTypePreferences:Landroid/widget/RadioGroup;

.field public final appsSshPreference:Landroid/widget/RadioButton;

.field public final appsTitle:Landroid/widget/TextView;

.field public final appsVncPreference:Landroid/widget/RadioButton;

.field public final appsXsdlPreference:Landroid/widget/RadioButton;

.field public final checkboxAutoStart:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/ScrollView;

.field public final textDescribeState:Landroid/widget/TextView;

.field public final textXsdlVersionSupportedDescription:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "appsDescription",
            "appsIcon",
            "appsServiceTypePreferences",
            "appsSshPreference",
            "appsTitle",
            "appsVncPreference",
            "appsXsdlPreference",
            "checkboxAutoStart",
            "textDescribeState",
            "textXsdlVersionSupportedDescription"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->rootView:Landroid/widget/ScrollView;

    .line 63
    iput-object p2, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsDescription:Landroid/widget/TextView;

    .line 64
    iput-object p3, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsIcon:Landroid/widget/ImageView;

    .line 65
    iput-object p4, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsServiceTypePreferences:Landroid/widget/RadioGroup;

    .line 66
    iput-object p5, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsSshPreference:Landroid/widget/RadioButton;

    .line 67
    iput-object p6, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsTitle:Landroid/widget/TextView;

    .line 68
    iput-object p7, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsVncPreference:Landroid/widget/RadioButton;

    .line 69
    iput-object p8, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->appsXsdlPreference:Landroid/widget/RadioButton;

    .line 70
    iput-object p9, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->checkboxAutoStart:Landroid/widget/CheckBox;

    .line 71
    iput-object p10, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->textDescribeState:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->textXsdlVersionSupportedDescription:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragAppDetailsBinding;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 102
    sget v0, Ltech/ulo/library/R$id;->apps_description:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 108
    sget v0, Ltech/ulo/library/R$id;->apps_icon:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 114
    sget v0, Ltech/ulo/library/R$id;->apps_service_type_preferences:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioGroup;

    if-eqz v6, :cond_0

    .line 120
    sget v0, Ltech/ulo/library/R$id;->apps_ssh_preference:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 126
    sget v0, Ltech/ulo/library/R$id;->apps_title:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 132
    sget v0, Ltech/ulo/library/R$id;->apps_vnc_preference:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_0

    .line 138
    sget v0, Ltech/ulo/library/R$id;->apps_xsdl_preference:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_0

    .line 144
    sget v0, Ltech/ulo/library/R$id;->checkbox_auto_start:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    .line 150
    sget v0, Ltech/ulo/library/R$id;->text_describe_state:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 156
    sget v0, Ltech/ulo/library/R$id;->text_xsdl_version_supported_description:I

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 162
    new-instance v0, Ltech/ulo/library/databinding/FragAppDetailsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Ltech/ulo/library/databinding/FragAppDetailsBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/FragAppDetailsBinding;
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

    .line 83
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/FragAppDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragAppDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragAppDetailsBinding;
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

    .line 89
    sget v0, Ltech/ulo/library/R$layout;->frag_app_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/FragAppDetailsBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragAppDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ltech/ulo/library/databinding/FragAppDetailsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 78
    iget-object v0, p0, Ltech/ulo/library/databinding/FragAppDetailsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
