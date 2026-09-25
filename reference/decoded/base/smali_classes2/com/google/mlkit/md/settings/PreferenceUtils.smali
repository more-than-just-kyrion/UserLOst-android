.class public final Lcom/google/mlkit/md/settings/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\"\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/google/mlkit/md/settings/PreferenceUtils;",
        "",
        "()V",
        "getBarcodeReticleBox",
        "Landroid/graphics/RectF;",
        "overlay",
        "Lcom/google/mlkit/md/camera/GraphicOverlay;",
        "getBooleanPref",
        "",
        "context",
        "Landroid/content/Context;",
        "prefKeyId",
        "",
        "defaultValue",
        "getIntPref",
        "getProgressToMeetBarcodeSizeRequirement",
        "",
        "barcode",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        "getUserSpecifiedPreviewSize",
        "Lcom/google/mlkit/md/camera/CameraSizePair;",
        "saveStringPreference",
        "",
        "value",
        "",
        "shouldDelayLoadingBarcodeResult",
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


# static fields
.field public static final INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/md/settings/PreferenceUtils;

    invoke-direct {v0}, Lcom/google/mlkit/md/settings/PreferenceUtils;-><init>()V

    sput-object v0, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getBooleanPref(Landroid/content/Context;IZ)Z
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final getIntPref(Landroid/content/Context;II)I
    .locals 1

    .line 69
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getBarcodeReticleBox(Lcom/google/mlkit/md/camera/GraphicOverlay;)Landroid/graphics/RectF;
    .locals 6

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 57
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Ltech/ulo/library/R$string;->pref_key_barcode_reticle_width:I

    const/16 v3, 0x50

    invoke-direct {p0, v0, v2, v3}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getIntPref(Landroid/content/Context;II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/16 v3, 0x64

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 59
    sget v4, Ltech/ulo/library/R$string;->pref_key_barcode_reticle_height:I

    const/16 v5, 0x23

    invoke-direct {p0, v0, v4, v5}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getIntPref(Landroid/content/Context;II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr p1, v3

    .line 62
    new-instance v4, Landroid/graphics/RectF;

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    div-float/2addr v0, v3

    sub-float v3, p1, v0

    add-float/2addr v1, v2

    add-float/2addr p1, v0

    invoke-direct {v4, v5, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public final getProgressToMeetBarcodeSizeRequirement(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)F
    .locals 4

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/mlkit/md/camera/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Ltech/ulo/library/R$string;->pref_key_enable_barcode_size_check:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getBooleanPref(Landroid/content/Context;IZ)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getBarcodeReticleBox(Lcom/google/mlkit/md/camera/GraphicOverlay;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 46
    invoke-virtual {p2}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/mlkit/md/camera/GraphicOverlay;->translateX(F)F

    move-result p1

    .line 47
    sget p2, Ltech/ulo/library/R$string;->pref_key_minimum_barcode_width:I

    const/16 v3, 0x32

    invoke-direct {p0, v0, p2, v3}, Lcom/google/mlkit/md/settings/PreferenceUtils;->getIntPref(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v1, p2

    const/16 p2, 0x64

    int-to-float p2, p2

    div-float/2addr v1, p2

    div-float/2addr p1, v1

    .line 48
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v2

    :cond_1
    return v2
.end method

.method public final getUserSpecifiedPreviewSize(Landroid/content/Context;)Lcom/google/mlkit/md/camera/CameraSizePair;
    .locals 4

    const-string v0, "getString(...)"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 76
    :try_start_0
    sget v2, Ltech/ulo/library/R$string;->pref_key_rear_camera_preview_size:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget v3, Ltech/ulo/library/R$string;->pref_key_rear_camera_picture_size:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 79
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 82
    new-instance v2, Lcom/google/mlkit/md/camera/CameraSizePair;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/images/Size;->parseSize(Ljava/lang/String;)Lcom/google/android/gms/common/images/Size;

    move-result-object v0

    const-string v3, "parseSize(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/common/images/Size;->parseSize(Ljava/lang/String;)Lcom/google/android/gms/common/images/Size;

    move-result-object p1

    .line 82
    invoke-direct {v2, v0, p1}, Lcom/google/mlkit/md/camera/CameraSizePair;-><init>(Lcom/google/android/gms/common/images/Size;Lcom/google/android/gms/common/images/Size;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final saveStringPreference(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final shouldDelayLoadingBarcodeResult(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
