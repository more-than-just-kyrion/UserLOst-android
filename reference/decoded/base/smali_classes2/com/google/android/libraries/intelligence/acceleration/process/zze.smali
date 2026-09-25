.class final Lcom/google/android/libraries/intelligence/acceleration/process/zze;
.super Lcom/google/android/libraries/intelligence/acceleration/process/zza;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/intelligence/acceleration/process/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    invoke-direct {p0}, Lcom/google/android/libraries/intelligence/acceleration/process/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    sget p2, Lcom/google/android/libraries/intelligence/acceleration/process/zzj;->zza:I

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "com.google.android.libraries.intelligence.acceleration.process.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/intelligence/acceleration/process/zzj;

    iget-object p2, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    iget-object p2, p2, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzc;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/intelligence/acceleration/process/zzj;->zzb(Lcom/google/android/libraries/intelligence/acceleration/process/zzc;)V

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    invoke-virtual {p1}, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zzb()V

    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/google/android/libraries/intelligence/acceleration/process/zzd;

    invoke-direct {p2, p0}, Lcom/google/android/libraries/intelligence/acceleration/process/zzd;-><init>(Lcom/google/android/libraries/intelligence/acceleration/process/zze;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/intelligence/acceleration/process/zze;->zza:Lcom/google/android/libraries/intelligence/acceleration/process/zzf;

    invoke-virtual {p1}, Lcom/google/android/libraries/intelligence/acceleration/process/zzf;->zze()V

    return-void
.end method
