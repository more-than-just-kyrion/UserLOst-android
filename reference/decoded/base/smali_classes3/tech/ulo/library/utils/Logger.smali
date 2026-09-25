.class public interface abstract Ltech/ulo/library/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/Logger$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH&J\u0014\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/utils/Logger;",
        "",
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


# virtual methods
.method public abstract addBreadcrumb(Ltech/ulo/library/utils/UlaBreadcrumb;)V
.end method

.method public abstract addExceptionBreadcrumb(Ljava/lang/Exception;)V
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract sendEvent(Ljava/lang/String;)V
.end method

.method public abstract sendIllegalStateLog(Ltech/ulo/library/viewmodel/IllegalState;)V
.end method
