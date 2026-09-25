.class public Lcom/iiordanov/bVNC/input/MetaKeyBase;
.super Ljava/lang/Object;
.source "MetaKeyBase.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/iiordanov/bVNC/input/MetaKeyBase;",
        ">;"
    }
.end annotation


# instance fields
.field isKeyEvent:Z

.field isMouse:Z

.field keyEvent:I

.field keySym:I

.field mouseButtons:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->mouseButtons:I

    .line 38
    iput-object p2, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isMouse:Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isKeyEvent:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keySym:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isMouse:Z

    .line 57
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isKeyEvent:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keySym:I

    .line 47
    iput p3, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keyEvent:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isMouse:Z

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isKeyEvent:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/iiordanov/bVNC/input/MetaKeyBase;)I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBase;->compareTo(Lcom/iiordanov/bVNC/input/MetaKeyBase;)I

    move-result p1

    return p1
.end method
