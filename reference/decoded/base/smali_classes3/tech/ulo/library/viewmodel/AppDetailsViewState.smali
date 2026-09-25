.class public final Ltech/ulo/library/viewmodel/AppDetailsViewState;
.super Ljava/lang/Object;
.source "AppDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0008H\u00c6\u0003J\t\u0010%\u001a\u00020\u0008H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010)\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJv\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020\u00082\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\rH\u00d6\u0001J\t\u0010/\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001aR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\u00a8\u00060"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/AppDetailsViewState;",
        "",
        "appIconUri",
        "Landroid/net/Uri;",
        "appTitle",
        "",
        "appDescription",
        "sshEnabled",
        "",
        "vncEnabled",
        "xsdlEnabled",
        "describeStateHintEnabled",
        "describeStateText",
        "",
        "selectedServiceTypeButton",
        "autoStartEnabled",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)V",
        "getAppDescription",
        "()Ljava/lang/String;",
        "getAppIconUri",
        "()Landroid/net/Uri;",
        "getAppTitle",
        "getAutoStartEnabled",
        "()Z",
        "getDescribeStateHintEnabled",
        "getDescribeStateText",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSelectedServiceTypeButton",
        "getSshEnabled",
        "getVncEnabled",
        "getXsdlEnabled",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)Ltech/ulo/library/viewmodel/AppDetailsViewState;",
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
.field private final appDescription:Ljava/lang/String;

.field private final appIconUri:Landroid/net/Uri;

.field private final appTitle:Ljava/lang/String;

.field private final autoStartEnabled:Z

.field private final describeStateHintEnabled:Z

.field private final describeStateText:Ljava/lang/Integer;

.field private final selectedServiceTypeButton:Ljava/lang/Integer;

.field private final sshEnabled:Z

.field private final vncEnabled:Z

.field private final xsdlEnabled:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "appIconUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    .line 25
    iput-object p2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    .line 28
    iput-boolean p5, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    .line 29
    iput-boolean p6, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    .line 30
    iput-boolean p7, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    .line 31
    iput-object p8, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    .line 32
    iput-object p9, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    .line 33
    iput-boolean p10, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/viewmodel/AppDetailsViewState;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Ltech/ulo/library/viewmodel/AppDetailsViewState;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Ltech/ulo/library/viewmodel/AppDetailsViewState;->copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)Ltech/ulo/library/viewmodel/AppDetailsViewState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    return v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)Ltech/ulo/library/viewmodel/AppDetailsViewState;
    .locals 12

    const-string v0, "appIconUri"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTitle"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDescription"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/viewmodel/AppDetailsViewState;

    move-object v1, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Ltech/ulo/library/viewmodel/AppDetailsViewState;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    iget-object v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    iget-boolean v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    iget-boolean v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    iget-boolean v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    iget-boolean v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    iget-object v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    iget-object v3, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    iget-boolean p1, p1, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAppDescription()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppIconUri()Landroid/net/Uri;
    .locals 1

    .line 24
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAppTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoStartEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    return v0
.end method

.method public final getDescribeStateHintEnabled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    return v0
.end method

.method public final getDescribeStateText()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSelectedServiceTypeButton()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSshEnabled()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    return v0
.end method

.method public final getVncEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    return v0
.end method

.method public final getXsdlEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appIconUri:Landroid/net/Uri;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appTitle:Ljava/lang/String;

    iget-object v2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->appDescription:Ljava/lang/String;

    iget-boolean v3, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->sshEnabled:Z

    iget-boolean v4, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->vncEnabled:Z

    iget-boolean v5, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->xsdlEnabled:Z

    iget-boolean v6, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateHintEnabled:Z

    iget-object v7, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->describeStateText:Ljava/lang/Integer;

    iget-object v8, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->selectedServiceTypeButton:Ljava/lang/Integer;

    iget-boolean v9, p0, Ltech/ulo/library/viewmodel/AppDetailsViewState;->autoStartEnabled:Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AppDetailsViewState(appIconUri="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", appTitle="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sshEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vncEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xsdlEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", describeStateHintEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", describeStateText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedServiceTypeButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoStartEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
