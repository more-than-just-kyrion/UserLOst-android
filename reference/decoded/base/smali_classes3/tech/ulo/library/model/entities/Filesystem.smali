.class public final Ltech/ulo/library/model/entities/Filesystem;
.super Ljava/lang/Object;
.source "Filesystem.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u00082\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\t\u00108\u001a\u00020\rH\u00c6\u0003J\t\u00109\u001a\u00020\rH\u00c6\u0003J\t\u0010:\u001a\u00020\rH\u00c6\u0003J\t\u0010;\u001a\u00020\rH\u00c6\u0003J\t\u0010<\u001a\u00020\u0014H\u00c6\u0003J\t\u0010=\u001a\u00020\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\u0005H\u00c6\u0003J\t\u0010?\u001a\u00020\u0005H\u00c6\u0003J\t\u0010@\u001a\u00020\u0005H\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0005H\u00c6\u0003J\t\u0010D\u001a\u00020\rH\u00c6\u0003J\u009f\u0001\u0010E\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u00c6\u0001J\t\u0010F\u001a\u00020GH\u00d6\u0001J\u0013\u0010H\u001a\u00020\r2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u00d6\u0003J\t\u0010K\u001a\u00020GH\u00d6\u0001J\u0008\u0010L\u001a\u00020\u0005H\u0016J\u0019\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020GH\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017\"\u0004\u0008\u001d\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0017\"\u0004\u0008\'\u0010\u0019R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010)\"\u0004\u0008.\u0010+R\u001a\u0010\u000f\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010)\"\u0004\u0008/\u0010+R\u001a\u0010\u0011\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010)\"\u0004\u00080\u0010+R\u001a\u0010\u0010\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010)\"\u0004\u00081\u0010+R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0017\"\u0004\u00083\u0010\u0019R\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0017\"\u0004\u00085\u0010\u0019\u00a8\u0006R"
    }
    d2 = {
        "Ltech/ulo/library/model/entities/Filesystem;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "name",
        "",
        "distributionType",
        "archType",
        "flavor",
        "defaultUsername",
        "defaultPassword",
        "defaultVncPassword",
        "isAppsFilesystem",
        "",
        "versionCodeUsed",
        "isCreatedFromBackup",
        "isProtected",
        "isPaid",
        "hasPaidUp",
        "executionType",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V",
        "getArchType",
        "()Ljava/lang/String;",
        "setArchType",
        "(Ljava/lang/String;)V",
        "getDefaultPassword",
        "setDefaultPassword",
        "getDefaultUsername",
        "setDefaultUsername",
        "getDefaultVncPassword",
        "setDefaultVncPassword",
        "getDistributionType",
        "setDistributionType",
        "getExecutionType",
        "()Ltech/ulo/library/model/entities/ExecutionType;",
        "setExecutionType",
        "(Ltech/ulo/library/model/entities/ExecutionType;)V",
        "getFlavor",
        "setFlavor",
        "getHasPaidUp",
        "()Z",
        "setHasPaidUp",
        "(Z)V",
        "getId",
        "()J",
        "setAppsFilesystem",
        "setCreatedFromBackup",
        "setPaid",
        "setProtected",
        "getName",
        "setName",
        "getVersionCodeUsed",
        "setVersionCodeUsed",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltech/ulo/library/model/entities/Filesystem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private archType:Ljava/lang/String;

.field private defaultPassword:Ljava/lang/String;

.field private defaultUsername:Ljava/lang/String;

.field private defaultVncPassword:Ljava/lang/String;

.field private distributionType:Ljava/lang/String;

.field private executionType:Ltech/ulo/library/model/entities/ExecutionType;

.field private flavor:Ljava/lang/String;

.field private hasPaidUp:Z

.field private final id:J

.field private isAppsFilesystem:Z

.field private isCreatedFromBackup:Z

.field private isPaid:Z

.field private isProtected:Z

.field private name:Ljava/lang/String;

.field private versionCodeUsed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/model/entities/Filesystem$Creator;

    invoke-direct {v0}, Ltech/ulo/library/model/entities/Filesystem$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Ltech/ulo/library/model/entities/Filesystem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p16

    const-string v10, "name"

    invoke-static {p3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "distributionType"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "archType"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "flavor"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultUsername"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultPassword"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultVncPassword"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "versionCodeUsed"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "executionType"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v10, p1

    .line 13
    iput-wide v10, v0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    .line 15
    iput-object v1, v0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    .line 16
    iput-object v2, v0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    .line 17
    iput-object v3, v0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    .line 18
    iput-object v4, v0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    .line 19
    iput-object v5, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    .line 20
    iput-object v6, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    .line 21
    iput-object v7, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    move/from16 v1, p10

    .line 22
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    .line 23
    iput-object v8, v0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    move/from16 v1, p12

    .line 24
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    move/from16 v1, p13

    .line 25
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    move/from16 v1, p14

    .line 26
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    move/from16 v1, p15

    .line 27
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    .line 28
    iput-object v9, v0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x2

    .line 12
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move v13, v2

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    .line 23
    const-string v1, "v0.0.0"

    move-object v14, v1

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move v15, v2

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    move/from16 v16, v2

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    move/from16 v17, v2

    goto :goto_b

    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    move/from16 v18, v2

    goto :goto_c

    :cond_c
    move/from16 v18, p15

    :goto_c
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d

    .line 28
    sget-object v0, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    move-object/from16 v19, v0

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    .line 12
    invoke-direct/range {v3 .. v19}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/entities/Filesystem;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;ILjava/lang/Object;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-boolean v13, v0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-boolean v14, v0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Ltech/ulo/library/model/entities/Filesystem;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)Ltech/ulo/library/model/entities/Filesystem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    return v0
.end method

.method public final component15()Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    return v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)Ltech/ulo/library/model/entities/Filesystem;
    .locals 18

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "name"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distributionType"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archType"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flavor"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultUsername"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultPassword"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultVncPassword"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionCodeUsed"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionType"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Ltech/ulo/library/model/entities/Filesystem;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Ltech/ulo/library/model/entities/Filesystem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ulo/library/model/entities/ExecutionType;)V

    return-object v17
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/entities/Filesystem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/entities/Filesystem;

    iget-wide v3, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Filesystem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    iget-object p1, p1, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getArchType()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultPassword()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultUsername()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultVncPassword()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistributionType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    .line 28
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-object v0
.end method

