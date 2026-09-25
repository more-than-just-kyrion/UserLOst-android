.class Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ApplicationSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$2;->this$0:Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$2;->this$0:Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;

    invoke-static {p2}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->access$000(Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;)V

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
