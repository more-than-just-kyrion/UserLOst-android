.class public final Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;->getDisplayPreferences(Ltech/ulo/library/model/entities/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "tech/ulo/library/MainActivity$getDisplayPreferences$1$2",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $height:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $scaling:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $scaling_factor_spinner:Landroid/widget/Spinner;

.field final synthetic $text_geometry_value:Landroid/widget/TextView;

.field final synthetic $width:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroid/widget/Spinner;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling_factor_spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$text_geometry_value:Landroid/widget/TextView;

    iput-object p4, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$width:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$height:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1457
    iget-object p1, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p2, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling_factor_spinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1458
    iget-object p1, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$text_geometry_value:Landroid/widget/TextView;

    iget-object p2, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$width:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p3, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p3, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$height:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p3, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p4, p0, Ltech/ulo/library/MainActivity$getDisplayPreferences$1$2;->$scaling:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p4, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    div-float/2addr p3, p4

    float-to-int p3, p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "px x "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "px"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
