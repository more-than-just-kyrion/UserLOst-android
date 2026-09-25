.class public final Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;
.super Ltech/ulo/library/utils/BreadcrumbType;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/BreadcrumbType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubmittedEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;",
        "Ltech/ulo/library/utils/BreadcrumbType;",
        "()V",
        "toString",
        "",
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
.field public static final INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;

    invoke-direct {v0}, Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;-><init>()V

    sput-object v0, Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;->INSTANCE:Ltech/ulo/library/utils/BreadcrumbType$SubmittedEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/BreadcrumbType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "Event submitted"

    return-object v0
.end method
