.class final Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SessionListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/SessionListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ltech/ulo/library/ui/SessionListItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionListAdapter.kt\ntech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n372#2,7:144\n372#2,7:151\n215#3:158\n216#3:161\n1855#4,2:159\n*S KotlinDebug\n*F\n+ 1 SessionListAdapter.kt\ntech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2\n*L\n43#1:144,7\n45#1:151,7\n58#1:158\n58#1:161\n61#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ltech/ulo/library/ui/SessionListItem;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/ui/SessionListAdapter;


# direct methods
.method public static synthetic $r8$lambda$D_Z7T2EcghqghiFnd8DDrazx6UY(Ltech/ulo/library/ui/SessionListAdapter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->invoke$lambda$2(Ltech/ulo/library/ui/SessionListAdapter;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Ltech/ulo/library/ui/SessionListAdapter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->this$0:Ltech/ulo/library/ui/SessionListAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Ltech/ulo/library/ui/SessionListAdapter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Ltech/ulo/library/ui/SessionListAdapter;->access$getCustomString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, Ltech/ulo/library/ui/SessionListAdapter;->access$getCustomString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/ui/SessionListItem;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    iget-object v2, p0, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->this$0:Ltech/ulo/library/ui/SessionListAdapter;

    invoke-static {v2}, Ltech/ulo/library/ui/SessionListAdapter;->access$getSessions$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltech/ulo/library/model/entities/Session;

    .line 42
    invoke-virtual {v3}, Ltech/ulo/library/model/entities/Session;->getFilesystemName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "apps"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->this$0:Ltech/ulo/library/ui/SessionListAdapter;

    invoke-static {v5}, Ltech/ulo/library/ui/SessionListAdapter;->access$getAppsString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    check-cast v6, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->this$0:Ltech/ulo/library/ui/SessionListAdapter;

    invoke-static {v5}, Ltech/ulo/library/ui/SessionListAdapter;->access$getCustomString$p(Ltech/ulo/library/ui/SessionListAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 45
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    check-cast v6, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_3
    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2;->this$0:Ltech/ulo/library/ui/SessionListAdapter;

    new-instance v3, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Ltech/ulo/library/ui/SessionListAdapter$sessionsAndSeparators$2$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/SessionListAdapter;)V

    invoke-static {v1, v3}, Lkotlin/collections/MapsKt;->toSortedMap(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/Map;

    .line 158
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 60
    new-instance v4, Ltech/ulo/library/ui/SessionSeparatorItem;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v3}, Ltech/ulo/library/ui/SessionSeparatorItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltech/ulo/library/model/entities/Session;

    .line 61
    new-instance v4, Ltech/ulo/library/ui/SessionItem;

    invoke-direct {v4, v3}, Ltech/ulo/library/ui/SessionItem;-><init>(Ltech/ulo/library/model/entities/Session;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
