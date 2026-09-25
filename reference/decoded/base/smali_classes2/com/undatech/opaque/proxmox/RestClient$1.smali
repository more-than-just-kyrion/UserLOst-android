.class synthetic Lcom/undatech/opaque/proxmox/RestClient$1;
.super Ljava/lang/Object;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/proxmox/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 192
    invoke-static {}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->values()[Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/undatech/opaque/proxmox/RestClient$1;->$SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod:[I

    :try_start_0
    sget-object v1, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {v1}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$1;->$SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod:[I

    sget-object v1, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {v1}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
