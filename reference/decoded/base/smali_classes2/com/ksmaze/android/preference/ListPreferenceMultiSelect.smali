.class public Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;
.super Landroid/preference/ListPreference;
.source "ListPreferenceMultiSelect.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = " , "


# instance fields
.field private mClickedDialogEntryIndices:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmClickedDialogEntryIndices(Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;)[Z
    .locals 0

    iget-object p0, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    return-void
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 45
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 48
    :cond_1
    check-cast p0, Ljava/lang/String;

    const-string v0, " , "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreCheckedEntries()V
    .locals 7

    .line 106
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 110
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 111
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 112
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 113
    aget-object v6, v0, v5

    .line 114
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    iget-object v4, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 69
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 70
    :goto_0
    array-length v3, v0

    const-string v4, " , "

    if-ge v2, v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 72
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->setValue(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 90
    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->restoreCheckedEntries()V

    .line 96
    iget-object v1, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    new-instance v2, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect$1;

    invoke-direct {v2, p0}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect$1;-><init>(Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 126
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    return-void
.end method