.method public final getFlavor()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasPaidUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCodeUsed()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/ExecutionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAppsFilesystem()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    return v0
.end method

.method public final isCreatedFromBackup()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    return v0
.end method

.method public final isPaid()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    return v0
.end method

.method public final setAppsFilesystem(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    return-void
.end method

.method public final setArchType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedFromBackup(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    return-void
.end method

.method public final setDefaultPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultUsername(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultVncPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    return-void
.end method

.method public final setDistributionType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    return-void
.end method

.method public final setExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-void
.end method

.method public final setFlavor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    return-void
.end method

.method public final setHasPaidUp(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPaid(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    return-void
.end method

.method public final setProtected(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    return-void
.end method

.method public final setVersionCodeUsed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 31
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    iget-object v2, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    iget-object v3, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    .line 32
    iget-object v4, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    iget-object v5, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    iget-boolean v6, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    iget-object v7, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    .line 33
    iget-boolean v8, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    iget-boolean v9, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    iget-boolean v10, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    iget-boolean v11, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Filesystem(id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distributionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", archType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppsFilesystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCodeUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCreatedFromBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPaidUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Filesystem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->distributionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->archType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->flavor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->defaultVncPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Filesystem;->isAppsFilesystem:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->versionCodeUsed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Filesystem;->isCreatedFromBackup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Filesystem;->isProtected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Filesystem;->isPaid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Filesystem;->hasPaidUp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Filesystem;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/ExecutionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
