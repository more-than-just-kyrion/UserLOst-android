.class public Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;
.super Landroid/app/Dialog;
.source "UberColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;,
        Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;
    }
.end annotation


# instance fields
.field private final mInitialColor:I

.field private final mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;)Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p2, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->mListener:Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;

    .line 91
    iput p3, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->mInitialColor:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 99
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v2, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$1;-><init>(Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;)V

    .line 107
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 112
    const-string p1, "Pick a color (try the trackball)"

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :try_start_0
    new-instance p1, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->mInitialColor:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog$OnColorChangedListener;III)V

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/UberColorPickerDialog;->dismiss()V

    :goto_0
    return-void
.end method
