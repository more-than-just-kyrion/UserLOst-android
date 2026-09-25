.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 183
    rem-int/lit8 p1, p2, 0x8

    if-lez p1, :cond_0

    rsub-int/lit8 p1, p1, 0x8

    add-int/2addr p2, p1

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V

    .line 190
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
