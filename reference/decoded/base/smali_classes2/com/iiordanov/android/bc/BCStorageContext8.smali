.class Lcom/iiordanov/android/bc/BCStorageContext8;
.super Ljava/lang/Object;
.source "BCStorageContext8.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCStorageContext;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalStorageDir(Lcom/iiordanov/bVNC/MainConfiguration;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
