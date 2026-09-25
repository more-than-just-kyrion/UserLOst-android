.class public final Ltech/ulo/library/ui/AppsListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;,
        Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppsListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppsListAdapter.kt\ntech/ulo/library/ui/AppsListAdapter\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,174:1\n49#2:175\n*S KotlinDebug\n*F\n+ 1 AppsListAdapter.kt\ntech/ulo/library/ui/AppsListAdapter\n*L\n132#1:175\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u000256B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nH\u0002J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0018\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001aH\u0016J\u0010\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0002H\u0016J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nH\u0002J\u0018\u0010*\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J \u0010+\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010,\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0018\u0010-\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0002H\u0002J \u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0002H\u0002J\u0014\u0010/\u001a\u00020\u001f2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0017J\u0014\u00100\u001a\u00020\u001f2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0017J\u000c\u00102\u001a\u00020\u001f*\u00020\nH\u0002J\u000c\u00103\u001a\u000204*\u00020\nH\u0002R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppsListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;",
        "activity",
        "Landroid/app/Activity;",
        "clickHandler",
        "Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;",
        "(Landroid/app/Activity;Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;)V",
        "activeApps",
        "Ljava/util/ArrayList;",
        "Ltech/ulo/library/model/entities/App;",
        "Lkotlin/collections/ArrayList;",
        "apps",
        "",
        "contextMenuItem",
        "getContextMenuItem",
        "()Ltech/ulo/library/model/entities/App;",
        "setContextMenuItem",
        "(Ltech/ulo/library/model/entities/App;)V",
        "firstDisplayCategory",
        "",
        "unselectedApp",
        "getActiveAppsDiff",
        "",
        "newActiveApps",
        "getItemCount",
        "",
        "getItemId",
        "",
        "position",
        "insertAppIntoView",
        "",
        "app",
        "onBindViewHolder",
        "viewHolder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onViewDetachedFromWindow",
        "holder",
        "removeAppFromView",
        "setAppActivity",
        "setItemAnimation",
        "setItemDetails",
        "setItemListeners",
        "setSeparator",
        "updateActiveApps",
        "updateApps",
        "newApps",
        "displayedAnimation",
        "hasBeenAnimated",
        "",
        "AppsClickHandler",
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
.field private final activeApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltech/ulo/library/model/entities/App;",
            ">;"
        }
    .end annotation
.end field

.field private final activity:Landroid/app/Activity;

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;"
        }
    .end annotation
.end field

.field private final clickHandler:Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;

.field private contextMenuItem:Ltech/ulo/library/model/entities/App;

.field private final firstDisplayCategory:Ljava/lang/String;

.field private final unselectedApp:Ltech/ulo/library/model/entities/App;


