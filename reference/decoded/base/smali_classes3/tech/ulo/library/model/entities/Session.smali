.class public final Ltech/ulo/library/model/entities/Session;
.super Ljava/lang/Object;
.source "Session.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008]\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00fb\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\t\u00a2\u0006\u0002\u0010\"J\t\u0010_\u001a\u00020\u0003H\u00c6\u0003J\t\u0010`\u001a\u00020\u0003H\u00c6\u0003J\t\u0010a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010c\u001a\u00020\tH\u00c6\u0003J\t\u0010d\u001a\u00020\tH\u00c6\u0003J\t\u0010e\u001a\u00020\u0015H\u00c6\u0003J\t\u0010f\u001a\u00020\tH\u00c6\u0003J\t\u0010g\u001a\u00020\u0018H\u00c6\u0003J\t\u0010h\u001a\u00020\tH\u00c6\u0003J\t\u0010i\u001a\u00020\tH\u00c6\u0003J\t\u0010j\u001a\u00020\u0005H\u00c6\u0003J\t\u0010k\u001a\u00020\tH\u00c6\u0003J\t\u0010l\u001a\u00020\tH\u00c6\u0003J\t\u0010m\u001a\u00020\u001eH\u00c6\u0003J\t\u0010n\u001a\u00020\tH\u00c6\u0003J\t\u0010o\u001a\u00020\u0003H\u00c6\u0003J\t\u0010p\u001a\u00020\tH\u00c6\u0003J\t\u0010q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010r\u001a\u00020\u0005H\u00c6\u0003J\t\u0010s\u001a\u00020\tH\u00c6\u0003J\t\u0010t\u001a\u00020\u0005H\u00c6\u0003J\t\u0010u\u001a\u00020\u0005H\u00c6\u0003J\t\u0010v\u001a\u00020\u0005H\u00c6\u0003J\t\u0010w\u001a\u00020\u000eH\u00c6\u0003J\u0083\u0002\u0010x\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\t2\u0008\u0008\u0002\u0010 \u001a\u00020\u00032\u0008\u0008\u0002\u0010!\u001a\u00020\tH\u00c6\u0001J\t\u0010y\u001a\u00020\u0015H\u00d6\u0001J\u0013\u0010z\u001a\u00020\t2\u0008\u0010{\u001a\u0004\u0018\u00010|H\u00d6\u0003J\t\u0010}\u001a\u00020\u0015H\u00d6\u0001J\u0008\u0010~\u001a\u00020\u0005H\u0016J\u001d\u0010\u007f\u001a\u00030\u0080\u00012\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0015H\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010!\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R\u001a\u0010\u0016\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u0010\u0019\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010$\"\u0004\u00080\u0010&R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001a\u0010\u0011\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010>\"\u0004\u0008B\u0010@R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010:R\u0011\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010$R\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010$\"\u0004\u0008D\u0010&R\u001a\u0010 \u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010:\"\u0004\u0008F\u0010<R\u001a\u0010\u001b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010$\"\u0004\u0008H\u0010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010>\"\u0004\u0008J\u0010@R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010>\"\u0004\u0008L\u0010@R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010:\"\u0004\u0008N\u0010<R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010:\"\u0004\u0008P\u0010<R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010\u001c\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010$\"\u0004\u0008V\u0010&R\u001a\u0010\u001f\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010$\"\u0004\u0008X\u0010&R\u001a\u0010\u001a\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010$\"\u0004\u0008Z\u0010&R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010>\"\u0004\u0008\\\u0010@R\u001a\u0010\u000c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010>\"\u0004\u0008^\u0010@\u00a8\u0006\u0084\u0001"
    }
    d2 = {
        "Ltech/ulo/library/model/entities/Session;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "name",
        "",
        "filesystemId",
        "filesystemName",
        "active",
        "",
        "username",
        "password",
        "vncPassword",
        "serviceType",
        "Ltech/ulo/library/model/entities/ServiceType;",
        "port",
        "pid",
        "geometry",
        "isAppsSession",
        "isProtected",
        "displayOrientation",
        "",
        "displayLocked",
        "displayScaling",
        "",
        "displayRemember",
        "soundSupport",
        "micSupport",
        "serviceTypeRemember",
        "executionType",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "shareStorage",
        "memoryMb",
        "cpuAllCores",
        "(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "getCpuAllCores",
        "setCpuAllCores",
        "getDisplayLocked",
        "setDisplayLocked",
        "getDisplayOrientation",
        "()I",
        "setDisplayOrientation",
        "(I)V",
        "getDisplayRemember",
        "setDisplayRemember",
        "getDisplayScaling",
        "()F",
        "setDisplayScaling",
        "(F)V",
        "getExecutionType",
        "()Ltech/ulo/library/model/entities/ExecutionType;",
        "setExecutionType",
        "(Ltech/ulo/library/model/entities/ExecutionType;)V",
        "getFilesystemId",
        "()J",
        "setFilesystemId",
        "(J)V",
        "getFilesystemName",
        "()Ljava/lang/String;",
        "setFilesystemName",
        "(Ljava/lang/String;)V",
        "getGeometry",
        "setGeometry",
        "getId",
        "setProtected",
        "getMemoryMb",
        "setMemoryMb",
        "getMicSupport",
        "setMicSupport",
        "getName",
        "setName",
        "getPassword",
        "setPassword",
        "getPid",
        "setPid",
        "getPort",
        "setPort",
        "getServiceType",
        "()Ltech/ulo/library/model/entities/ServiceType;",
        "setServiceType",
        "(Ltech/ulo/library/model/entities/ServiceType;)V",
        "getServiceTypeRemember",
        "setServiceTypeRemember",
        "getShareStorage",
        "setShareStorage",
        "getSoundSupport",
        "setSoundSupport",
        "getUsername",
        "setUsername",
        "getVncPassword",
        "setVncPassword",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
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
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private cpuAllCores:Z

.field private displayLocked:Z

.field private displayOrientation:I

.field private displayRemember:Z

.field private displayScaling:F

.field private executionType:Ltech/ulo/library/model/entities/ExecutionType;

.field private filesystemId:J

.field private filesystemName:Ljava/lang/String;

.field private geometry:Ljava/lang/String;

.field private final id:J

.field private final isAppsSession:Z

.field private isProtected:Z

.field private memoryMb:J

.field private micSupport:Z

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pid:J

.field private port:J

.field private serviceType:Ltech/ulo/library/model/entities/ServiceType;

.field private serviceTypeRemember:Z

.field private shareStorage:Z

.field private soundSupport:Z

.field private username:Ljava/lang/String;

.field private vncPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/model/entities/Session$Creator;

    invoke-direct {v0}, Ltech/ulo/library/model/entities/Session$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Ltech/ulo/library/model/entities/Session;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p16

    move-object/from16 v8, p26

    const-string v9, "name"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "filesystemName"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "username"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "password"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "vncPassword"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "serviceType"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "geometry"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "executionType"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v9, p1

    .line 90
    iput-wide v9, v0, Ltech/ulo/library/model/entities/Session;->id:J

    .line 92
    iput-object v1, v0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    move-wide v9, p4

    .line 93
    iput-wide v9, v0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    .line 94
    iput-object v2, v0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    move/from16 v1, p7

    .line 95
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->active:Z

    .line 96
    iput-object v3, v0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    .line 97
    iput-object v4, v0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    .line 98
    iput-object v5, v0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    .line 99
    iput-object v6, v0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    move-wide/from16 v1, p12

    .line 100
    iput-wide v1, v0, Ltech/ulo/library/model/entities/Session;->port:J

    move-wide/from16 v1, p14

    .line 101
    iput-wide v1, v0, Ltech/ulo/library/model/entities/Session;->pid:J

    .line 102
    iput-object v7, v0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    move/from16 v1, p17

    .line 103
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    move/from16 v1, p18

    .line 104
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    move/from16 v1, p19

    .line 105
    iput v1, v0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    move/from16 v1, p20

    .line 106
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    move/from16 v1, p21

    .line 107
    iput v1, v0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    move/from16 v1, p22

    .line 108
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    move/from16 v1, p23

    .line 109
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    move/from16 v1, p24

    .line 110
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    move/from16 v1, p25

    .line 111
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    .line 112
    iput-object v8, v0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    move/from16 v1, p27

    .line 113
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    move-wide/from16 v1, p28

    .line 122
    iput-wide v1, v0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    move/from16 v1, p30

    .line 123
    iput-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 34

    move/from16 v0, p31

    and-int/lit8 v1, v0, 0x2

    .line 89
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v13, v2

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 99
    sget-object v1, Ltech/ulo/library/model/entities/ServiceType$Unselected;->INSTANCE:Ltech/ulo/library/model/entities/ServiceType$Unselected;

    check-cast v1, Ltech/ulo/library/model/entities/ServiceType;

    move-object v14, v1

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x7e6

    move-wide v15, v4

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_8

    move-wide/from16 v17, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object/from16 v19, v2

    goto :goto_9

    :cond_9
    move-object/from16 v19, p16

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move/from16 v20, v3

    goto :goto_a

    :cond_a
    move/from16 v20, p17

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move/from16 v21, v3

    goto :goto_b

    :cond_b
    move/from16 v21, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    move/from16 v22, v1

    goto :goto_c

    :cond_c
    move/from16 v22, p19

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v23, v3

    goto :goto_d

    :cond_d
    move/from16 v23, p20

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v24, v1

    goto :goto_e

    :cond_e
    move/from16 v24, p21

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v25, v3

    goto :goto_f

    :cond_f
    move/from16 v25, p22

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v26, v3

    goto :goto_10

    :cond_10
    move/from16 v26, p23

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move/from16 v27, v3

    goto :goto_11

    :cond_11
    move/from16 v27, p24

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v28, v3

    goto :goto_12

    :cond_12
    move/from16 v28, p25

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 112
    sget-object v1, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    move-object/from16 v29, v1

    goto :goto_13

    :cond_13
    move-object/from16 v29, p26

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    move/from16 v30, v1

    goto :goto_14

    :cond_14
    move/from16 v30, p27

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move-wide/from16 v31, v4

    goto :goto_15

    :cond_15
    move-wide/from16 v31, p28

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    move/from16 v33, v3

    goto :goto_16

    :cond_16
    move/from16 v33, p30

    :goto_16
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v7, p4

    .line 89
    invoke-direct/range {v3 .. v33}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/entities/Session;JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZILjava/lang/Object;)Ltech/ulo/library/model/entities/Session;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p31

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Ltech/ulo/library/model/entities/Session;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Ltech/ulo/library/model/entities/Session;->active:Z

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-wide v13, v0, Ltech/ulo/library/model/entities/Session;->port:J

    goto :goto_9

    :cond_9
    move-wide/from16 v13, p12

    :goto_9
    and-int/lit16 v15, v1, 0x400

    move-wide/from16 p12, v13

    if-eqz v15, :cond_a

    iget-wide v13, v0, Ltech/ulo/library/model/entities/Session;->pid:J

    goto :goto_a

    :cond_a
    move-wide/from16 v13, p14

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p16

    :goto_b
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    goto :goto_c

    :cond_c
    move/from16 v15, p17

    :goto_c
    move/from16 p17, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p18

    :goto_d
    move/from16 p18, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    goto :goto_e

    :cond_e
    move/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_10

    iget v15, v0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    goto :goto_10

    :cond_10
    move/from16 v15, p21

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_11

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    goto :goto_11

    :cond_11
    move/from16 v15, p22

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_12

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    goto :goto_12

    :cond_12
    move/from16 v15, p23

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p24

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_14

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    goto :goto_14

    :cond_14
    move/from16 v15, p25

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p26

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_16

    iget-boolean v15, v0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    goto :goto_16

    :cond_16
    move/from16 v15, p27

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-wide/from16 p14, v13

    if-eqz v16, :cond_17

    iget-wide v13, v0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    goto :goto_17

    :cond_17
    move-wide/from16 v13, p28

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p30

    :goto_18
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p27, v15

    move-wide/from16 p28, v13

    move/from16 p30, v1

    invoke-virtual/range {p0 .. p30}, Ltech/ulo/library/model/entities/Session;->copy(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)Ltech/ulo/library/model/entities/Session;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->id:J

    return-wide v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->port:J

    return-wide v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    return-wide v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    return v0
