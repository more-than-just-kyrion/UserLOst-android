.class public final Ltech/ulo/library/RequestDirPermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestDirPermissionsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0013H\u0014J\u0008\u0010\u001c\u001a\u00020\u0013H\u0014J\u0016\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0013J\u000e\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u000e\u0010&\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020 R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Ltech/ulo/library/RequestDirPermissionsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "billingManager",
        "Ltech/ulo/library/utils/BillingManager;",
        "getBillingManager",
        "()Ltech/ulo/library/utils/BillingManager;",
        "billingManager$delegate",
        "Lkotlin/Lazy;",
        "directoryPickerID",
        "",
        "path",
        "",
        "proFeaturePrompter",
        "Ltech/ulo/library/utils/ProFeaturePrompter;",
        "getProFeaturePrompter",
        "()Ltech/ulo/library/utils/ProFeaturePrompter;",
        "proFeaturePrompter$delegate",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "requestDirPermssions",
        "intent",
        "paymentRequired",
        "",
        "sendCancelledResult",
        "showDocumentsDirPermissionsNecessaryDialog",
        "activity",
        "Landroid/app/Activity;",
        "showProFeaturesRequiredDialog",
        "userHasCompletedPayment",
        "paid",
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
.field private final billingManager$delegate:Lkotlin/Lazy;

.field private final directoryPickerID:I

.field private path:Ljava/lang/String;

.field private final proFeaturePrompter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0yLp7Lk3AtsHXUIsqFaXjFtUIwY(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/RequestDirPermissionsActivity;->showDocumentsDirPermissionsNecessaryDialog$lambda$3(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WcU8-szMJ4nIxSWknJfrKuxKfs(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->showProFeaturesRequiredDialog$lambda$7(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B4VqQDSUviJPWxh_CUYzpbsZClk(Landroid/app/Activity;Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/RequestDirPermissionsActivity;->showDocumentsDirPermissionsNecessaryDialog$lambda$2(Landroid/app/Activity;Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJWIpKA6YJyfypoRol6cxAcn0Ng(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/RequestDirPermissionsActivity;->showProFeaturesRequiredDialog$lambda$5(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dc2JnJNNvnnFRsEv3owHbAycAdA(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->showDocumentsDirPermissionsNecessaryDialog$lambda$4(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGOXXFdNBgECkdvZJJSw6Yz7Y6w(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/RequestDirPermissionsActivity;->showProFeaturesRequiredDialog$lambda$6(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->directoryPickerID:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    .line 22
    new-instance v0, Ltech/ulo/library/RequestDirPermissionsActivity$billingManager$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$billingManager$2;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->billingManager$delegate:Lkotlin/Lazy;

    .line 33
    new-instance v0, Ltech/ulo/library/RequestDirPermissionsActivity$proFeaturePrompter$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$proFeaturePrompter$2;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->proFeaturePrompter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getProFeaturePrompter(Ltech/ulo/library/RequestDirPermissionsActivity;)Ltech/ulo/library/utils/ProFeaturePrompter;
    .locals 0

    .line 17
    invoke-direct {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getProFeaturePrompter()Ltech/ulo/library/utils/ProFeaturePrompter;

    move-result-object p0

    return-object p0
.end method

.method private final getProFeaturePrompter()Ltech/ulo/library/utils/ProFeaturePrompter;
    .locals 1

    .line 33
    iget-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->proFeaturePrompter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/ProFeaturePrompter;

    return-object v0
.end method

.method private static final showDocumentsDirPermissionsNecessaryDialog$lambda$2(Landroid/app/Activity;Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p3, "$activity"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc3

    .line 85
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v0, p1, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    const-string v1, "/sdcard/"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "primary:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.externalstorage.documents"

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    :cond_0
    iget p1, p1, Ltech/ulo/library/RequestDirPermissionsActivity;->directoryPickerID:I

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showDocumentsDirPermissionsNecessaryDialog$lambda$3(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->sendCancelledResult()V

    return-void
.end method

.method private static final showDocumentsDirPermissionsNecessaryDialog$lambda$4(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->sendCancelledResult()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$5(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p0

    const-string p2, "pro_features"

    invoke-virtual {p0, p2}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$6(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->sendCancelledResult()V

    return-void
.end method

.method private static final showProFeaturesRequiredDialog$lambda$7(Ltech/ulo/library/RequestDirPermissionsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->sendCancelledResult()V

    return-void
.end method


# virtual methods
.method public final getBillingManager()Ltech/ulo/library/utils/BillingManager;
    .locals 1

    .line 22
    iget-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->billingManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/BillingManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    iget v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->directoryPickerID:I

    if-ne p1, v0, :cond_1

    .line 62
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Ltech/ulo/library/ServerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v0, "type"

    const-string v1, "getDirPermsResult"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "putExtra(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 65
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    const-string v0, "uri"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 70
    :cond_0
    const-string p3, "path"

    iget-object v0, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string p3, "resultCode"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Ltech/ulo/library/R$layout;->request_dir_permissions_activity:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->destroy()V

    .line 151
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 135
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 137
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->querySubPurchases()V

    .line 138
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->queryInAppPurchases()V

    .line 139
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "get_dir"

    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ltech/ulo/library/RequestDirPermissionsActivity;->requestDirPermssions(Landroid/content/Intent;Z)V

    :cond_1
    return-void
.end method

.method public final requestDirPermssions(Landroid/content/Intent;Z)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 127
    invoke-direct {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getProFeaturePrompter()Ltech/ulo/library/utils/ProFeaturePrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeInAppPurchase()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->getProFeaturePrompter()Ltech/ulo/library/utils/ProFeaturePrompter;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeSubPurchase()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->showProFeaturesRequiredDialog(Landroid/app/Activity;)V

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->showDocumentsDirPermissionsNecessaryDialog(Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method public final sendCancelledResult()V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Ltech/ulo/library/ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "type"

    const-string v2, "getDirPermsResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v1, "path"

    iget-object v2, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "resultCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Ltech/ulo/library/RequestDirPermissionsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->finish()V

    return-void
.end method

.method public final showDocumentsDirPermissionsNecessaryDialog(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    sget v1, Ltech/ulo/library/R$string;->alert_notification_documents_permission_necessary_message:I

    sget v2, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltech/ulo/library/RequestDirPermissionsActivity;->path:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 81
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

    .line 82
    sget v2, Ltech/ulo/library/R$string;->button_ok:I

    new-instance v3, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 96
    sget v1, Ltech/ulo/library/R$string;->alert_permissions_necessary_cancel_button:I

    new-instance v2, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance p1, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda5;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final showProFeaturesRequiredDialog(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    sget v1, Ltech/ulo/library/R$string;->alert_pro_features_required_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    sget v2, Ltech/ulo/library/R$string;->alert_pro_features_required_title:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 111
    sget v1, Ltech/ulo/library/R$string;->button_yes:I

    new-instance v2, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 115
    sget v1, Ltech/ulo/library/R$string;->button_refuse:I

    new-instance v2, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    new-instance p1, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Ltech/ulo/library/RequestDirPermissionsActivity$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final userHasCompletedPayment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 39
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ltech/ulo/library/RequestDirPermissionsActivity;->showDocumentsDirPermissionsNecessaryDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ltech/ulo/library/RequestDirPermissionsActivity;->sendCancelledResult()V

    :goto_0
    return-void
.end method
