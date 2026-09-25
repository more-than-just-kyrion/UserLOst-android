.class public Lcom/undatech/opaque/proxmox/pojo/PveResource$Types;
.super Ljava/lang/Object;
.source "PveResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/proxmox/pojo/PveResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Types"
.end annotation


# static fields
.field public static LXC:Ljava/lang/String; = "lxc"

.field public static NODE:Ljava/lang/String; = "node"

.field public static OPENVZ:Ljava/lang/String; = "openvz"

.field public static QEMU:Ljava/lang/String; = "qemu"

.field public static STORAGE:Ljava/lang/String; = "storage"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