.end method

.method public final component17()F
    .locals 1

    iget v0, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    return v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    return v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    return v0
.end method

.method public final component21()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    return v0
.end method

.method public final component22()Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-object v0
.end method

.method public final component23()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    return v0
.end method

.method public final component24()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    return-wide v0
.end method

.method public final component25()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ltech/ulo/library/model/entities/ServiceType;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)Ltech/ulo/library/model/entities/Session;
    .locals 32

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move-wide/from16 v28, p28

    move/from16 v30, p30

    const-string v0, "name"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesystemName"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vncPassword"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceType"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geometry"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionType"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v31, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v0, v31

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v30}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V

    return-object v31
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
    instance-of v1, p1, Ltech/ulo/library/model/entities/Session;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/entities/Session;

    iget-wide v3, p0, Ltech/ulo/library/model/entities/Session;->id:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Session;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->active:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Ltech/ulo/library/model/entities/Session;->port:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Session;->port:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Session;->pid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    iget v3, p1, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    iget v3, p1, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    iget-object v3, p1, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    iget-boolean v3, p1, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    iget-wide v5, p1, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    iget-boolean p1, p1, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getActive()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    return v0
.end method

.method public final getCpuAllCores()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    return v0
.end method

.method public final getDisplayLocked()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    return v0
.end method

