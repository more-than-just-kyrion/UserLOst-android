.class Lcom/ksmaze/android/preference/ListPreferenceMultiSelect$1;
.super Ljava/lang/Object;
.source "ListPreferenceMultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;


# direct methods
.method constructor <init>(Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect$1;->this$0:Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect$1;->this$0:Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;

    invoke-static {p1}, Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;->-$$Nest$fgetmClickedDialogEntryIndices(Lcom/ksmaze/android/preference/ListPreferenceMultiSelect;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method
