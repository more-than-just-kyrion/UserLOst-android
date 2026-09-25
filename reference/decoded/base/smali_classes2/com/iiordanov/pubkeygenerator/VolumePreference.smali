.class public Lcom/iiordanov/pubkeygenerator/VolumePreference;
.super Landroid/preference/DialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->setPersistent(Z)V

    return-void
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 54
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x64

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const/high16 v1, 0x3e800000    # 0.25f

    .line 57
    invoke-virtual {p0, v1}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->getPersistedFloat(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v1, 0xa

    .line 59
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 66
    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/VolumePreference;->persistFloat(F)Z

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