.method public final getDisplayOrientation()I
    .locals 1

    .line 105
    iget v0, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    return v0
.end method

.method public final getDisplayRemember()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    return v0
.end method

.method public final getDisplayScaling()F
    .locals 1

    .line 107
    iget v0, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    return v0
.end method

.method public final getExecutionType()Ltech/ulo/library/model/entities/ExecutionType;
    .locals 1

    .line 112
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-object v0
.end method

.method public final getFilesystemId()J
    .locals 2

    .line 93
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    return-wide v0
.end method

.method public final getFilesystemName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeometry()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->id:J

    return-wide v0
.end method

.method public final getMemoryMb()J
    .locals 2

    .line 122
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    return-wide v0
.end method

.method public final getMicSupport()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPid()J
    .locals 2

    .line 101
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    return-wide v0
.end method

.method public final getPort()J
    .locals 2

    .line 100
    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->port:J

    return-wide v0
.end method

.method public final getServiceType()Ltech/ulo/library/model/entities/ServiceType;
    .locals 1

    .line 99
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    return-object v0
.end method

.method public final getServiceTypeRemember()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    return v0
.end method

.method public final getShareStorage()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    return v0
.end method

.method public final getSoundSupport()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final getVncPassword()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/ServiceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ltech/ulo/library/model/entities/Session;->port:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    invoke-virtual {v1}, Ltech/ulo/library/model/entities/ExecutionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAppsSession()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    return v0
.end method

