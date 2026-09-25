.class public final Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;
.super Ljava/lang/Object;
.source "CameraPreviewOverlayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomPromptChip:Lcom/google/android/material/chip/Chip;

.field public final cameraPreviewGraphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

.field private final rootView:Landroid/view/View;

.field public final searchProgressBar:Landroid/widget/ProgressBar;

.field public final staticOverlayContainer:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/google/android/material/chip/Chip;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "bottomPromptChip",
            "cameraPreviewGraphicOverlay",
            "searchProgressBar",
            "staticOverlayContainer"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->rootView:Landroid/view/View;

    .line 39
    iput-object p2, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->bottomPromptChip:Lcom/google/android/material/chip/Chip;

    .line 40
    iput-object p3, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->cameraPreviewGraphicOverlay:Lcom/google/mlkit/md/camera/GraphicOverlay;

    .line 41
    iput-object p4, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->searchProgressBar:Landroid/widget/ProgressBar;

    .line 42
    iput-object p5, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->staticOverlayContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 67
    sget v0, Ltech/ulo/library/R$id;->bottom_prompt_chip:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_0

    .line 73
    sget v0, Ltech/ulo/library/R$id;->camera_preview_graphic_overlay:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/mlkit/md/camera/GraphicOverlay;

    if-eqz v5, :cond_0

    .line 79
    sget v0, Ltech/ulo/library/R$id;->search_progress_bar:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 85
    sget v0, Ltech/ulo/library/R$id;->static_overlay_container:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 91
    new-instance v0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;-><init>(Landroid/view/View;Lcom/google/android/material/chip/Chip;Lcom/google/mlkit/md/camera/GraphicOverlay;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 57
    sget v0, Ltech/ulo/library/R$layout;->camera_preview_overlay:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    invoke-static {p1}, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Ltech/ulo/library/databinding/CameraPreviewOverlayBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
