.class Lcom/iiordanov/bVNC/aSPICE$2;
.super Ljava/lang/Object;
.source "aSPICE.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/aSPICE;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/aSPICE;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/aSPICE;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$2;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 135
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$2;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aSPICE;->-$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aSPICE;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$2;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-static {p1}, Lcom/iiordanov/bVNC/aSPICE;->-$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aSPICE;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
