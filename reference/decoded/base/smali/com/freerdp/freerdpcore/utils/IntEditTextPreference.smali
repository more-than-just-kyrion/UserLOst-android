.class public Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "IntEditTextPreference.java"


# instance fields
.field private bounds_default:I

.field private bounds_max:I

.field private bounds_min:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 47
    sget-object v3, Lcom/freerdp/freerdpcore/R$styleable;->IntEditTextPreference:[I

    .line 48
    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/freerdp/freerdpcore/R$styleable;->IntEditTextPreference_bounds_min:I

    .line 50
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_min:I

    .line 51
    sget p2, Lcom/freerdp/freerdpcore/R$styleable;->IntEditTextPreference_bounds_max:I

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_max:I

    .line 53
    sget p2, Lcom/freerdp/freerdpcore/R$styleable;->IntEditTextPreference_bounds_default:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_default:I

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 58
    :cond_0
    iput v1, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_min:I

    .line 59
    iput v0, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_max:I

    .line 60
    iput v2, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_default:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p1, -0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->getPersistedInt(I)I

    move-result p1

    .line 74
    iget v0, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_max:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_min:I

    if-ge p1, v0, :cond_1

    .line 75
    :cond_0
    iget p1, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_default:I

    .line 76
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    iget v1, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_max:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_min:I

    if-ge v0, v1, :cond_2

    .line 95
    :cond_1
    iget v0, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_default:I

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->persistInt(I)Z

    move-result p1

    return p1
.end method

.method public setBounds(III)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_min:I

    .line 67
    iput p2, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_max:I

    .line 68
    iput p3, p0, Lcom/freerdp/freerdpcore/utils/IntEditTextPreference;->bounds_default:I

    return-void
.end method
