.class public final Lcom/google/android/libraries/intelligence/acceleration/process/zzf;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field private static final zzb:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;


# instance fields
.field final zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzc;

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:Landroid/os/Handler;

.field private final zzh:Landroidx/lifecycle/LifecycleRegistry;

.field private final zzi:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    invoke-direct {v0}, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzb:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzf:Z

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/intelligence/acceleration/process/zzb;-><init>(Lcom/google/android/libraries/intelligence/acceleration/process/zzf;)V

    iput-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzi:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/intelligence/acceleration/process/zzc;-><init>(Lcom/google/android/libraries/intelligence/acceleration/process/zzf;)V

    iput-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzc;

    return-void
.end method

.method public static zza()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzb:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    return-object v0
.end method

.method static zzh(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzb:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzg:Landroid/os/Handler;

    iget-object v1, v0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 4
    new-instance v1, Lcom/google/android/libraries/intelligence/acceleration/process/zze;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/intelligence/acceleration/process/zze;-><init>(Lcom/google/android/libraries/intelligence/acceleration/process/zzf;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method final zzb()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzi:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method final zzc()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzg:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzi:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method final zzd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzf:Z

    :cond_0
    return-void
.end method

.method final zze()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    invoke-virtual {p0}, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzg()V

    return-void
.end method

.method final zzf()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzd:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze:Z

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method final zzg()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzc:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzh:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzf:Z

    :cond_0
    return-void
.end method
