.class final Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FilesystemListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/FilesystemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;",
        "",
        "row",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "imageViewType",
        "Landroid/widget/ImageView;",
        "getImageViewType",
        "()Landroid/widget/ImageView;",
        "setImageViewType",
        "(Landroid/widget/ImageView;)V",
        "textViewName",
        "Landroid/widget/TextView;",
        "getTextViewName",
        "()Landroid/widget/TextView;",
        "setTextViewName",
        "(Landroid/widget/TextView;)V",
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
.field private imageViewType:Landroid/widget/ImageView;

.field private textViewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Ltech/ulo/library/R$id;->image_list_item_filesystem_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->imageViewType:Landroid/widget/ImageView;

    .line 18
    sget v0, Ltech/ulo/library/R$id;->text_filesystem_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->textViewName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getImageViewType()Landroid/widget/ImageView;
    .locals 1

    .line 17
    iget-object v0, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->imageViewType:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTextViewName()Landroid/widget/TextView;
    .locals 1

    .line 18
    iget-object v0, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->textViewName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setImageViewType(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->imageViewType:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTextViewName(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemListAdapter$ViewHolder;->textViewName:Landroid/widget/TextView;

    return-void
.end method
