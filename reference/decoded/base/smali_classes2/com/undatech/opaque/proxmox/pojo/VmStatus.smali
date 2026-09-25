.class public Lcom/undatech/opaque/proxmox/pojo/VmStatus;
.super Ljava/lang/Object;
.source "VmStatus.java"


# static fields
.field public static RUNNING:Ljava/lang/String; = "running"

.field public static STOPPED:Ljava/lang/String; = "stopped"


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/VmStatus;->status:Ljava/lang/String;

    return-void
.end method
