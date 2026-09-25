.class public Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/freerdp/freerdpcore/R$layout;->list_header:I

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    .line 89
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 66
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 68
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 74
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    .line 172
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 174
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 178
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-int/2addr p1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    iget-object v5, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    .line 111
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 113
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/2addr v5, v0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ge p1, v5, :cond_1

    sub-int/2addr p1, v0

    .line 119
    invoke-interface {v4, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    :cond_1
    sub-int/2addr p1, v5

    .line 123
    invoke-interface {v4}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    .line 194
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 196
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v1, :cond_0

    add-int v4, v1, v3

    if-ge p1, v4, :cond_0

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 148
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 150
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 156
    invoke-interface {v2, p1, v3, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 98
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSectionTitle(ILjava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 53
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Adapter;

    .line 54
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
