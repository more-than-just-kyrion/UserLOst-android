.class public final Ltech/ulo/library/utils/BillingManager$Sku;
.super Ljava/lang/Object;
.source "BillingManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sku"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/ulo/library/utils/BillingManager$Sku;",
        "",
        "()V",
        "PRO_FEATURES",
        "",
        "PRO_FEATURES_TEST",
        "US10_MONTHLY",
        "US10_ONETIME",
        "US10_YEARLY",
        "US1_MONTHLY",
        "US1_ONETIME",
        "US1_YEARLY",
        "US20_MONTHLY",
        "US20_ONETIME",
        "US20_YEARLY",
        "US5_MONTHLY",
        "US5_ONETIME",
        "US5_YEARLY",
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
.field public static final INSTANCE:Ltech/ulo/library/utils/BillingManager$Sku;

.field public static final PRO_FEATURES:Ljava/lang/String; = "pro_features"

.field public static final PRO_FEATURES_TEST:Ljava/lang/String; = "pro_features_test"

.field public static final US10_MONTHLY:Ljava/lang/String; = "10us_monthly"

.field public static final US10_ONETIME:Ljava/lang/String; = "10us_onetime"

.field public static final US10_YEARLY:Ljava/lang/String; = "10us_yearly"

.field public static final US1_MONTHLY:Ljava/lang/String; = "1us_monthly"

.field public static final US1_ONETIME:Ljava/lang/String; = "1us_onetime"

.field public static final US1_YEARLY:Ljava/lang/String; = "1us_yearly"

.field public static final US20_MONTHLY:Ljava/lang/String; = "20us_monthly"

.field public static final US20_ONETIME:Ljava/lang/String; = "20us_onetime"

.field public static final US20_YEARLY:Ljava/lang/String; = "20us_yearly"

.field public static final US5_MONTHLY:Ljava/lang/String; = "5us_monthly"

.field public static final US5_ONETIME:Ljava/lang/String; = "5us_onetime"

.field public static final US5_YEARLY:Ljava/lang/String; = "5us_yearly"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/utils/BillingManager$Sku;

    invoke-direct {v0}, Ltech/ulo/library/utils/BillingManager$Sku;-><init>()V

    sput-object v0, Ltech/ulo/library/utils/BillingManager$Sku;->INSTANCE:Ltech/ulo/library/utils/BillingManager$Sku;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
