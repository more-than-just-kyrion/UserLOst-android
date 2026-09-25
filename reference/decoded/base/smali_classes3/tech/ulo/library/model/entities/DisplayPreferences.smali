.class public final Ltech/ulo/library/model/entities/DisplayPreferences;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010$\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020\nH\u00d6\u0001R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006("
    }
    d2 = {
        "Ltech/ulo/library/model/entities/DisplayPreferences;",
        "",
        "orientation",
        "",
        "locked",
        "",
        "scaling",
        "",
        "remember",
        "geometry",
        "",
        "(IZFZLjava/lang/String;)V",
        "getGeometry",
        "()Ljava/lang/String;",
        "setGeometry",
        "(Ljava/lang/String;)V",
        "getLocked",
        "()Z",
        "setLocked",
        "(Z)V",
        "getOrientation",
        "()I",
        "setOrientation",
        "(I)V",
        "getRemember",
        "setRemember",
        "getScaling",
        "()F",
        "setScaling",
        "(F)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private geometry:Ljava/lang/String;

.field private locked:Z

.field private orientation:I

.field private remember:Z

.field private scaling:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ltech/ulo/library/model/entities/DisplayPreferences;-><init>(IZFZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZFZLjava/lang/String;)V
    .locals 1

    const-string v0, "geometry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    .line 60
    iput-boolean p2, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    .line 61
    iput p3, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    .line 62
    iput-boolean p4, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    .line 63
    iput-object p5, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IZFZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    move v2, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p4

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 63
    const-string p5, "800x600"

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v2

    move p5, v0

    .line 58
    invoke-direct/range {p1 .. p6}, Ltech/ulo/library/model/entities/DisplayPreferences;-><init>(IZFZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/entities/DisplayPreferences;IZFZLjava/lang/String;ILjava/lang/Object;)Ltech/ulo/library/model/entities/DisplayPreferences;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Ltech/ulo/library/model/entities/DisplayPreferences;->copy(IZFZLjava/lang/String;)Ltech/ulo/library/model/entities/DisplayPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IZFZLjava/lang/String;)Ltech/ulo/library/model/entities/DisplayPreferences;
    .locals 7

    const-string v0, "geometry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/model/entities/DisplayPreferences;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ltech/ulo/library/model/entities/DisplayPreferences;-><init>(IZFZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/entities/DisplayPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/entities/DisplayPreferences;

    iget v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    iget v3, p1, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    iget v3, p1, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    iget-object p1, p1, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getGeometry()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocked()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .line 59
    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    return v0
.end method

.method public final getRemember()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    return v0
.end method

.method public final getScaling()F
    .locals 1

    .line 61
    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setGeometry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    return-void
.end method

.method public final setLocked(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    .line 59
    iput p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    return-void
.end method

.method public final setRemember(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    return-void
.end method

.method public final setScaling(F)V
    .locals 0

    .line 61
    iput p1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->orientation:I

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->locked:Z

    iget v2, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->scaling:F

    iget-boolean v3, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->remember:Z

    iget-object v4, p0, Ltech/ulo/library/model/entities/DisplayPreferences;->geometry:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DisplayPreferences(orientation="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", locked="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
