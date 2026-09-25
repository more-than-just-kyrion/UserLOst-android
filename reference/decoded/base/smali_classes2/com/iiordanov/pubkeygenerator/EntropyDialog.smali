.class public Lcom/iiordanov/pubkeygenerator/EntropyDialog;
.super Landroid/app/Dialog;
.source "EntropyDialog.java"

# interfaces
.implements Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    sget p1, Lcom/iiordanov/pubkeygenerator/R$layout;->dia_gatherentropy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->setContentView(I)V

    .line 32
    sget p1, Lcom/iiordanov/pubkeygenerator/R$string;->gather_entropy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->setTitle(I)V

    .line 34
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->entropy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/pubkeygenerator/EntropyView;

    invoke-virtual {p1, p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->addOnEntropyGatheredListener(Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->setContentView(Landroid/view/View;)V

    .line 41
    sget p1, Lcom/iiordanov/pubkeygenerator/R$string;->gather_entropy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->setTitle(I)V

    .line 43
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->entropy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/pubkeygenerator/EntropyView;

    invoke-virtual {p1, p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->addOnEntropyGatheredListener(Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;)V

    return-void
.end method


# virtual methods
.method public onEntropyGathered([B)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;->dismiss()V

    return-void
.end method
