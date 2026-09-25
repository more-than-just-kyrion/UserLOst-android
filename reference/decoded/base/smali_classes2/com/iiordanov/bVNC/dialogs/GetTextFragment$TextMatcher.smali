.class Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;
.super Ljava/lang/Object;
.source "GetTextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/dialogs/GetTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextMatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;


# direct methods
.method private constructor <init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Lcom/iiordanov/bVNC/dialogs/GetTextFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;->this$0:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->-$$Nest$fgeterror(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
