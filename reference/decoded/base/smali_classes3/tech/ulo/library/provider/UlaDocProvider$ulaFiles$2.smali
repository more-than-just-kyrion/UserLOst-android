.class final Ltech/ulo/library/provider/UlaDocProvider$ulaFiles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UlaDocProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/provider/UlaDocProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/utils/UlaFiles;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/utils/UlaFiles;",
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
.field final synthetic this$0:Ltech/ulo/library/provider/UlaDocProvider;


# direct methods
.method constructor <init>(Ltech/ulo/library/provider/UlaDocProvider;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/provider/UlaDocProvider$ulaFiles$2;->this$0:Ltech/ulo/library/provider/UlaDocProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Ltech/ulo/library/provider/UlaDocProvider$ulaFiles$2;->invoke()Ltech/ulo/library/utils/UlaFiles;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/utils/UlaFiles;
    .locals 7

    .line 38
    new-instance v6, Ltech/ulo/library/utils/UlaFiles;

    iget-object v0, p0, Ltech/ulo/library/provider/UlaDocProvider$ulaFiles$2;->this$0:Ltech/ulo/library/provider/UlaDocProvider;

    invoke-virtual {v0}, Ltech/ulo/library/provider/UlaDocProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Ltech/ulo/library/provider/UlaDocProvider$ulaFiles$2;->this$0:Ltech/ulo/library/provider/UlaDocProvider;

    invoke-virtual {v0}, Ltech/ulo/library/provider/UlaDocProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v0, "nativeLibraryDir"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/UlaFiles;-><init>(Landroid/content/Context;Ljava/lang/String;Ltech/ulo/library/utils/Symlinker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
