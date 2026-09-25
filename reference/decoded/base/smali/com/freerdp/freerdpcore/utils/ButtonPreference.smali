.class public Lcom/freerdp/freerdpcore/utils/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private button:Landroid/widget/Button;

.field private buttonOnClickListener:Landroid/view/View$OnClickListener;

.field private buttonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 51
    sget v0, Lcom/freerdp/freerdpcore/R$layout;->button_preference:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonText:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 59
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget p2, Lcom/freerdp/freerdpcore/R$id;->preference_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x1020018

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p1
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    return-void
.end method

.method public setButtonText(I)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonText:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->buttonText:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/ButtonPreference;->button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
