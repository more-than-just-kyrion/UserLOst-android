.class public final Ltech/ulo/library/model/entities/SessionKt;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toServiceType",
        "Ltech/ulo/library/model/entities/ServiceType;",
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
.method public static final toServiceType(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1be08    # 1.60006E-40f

    if-eq v0, v1, :cond_4

    const v1, 0x1c8ab

    if-eq v0, v1, :cond_2

    const v1, 0x3848c3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "xsdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    sget-object p0, Ltech/ulo/library/model/entities/ServiceType$Xsdl;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Xsdl;

    check-cast p0, Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_1

    .line 9
    :cond_2
    const-string v0, "vnc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-object p0, Ltech/ulo/library/model/entities/ServiceType$Vnc;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Vnc;

    check-cast p0, Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_1

    .line 9
    :cond_4
    const-string v0, "ssh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 13
    :goto_0
    sget-object p0, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    check-cast p0, Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Ltech/ulo/library/model/entities/ServiceType$Ssh;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Ssh;

    check-cast p0, Ltech/ulo/library/model/entities/ServiceType;

    :goto_1
    return-object p0
.end method
