.class public final Ltech/ulo/library/utils/PermissionHandler$Companion;
.super Ljava/lang/Object;
.source "PermissionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/PermissionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/utils/PermissionHandler$Companion;",
        "",
        "()V",
        "directoryPickerID",
        "",
        "permissionRequestCode",
        "permissionsAreGranted",
        "",
        "context",
        "Landroid/content/Context;",
        "permissionsWereGranted",
        "requestCode",
        "grantResults",
        "",
        "showPermissionsNecessaryDialog",
        "",
        "activity",
        "Landroid/app/Activity;",
        "refused",
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


# direct methods
.method public static synthetic $r8$lambda$Rj7W6fb6274dSLph3pnwN0e0Kno(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/utils/PermissionHandler$Companion;->showPermissionsNecessaryDialog$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TaJvZ6aYv_gegva6PSHhkSUsRdc(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/utils/PermissionHandler$Companion;->showPermissionsNecessaryDialog$lambda$0(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/utils/PermissionHandler$Companion;-><init>()V

    return-void
.end method

.method private static final showPermissionsNecessaryDialog$lambda$0(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p3, "$activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 70
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string p3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 72
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 74
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 78
    new-array p0, p0, [Ljava/lang/String;

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v0, 0x0

    aput-object p3, p0, v0

    .line 79
    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    aput-object p3, p0, v1

    .line 81
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p3, v2, :cond_1

    .line 82
    new-array p0, v1, [Ljava/lang/String;

    const-string p3, "android.permission.POST_NOTIFICATIONS"

    aput-object p3, p0, v0

    :cond_1
    const/16 p3, 0x4d2

    .line 86
    invoke-virtual {p1, p0, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 88
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showPermissionsNecessaryDialog$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public final permissionsAreGranted(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 26
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 32
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 33
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public final permissionsWereGranted(I[I)Z
    .locals 4

    const-string v0, "grantResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x4d2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 47
    :goto_0
    array-length v0, p2

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 48
    aget v0, p2, v1

    if-nez v0, :cond_5

    if-ge p1, v2, :cond_2

    goto :goto_2

    .line 49
    :cond_2
    aget v0, p2, v3

    if-nez v0, :cond_5

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    goto :goto_2

    .line 50
    :cond_3
    aget v2, p2, v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    if-ge p1, v2, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    aget p1, p2, v0

    if-nez p1, :cond_5

    :goto_2
    move v1, v3

    :cond_5
    return v1
.end method

.method public final showPermissionsNecessaryDialog(Landroid/app/Activity;Z)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    sget v1, Ltech/ulo/library/R$string;->alert_permissions_necessary_message:I

    sget v2, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    .line 63
    sget v1, Ltech/ulo/library/R$string;->alert_notification_permission_necessary_message:I

    sget v3, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 65
    sget v1, Ltech/ulo/library/R$string;->alert_permissions_refused_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 67
    sget v2, Ltech/ulo/library/R$string;->alert_permissions_necessary_title:I

    sget v3, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    sget v2, Ltech/ulo/library/R$string;->button_ok:I

    new-instance v3, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, p1}, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda0;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 90
    sget p2, Ltech/ulo/library/R$string;->alert_permissions_necessary_cancel_button:I

    new-instance v1, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ltech/ulo/library/utils/PermissionHandler$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
