.class public Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 113
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 48
    sget p3, Lcom/freerdp/freerdpcore/R$layout;->bookmark_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 52
    sget p3, Lcom/freerdp/freerdpcore/R$id;->bookmark_text1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/freerdp/freerdpcore/R$id;->bookmark_text2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    sget v1, Lcom/freerdp/freerdpcore/R$id;->bookmark_icon2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 59
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p3

    check-cast p3, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-virtual {p3}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getHostname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getManualBookmarkReference(J)Ljava/lang/String;

    move-result-object p1

    .line 66
    sget p3, Lcom/freerdp/freerdpcore/R$drawable;->icon_star_on:I

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p3

    const/4 v2, 0x2

    const-string v3, " "

    if-ne p3, v2, :cond_2

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostnameReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    sget p3, Lcom/freerdp/freerdpcore/R$drawable;->icon_star_off:I

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->getName()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getPlaceholderReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x8

    .line 81
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_3
    const-string p1, ""

    .line 90
    :goto_0
    new-instance p3, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;

    invoke-direct {p3, p0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter$1;-><init>(Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;)V

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public remove(J)V
    .locals 4

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 128
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public replaceItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->clear()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 120
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/utils/BookmarkArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
