.class public final Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;
.super Ltech/ulo/library/model/state/AppsStartupEvent;
.source "AppsStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;",
        "Ltech/ulo/library/model/state/AppsStartupEvent;",
        "appSession",
        "Ltech/ulo/library/model/entities/Session;",
        "displayPreferences",
        "Ltech/ulo/library/model/entities/DisplayPreferences;",
        "(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)V",
        "getAppSession",
        "()Ltech/ulo/library/model/entities/Session;",
        "getDisplayPreferences",
        "()Ltech/ulo/library/model/entities/DisplayPreferences;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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


# instance fields
.field private final appSession:Ltech/ulo/library/model/entities/Session;

.field private final displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)V
    .locals 1

    const-string v0, "appSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, v0}, Ltech/ulo/library/model/state/AppsStartupEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    iput-object p2, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;ILjava/lang/Object;)Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->copy(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/Session;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public final component2()Ltech/ulo/library/model/entities/DisplayPreferences;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    return-object v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;
    .locals 1

    const-string v0, "appSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;-><init>(Ltech/ulo/library/model/entities/Session;Ltech/ulo/library/model/entities/DisplayPreferences;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v3, p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    iget-object p1, p1, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppSession()Ltech/ulo/library/model/entities/Session;
    .locals 1

    .line 282
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public final getDisplayPreferences()Ltech/ulo/library/model/entities/DisplayPreferences;
    .locals 1

    .line 282
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/DisplayPreferences;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->appSession:Ltech/ulo/library/model/entities/Session;

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;->displayPreferences:Ltech/ulo/library/model/entities/DisplayPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubmitAppSessionDisplayPreferences(appSession="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", displayPreferences="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
