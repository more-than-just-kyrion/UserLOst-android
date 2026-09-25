.class public final Ltech/ulo/library/databinding/DiaContributionBinding;
.super Ljava/lang/Object;
.source "DiaContributionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final amountSeekBar:Landroid/widget/SeekBar;

.field public final amountTextView:Landroid/widget/TextView;

.field public final chosenAmountTextView:Landroid/widget/TextView;

.field public final frequencyRadioGroup:Landroid/widget/RadioGroup;

.field public final frequencyTextView:Landroid/widget/TextView;

.field public final monthlyRadioButton:Landroid/widget/RadioButton;

.field public final oneTimeRadioButton:Landroid/widget/RadioButton;

.field public final processButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final yearlyRadioButton:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/RadioButton;)V
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
            "amountSeekBar",
            "amountTextView",
            "chosenAmountTextView",
            "frequencyRadioGroup",
            "frequencyTextView",
            "monthlyRadioButton",
            "oneTimeRadioButton",
            "processButton",
            "yearlyRadioButton"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->amountSeekBar:Landroid/widget/SeekBar;

    .line 60
    iput-object p3, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->amountTextView:Landroid/widget/TextView;

    .line 61
    iput-object p4, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->chosenAmountTextView:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->frequencyRadioGroup:Landroid/widget/RadioGroup;

    .line 63
    iput-object p6, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->frequencyTextView:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->monthlyRadioButton:Landroid/widget/RadioButton;

    .line 65
    iput-object p8, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->oneTimeRadioButton:Landroid/widget/RadioButton;

    .line 66
    iput-object p9, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->processButton:Landroid/widget/Button;

    .line 67
    iput-object p10, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->yearlyRadioButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaContributionBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 97
    sget v0, Ltech/ulo/library/R$id;->amountSeekBar:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/SeekBar;

    if-eqz v4, :cond_0

    .line 103
    sget v0, Ltech/ulo/library/R$id;->amountTextView:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 109
    sget v0, Ltech/ulo/library/R$id;->chosenAmountTextView:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 115
    sget v0, Ltech/ulo/library/R$id;->frequencyRadioGroup:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioGroup;

    if-eqz v7, :cond_0

    .line 121
    sget v0, Ltech/ulo/library/R$id;->frequencyTextView:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 127
    sget v0, Ltech/ulo/library/R$id;->monthlyRadioButton:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_0

    .line 133
    sget v0, Ltech/ulo/library/R$id;->oneTimeRadioButton:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_0

    .line 139
    sget v0, Ltech/ulo/library/R$id;->processButton:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 145
    sget v0, Ltech/ulo/library/R$id;->yearlyRadioButton:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/RadioButton;

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Ltech/ulo/library/databinding/DiaContributionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Ltech/ulo/library/databinding/DiaContributionBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/RadioButton;)V

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/DiaContributionBinding;
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

    .line 78
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/DiaContributionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaContributionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/DiaContributionBinding;
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

    .line 84
    sget v0, Ltech/ulo/library/R$layout;->dia_contribution:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/DiaContributionBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/DiaContributionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Ltech/ulo/library/databinding/DiaContributionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Ltech/ulo/library/databinding/DiaContributionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
