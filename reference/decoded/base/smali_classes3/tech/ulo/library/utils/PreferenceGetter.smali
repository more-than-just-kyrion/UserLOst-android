.class public final Ltech/ulo/library/utils/PreferenceGetter;
.super Ljava/lang/Object;
.source "PreferenceGetter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/ulo/library/utils/PreferenceGetter;",
        "",
        "ulaFiles",
        "Ltech/ulo/library/utils/UlaFiles;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "(Ltech/ulo/library/utils/UlaFiles;Landroid/content/SharedPreferences;)V",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "getUlaFiles",
        "()Ltech/ulo/library/utils/UlaFiles;",
        "xmlFetch",
        "",
        "fetchXML",
        "",
        "parseXml",
        "inputStream",
        "Ljava/io/InputStream;",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final ulaFiles:Ltech/ulo/library/utils/UlaFiles;

.field private xmlFetch:Z


# direct methods
.method public constructor <init>(Ltech/ulo/library/utils/UlaFiles;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "ulaFiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    .line 14
    iput-object p2, p0, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final fetchXML()V
    .locals 5

    .line 91
    const-string v0, "/preferences.xml"

    const/4 v1, 0x1

    .line 92
    :try_start_0
    iget-boolean v2, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z

    if-ne v2, v1, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v3}, Ltech/ulo/library/utils/UlaFiles;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Ltech/ulo/library/utils/PreferenceGetter;->parseXml(Ljava/io/InputStream;)V

    .line 97
    iput-boolean v1, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z

    return-void

    .line 100
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v3}, Ltech/ulo/library/utils/UlaFiles;->getEmulatedScopedDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Ltech/ulo/library/utils/PreferenceGetter;->parseXml(Ljava/io/InputStream;)V

    .line 103
    iput-boolean v1, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z

    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v0}, Ltech/ulo/library/utils/UlaFiles;->getDocumentsDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    invoke-virtual {v2}, Ltech/ulo/library/utils/UlaFiles;->getDocumentsDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Relag/preferences.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {p0, v2}, Ltech/ulo/library/utils/PreferenceGetter;->parseXml(Ljava/io/InputStream;)V

    .line 110
    iput-boolean v1, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 118
    :cond_3
    iput-boolean v1, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z

    return-void

    .line 115
    :catch_0
    iput-boolean v1, p0, Ltech/ulo/library/utils/PreferenceGetter;->xmlFetch:Z

    return-void
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 14
    iget-object v0, p0, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getUlaFiles()Ltech/ulo/library/utils/UlaFiles;
    .locals 1

    .line 13
    iget-object v0, p0, Ltech/ulo/library/utils/PreferenceGetter;->ulaFiles:Ltech/ulo/library/utils/UlaFiles;

    return-object v0
.end method

.method public final parseXml(Ljava/io/InputStream;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "pref_hide_settings"

    const-string v3, "pref_dns"

    const-string v4, "pref_custom_dns_enabled"

    const-string v5, "pref_hostname"

    const-string v6, "pref_custom_hostname_enabled"

    const-string v7, "pref_filesystem"

    const-string v8, "pref_custom_filesystem_enabled"

    const-string v9, "pref_apps"

    const-string v10, "pref_custom_apps_enabled"

    const-string v11, "inputStream"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    const/4 v12, 0x1

    .line 23
    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 24
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    const/4 v13, 0x0

    .line 25
    invoke-interface {v11, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, ""

    move-object v14, v13

    :goto_0
    if-eq v0, v12, :cond_c

    .line 28
    :try_start_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x2

    if-eq v0, v12, :cond_a

    const/4 v12, 0x3

    if-eq v0, v12, :cond_1

    const/4 v12, 0x4

    if-eq v0, v12, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    const-string v0, "getText(...)"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 33
    invoke-static {v15, v10, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 34
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v0, v10, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 38
    invoke-static {v15, v9, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 39
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0, v9, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 43
    invoke-static {v15, v8, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 44
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 48
    invoke-static {v15, v7, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 49
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    .line 53
    invoke-static {v15, v6, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 54
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v0, v6, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    .line 58
    invoke-static {v15, v5, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 59
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0, v5, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    .line 63
    invoke-static {v15, v4, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 64
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v0, v4, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x1

    .line 68
    invoke-static {v15, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 69
    iget-object v0, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-interface {v0, v3, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x1

    .line 73
    invoke-static {v15, v2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 74
    iget-object v12, v1, Ltech/ulo/library/utils/PreferenceGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 75
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-interface {v12, v2, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_a
    const/4 v0, 0x1

    move-object v14, v13

    .line 80
    :cond_b
    :goto_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v12

    move v12, v0

    move/from16 v0, v16

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_c
    :goto_3
    return-void
.end method
