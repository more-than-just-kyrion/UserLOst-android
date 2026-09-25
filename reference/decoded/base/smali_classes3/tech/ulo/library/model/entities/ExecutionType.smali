.class public final enum Ltech/ulo/library/model/entities/ExecutionType;
.super Ljava/lang/Enum;
.source "ExecutionType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "",
        "minSupportedSdk",
        "",
        "(Ljava/lang/String;ILjava/lang/Integer;)V",
        "getMinSupportedSdk",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "toString",
        "",
        "PROOT",
        "QEMU",
        "AVF",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Ltech/ulo/library/model/entities/ExecutionType;

.field public static final enum AVF:Ltech/ulo/library/model/entities/ExecutionType;

.field public static final enum PROOT:Ltech/ulo/library/model/entities/ExecutionType;

.field public static final enum QEMU:Ltech/ulo/library/model/entities/ExecutionType;


# instance fields
.field private final minSupportedSdk:Ljava/lang/Integer;


# direct methods
.method private static final synthetic $values()[Ltech/ulo/library/model/entities/ExecutionType;
    .locals 3

    sget-object v0, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    sget-object v1, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    sget-object v2, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    filled-new-array {v0, v1, v2}, [Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v6, Ltech/ulo/library/model/entities/ExecutionType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "PROOT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltech/ulo/library/model/entities/ExecutionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    .line 10
    new-instance v0, Ltech/ulo/library/model/entities/ExecutionType;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QEMU"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Ltech/ulo/library/model/entities/ExecutionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Ltech/ulo/library/model/entities/ExecutionType;->QEMU:Ltech/ulo/library/model/entities/ExecutionType;

    .line 14
    new-instance v0, Ltech/ulo/library/model/entities/ExecutionType;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AVF"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Ltech/ulo/library/model/entities/ExecutionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Ltech/ulo/library/model/entities/ExecutionType;->AVF:Ltech/ulo/library/model/entities/ExecutionType;

    invoke-static {}, Ltech/ulo/library/model/entities/ExecutionType;->$values()[Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v0

    sput-object v0, Ltech/ulo/library/model/entities/ExecutionType;->$VALUES:[Ltech/ulo/library/model/entities/ExecutionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/ulo/library/model/entities/ExecutionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ltech/ulo/library/model/entities/ExecutionType;->minSupportedSdk:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/model/entities/ExecutionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/ulo/library/model/entities/ExecutionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/ulo/library/model/entities/ExecutionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    const-class v0, Ltech/ulo/library/model/entities/ExecutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/ulo/library/model/entities/ExecutionType;

    return-object p0
.end method

.method public static values()[Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    sget-object v0, Ltech/ulo/library/model/entities/ExecutionType;->$VALUES:[Ltech/ulo/library/model/entities/ExecutionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/ulo/library/model/entities/ExecutionType;

    return-object v0
.end method


# virtual methods
.method public final getMinSupportedSdk()Ljava/lang/Integer;
    .locals 1

    .line 5
    iget-object v0, p0, Ltech/ulo/library/model/entities/ExecutionType;->minSupportedSdk:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    invoke-virtual {p0}, Ltech/ulo/library/model/entities/ExecutionType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
