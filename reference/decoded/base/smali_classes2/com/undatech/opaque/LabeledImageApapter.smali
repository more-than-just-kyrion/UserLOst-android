.class public Lcom/undatech/opaque/LabeledImageApapter;
.super Landroid/widget/BaseAdapter;
.source "LabeledImageApapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LabeledImageApapter"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultLabel:Ljava/lang/String;

.field filter:[Ljava/lang/String;

.field filteredConnectionsByPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/undatech/opaque/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private numCols:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/Connection;",
            ">;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->numCols:I

    .line 50
    const-string v0, "Untitled"

    iput-object v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->defaultLabel:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->filteredConnectionsByPosition:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/undatech/opaque/LabeledImageApapter;->context:Landroid/content/Context;

    .line 56
    iput p4, p0, Lcom/undatech/opaque/LabeledImageApapter;->numCols:I

    .line 57
    iput-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->filter:[Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 59
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/undatech/opaque/Connection;

    .line 61
    iget-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->filter:[Ljava/lang/String;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_2

    aget-object v3, p3, v2

    .line 62
    invoke-interface {p2}, Lcom/undatech/opaque/Connection;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    .line 67
    iget-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->filteredConnectionsByPosition:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->filteredConnectionsByPosition:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->filteredConnectionsByPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 74
    iget-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 75
    iget-object v0, p0, Lcom/undatech/opaque/LabeledImageApapter;->filteredConnectionsByPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/undatech/opaque/Connection;

    .line 77
    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Now setting label at position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " to: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LabeledImageApapter"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/undatech/opaque/LabeledImageApapter;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget v3, Lcom/undatech/remoteClientUi/R$id;->gridView:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 81
    invoke-virtual {p1}, Landroid/widget/GridView;->getWidth()I

    move-result p1

    iget v3, p0, Lcom/undatech/opaque/LabeledImageApapter;->numCols:I

    div-int/2addr p1, v3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget p2, Lcom/undatech/remoteClientUi/R$layout;->grid_item:I

    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    :goto_0
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p3, p1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget p1, Lcom/undatech/remoteClientUi/R$id;->grid_item_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 94
    const-string p3, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 95
    iget-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->defaultLabel:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/undatech/opaque/LabeledImageApapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getScreenshotFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    sget p3, Lcom/undatech/remoteClientUi/R$id;->grid_item_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Setting screenshot from file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 104
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 106
    :cond_2
    sget p1, Lcom/undatech/remoteClientUi/R$drawable;->ic_screen_black_48dp:I

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 107
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    :goto_2
    sget p1, Lcom/undatech/remoteClientUi/R$id;->grid_item_id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 113
    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getRuntimeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
