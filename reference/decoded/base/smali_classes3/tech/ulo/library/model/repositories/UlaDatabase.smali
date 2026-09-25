.class public abstract Ltech/ulo/library/model/repositories/UlaDatabase;
.super Landroidx/room/RoomDatabase;
.source "UlaDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/model/repositories/UlaDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Ltech/ulo/library/model/repositories/UlaDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "appsDao",
        "Ltech/ulo/library/model/daos/AppsDao;",
        "filesystemDao",
        "Ltech/ulo/library/model/daos/FilesystemDao;",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
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
.field public static final Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

.field private static volatile INSTANCE:Ltech/ulo/library/model/repositories/UlaDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/model/repositories/UlaDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->Companion:Ltech/ulo/library/model/repositories/UlaDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Ltech/ulo/library/model/repositories/UlaDatabase;
    .locals 1

    .line 19
    sget-object v0, Ltech/ulo/library/model/repositories/UlaDatabase;->INSTANCE:Ltech/ulo/library/model/repositories/UlaDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Ltech/ulo/library/model/repositories/UlaDatabase;)V
    .locals 0

    .line 19
    sput-object p0, Ltech/ulo/library/model/repositories/UlaDatabase;->INSTANCE:Ltech/ulo/library/model/repositories/UlaDatabase;

    return-void
.end method


# virtual methods
.method public abstract appsDao()Ltech/ulo/library/model/daos/AppsDao;
.end method

.method public abstract filesystemDao()Ltech/ulo/library/model/daos/FilesystemDao;
.end method

.method public abstract sessionDao()Ltech/ulo/library/model/daos/SessionDao;
.end method
