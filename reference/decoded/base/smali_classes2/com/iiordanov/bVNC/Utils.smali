.class public Lcom/iiordanov/bVNC/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static final docIntent:Landroid/content/Intent;

.field private static nextNoticeID:I

.field public static standardPackageNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://code.google.com/p/android-vnc-viewer/wiki/Documentation"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/iiordanov/bVNC/Utils;->docIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 137
    sput v0, Lcom/iiordanov/bVNC/Utils;->nextNoticeID:I

    const/4 v1, 0x6

    .line 243
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.iiordanov.bVNC"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "com.iiordanov.freebVNC"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "com.iiordanov.aRDP"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "com.iiordanov.freeaRDP"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "com.iiordanov.aSPICE"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "com.iiordanov.freeaSPICE"

    aput-object v2, v1, v0

    sput-object v1, Lcom/iiordanov/bVNC/Utils;->standardPackageNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnectionScreenDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 484
    sget v0, Lcom/undatech/remoteClientUi/R$string;->vnc_connection_screen_help_text:I

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    sget v0, Lcom/undatech/remoteClientUi/R$string;->rdp_connection_screen_help_text:I

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    sget v0, Lcom/undatech/remoteClientUi/R$string;->spice_connection_screen_help_text:I

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    sget v0, Lcom/undatech/remoteClientUi/R$string;->opaque_connection_screen_help_text:I

    .line 491
    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2

    .line 495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->close:I

    new-instance v1, Lcom/iiordanov/bVNC/Utils$3;

    invoke-direct {v1}, Lcom/iiordanov/bVNC/Utils$3;-><init>()V

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 504
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 505
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 506
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, -0x1

    .line 507
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 508
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 509
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 510
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p0
.end method

