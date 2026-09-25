.class final Ltech/ulo/library/ui/FilesystemEditFragment$filesystem$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesystemEditFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/FilesystemEditFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/model/entities/Filesystem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/model/entities/Filesystem;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/FilesystemEditFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/FilesystemEditFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/FilesystemEditFragment$filesystem$2;->this$0:Ltech/ulo/library/ui/FilesystemEditFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Ltech/ulo/library/ui/FilesystemEditFragment$filesystem$2;->invoke()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    .line 49
    iget-object v0, p0, Ltech/ulo/library/ui/FilesystemEditFragment$filesystem$2;->this$0:Ltech/ulo/library/ui/FilesystemEditFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/FilesystemEditFragment;->access$getArgs(Ltech/ulo/library/ui/FilesystemEditFragment;)Ltech/ulo/library/ui/FilesystemEditFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/ui/FilesystemEditFragmentArgs;->getFilesystem()Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
