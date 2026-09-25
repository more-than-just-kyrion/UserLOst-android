.class final Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppsListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/AppsListAdapter;->insertAppIntoView(Ltech/ulo/library/model/entities/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ltech/ulo/library/model/entities/App;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ltech/ulo/library/model/entities/App;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/AppsListAdapter;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/AppsListAdapter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;->this$0:Ltech/ulo/library/ui/AppsListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ltech/ulo/library/model/entities/App;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/App;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ltech/ulo/library/model/entities/App;->getCategory()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;->this$0:Ltech/ulo/library/ui/AppsListAdapter;

    invoke-static {v0}, Ltech/ulo/library/ui/AppsListAdapter;->access$getFirstDisplayCategory$p(Ltech/ulo/library/ui/AppsListAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Ltech/ulo/library/model/entities/App;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListAdapter$insertAppIntoView$foundIndex$1;->invoke(Ltech/ulo/library/model/entities/App;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
