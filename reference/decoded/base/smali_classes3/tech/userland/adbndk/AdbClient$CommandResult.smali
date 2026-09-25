.class public final Ltech/userland/adbndk/AdbClient$CommandResult;
.super Ljava/lang/Object;
.source "AdbClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/userland/adbndk/AdbClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandResult"
.end annotation


# instance fields
.field public final exitCode:I

.field public final output:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Ltech/userland/adbndk/AdbClient$CommandResult;->exitCode:I

    .line 74
    iput-object p2, p0, Ltech/userland/adbndk/AdbClient$CommandResult;->output:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 78
    iget v0, p0, Ltech/userland/adbndk/AdbClient$CommandResult;->exitCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
