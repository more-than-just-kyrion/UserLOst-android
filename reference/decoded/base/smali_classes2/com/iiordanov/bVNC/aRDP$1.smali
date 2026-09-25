.class Lcom/iiordanov/bVNC/aRDP$1;
.super Ljava/lang/Object;
.source "aRDP.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/aRDP;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/aRDP;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/aRDP;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP$1;->this$0:Lcom/iiordanov/bVNC/aRDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP$1;->this$0:Lcom/iiordanov/bVNC/aRDP;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aRDP;->-$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aRDP;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP$1;->this$0:Lcom/iiordanov/bVNC/aRDP;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aRDP;->-$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aRDP;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
