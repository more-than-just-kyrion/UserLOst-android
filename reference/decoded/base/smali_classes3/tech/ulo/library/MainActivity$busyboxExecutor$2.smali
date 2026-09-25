.class final Ltech/ulo/library/MainActivity$busyboxExecutor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity$busyboxExecutor$2\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,1687:1\n49#2:1688\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ntech/ulo/library/MainActivity$busyboxExecutor$2\n*L\n94#1:1688\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/utils/BusyboxExecutor;",
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
.field final synthetic this$0:Ltech/ulo/library/MainActivity;


# direct methods
.method constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/MainActivity$busyboxExecutor$2;->this$0:Ltech/ulo/library/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 93
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity$busyboxExecutor$2;->invoke()Ltech/ulo/library/utils/BusyboxExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/utils/BusyboxExecutor;
    .locals 7

    .line 94
    new-instance v2, Ltech/ulo/library/utils/ProotDebugLogger;

    iget-object v0, p0, Ltech/ulo/library/MainActivity$busyboxExecutor$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v0, Landroid/content/Context;

    .line 1688
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Ltech/ulo/library/MainActivity$busyboxExecutor$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v1}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ltech/ulo/library/utils/ProotDebugLogger;-><init>(Landroid/content/SharedPreferences;Ltech/ulo/library/utils/UlaFiles;)V

    .line 95
    new-instance v6, Ltech/ulo/library/utils/BusyboxExecutor;

    iget-object v0, p0, Ltech/ulo/library/MainActivity$busyboxExecutor$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getUlaFiles(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/UlaFiles;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/utils/BusyboxExecutor;-><init>(Ltech/ulo/library/utils/UlaFiles;Ltech/ulo/library/utils/ProotDebugLogger;Ltech/ulo/library/utils/BusyboxWrapper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
