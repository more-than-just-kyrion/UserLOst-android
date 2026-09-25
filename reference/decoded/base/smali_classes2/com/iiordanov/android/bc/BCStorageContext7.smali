.class public Lcom/iiordanov/android/bc/BCStorageContext7;
.super Ljava/lang/Object;
.source "BCStorageContext7.java"

# interfaces
.implements Lcom/iiordanov/android/bc/IBCStorageContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalStorageDir(Lcom/iiordanov/bVNC/MainConfiguration;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MainConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/files"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 28
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, p1

    .line 29
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method
