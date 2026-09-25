.class public final Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
.super Ljava/lang/Object;
.source "CompanionAppUpdateChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/CompanionAppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemVer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;",
        "",
        "major",
        "",
        "minor",
        "(II)V",
        "getMajor",
        "()I",
        "getMinor",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
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
.field public static final Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;


# instance fields
.field private final major:I

.field private final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->Companion:Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    iput p2, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;IIILjava/lang/Object;)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->copy(II)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    return v0
.end method

.method public final copy(II)Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;
    .locals 1

    new-instance v0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;

    iget v1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    iget v3, p1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    iget p1, p1, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMajor()I
    .locals 1

    .line 37
    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 37
    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->major:I

    iget v1, p0, Ltech/ulo/library/utils/CompanionAppUpdateChecker$SemVer;->minor:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SemVer(major="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", minor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
