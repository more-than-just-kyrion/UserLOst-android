.class Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;
.super Ljava/lang/Object;
.source "UberColorPickerDialog.java"

# interfaces
.implements Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;->this$0:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;->this$0:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->-$$Nest$fgetmListener(Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;)Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 103
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;->this$0:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->dismiss()V

    return-void
.end method
