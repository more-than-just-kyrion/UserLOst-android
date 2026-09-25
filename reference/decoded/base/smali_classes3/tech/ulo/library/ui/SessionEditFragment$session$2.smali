.class final Ltech/ulo/library/ui/SessionEditFragment$session$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SessionEditFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/ui/SessionEditFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/model/entities/Session;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/model/entities/Session;",
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
.field final synthetic this$0:Ltech/ulo/library/ui/SessionEditFragment;


# direct methods
.method constructor <init>(Ltech/ulo/library/ui/SessionEditFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/ui/SessionEditFragment$session$2;->this$0:Ltech/ulo/library/ui/SessionEditFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Ltech/ulo/library/ui/SessionEditFragment$session$2;->invoke()Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/model/entities/Session;
    .locals 1

    .line 34
    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragment$session$2;->this$0:Ltech/ulo/library/ui/SessionEditFragment;

    invoke-static {v0}, Ltech/ulo/library/ui/SessionEditFragment;->access$getArgs(Ltech/ulo/library/ui/SessionEditFragment;)Ltech/ulo/library/ui/SessionEditFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/ui/SessionEditFragmentArgs;->getSession()Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
