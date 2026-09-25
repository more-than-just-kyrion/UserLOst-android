.class Lcom/iiordanov/bVNC/CapsContainer;
.super Ljava/lang/Object;
.source "CapsContainer.java"


# instance fields
.field protected infoMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/iiordanov/bVNC/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected orderedList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x40

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable;-><init>(IF)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->orderedList:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 45
    iget-object v1, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    new-instance v2, Lcom/iiordanov/bVNC/CapabilityInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/iiordanov/bVNC/CapabilityInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/iiordanov/bVNC/CapabilityInfo;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->getCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 40
    iget-object v1, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enable(Lcom/iiordanov/bVNC/CapabilityInfo;)Z
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->getCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 66
    iget-object v1, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/CapabilityInfo;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    invoke-virtual {v1, p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->enableIfEquals(Lcom/iiordanov/bVNC/CapabilityInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/iiordanov/bVNC/CapsContainer;->orderedList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return p1
.end method

.method public getByOrder(I)I
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->orderedList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/CapabilityInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInfo(I)Lcom/iiordanov/bVNC/CapabilityInfo;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/CapabilityInfo;

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/CapabilityInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/CapabilityInfo;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public isKnown(I)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->infoMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public numEnabled()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/iiordanov/bVNC/CapsContainer;->orderedList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
