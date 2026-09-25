.class Lcom/iiordanov/bVNC/CapabilityInfo;
.super Ljava/lang/Object;
.source "CapabilityInfo.java"


# instance fields
.field protected code:I

.field protected description:Ljava/lang/String;

.field protected enabled:Z

.field protected nameSignature:Ljava/lang/String;

.field protected vendorSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->code:I

    .line 35
    iput-object p2, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->vendorSignature:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->nameSignature:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->description:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->enabled:Z

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->code:I

    .line 45
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->vendorSignature:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->nameSignature:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->description:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->enabled:Z

    return-void
.end method

.method public enableIfEquals(Lcom/iiordanov/bVNC/CapabilityInfo;)Z
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->equals(Lcom/iiordanov/bVNC/CapabilityInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/CapabilityInfo;->enable()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/CapabilityInfo;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public equals(Lcom/iiordanov/bVNC/CapabilityInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    iget v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->code:I

    iget v1, p1, Lcom/iiordanov/bVNC/CapabilityInfo;->code:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->vendorSignature:Ljava/lang/String;

    iget-object v1, p1, Lcom/iiordanov/bVNC/CapabilityInfo;->vendorSignature:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->nameSignature:Ljava/lang/String;

    iget-object p1, p1, Lcom/iiordanov/bVNC/CapabilityInfo;->nameSignature:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/CapabilityInfo;->enabled:Z

    return v0
.end method
