.class public final Ltech/ulo/library/databinding/DiaAppSelectClientBinding;
.super Ljava/lang/Object;
.source "DiaAppSelectClientBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final checkboxMicSupport:Landroid/widget/CheckBox;

.field public final checkboxRememberServiceTypePreferences:Landroid/widget/CheckBox;

.field public final checkboxShareStorage:Landroid/widget/CheckBox;

.field public final checkboxSoundSupport:Landroid/widget/CheckBox;

.field public final checkboxUseAllCores:Landroid/widget/CheckBox;

.field public final radioAppsServiceTypePreference:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/ScrollView;

.field public final seekbarVmMemory:Landroid/widget/SeekBar;

.field public final sshRadioButton:Landroid/widget/RadioButton;

.field public final textTitleClientDescription:Landroid/widget/TextView;

.field public final textVmMemoryLabel:Landroid/widget/TextView;

.field public final vncRadioButton:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "checkboxMicSupport",
            "checkboxRememberServiceTypePreferences",
            "checkboxShareStorage",
            "checkboxSoundSupport",
            "checkboxUseAllCores",
            "radioAppsServiceTypePreference",
            "seekbarVmMemory",
            "sshRadioButton",
            "textTitleClientDescription",
            "textVmMemoryLabel",
            "vncRadioButton"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->rootView:Landroid/widget/ScrollView;

    .line 68
    iput-object p2, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->checkboxMicSupport:Landroid/widget/CheckBox;

    .line 69
    iput-object p3, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->checkboxRememberServiceTypePreferences:Landroid/widget/CheckBox;

    .line 70
    iput-object p4, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->checkboxShareStorage:Landroid/widget/CheckBox;

    .line 71
    iput-object p5, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->checkboxSoundSupport:Landroid/widget/CheckBox;

    .line 72
    iput-object p6, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->checkboxUseAllCores:Landroid/widget/CheckBox;

    .line 73
    iput-object p7, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->radioAppsServiceTypePreference:Landroid/widget/RadioGroup;

    .line 74
    iput-object p8, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->seekbarVmMemory:Landroid/widget/SeekBar;

    .line 75
    iput-object p9, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->sshRadioButton:Landroid/widget/RadioButton;

    .line 76
    iput-object p10, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->textTitleClientDescription:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->textVmMemoryLabel:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->vncRadioButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppSelectClientBinding;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 108
    sget v0, Ltech/ulo/library/R$id;->checkbox_mic_support:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 114
    sget v0, Ltech/ulo/library/R$id;->checkbox_remember_service_type_preferences:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 120
    sget v0, Ltech/ulo/library/R$id;->checkbox_share_storage:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    .line 126
    sget v0, Ltech/ulo/library/R$id;->checkbox_sound_support:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    .line 132
    sget v0, Ltech/ulo/library/R$id;->checkbox_use_all_cores:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    .line 138
    sget v0, Ltech/ulo/library/R$id;->radio_apps_service_type_preference:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioGroup;

    if-eqz v9, :cond_0

    .line 144
    sget v0, Ltech/ulo/library/R$id;->seekbar_vm_memory:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    .line 150
    sget v0, Ltech/ulo/library/R$id;->ssh_radio_button:I

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v11, :cond_0

    .line 156
    sget v0, Ltech/ulo/library/R$id;->text_title_client_description:I

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 162
    sget v0, Ltech/ulo/library/R$id;->text_vm_memory_label:I

    .line 163
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 168
    sget v0, Ltech/ulo/library/R$id;->vnc_radio_button:I

    .line 169
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/RadioButton;

    if-eqz v14, :cond_0

    .line 174
    new-instance v0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/DiaAppSelectClientBinding;
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

    .line 89
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppSelectClientBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaAppSelectClientBinding;
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

    .line 95
    sget v0, Ltech/ulo/library/R$layout;->dia_app_select_client:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaAppSelectClientBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 84
    iget-object v0, p0, Ltech/ulo/library/databinding/DiaAppSelectClientBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