.method public final setActive(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    return-void
.end method

.method public final setCpuAllCores(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    return-void
.end method

.method public final setDisplayLocked(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    .line 105
    iput p1, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    return-void
.end method

.method public final setDisplayRemember(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    return-void
.end method

.method public final setDisplayScaling(F)V
    .locals 0

    .line 107
    iput p1, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    return-void
.end method

.method public final setExecutionType(Ltech/ulo/library/model/entities/ExecutionType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    return-void
.end method

.method public final setFilesystemId(J)V
    .locals 0

    .line 93
    iput-wide p1, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    return-void
.end method

.method public final setFilesystemName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    return-void
.end method

.method public final setGeometry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    return-void
.end method

.method public final setMemoryMb(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    return-void
.end method

.method public final setMicSupport(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    return-void
.end method

.method public final setPid(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    return-void
.end method

.method public final setPort(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Ltech/ulo/library/model/entities/Session;->port:J

    return-void
.end method

.method public final setProtected(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    return-void
.end method

.method public final setServiceType(Ltech/ulo/library/model/entities/ServiceType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    return-void
.end method

.method public final setServiceTypeRemember(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    return-void
.end method

.method public final setShareStorage(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    return-void
.end method

.method public final setSoundSupport(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    return-void
.end method

.method public final setVncPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 126
    iget-wide v1, v0, Ltech/ulo/library/model/entities/Session;->id:J

    iget-object v3, v0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    iget-wide v4, v0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    .line 127
    iget-object v6, v0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    iget-boolean v7, v0, Ltech/ulo/library/model/entities/Session;->active:Z

    iget-object v8, v0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    iget-wide v9, v0, Ltech/ulo/library/model/entities/Session;->port:J

    .line 128
    iget-wide v11, v0, Ltech/ulo/library/model/entities/Session;->pid:J

    iget-boolean v13, v0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    iget-boolean v14, v0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "Session(id="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filesystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filesystemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppsSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->filesystemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Ltech/ulo/library/model/entities/Session;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->vncPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltech/ulo/library/model/entities/Session;->serviceType:Ltech/ulo/library/model/entities/ServiceType;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->port:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->pid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Session;->geometry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->isAppsSession:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->isProtected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ltech/ulo/library/model/entities/Session;->displayOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->displayLocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ltech/ulo/library/model/entities/Session;->displayScaling:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->displayRemember:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->soundSupport:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->micSupport:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->serviceTypeRemember:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ltech/ulo/library/model/entities/Session;->executionType:Ltech/ulo/library/model/entities/ExecutionType;

    invoke-virtual {p2}, Ltech/ulo/library/model/entities/ExecutionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->shareStorage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Ltech/ulo/library/model/entities/Session;->memoryMb:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Ltech/ulo/library/model/entities/Session;->cpuAllCores:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
