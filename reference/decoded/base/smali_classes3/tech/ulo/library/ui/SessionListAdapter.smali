.class public final Ltech/ulo/library/ui/SessionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SessionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionListAdapter.kt\ntech/ulo/library/ui/SessionListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001%B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u000bH\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u000bH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006&"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionListAdapter;",
        "Landroid/widget/BaseAdapter;",
        "activity",
        "Landroid/app/Activity;",
        "sessions",
        "",
        "Ltech/ulo/library/model/entities/Session;",
        "filesystems",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V",
        "ITEM_VIEW_TYPE_COUNT",
        "",
        "ITEM_VIEW_TYPE_SEPARATOR",
        "ITEM_VIEW_TYPE_SESSION",
        "appsString",
        "",
        "customString",
        "sessionsAndSeparators",
        "Ltech/ulo/library/ui/SessionListItem;",
        "getSessionsAndSeparators",
        "()Ljava/util/List;",
        "sessionsAndSeparators$delegate",
        "Lkotlin/Lazy;",
        "getCount",
        "getItem",
        "position",
        "getItemId",
        "",
        "getItemViewType",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "getViewTypeCount",
        "isEnabled",
        "",
        "ViewHolder",
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
.field private final ITEM_VIEW_TYPE_COUNT:I

.field private final ITEM_VIEW_TYPE_SEPARATOR:I

.field private final ITEM_VIEW_TYPE_SESSION:I

.field private activity:Landroid/app/Activity;

.field private final appsString:Ljava/lang/String;

.field private final customString:Ljava/lang/String;

