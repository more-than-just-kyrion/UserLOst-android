.class public final synthetic Lcom/google/android/libraries/intelligence/acceleration/zze;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/intelligence/acceleration/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zza()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/intelligence/acceleration/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/ProcessStateObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
