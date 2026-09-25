.class public Lcom/iiordanov/android/bc/BCGestureDetectorDefault;
.super Ljava/lang/Object;
.source "BCGestureDetectorDefault.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCGestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGestureDetector(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)Landroid/view/GestureDetector;
    .locals 1

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method
