.class final Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SessionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/SessionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;",
        "",
        "row",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "imageViewFilesystemIcon",
        "Landroid/widget/ImageView;",
        "getImageViewFilesystemIcon",
        "()Landroid/widget/ImageView;",
        "setImageViewFilesystemIcon",
        "(Landroid/widget/ImageView;)V",
        "separatorText",
        "Landroid/widget/TextView;",
        "getSeparatorText",
        "()Landroid/widget/TextView;",
        "setSeparatorText",
        "(Landroid/widget/TextView;)V",
        "textViewFilesystemName",
        "getTextViewFilesystemName",
        "setTextViewFilesystemName",
        "textViewServiceType",
        "getTextViewServiceType",
        "setTextViewServiceType",
        "textViewSessionName",
        "getTextViewSessionName",
        "setTextViewSessionName",
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
.field private imageViewFilesystemIcon:Landroid/widget/ImageView;

.field private separatorText:Landroid/widget/TextView;

.field private textViewFilesystemName:Landroid/widget/TextView;

.field private textViewServiceType:Landroid/widget/TextView;

.field private textViewSessionName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Ltech/ulo/library/R$id;->text_list_item_service_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewServiceType:Landroid/widget/TextView;

    .line 24
    sget v0, Ltech/ulo/library/R$id;->text_list_item_session_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewSessionName:Landroid/widget/TextView;

    .line 25
    sget v0, Ltech/ulo/library/R$id;->text_list_item_filesystem_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewFilesystemName:Landroid/widget/TextView;

    .line 26
    sget v0, Ltech/ulo/library/R$id;->image_list_item_filesystem_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->imageViewFilesystemIcon:Landroid/widget/ImageView;

    .line 27
    sget v0, Ltech/ulo/library/R$id;->list_item_separator_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getImageViewFilesystemIcon()Landroid/widget/ImageView;
    .locals 1

    .line 26
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->imageViewFilesystemIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getSeparatorText()Landroid/widget/TextView;
    .locals 1

    .line 27
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextViewFilesystemName()Landroid/widget/TextView;
    .locals 1

    .line 25
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewFilesystemName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextViewServiceType()Landroid/widget/TextView;
    .locals 1

    .line 23
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewServiceType:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextViewSessionName()Landroid/widget/TextView;
    .locals 1

    .line 24
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewSessionName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setImageViewFilesystemIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 26
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->imageViewFilesystemIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setSeparatorText(Landroid/widget/TextView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->separatorText:Landroid/widget/TextView;

    return-void
.end method

.method public final setTextViewFilesystemName(Landroid/widget/TextView;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewFilesystemName:Landroid/widget/TextView;

    return-void
.end method

.method public final setTextViewServiceType(Landroid/widget/TextView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewServiceType:Landroid/widget/TextView;

    return-void
.end method

.method public final setTextViewSessionName(Landroid/widget/TextView;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->textViewSessionName:Landroid/widget/TextView;

    return-void
.end method
