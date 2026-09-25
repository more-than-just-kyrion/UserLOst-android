.class public Lcom/iiordanov/util/CustomClientConfigFileReader;
.super Ljava/lang/Object;
.source "CustomClientConfigFileReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigFileReader"


# instance fields
.field private configData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    new-instance p1, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {p1}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 21
    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/iiordanov/util/CustomClientConfigFileReader;->configData:Ljava/util/Map;

    .line 24
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    const-string v0, "ConfigFileReader"

    const-string v1, "Error closing config reader."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConfigData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iiordanov/util/CustomClientConfigFileReader;->configData:Ljava/util/Map;

    return-object v0
.end method
