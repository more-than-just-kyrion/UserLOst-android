.class public Lcom/iiordanov/android/bc/BCActivityManagerV5;
.super Ljava/lang/Object;
.source "BCActivityManagerV5.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemoryClass(Landroid/app/ActivityManager;)I
    .locals 0

    .line 18
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    return p1
.end method
