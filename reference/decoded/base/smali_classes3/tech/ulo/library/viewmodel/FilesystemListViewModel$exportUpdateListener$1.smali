.class final Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesystemListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/viewmodel/FilesystemListViewModel;-><init>(Ltech/ulo/library/model/daos/FilesystemDao;Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/FilesystemManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "details",
        "",
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
.field final synthetic this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;


# direct methods
.method constructor <init>(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Ltech/ulo/library/viewmodel/FilesystemListViewModel$exportUpdateListener$1;->this$0:Ltech/ulo/library/viewmodel/FilesystemListViewModel;

    invoke-static {v0}, Ltech/ulo/library/viewmodel/FilesystemListViewModel;->access$getViewState$p(Ltech/ulo/library/viewmodel/FilesystemListViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 55
    new-instance v1, Ltech/ulo/library/viewmodel/FilesystemExportState$Update;

    invoke-direct {v1, p1}, Ltech/ulo/library/viewmodel/FilesystemExportState$Update;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
