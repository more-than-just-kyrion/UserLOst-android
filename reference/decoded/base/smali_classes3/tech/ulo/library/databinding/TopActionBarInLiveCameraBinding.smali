.class public final Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;
.super Ljava/lang/Object;
.source "TopActionBarInLiveCameraBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final closeButton:Landroid/widget/ImageView;

.field public final flashButton:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final settingsButton:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "closeButton",
            "flashButton",
            "settingsButton"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p2, p0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->closeButton:Landroid/widget/ImageView;

    .line 36
    iput-object p3, p0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->flashButton:Landroid/widget/ImageView;

    .line 37
    iput-object p4, p0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->settingsButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 67
    sget v0, Ltech/ulo/library/R$id;->close_button:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 73
    sget v0, Ltech/ulo/library/R$id;->flash_button:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 79
    sget v0, Ltech/ulo/library/R$id;->settings_button:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 54
    sget v0, Ltech/ulo/library/R$layout;->top_action_bar_in_live_camera:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->bind(Landroid/view/View;)Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Ltech/ulo/library/databinding/TopActionBarInLiveCameraBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
