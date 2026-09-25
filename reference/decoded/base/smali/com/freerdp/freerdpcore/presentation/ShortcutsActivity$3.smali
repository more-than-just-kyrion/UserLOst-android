.class Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;
.super Ljava/lang/Object;
.source "ShortcutsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->setupShortcut(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$paramContext:Landroid/content/Context;

.field final synthetic val$paramDefaultLabel:Ljava/lang/String;

.field final synthetic val$paramStrRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramDefaultLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramStrRef:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 130
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramDefaultLabel:Ljava/lang/String;

    .line 132
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramContext:Landroid/content/Context;

    const-class v1, Lcom/freerdp/freerdpcore/services/SessionRequestHandlerActivity;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramStrRef:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string p2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->val$paramContext:Landroid/content/Context;

    sget p2, Lcom/freerdp/freerdpcore/R$drawable;->icon_launcher_freerdp:I

    invoke-static {p1, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    .line 143
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity$3;->this$0:Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ShortcutsActivity;->finish()V

    return-void
.end method
