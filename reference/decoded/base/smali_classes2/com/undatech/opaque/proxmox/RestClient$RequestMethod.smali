.class public final enum Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;
.super Ljava/lang/Enum;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/proxmox/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

.field public static final enum GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

.field public static final enum POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;


# direct methods
.method private static synthetic $values()[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;
    .locals 2

    .line 71
    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    sget-object v1, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    filled-new-array {v0, v1}, [Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    .line 73
    new-instance v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    .line 71
    invoke-static {}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->$values()[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    move-result-object v0

    sput-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->$VALUES:[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;
    .locals 1

    .line 71
    const-class v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;
    .locals 1

    .line 71
    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->$VALUES:[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {v0}, [Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    return-object v0
.end method
