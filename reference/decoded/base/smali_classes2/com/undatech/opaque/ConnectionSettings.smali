.class public Lcom/undatech/opaque/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Lcom/undatech/opaque/Connection;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionSettings"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private audioPlaybackEnabled:Z

.field private connectionType:Ljava/lang/String;

.field private extraKeysToggleType:I

.field private filename:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inputMethod:Ljava/lang/String;

.field private keepPassword:Z

.field private layoutMap:Ljava/lang/String;

.field private otpCode:Ljava/lang/String;

.field private ovirtCaData:Ljava/lang/String;

.field private ovirtCaFile:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private rdpHeight:I

.field private rdpResType:I

.field private rdpWidth:I

.field private requestingNewDisplayResolution:Z

.field private rotationEnabled:Z

.field private scaleMode:Ljava/lang/String;

.field private screenshotFilename:Ljava/lang/String;

.field private sslStrict:Z

.field private usbEnabled:Z

.field private useLastPositionToolbar:Z

.field private useLastPositionToolbarMoved:Z

.field private useLastPositionToolbarX:I

.field private useLastPositionToolbarY:I

.field private user:Ljava/lang/String;

.field private usingCustomOvirtCa:Z

.field private vmname:Ljava/lang/String;

.field private x509KeySignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->id:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->connectionType:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->hostname:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->vmname:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->user:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    .line 61
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->otpCode:Ljava/lang/String;

    .line 62
    const-string v2, "DirectSwipePan"

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->inputMethod:Ljava/lang/String;

    const/4 v2, 0x1

    .line 63
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->rotationEnabled:Z

    .line 64
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->requestingNewDisplayResolution:Z

    .line 65
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->audioPlaybackEnabled:Z

    .line 66
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->usingCustomOvirtCa:Z

    .line 67
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->sslStrict:Z

    .line 68
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->usbEnabled:Z

    .line 69
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaFile:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->layoutMap:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->scaleMode:Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->screenshotFilename:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->x509KeySignature:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/undatech/opaque/ConnectionSettings;->extraKeysToggleType:I

    .line 78
    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpWidth:I

    .line 79
    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpHeight:I

    const/4 v0, 0x2

    .line 80
    iput v0, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpResType:I

    .line 82
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    .line 85
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarMoved:Z

    .line 89
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    return-void
.end method

