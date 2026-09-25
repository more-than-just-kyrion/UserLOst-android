.class public final Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "tech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic this$0:Ltech/ulo/library/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$JhI00hgqdoZrmbVkzmkoOA-pCcY(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;->onReceive$lambda$1$lambda$0(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;->this$0:Ltech/ulo/library/MainActivity;

    .line 137
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static final onReceive$lambda$1$lambda$0(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltech/ulo/library/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p0, p1, p2}, Ltech/ulo/library/MainActivity;->access$showDialog(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const-string p1, "type"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1;->this$0:Ltech/ulo/library/MainActivity;

    .line 140
    new-instance v1, Ltech/ulo/library/utils/UlaBreadcrumb;

    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ltech/ulo/library/utils/BreadcrumbType$ReceivedIntent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$ReceivedIntent;

    check-cast v3, Ltech/ulo/library/utils/BreadcrumbType;

    invoke-direct {v1, v2, v3, p1}, Ltech/ulo/library/utils/UlaBreadcrumb;-><init>(Ljava/lang/String;Ltech/ulo/library/utils/BreadcrumbType;Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getLogger$p(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/SentryLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltech/ulo/library/utils/SentryLogger;->addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6a351025

    if-eq v1, v2, :cond_5

    const v2, -0x4f6602b8

    if-eq v1, v2, :cond_1

    const p2, -0x29a56b53

    if-eq v1, p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "sessionReady"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 143
    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$handleSessionIsReady(Ltech/ulo/library/MainActivity;)V

    goto :goto_1

    .line 142
    :cond_1
    const-string v1, "dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    const-string p1, "dialogType"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p2

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    new-instance p2, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p1, v1}, Ltech/ulo/library/MainActivity$serverServiceBroadcastReceiver$1$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ltech/ulo/library/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 142
    :cond_5
    const-string p2, "sessionActivated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 144
    :cond_6
    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$handleSessionHasBeenActivated(Ltech/ulo/library/MainActivity;)V

    :cond_7
    :goto_1
    return-void
.end method
