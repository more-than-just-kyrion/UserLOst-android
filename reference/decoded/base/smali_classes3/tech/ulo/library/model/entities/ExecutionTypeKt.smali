.class public final Ltech/ulo/library/model/entities/ExecutionTypeKt;
.super Ljava/lang/Object;
.source "ExecutionType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toExecutionType",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toExecutionType(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "qemu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "avf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_0

    .line 22
    :cond_1
    sget-object p0, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    :goto_0
    return-object p0
.end method
