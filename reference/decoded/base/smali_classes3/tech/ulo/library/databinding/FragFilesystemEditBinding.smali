.class public final Ltech/ulo/library/databinding/FragFilesystemEditBinding;
.super Ljava/lang/Object;
.source "FragFilesystemEditBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final advancedOptions:Landroid/widget/LinearLayout;

.field public final btnShowAdvancedOptions:Landroid/widget/ToggleButton;

.field public final executionTypeGroup:Landroid/widget/RadioGroup;

.field public final filesystemProtected:Landroid/widget/CheckBox;

.field public final importButton:Landroid/widget/Button;

.field public final inputFilesystemName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final inputFilesystemPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final inputFilesystemUsername:Lcom/google/android/material/textfield/TextInputEditText;

.field public final inputFilesystemVncpassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final radioAvf:Landroid/widget/RadioButton;

.field public final radioProot:Landroid/widget/RadioButton;

.field public final radioQemu:Landroid/widget/RadioButton;

.field private final rootView:Landroid/widget/ScrollView;

.field public final spinnerFilesystemType:Landroid/widget/Spinner;

.field public final textBackupFilename:Landroid/widget/TextView;

.field public final textFilesystemType:Landroid/widget/TextView;

.field public final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutFilesystemPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutFilesystemUsername:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputLayoutFilesystemVncpasswd:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textUseSameSettings:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 2
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
            "advancedOptions",
            "btnShowAdvancedOptions",
            "executionTypeGroup",
            "filesystemProtected",
            "importButton",
            "inputFilesystemName",
            "inputFilesystemPassword",
            "inputFilesystemUsername",
            "inputFilesystemVncpassword",
            "radioAvf",
            "radioProot",
            "radioQemu",
            "spinnerFilesystemType",
            "textBackupFilename",
            "textFilesystemType",
            "textInputLayout",
            "textInputLayoutFilesystemPassword",
            "textInputLayoutFilesystemUsername",
            "textInputLayoutFilesystemVncpasswd",
            "textUseSameSettings"
        }
    .end annotation

    move-object v0, p0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 105
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 106
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->advancedOptions:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 107
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->btnShowAdvancedOptions:Landroid/widget/ToggleButton;

    move-object v1, p4

    .line 108
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->executionTypeGroup:Landroid/widget/RadioGroup;

    move-object v1, p5

    .line 109
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->filesystemProtected:Landroid/widget/CheckBox;

    move-object v1, p6

    .line 110
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->importButton:Landroid/widget/Button;

    move-object v1, p7

    .line 111
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->inputFilesystemName:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p8

    .line 112
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->inputFilesystemPassword:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p9

    .line 113
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->inputFilesystemUsername:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p10

    .line 114
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->inputFilesystemVncpassword:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p11

    .line 115
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->radioAvf:Landroid/widget/RadioButton;

    move-object v1, p12

    .line 116
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->radioProot:Landroid/widget/RadioButton;

    move-object v1, p13

    .line 117
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->radioQemu:Landroid/widget/RadioButton;

    move-object/from16 v1, p14

    .line 118
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->spinnerFilesystemType:Landroid/widget/Spinner;

    move-object/from16 v1, p15

    .line 119
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textBackupFilename:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 120
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textFilesystemType:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 121
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 v1, p18

    .line 122
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textInputLayoutFilesystemPassword:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 v1, p19

    .line 123
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textInputLayoutFilesystemUsername:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 v1, p20

    .line 124
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textInputLayoutFilesystemVncpasswd:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 v1, p21

    .line 125
    iput-object v1, v0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->textUseSameSettings:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragFilesystemEditBinding;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 155
    sget v1, Ltech/ulo/library/R$id;->advanced_options:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 161
    sget v1, Ltech/ulo/library/R$id;->btn_show_advanced_options:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ToggleButton;

    if-eqz v6, :cond_0

    .line 167
    sget v1, Ltech/ulo/library/R$id;->execution_type_group:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RadioGroup;

    if-eqz v7, :cond_0

    .line 173
    sget v1, Ltech/ulo/library/R$id;->filesystem_protected:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    .line 179
    sget v1, Ltech/ulo/library/R$id;->import_button:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 185
    sget v1, Ltech/ulo/library/R$id;->input_filesystem_name:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    .line 191
    sget v1, Ltech/ulo/library/R$id;->input_filesystem_password:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v11, :cond_0

    .line 197
    sget v1, Ltech/ulo/library/R$id;->input_filesystem_username:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v12, :cond_0

    .line 203
    sget v1, Ltech/ulo/library/R$id;->input_filesystem_vncpassword:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v13, :cond_0

    .line 209
    sget v1, Ltech/ulo/library/R$id;->radio_avf:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RadioButton;

    if-eqz v14, :cond_0

    .line 215
    sget v1, Ltech/ulo/library/R$id;->radio_proot:I

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RadioButton;

    if-eqz v15, :cond_0

    .line 221
    sget v1, Ltech/ulo/library/R$id;->radio_qemu:I

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RadioButton;

    if-eqz v16, :cond_0

    .line 227
    sget v1, Ltech/ulo/library/R$id;->spinner_filesystem_type:I

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Spinner;

    if-eqz v17, :cond_0

    .line 233
    sget v1, Ltech/ulo/library/R$id;->text_backup_filename:I

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 239
    sget v1, Ltech/ulo/library/R$id;->text_filesystem_type:I

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 245
    sget v1, Ltech/ulo/library/R$id;->text_input_layout:I

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v20, :cond_0

    .line 251
    sget v1, Ltech/ulo/library/R$id;->text_input_layout_filesystem_password:I

    .line 252
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v21, :cond_0

    .line 257
    sget v1, Ltech/ulo/library/R$id;->text_input_layout_filesystem_username:I

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v22, :cond_0

    .line 263
    sget v1, Ltech/ulo/library/R$id;->text_input_layout_filesystem_vncpasswd:I

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v23, :cond_0

    .line 269
    sget v1, Ltech/ulo/library/R$id;->text_use_same_settings:I

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 275
    new-instance v1, Ltech/ulo/library/databinding/FragFilesystemEditBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v24}, Ltech/ulo/library/databinding/FragFilesystemEditBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    return-object v1

    .line 283
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/FragFilesystemEditBinding;
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

    .line 136
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragFilesystemEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/FragFilesystemEditBinding;
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

    .line 142
    sget v0, Ltech/ulo/library/R$layout;->frag_filesystem_edit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/FragFilesystemEditBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 27
    invoke-virtual {p0}, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 131
    iget-object v0, p0, Ltech/ulo/library/databinding/FragFilesystemEditBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
