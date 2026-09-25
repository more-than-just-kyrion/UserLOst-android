.class public final Ltech/ulo/library/model/repositories/UlaDatabase$Companion;
.super Ljava/lang/Object;
.source "UlaDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/model/repositories/UlaDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUlaDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UlaDatabase.kt\ntech/ulo/library/model/repositories/UlaDatabase$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/UlaDatabase$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "buildDatabase",
        "context",
        "Landroid/content/Context;",
        "getInstance",
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
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;-><init>()V

    return-void
.end method

.method private final buildDatabase(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 4

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltech/ulo/library/model/repositories/UlaDatabase;

    .line 39
    const-string v2, "Data.db"

    .line 38
    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 41
    new-array v1, v1, [Landroidx/room/migration/Migration;

    new-instance v2, Ltech/ulo/library/model/repositories/Migration1To2;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration1To2;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 42
    new-instance v2, Ltech/ulo/library/model/repositories/Migration2To3;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration2To3;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 43
    new-instance v2, Ltech/ulo/library/model/repositories/Migration3To4;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration3To4;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 44
    new-instance v2, Ltech/ulo/library/model/repositories/Migration4To5;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration4To5;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 45
    new-instance v2, Ltech/ulo/library/model/repositories/Migration5To6;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration5To6;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 46
    new-instance v2, Ltech/ulo/library/model/repositories/Migration6To7;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration6To7;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 47
    new-instance v2, Ltech/ulo/library/model/repositories/Migration7To8;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration7To8;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 48
    new-instance v2, Ltech/ulo/library/model/repositories/Migration8To9;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration8To9;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 49
    new-instance v2, Ltech/ulo/library/model/repositories/Migration9To10;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration9To10;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 50
    new-instance v2, Ltech/ulo/library/model/repositories/Migration10To11;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration10To11;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 51
    new-instance v2, Ltech/ulo/library/model/repositories/Migration11To12;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration11To12;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 52
    new-instance v2, Ltech/ulo/library/model/repositories/Migration12To13;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration12To13;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 53
    new-instance v2, Ltech/ulo/library/model/repositories/Migration13To14;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration13To14;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 54
    new-instance v2, Ltech/ulo/library/model/repositories/Migration14To15;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration14To15;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 55
    new-instance v2, Ltech/ulo/library/model/repositories/Migration15To16;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration15To16;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 56
    new-instance v2, Ltech/ulo/library/model/repositories/Migration16To17;

    invoke-direct {v2}, Ltech/ulo/library/model/repositories/Migration16To17;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 40
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 58
    new-instance v1, Ltech/ulo/library/model/repositories/UlaDatabase$Companion$buildDatabase$1;

    invoke-direct {v1, p1}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion$buildDatabase$1;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/ulo/library/model/repositories/UlaDatabase;

    return-object p1
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ltech/ulo/library/model/repositories/UlaDatabase;->access$getINSTANCE$cp()Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-static {}, Ltech/ulo/library/model/repositories/UlaDatabase;->access$getINSTANCE$cp()Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    invoke-direct {v0, p1}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;->buildDatabase(Landroid/content/Context;)Ltech/ulo/library/model/repositories/UlaDatabase;

    move-result-object p1

    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    invoke-static {p1}, Ltech/ulo/library/model/repositories/UlaDatabase;->access$setINSTANCE$cp(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 32
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