.field private final filesystems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionsAndSeparators$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->activity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Ltech/ulo/library/ui/SessionListAdapter;->sessions:Ljava/util/List;

    .line 19
    iput-object p3, p0, Ltech/ulo/library/ui/SessionListAdapter;->filesystems:Ljava/util/List;

    const/4 p2, 0x1

    .line 31
    iput p2, p0, Ltech/ulo/library/ui/SessionListAdapter;->ITEM_VIEW_TYPE_SEPARATOR:I

    const/4 p2, 0x2

    .line 32
    iput p2, p0, Ltech/ulo/library/ui/SessionListAdapter;->ITEM_VIEW_TYPE_COUNT:I

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Ltech/ulo/library/R$string;->apps_sessions:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->appsString:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Ltech/ulo/library/R$string;->custom_sessions:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->customString:Ljava/lang/String;

    .line 37
    new-instance p1, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;

    invoke-direct {p1, p0}, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;-><init>(Ltech/ulo/library/ui/SessionListAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->sessionsAndSeparators$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAppsString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/ui/SessionListAdapter;->appsString:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCustomString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/ui/SessionListAdapter;->customString:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSessions$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/ulo/library/ui/SessionListAdapter;->sessions:Ljava/util/List;

    return-object p0
.end method

.method private final getSessionsAndSeparators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/ui/SessionListItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListAdapter;->sessionsAndSeparators$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 119
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListAdapter;->getSessionsAndSeparators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SessionListAdapter;->getItem(I)Ltech/ulo/library/ui/SessionListItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ltech/ulo/library/ui/SessionListItem;
    .locals 1

    .line 111
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListAdapter;->getSessionsAndSeparators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/ui/SessionListItem;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 127
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListAdapter;->getSessionsAndSeparators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/ui/SessionListItem;

    .line 128
    instance-of v0, p1, Ltech/ulo/library/ui/SessionItem;

    if-eqz v0, :cond_0

    iget p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->ITEM_VIEW_TYPE_SESSION:I

    goto :goto_0

    .line 129
    :cond_0
    instance-of p1, p1, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz p1, :cond_1

    iget p1, p0, Ltech/ulo/library/ui/SessionListAdapter;->ITEM_VIEW_TYPE_SEPARATOR:I

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 70
    invoke-direct/range {p0 .. p0}, Ltech/ulo/library/ui/SessionListAdapter;->getSessionsAndSeparators()Ljava/util/List;

    move-result-object v2

    move/from16 v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltech/ulo/library/ui/SessionListItem;

    if-nez p2, :cond_3

    .line 73
    iget-object v3, v0, Ltech/ulo/library/ui/SessionListAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/LayoutInflater;

    .line 75
    instance-of v4, v2, Ltech/ulo/library/ui/SessionItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget v4, Ltech/ulo/library/R$layout;->list_item_session:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_0
    instance-of v4, v2, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz v4, :cond_2

    sget v4, Ltech/ulo/library/R$layout;->list_item_separator:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    :goto_0
    new-instance v3, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;

    invoke-direct {v3, v1}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    if-nez v1, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 82
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type tech.ulo.library.ui.SessionListAdapter.ViewHolder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;

    move-object/from16 v1, p2

    .line 86
    :goto_1
    instance-of v4, v2, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz v4, :cond_5

    .line 87
    invoke-virtual {v3}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->getSeparatorText()Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    check-cast v2, Ltech/ulo/library/ui/SessionSeparatorItem;

    invoke-virtual {v2}, Ltech/ulo/library/ui/SessionSeparatorItem;->getSeparatorText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 89
    :cond_5
    instance-of v4, v2, Ltech/ulo/library/ui/SessionItem;

    if-eqz v4, :cond_e

    .line 90
    check-cast v2, Ltech/ulo/library/ui/SessionItem;

    invoke-virtual {v2}, Ltech/ulo/library/ui/SessionItem;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v2

    .line 91
    iget-object v4, v0, Ltech/ulo/library/ui/SessionListAdapter;->filesystems:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v6}, Ltech/ulo/library/model/entities/Filesystem;->getId()J

    move-result-wide v6

    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Session;->getFilesystemId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    check-cast v5, Ltech/ulo/library/model/entities/Filesystem;

    if-nez v5, :cond_8

    new-instance v5, Ltech/ulo/library/model/entities/Filesystem;

    move-object v6, v5

    const/16 v23, 0x7ffc

    const/16 v24, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "ERROR"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v24}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    :cond_8
    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Session;->getActive()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v1, :cond_a

    .line 94
    sget v4, Ltech/ulo/library/R$color;->colorAccent:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 96
    sget v4, Ltech/ulo/library/R$color;->colorPrimaryDark:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    :cond_a
    :goto_3
    new-instance v4, Ltech/ulo/library/utils/AppDetails;

    iget-object v6, v0, Ltech/ulo/library/ui/SessionListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getPath(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Ltech/ulo/library/ui/SessionListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "getResources(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v6, v7}, Ltech/ulo/library/utils/AppDetails;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 100
    invoke-virtual {v3}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->getTextViewServiceType()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Session;->getServiceType()Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v7

    invoke-virtual {v7}, Ltech/ulo/library/model/entities/ServiceType;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_4
    invoke-virtual {v3}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->getTextViewSessionName()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Session;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_5
    invoke-virtual {v3}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->getTextViewFilesystemName()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_6
    invoke-virtual {v3}, Ltech/ulo/library/ui/SessionListAdapter$ViewHolder;->getImageViewFilesystemIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v5}, Ltech/ulo/library/model/entities/Filesystem;->getDistributionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltech/ulo/library/utils/AppDetails;->findIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 107
    :cond_e
    :goto_7
    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 123
    iget v0, p0, Ltech/ulo/library/ui/SessionListAdapter;->ITEM_VIEW_TYPE_COUNT:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 134
    invoke-direct {p0}, Ltech/ulo/library/ui/SessionListAdapter;->getSessionsAndSeparators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltech/ulo/library/ui/SessionListItem;

    .line 135
    instance-of v0, p1, Ltech/ulo/library/ui/SessionItem;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    instance-of p1, p1, Ltech/ulo/library/ui/SessionSeparatorItem;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
