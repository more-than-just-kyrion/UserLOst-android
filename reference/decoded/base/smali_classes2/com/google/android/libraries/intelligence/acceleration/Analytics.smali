.class public final Lcom/google/android/libraries/intelligence/acceleration/Analytics;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-internal-vkp@@18.2.3"


# direct methods
.method private static native nativeIsProcessInBackground()Z
.end method

.method private static native nativeNotifyProcessLifecycleState(Z)V
.end method

.method public static zza(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/intelligence/acceleration/Analytics;->nativeNotifyProcessLifecycleState(Z)V

    return-void
.end method

.method static zzb()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/libraries/intelligence/acceleration/Analytics;->nativeIsProcessInBackground()Z

    move-result v0

    return v0
.end method
