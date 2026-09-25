.class public final Ltech/ulo/library/utils/SentryLogger;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Ltech/ulo/library/utils/Logger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/ulo/library/utils/SentryLogger;",
        "Ltech/ulo/library/utils/Logger;",
        "()V",
        "addBreadcrumb",
        "",
        "breadcrumb",
        "Ltech/ulo/library/utils/UlaBreadcrumb;",
        "addExceptionBreadcrumb",
        "err",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "initialize",
        "context",
        "Landroid/content/Context;",
        "sendEvent",
        "message",
        "",
        "sendIllegalStateLog",
        "state",
        "Ltech/ulo/library/viewmodel/IllegalState;",
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
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V
    .locals 3

    const-string v0, "breadcrumb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaBreadcrumb;->getType()Ltech/ulo/library/utils/BreadcrumbType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaBreadcrumb;->getOriginatingClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/ulo/library/utils/UlaBreadcrumb;->getDetails()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v1, Lio/sentry/event/BreadcrumbBuilder;

    invoke-direct {v1}, Lio/sentry/event/BreadcrumbBuilder;-><init>()V

    .line 69
    invoke-virtual {v1, v0}, Lio/sentry/event/BreadcrumbBuilder;->setCategory(Ljava/lang/String;)Lio/sentry/event/BreadcrumbBuilder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p1}, Lio/sentry/event/BreadcrumbBuilder;->setMessage(Ljava/lang/String;)Lio/sentry/event/BreadcrumbBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lio/sentry/event/BreadcrumbBuilder;->build()Lio/sentry/event/Breadcrumb;

    move-result-object v1

    .line 72
    invoke-static {}, Lio/sentry/Sentry;->getContext()Lio/sentry/context/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/context/Context;->recordBreadcrumb(Lio/sentry/event/Breadcrumb;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Breadcrumb"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addExceptionBreadcrumb(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "err"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 78
    new-instance v1, Lio/sentry/event/BreadcrumbBuilder;

    invoke-direct {v1}, Lio/sentry/event/BreadcrumbBuilder;-><init>()V

    .line 79
    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Lio/sentry/event/BreadcrumbBuilder;->setCategory(Ljava/lang/String;)Lio/sentry/event/BreadcrumbBuilder;

    move-result-object v1

    const/4 v2, 0x3

    .line 81
    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "type"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 82
    const-string p1, "file"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 83
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lineNumber"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 80
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/sentry/event/BreadcrumbBuilder;->setData(Ljava/util/Map;)Lio/sentry/event/BreadcrumbBuilder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lio/sentry/event/BreadcrumbBuilder;->build()Lio/sentry/event/Breadcrumb;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/sentry/Sentry;->getContext()Lio/sentry/context/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/context/Context;->recordBreadcrumb(Lio/sentry/event/Breadcrumb;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 62
    new-instance v0, Lio/sentry/android/AndroidSentryClientFactory;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lio/sentry/android/AndroidSentryClientFactory;-><init>(Landroid/content/Context;)V

    check-cast v0, Lio/sentry/SentryClientFactory;

    invoke-static {v0}, Lio/sentry/Sentry;->init(Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    return-void
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lio/sentry/event/EventBuilder;

    invoke-direct {v0}, Lio/sentry/event/EventBuilder;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Lio/sentry/event/EventBuilder;->withMessage(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    move-result-object v0

    .line 101
    sget-object v1, Lio/sentry/event/Event$Level;->ERROR:Lio/sentry/event/Event$Level;

    invoke-virtual {v0, v1}, Lio/sentry/event/EventBuilder;->withLevel(Lio/sentry/event/Event$Level;)Lio/sentry/event/EventBuilder;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lio/sentry/Sentry;->capture(Lio/sentry/event/EventBuilder;)V

    .line 103
    const-string v0, "EVENT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendIllegalStateLog(Ltech/ulo/library/viewmodel/IllegalState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Lio/sentry/event/EventBuilder;

    invoke-direct {v0}, Lio/sentry/event/EventBuilder;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lio/sentry/event/EventBuilder;->withMessage(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    move-result-object v0

    .line 93
    sget-object v1, Lio/sentry/event/Event$Level;->ERROR:Lio/sentry/event/Event$Level;

    invoke-virtual {v0, v1}, Lio/sentry/event/EventBuilder;->withLevel(Lio/sentry/event/Event$Level;)Lio/sentry/event/EventBuilder;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lio/sentry/Sentry;->capture(Lio/sentry/event/EventBuilder;)V

    .line 95
    const-string v0, "ILLEGAL_STATE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
