.class public Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;
.super Ljava/lang/Object;
.source "BookmarkBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedSettings"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private consoleMode:Z

.field private enable3GSettings:Z

.field private performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

.field private redirectMicrophone:Z

.field private redirectSDCard:Z

.field private redirectSound:I

.field private remoteProgram:Ljava/lang/String;

.field private screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

.field private security:I

.field private workDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 860
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->enable3GSettings:Z

    .line 891
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    .line 892
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSDCard:Z

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectMicrophone:Z

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    .line 897
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->consoleMode:Z

    .line 898
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->remoteProgram:Ljava/lang/String;

    .line 899
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->workDir:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->enable3GSettings:Z

    .line 905
    new-instance v1, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-direct {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;-><init>()V

    iput-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    .line 906
    new-instance v1, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-direct {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;-><init>()V

    iput-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    .line 907
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSDCard:Z

    .line 908
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    .line 909
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectMicrophone:Z

    .line 910
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    .line 911
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->consoleMode:Z

    .line 912
    const-string v0, ""

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->remoteProgram:Ljava/lang/String;

    .line 913
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->workDir:Ljava/lang/String;

    return-void
.end method

.method private validate()V
    .locals 4

    .line 918
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 925
    iput v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    .line 929
    :cond_0
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 937
    iput v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConsoleMode()Z
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->consoleMode:Z

    return v0
.end method

.method public getEnable3GSettings()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->enable3GSettings:Z

    return v0
.end method

.method public getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    return-object v0
.end method

.method public getRedirectMicrophone()Z
    .locals 1

    .line 995
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectMicrophone:Z

    return v0
.end method

.method public getRedirectSDCard()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSDCard:Z

    return v0
.end method

.method public getRedirectSound()I
    .locals 1

    .line 984
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->validate()V

    .line 985
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    return v0
.end method

.method public getRemoteProgram()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->remoteProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .line 1005
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->validate()V

    .line 1006
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    return v0
.end method

.method public getWorkDir()Ljava/lang/String;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->workDir:Ljava/lang/String;

    return-object v0
.end method

.method public setConsoleMode(Z)V
    .locals 0

    .line 1021
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->consoleMode:Z

    return-void
.end method

.method public setEnable3GSettings(Z)V
    .locals 0

    .line 949
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->enable3GSettings:Z

    return-void
.end method

.method public setPerformance3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    return-void
.end method

.method public setRedirectMicrophone(Z)V
    .locals 0

    .line 1000
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectMicrophone:Z

    return-void
.end method

.method public setRedirectSDCard(Z)V
    .locals 0

    .line 979
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSDCard:Z

    return-void
.end method

.method public setRedirectSound(I)V
    .locals 0

    .line 990
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    return-void
.end method

.method public setRemoteProgram(Ljava/lang/String;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->remoteProgram:Ljava/lang/String;

    return-void
.end method

.method public setScreen3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    return-void
.end method

.method public setSecurity(I)V
    .locals 0

    .line 1011
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    return-void
.end method

.method public setWorkDir(Ljava/lang/String;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->workDir:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->enable3GSettings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->screen3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1053
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->performance3G:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1054
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSDCard:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectSound:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->redirectMicrophone:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->security:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->consoleMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->remoteProgram:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1060
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->workDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
