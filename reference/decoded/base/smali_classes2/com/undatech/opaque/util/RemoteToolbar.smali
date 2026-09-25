.class public Lcom/undatech/opaque/util/RemoteToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "RemoteToolbar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteToolbar"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public makeVisible(IIIIII)V
    .locals 0

    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/util/RemoteToolbar;->setX(F)V

    int-to-float p1, p2

    .line 35
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/util/RemoteToolbar;->setY(F)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p5

    .line 30
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/util/RemoteToolbar;->setX(F)V

    int-to-float p1, p6

    .line 31
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/util/RemoteToolbar;->setY(F)V

    :goto_1
    return-void
.end method
