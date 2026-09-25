.class final Ltech/ulo/library/MainActivity$notificationManager$2;
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
        "Ltech/ulo/library/utils/NotificationConstructor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/utils/NotificationConstructor;",
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

    iput-object p1, p0, Ltech/ulo/library/MainActivity$notificationManager$2;->this$0:Ltech/ulo/library/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity$notificationManager$2;->invoke()Ltech/ulo/library/utils/NotificationConstructor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/utils/NotificationConstructor;
    .locals 2

    .line 103
    new-instance v0, Ltech/ulo/library/utils/NotificationConstructor;

    iget-object v1, p0, Ltech/ulo/library/MainActivity$notificationManager$2;->this$0:Ltech/ulo/library/MainActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/NotificationConstructor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