.method public static createMainScreenDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    .line 474
    sget v0, Lcom/undatech/remoteClientUi/R$string;->main_screen_help_text:I

    .line 475
    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static exportSettingsToXml(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance p0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 334
    invoke-static {p1, p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->exportDbAsXmlToStream(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/io/Writer;)V

    .line 335
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 528
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 529
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 530
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 532
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    .line 121
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    return-object p0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Could not retrieve ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBooleanFromMessage(Landroid/os/Message;Ljava/lang/String;)Z
    .locals 0

    .line 569
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getConnectionScheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isVnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string p0, "vnc"

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const-string p0, "rdp"

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 301
    const-string p0, "spice"

    goto :goto_0

    .line 300
    :cond_2
    const-string p0, "unsupported"

    :goto_0
    return-object p0
.end method

.method public static getConnectionSetupClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .line 275
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isCustom(Ljava/lang/String;)Z

    move-result v0

    .line 276
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const-class p0, Lcom/undatech/opaque/ConnectionSetupActivity;

    return-object p0

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isVnc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 280
    const-class p0, Lcom/iiordanov/bVNC/CustomVnc;

    return-object p0

    .line 282
    :cond_1
    const-class p0, Lcom/iiordanov/bVNC/bVNC;

    return-object p0

    .line 284
    :cond_2
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    const-class p0, Lcom/iiordanov/bVNC/aRDP;

    return-object p0

    .line 286
    :cond_3
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    const-class p0, Lcom/iiordanov/bVNC/aSPICE;

    return-object p0

    .line 289
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find appropriate connection setup activity class for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getConnectionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".CONNECTION"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultPort(Landroid/content/Context;)I
    .locals 1

    .line 306
    sget v0, Lcom/iiordanov/bVNC/Constants;->DEFAULT_PROTOCOL_PORT:I

    if-eqz p0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xd3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x170c

    :cond_1
    :goto_0
    return v0
.end method

.method public static getDonationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "free"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExportFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 340
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isVnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string p0, "vnc_settings.xml"

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string p0, "rdp_settings.xml"

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const-string p0, "spice_settings.xml"

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 347
    const-string p0, "opaque_settings.json"

    goto :goto_0

    .line 346
    :cond_3
    const-string p0, "settings.xml"

    :goto_0
    return-object p0
.end method

.method public static getHostFromUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 519
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 522
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 523
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntFromMessage(Landroid/os/Message;Ljava/lang/String;)I
    .locals 0

    .line 560
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 1

    .line 128
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 129
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v0
.end method

.method public static getStringFromMessage(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 551
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 553
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 581
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static getUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 461
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 464
    :catch_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionAndCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "Version of "

    .line 538
    const-string v1, ""

    .line 540
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string p0, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 545
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static importSettingsFromXml(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 353
    sget-object p0, Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;->REPLACE_EXISTING:Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;

    invoke-static {p1, v0, p0}, Lcom/antlersoft/android/contentxml/SqliteElement;->importXmlStreamToDb(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/io/Reader;Lcom/antlersoft/android/contentxml/SqliteElement$ReplaceStrategy;)V

    return-void
.end method

.method public static isBlackBerry()Z
    .locals 2

    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "BlackBerry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isContextActivityThatIsFinishing(Landroid/content/Context;)Z
    .locals 1

    .line 428
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 429
    check-cast p0, Landroid/app/Activity;

    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCustom(Ljava/lang/String;)Z
    .locals 5

    .line 250
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->standardPackageNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 251
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isFree(Landroid/content/Context;)Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "free"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNullOrEmptry(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 192
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpaque(Ljava/lang/String;)Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "opaque"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isRdp(Ljava/lang/String;)Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "rdp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isSpice(Ljava/lang/String;)Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "spice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isValidIpv6Address(Ljava/lang/String;)Z
    .locals 0

    .line 358
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVnc(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static messageAndStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 365
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 366
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 367
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 368
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 370
    const-string p0, ""

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newScreenshotFileName()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nextNoticeID()I
    .locals 1

    .line 139
    sget v0, Lcom/iiordanov/bVNC/Utils;->nextNoticeID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/iiordanov/bVNC/Utils;->nextNoticeID:I

    return v0
.end method

.method public static querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 378
    const-string v1, "generalSettings"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 379
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static querySharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 387
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 388
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static setSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 405
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 406
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 407
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 395
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 396
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 397
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static showDocumentation(Landroid/content/Context;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->docIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iiordanov/bVNC/Utils$1;

    invoke-direct {v1}, Lcom/iiordanov/bVNC/Utils$1;-><init>()V

    const v2, 0x1080027

    invoke-static {p0, v0, p1, v2, v1}, Lcom/iiordanov/bVNC/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/undatech/remoteClientUi/R$string;->error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iiordanov/bVNC/Utils$2;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/Utils$2;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-static {p0, v0, p1, v2, v1}, Lcom/iiordanov/bVNC/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showMenu(Landroid/content/Context;)V
    .locals 2

    .line 224
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 225
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "sHasPermanentMenuKey"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 167
    :try_start_0
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isContextActivityThatIsFinishing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 170
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 173
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 174
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 176
    sget-object p1, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isContextActivityThatIsFinishing(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    .line 178
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 98
    :try_start_0
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isContextActivityThatIsFinishing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x108009b

    .line 103
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x1040013

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1040009

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    sget-object p1, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isContextActivityThatIsFinishing(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/iiordanov/bVNC/Utils;->alertDialog:Landroid/app/AlertDialog;

    .line 110
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    .line 203
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 204
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    .line 206
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 207
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v4, 0x3

    .line 208
    div-int/lit8 v7, v5, 0x10

    aget-char v7, v1, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    .line 209
    rem-int/2addr v5, v0

    aget-char v5, v1, v5

    aput-char v5, v2, v7

    add-int/lit8 v6, v6, 0x2

    .line 210
    const-string v5, ":"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    :cond_0
    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 v4, v4, 0x3

    .line 213
    div-int/lit8 v3, p0, 0x10

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 214
    rem-int/2addr p0, v0

    aget-char p0, v1, p0

    aput-char p0, v2, v4

    .line 215
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static toggleSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 416
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 418
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 419
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    xor-int/lit8 v1, v0, 0x1

    .line 420
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Toggled "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static writeScreenshotToFile(Landroid/content/Context;Lcom/iiordanov/bVNC/AbstractBitmapData;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 440
    :try_start_0
    iget-object p0, p1, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 442
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 443
    iget-object p2, p1, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {p2, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 444
    iget-object p1, p1, Lcom/iiordanov/bVNC/AbstractBitmapData;->mbitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p1, p3, p4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 445
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 446
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