# direct methods
.method public static synthetic $r8$lambda$jnUou3cyr3xLF5WBSiys9S1IO80(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/ui/AppsListAdapter;->setItemListeners$lambda$0(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytYhlLpYyqYeJ4AMlBJBtN11tL4(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ltech/ulo/library/ui/AppsListAdapter;->setItemListeners$lambda$1(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;)V
    .locals 12

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Ltech/ulo/library/ui/AppsListAdapter;->clickHandler:Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    .line 27
    const-string p1, "distribution"

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->firstDisplayCategory:Ljava/lang/String;

    .line 28
    new-instance p1, Ltech/ulo/library/model/entities/App;

    const/16 v10, 0xfe

    const/4 v11, 0x0

    const-string v1, "unselected"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Ltech/ulo/library/model/entities/App;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->unselectedApp:Ltech/ulo/library/model/entities/App;

    .line 43
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->contextMenuItem:Ltech/ulo/library/model/entities/App;

    return-void
.end method

.method public static final synthetic access$getFirstDisplayCategory$p(Ltech/ulo/library/ui/AppsListAdapter;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Ltech/ulo/library/ui/AppsListAdapter;->firstDisplayCategory:Ljava/lang/String;

    return-object p0
.end method

.method private final displayedAnimation(Ltech/ulo/library/model/entities/App;)V
    .locals 3

    .line 167
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    const-string v1, "apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "HasBeenAnimated"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final getActiveAppsDiff(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;)",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;"
        }
    .end annotation

    .line 156
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 157
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final hasBeenAnimated(Ltech/ulo/library/model/entities/App;)Z
    .locals 3

    .line 162
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    const-string v1, "apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "HasBeenAnimated"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final insertAppIntoView(Ltech/ulo/library/model/entities/App;)V
    .locals 10

    .line 132
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-string v1, "pref_hide_distributions"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListAdapter;->firstDisplayCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v3, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    const/4 v0, 0x3

    .line 136
    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 134
    new-instance v1, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;

    invoke-direct {v1, p0}, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;-><init>(Ltech/ulo/library/ui/AppsListAdapter;)V

    aput-object v1, v0, v2

    sget-object v1, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$2;->INSTANCE:Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$3;->INSTANCE:Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$3;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;IIILjava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 142
    iget-object v2, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/AppsListAdapter;->notifyItemInserted(I)V

    .line 144
    invoke-virtual {p0, v0}, Ltech/ulo/library/ui/AppsListAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private final removeAppFromView(Ltech/ulo/library/model/entities/App;)V
    .locals 1

    .line 148
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method private final setAppActivity(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 1

    .line 104
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    sget p1, Ltech/ulo/library/R$color;->colorAccent:I

    goto :goto_0

    .line 108
    :cond_0
    sget p1, Ltech/ulo/library/R$color;->colorPrimaryDark:I

    .line 110
    :goto_0
    invoke-virtual {p2}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getAppDetails()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private final setItemAnimation(Ltech/ulo/library/model/entities/App;ILtech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->hasBeenAnimated(Ltech/ulo/library/model/entities/App;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    sget v1, Ltech/ulo/library/R$anim;->item_animation_from_right:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 127
    iget-object p2, p3, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->displayedAnimation(Ltech/ulo/library/model/entities/App;)V

    return-void
.end method

.method private final setItemDetails(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 4

    .line 97
    new-instance v0, Ltech/ulo/library/utils/AppDetails;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Ltech/ulo/library/ui/AppsListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "getResources(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ltech/ulo/library/utils/AppDetails;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 98
    invoke-virtual {p2}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    invoke-virtual {p2}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getSeparatorText()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    invoke-virtual {p2}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltech/ulo/library/utils/AppDetails;->findIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private final setItemListeners(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 2

    .line 114
    iget-object v0, p2, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p2, p2, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ltech/ulo/library/ui/AppsListAdapter$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method private static final setItemListeners$lambda$0(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$app"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Ltech/ulo/library/ui/AppsListAdapter;->clickHandler:Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;

    invoke-interface {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;->onClick(Ltech/ulo/library/model/entities/App;)V

    return-void
.end method

.method private static final setItemListeners$lambda$1(Ltech/ulo/library/ui/AppsListAdapter;Ltech/ulo/library/model/entities/App;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$app"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->contextMenuItem:Ltech/ulo/library/model/entities/App;

    .line 119
    iget-object p0, p0, Ltech/ulo/library/ui/AppsListAdapter;->clickHandler:Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/view/Menu;

    invoke-interface {p0, p2}, Ltech/ulo/library/ui/AppsListAdapter$AppsClickHandler;->createContextMenu(Landroid/view/Menu;)V

    return-void
.end method

.method private final setSeparator(Ltech/ulo/library/model/entities/App;ILtech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 1

    if-lez p2, :cond_1

    .line 89
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p3}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getSeparator()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->getSeparator()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getContextMenuItem()Ltech/ulo/library/model/entities/App;
    .locals 1

    .line 43
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->contextMenuItem:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/ui/AppsListAdapter;->onBindViewHolder(Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/model/entities/App;

    .line 52
    invoke-direct {p0, v0, p2, p1}, Ltech/ulo/library/ui/AppsListAdapter;->setSeparator(Ltech/ulo/library/model/entities/App;ILtech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    .line 53
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->setItemDetails(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    .line 54
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->setAppActivity(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    .line 55
    invoke-direct {p0, v0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->setItemListeners(Ltech/ulo/library/model/entities/App;Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    .line 56
    invoke-direct {p0, v0, p2, p1}, Ltech/ulo/library/ui/AppsListAdapter;->setItemAnimation(Ltech/ulo/library/model/entities/App;ILtech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/ui/AppsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p2, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    sget v1, Ltech/ulo/library/R$layout;->list_item_app:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p2, p1}, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 20
    check-cast p1, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->onViewDetachedFromWindow(Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p1, Ltech/ulo/library/ui/AppsListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public final setContextMenuItem(Ltech/ulo/library/model/entities/App;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter;->contextMenuItem:Ltech/ulo/library/model/entities/App;

    return-void
.end method

.method public final updateActiveApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newActiveApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter;->getActiveAppsDiff(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/ulo/library/model/entities/App;

    .line 81
    iget-object v2, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 82
    invoke-virtual {p0, v1}, Ltech/ulo/library/ui/AppsListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->activeApps:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final updateApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/App;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/ulo/library/model/entities/App;

    invoke-direct {p0, v1}, Ltech/ulo/library/ui/AppsListAdapter;->removeAppFromView(Ltech/ulo/library/model/entities/App;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter;->apps:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/model/entities/App;

    invoke-direct {p0, v0}, Ltech/ulo/library/ui/AppsListAdapter;->insertAppIntoView(Ltech/ulo/library/model/entities/App;)V

    goto :goto_1

    :cond_1
    return-void
.end method
