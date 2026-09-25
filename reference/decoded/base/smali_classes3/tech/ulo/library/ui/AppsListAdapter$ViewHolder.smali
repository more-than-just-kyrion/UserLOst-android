.class public final Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/AppsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "row",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "appDetails",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getAppDetails",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "setAppDetails",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;)V",
        "appName",
        "Landroid/widget/TextView;",
        "getAppName",
        "()Landroid/widget/TextView;",
        "setAppName",
        "(Landroid/widget/TextView;)V",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
        "setImageView",
        "(Landroid/widget/ImageView;)V",
        "separator",
        "getSeparator",
        "setSeparator",
        "separatorText",
        "getSeparatorText",
        "setSeparatorText",
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
.field private appDetails:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private appName:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private separator:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private separatorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    sget v0, Ltech/ulo/library/R$id;->app_list_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separator:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    sget v0, Ltech/ulo/library/R$id;->list_item_separator_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    .line 38
    sget v0, Ltech/ulo/library/R$id;->layout_app_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appDetails:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    sget v0, Ltech/ulo/library/R$id;->apps_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 40
    sget v0, Ltech/ulo/library/R$id;->apps_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getAppDetails()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appDetails:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getAppName()Landroid/widget/TextView;
    .locals 1

    .line 40
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 39
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getSeparator()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 36
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separator:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getSeparatorText()Landroid/widget/TextView;
    .locals 1

    .line 37
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setAppDetails(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 38
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appDetails:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public final setAppName(Landroid/widget/TextView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method

.method public final setImageView(Landroid/widget/ImageView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setSeparator(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 36
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separator:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public final setSeparatorText(Landroid/widget/TextView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    return-void
.end method