.method public static exportPrefsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exporting settings to file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " defaultSettings"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1239
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1240
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1242
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1243
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1244
    new-instance v6, Lorg/json/JSONObject;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1245
    const-string v5, "password"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1249
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    new-instance p1, Ljava/io/PrintWriter;

    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1254
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportSettingsFromSharedPrefsToJson(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1331
    const-string v0, "ConnectionSettings"

    const-string v1, "generalSettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1332
    const-string v2, "connections"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    :try_start_0
    invoke-static {p1, v1, p0}, Lcom/undatech/opaque/ConnectionSettings;->exportPrefsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1339
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IO Exception while exporting settings "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1336
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "JSON Exception while exporting settings "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static importPrefsFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Importing settings from file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1271
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1275
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1277
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1279
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    .line 1281
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1282
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 1283
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1284
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1286
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1288
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1289
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1290
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1291
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1293
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1294
    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1295
    :cond_2
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_3

    .line 1296
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1297
    :cond_3
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 1298
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1299
    :cond_4
    instance-of v8, v7, Ljava/lang/Float;

    if-eqz v8, :cond_5

    .line 1300
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1301
    :cond_5
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 1302
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1305
    :cond_6
    const-string v4, "defaultSettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    :cond_7
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 1311
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importSettingsFromJsonToSharedPrefs(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1316
    const-string v0, "ConnectionSettings"

    :try_start_0
    invoke-static {p1, p0}, Lcom/undatech/opaque/ConnectionSettings;->importPrefsFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1317
    const-string v1, "generalSettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1318
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1319
    const-string v1, "connections"

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1320
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1325
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "IO Exception while importing settings "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1322
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "JSON Exception while importing settings "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoXCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoXEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXRandFileNm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoXResType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXSessionProg()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoXSessionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXUnixAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXUnixpw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoXWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCaCert()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaCertPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertSubject()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorModel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionTypeString()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getConsoleMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDesktopBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDesktopComposition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableGfx()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableGfxH264()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableRecording()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableSound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraKeysToggleType()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->extraKeysToggleType:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowMouse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFollowPan()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFontSmoothing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForceFull()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getRuntimeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdHashAlgorithm()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputMethod()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->inputMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getInputMode()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getInputMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeepPassword()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    return v0
.end method

.method public getKeepSshPassword()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\n"

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getVmname()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLastMetaKeyId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLayoutMap()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->layoutMap:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetaListId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtpCode()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->otpCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOvirtCaData()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    return-object v0
.end method

.method public getOvirtCaFile()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrefEncoding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRdpColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRdpDomain()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRdpHeight()I
    .locals 1

    .line 753
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpHeight:I

    return v0
.end method

.method public getRdpResType()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpResType:I

    return v0
.end method

.method public getRdpWidth()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpWidth:I

    return v0
.end method

.method public getRedirectSdCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteFx()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteSoundType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRepeaterId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotateDpad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimeId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleMode()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->scaleMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshotFilename()Ljava/lang/String;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->screenshotFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getSshHostKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshPassPhrase()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshPassword()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSshPrivKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshPubKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshRemoteCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshRemoteCommandOS()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSshRemoteCommandTimeout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSshRemoteCommandType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSshServer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSshUser()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTlsPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseDpadAsArrows()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseLastPositionToolbar()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    return v0
.end method

.method public getUseLastPositionToolbarMoved()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarMoved:Z

    return v0
.end method

.method public getUseLastPositionToolbarX()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarX:I

    return v0
.end method

.method public getUseLastPositionToolbarY()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarY:I

    return v0
.end method

.method public getUseLocalCursor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseRepeater()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseSshPubKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseSshRemoteCommand()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSettings;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVisualStyles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVmname()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->vmname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowContents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getX509KeySignature()Ljava/lang/String;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->x509KeySignature:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioPlaybackEnabled()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->audioPlaybackEnabled:Z

    return v0
.end method

.method public isReadyForConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadyToBeSaved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequestingNewDisplayResolution()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->requestingNewDisplayResolution:Z

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->rotationEnabled:Z

    return v0
.end method

.method public isSslStrict()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->sslStrict:Z

    return v0
.end method

.method public isUsbEnabled()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->usbEnabled:Z

    return v0
.end method

.method public isUsingCustomOvirtCa()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSettings;->usingCustomOvirtCa:Z

    return v0
.end method

.method public load(Landroid/content/Context;)V
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSettings;->loadFromSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public loadAdvancedSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 629
    const-string v1, "extraKeysToggleType"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->extraKeysToggleType:I

    .line 630
    const-string v1, "inputMethod"

    const-string v3, "DirectSwipePan"

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->inputMethod:Ljava/lang/String;

    .line 631
    const-string v1, "audioEnabled"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->audioPlaybackEnabled:Z

    .line 632
    const-string v1, "rotationEnabled"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rotationEnabled:Z

    .line 633
    const-string v1, "requestingNewDisplayResolution"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->requestingNewDisplayResolution:Z

    .line 634
    const-string v1, "usingCustomCa"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->usingCustomOvirtCa:Z

    .line 635
    const-string v1, "sslStrict"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->sslStrict:Z

    .line 636
    const-string v1, "usbEnabled"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->usbEnabled:Z

    .line 637
    const-string v1, "ovirtCaData"

    const-string v3, ""

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    .line 638
    const-string v1, "layoutMap"

    const-string v3, "English (US)"

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->layoutMap:Ljava/lang/String;

    .line 639
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "scaleMode"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->scaleMode:Ljava/lang/String;

    .line 640
    const-string v1, "rdpWidth"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpWidth:I

    .line 641
    const-string v1, "rdpHeight"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpHeight:I

    .line 642
    const-string v1, "rdpResType"

    const/4 v3, 0x2

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpResType:I

    .line 643
    const-string v1, "useLastPositionToolbar"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    .line 644
    const-string v1, "useLastPositionToolbarX"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarX:I

    .line 645
    const-string v1, "useLastPositionToolbarY"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarY:I

    .line 646
    const-string v1, "useLastPositionToolbarMoved"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarMoved:Z

    .line 648
    iget-object p2, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/ConnectionSettings;->saveCaToFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaFile:Ljava/lang/String;

    return-void
.end method

.method public loadFromSharedPreferences(Landroid/content/Context;)V
    .locals 4

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading settings from file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 610
    const-string v2, "connectionType"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->connectionType:Ljava/lang/String;

    .line 611
    const-string v2, "hostname"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->hostname:Ljava/lang/String;

    .line 612
    const-string v2, "vmname"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->vmname:Ljava/lang/String;

    .line 613
    const-string v2, "user"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->user:Ljava/lang/String;

    .line 614
    const-string v2, "password"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    .line 615
    const-string v2, "keepPassword"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    .line 619
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 620
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    .line 622
    :cond_0
    const-string v1, "x509KeySignature"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->x509KeySignature:Ljava/lang/String;

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenshotFilename"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->screenshotFilename:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->loadAdvancedSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public parseFromUri(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public populateFromContentValues(Landroid/content/ContentValues;)V
    .locals 0

    return-void
.end method

.method public save(Landroid/content/Context;)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSettings;->saveToSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public saveAndWriteRecent(ZLandroid/content/Context;)V
    .locals 0

    .line 389
    invoke-virtual {p0, p2}, Lcom/undatech/opaque/ConnectionSettings;->save(Landroid/content/Context;)V

    return-void
.end method

.method public saveCaToFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Writing out CA to file: "

    const-string v1, "File already exists: "

    .line 660
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 664
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "/ca"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".crt"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 665
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ConnectionSettings"

    if-nez v3, :cond_0

    .line 667
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 672
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v2, p1

    :catch_0
    :cond_1
    return-object v2
.end method

.method public saveToSharedPreferences(Landroid/content/Context;)V
    .locals 4

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving settings to file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    const-string v2, "connectionType"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v2, "hostname"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->hostname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    const-string v2, "vmname"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->vmname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v2, "user"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->user:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    iget-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    const-string v3, "password"

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 409
    :cond_0
    const-string v2, ""

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    :goto_0
    const-string v2, "keepPassword"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v2, "extraKeysToggleType"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->extraKeysToggleType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v2, "inputMethod"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->inputMethod:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v2, "rotationEnabled"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->rotationEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v2, "requestingNewDisplayResolution"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->requestingNewDisplayResolution:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v2, "audioEnabled"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->audioPlaybackEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v2, "usingCustomCa"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->usingCustomOvirtCa:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v2, "sslStrict"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->sslStrict:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string v2, "usbEnabled"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->usbEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v2, "ovirtCaData"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string v2, "layoutMap"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->layoutMap:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v2, "scaleMode"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->scaleMode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    const-string v2, "x509KeySignature"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->x509KeySignature:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    const-string v2, "screenshotFilename"

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSettings;->screenshotFilename:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v2, "rdpWidth"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpWidth:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v2, "rdpHeight"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpHeight:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 427
    const-string v2, "rdpResType"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpResType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v2, "useLastPositionToolbar"

    iget-boolean v3, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    const-string v2, "useLastPositionToolbarX"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarX:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v2, "useLastPositionToolbarY"

    iget v3, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarY:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 431
    iget-boolean v2, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    const-string v3, "useLastPositionToolbarMoved"

    if-eqz v2, :cond_1

    .line 432
    iget-boolean v1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarMoved:Z

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 435
    :cond_1
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->saveCaToFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaFile:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioPlaybackEnabled(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->audioPlaybackEnabled:Z

    return-void
.end method

.method public setAutoXCommand(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAutoXEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setAutoXHeight(I)V
    .locals 0

    return-void
.end method

.method public setAutoXRandFileNm(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAutoXResType(I)V
    .locals 0

    return-void
.end method

.method public setAutoXSessionProg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAutoXSessionType(I)V
    .locals 0

    return-void
.end method

.method public setAutoXType(I)V
    .locals 0

    return-void
.end method

.method public setAutoXUnixAuth(Z)V
    .locals 0

    return-void
.end method

.method public setAutoXUnixpw(Z)V
    .locals 0

    return-void
.end method

.method public setAutoXWidth(I)V
    .locals 0

    return-void
.end method

.method public setCaCert(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCaCertPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCertSubject(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setColorModel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setConnectionType(I)V
    .locals 0

    return-void
.end method

.method public setConnectionTypeString(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public setConsoleMode(Z)V
    .locals 0

    return-void
.end method

.method public setDesktopBackground(Z)V
    .locals 0

    return-void
.end method

.method public setDesktopComposition(Z)V
    .locals 0

    return-void
.end method

.method public setEnableGfx(Z)V
    .locals 0

    return-void
.end method

.method public setEnableGfxH264(Z)V
    .locals 0

    return-void
.end method

.method public setEnableRecording(Z)V
    .locals 0

    return-void
.end method

.method public setEnableSound(Z)V
    .locals 0

    return-void
.end method

.method public setExtraKeysToggleType(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->extraKeysToggleType:I

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFollowMouse(Z)V
    .locals 0

    return-void
.end method

.method public setFollowPan(Z)V
    .locals 0

    return-void
.end method

.method public setFontSmoothing(Z)V
    .locals 0

    return-void
.end method

.method public setForceFull(J)V
    .locals 0

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setIdHash(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIdHashAlgorithm(I)V
    .locals 0

    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->inputMethod:Ljava/lang/String;

    return-void
.end method

.method public setInputMode(Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setInputMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setKeepPassword(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->keepPassword:Z

    return-void
.end method

.method public setKeepSshPassword(Z)V
    .locals 0

    return-void
.end method

.method public setLastMetaKeyId(J)V
    .locals 0

    return-void
.end method

.method public setLayoutMap(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->layoutMap:Ljava/lang/String;

    return-void
.end method

.method public setMenuAnimation(Z)V
    .locals 0

    return-void
.end method

.method public setMetaListId(J)V
    .locals 0

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOtpCode(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->otpCode:Ljava/lang/String;

    return-void
.end method

.method public setOvirtCaData(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaData:Ljava/lang/String;

    return-void
.end method

.method public setOvirtCaFile(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->ovirtCaFile:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    return-void
.end method

.method public setPrefEncoding(I)V
    .locals 0

    return-void
.end method

.method public setRdpColor(I)V
    .locals 0

    return-void
.end method

.method public setRdpDomain(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRdpHeight(I)V
    .locals 0

    .line 758
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpHeight:I

    return-void
.end method

.method public setRdpResType(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpResType:I

    return-void
.end method

.method public setRdpWidth(I)V
    .locals 0

    .line 748
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->rdpWidth:I

    return-void
.end method

.method public setRedirectSdCard(Z)V
    .locals 0

    return-void
.end method

.method public setRemoteFx(Z)V
    .locals 0

    return-void
.end method

.method public setRemoteSoundType(I)V
    .locals 0

    return-void
.end method

.method public setRepeaterId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRequestingNewDisplayResolution(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->requestingNewDisplayResolution:Z

    return-void
.end method

.method public setRotateDpad(Z)V
    .locals 0

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->rotationEnabled:Z

    return-void
.end method

.method public setRuntimeId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->id:Ljava/lang/String;

    return-void
.end method

.method public setScaleMode(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 484
    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->scaleMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenshotFilename(Ljava/lang/String;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->screenshotFilename:Ljava/lang/String;

    return-void
.end method

.method public setSshHostKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshPassPhrase(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshPassword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshPort(I)V
    .locals 0

    return-void
.end method

.method public setSshPrivKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshPubKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshRemoteCommand(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshRemoteCommandOS(I)V
    .locals 0

    return-void
.end method

.method public setSshRemoteCommandTimeout(I)V
    .locals 0

    return-void
.end method

.method public setSshRemoteCommandType(I)V
    .locals 0

    return-void
.end method

.method public setSshServer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSshUser(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSslStrict(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->sslStrict:Z

    return-void
.end method

.method public setTlsPort(I)V
    .locals 0

    return-void
.end method

.method public setUsbEnabled(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->usbEnabled:Z

    return-void
.end method

.method public setUseDpadAsArrows(Z)V
    .locals 0

    return-void
.end method

.method public setUseLastPositionToolbar(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbar:Z

    return-void
.end method

.method public setUseLastPositionToolbarMoved(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarMoved:Z

    return-void
.end method

.method public setUseLastPositionToolbarX(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarX:I

    return-void
.end method

.method public setUseLastPositionToolbarY(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/undatech/opaque/ConnectionSettings;->useLastPositionToolbarY:I

    return-void
.end method

.method public setUseLocalCursor(I)V
    .locals 0

    return-void
.end method

.method public setUseRepeater(Z)V
    .locals 0

    return-void
.end method

.method public setUseSshPubKey(Z)V
    .locals 0

    return-void
.end method

.method public setUseSshRemoteCommand(Z)V
    .locals 0

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->user:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setUser(Ljava/lang/String;)V

    return-void
.end method

.method public setUsingCustomOvirtCa(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSettings;->usingCustomOvirtCa:Z

    return-void
.end method

.method public setViewOnly(Z)V
    .locals 0

    return-void
.end method

.method public setVisualStyles(Z)V
    .locals 0

    return-void
.end method

.method public setVmname(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->vmname:Ljava/lang/String;

    return-void
.end method

.method public setWindowContents(Z)V
    .locals 0

    return-void
.end method

.method public setX509KeySignature(Ljava/lang/String;)V
    .locals 0

    .line 1208
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSettings;->x509KeySignature:Ljava/lang/String;

    return-void
.end method
