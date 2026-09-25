.class public Lcom/iiordanov/bVNC/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field private static context:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static debugLog:Z = false


# instance fields
.field private database:Lcom/iiordanov/bVNC/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 37
    sget-object v0, Lcom/iiordanov/bVNC/App;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/App;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public getDatabase()Lcom/iiordanov/bVNC/Database;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iiordanov/bVNC/App;->database:Lcom/iiordanov/bVNC/Database;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 26
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getDefaultPort(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/iiordanov/bVNC/Constants;->DEFAULT_PROTOCOL_PORT:I

    .line 27
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/App;->database:Lcom/iiordanov/bVNC/Database;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/iiordanov/bVNC/App;->context:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "moreDebugLoggingTag"

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/iiordanov/bVNC/App;->debugLog:Z

    return-void
.end method
