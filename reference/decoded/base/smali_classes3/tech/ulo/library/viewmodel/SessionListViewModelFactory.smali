.class public final Ltech/ulo/library/viewmodel/SessionListViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "SessionListViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\tH\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/SessionListViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "ulaDatabase",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "(Ltech/ulo/library/model/repositories/UlaDatabase;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    .locals 1

    const-string v0, "ulaDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/SessionListViewModelFactory;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p1, Ltech/ulo/library/viewmodel/SessionListViewModel;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/SessionListViewModelFactory;->ulaDatabase:Ltech/ulo/library/model/repositories/UlaDatabase;

    invoke-direct {p1, v0}, Ltech/ulo/library/viewmodel/SessionListViewModel;-><init>(Ltech/ulo/library/model/repositories/UlaDatabase;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
