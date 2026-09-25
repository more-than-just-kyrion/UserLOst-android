package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzawp {
    private static final ExecutorService zza = Executors.newSingleThreadExecutor();
    private static final long zzb = TimeUnit.DAYS.toSeconds(7);
    private static final long zzc = TimeUnit.HOURS.toSeconds(12);
    private static zzawp zzd;
    private final zzawr zze;
    private final ExecutorService zzf;
    private final zzawq zzg;
    private final zzawz zzh;
    private final long zzi;
    private final long zzj;
    private final Object zzk;
    private final zzaxg zzl;

    private zzawp(zzaxg zzaxgVar, ExecutorService executorService, zzawr zzawrVar, zzawq zzawqVar, long j, long j2) {
        zzaxb zzaxbVar = new zzaxb();
        this.zzk = new Object();
        this.zzl = zzaxgVar;
        this.zzf = executorService;
        this.zze = zzawrVar;
        this.zzh = zzaxbVar;
        this.zzg = zzawqVar;
        this.zzi = j;
        this.zzj = j2;
    }

    public static synchronized zzawp zza(Context context) {
        if (zzd == null) {
            zzd = new zzawp(zzaxg.zzb(context), zza, new zzawr(context), new zzawq(), zzb, zzc);
        }
        return zzd;
    }

    public final Task zzb(final String str, final String str2, String str3, int i) {
        String strZzj = zzawt.zza().zza().zzc().zzj();
        try {
            if (Integer.parseInt(strZzj) < 29) {
                Log.d("AccelerationAllowlist", "Unable to retrieve NNAPI info required by AllowlistServer before Android Q, skipping allowlist fetch.");
                return Tasks.forResult(null);
            }
            Log.d("AccelerationAllowlist", "fetchAccelerationAllowlist");
            final String str4 = "com.google.perception";
            final zzawy zzawyVar = new zzawy("com.google.perception", 2);
            zzawyVar.zzf();
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            final int i2 = 2;
            this.zzf.execute(new Runnable(str, str2, str4, i2, zzawyVar, taskCompletionSource) { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzawn
                public final /* synthetic */ String zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ String zzd = "com.google.perception";
                public final /* synthetic */ zzawy zze;
                public final /* synthetic */ TaskCompletionSource zzf;

                {
                    this.zze = zzawyVar;
                    this.zzf = taskCompletionSource;
                }

                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.zza.zzd(this.zzb, this.zzc, this.zzd, 2, this.zze, this.zzf);
                }
            });
            return taskCompletionSource.getTask();
        } catch (NumberFormatException e) {
            Log.e("AccelerationAllowlist", String.format("Unable to parse OS version returned by the AndroidSystemInfoProvider '%s'", strZzj), e);
            return Tasks.forException(e);
        }
    }

    public final zzbhx zzc(String str, String str2, String str3, int i) throws Throwable {
        zzawy zzawyVar = new zzawy("com.google.perception", 2);
        zzawyVar.zzf();
        try {
            return this.zze.zza(str, str2, "com.google.perception", 2, zzawyVar, this.zzi);
        } finally {
            zzawyVar.zze();
            this.zzg.zzb(zzawyVar);
        }
    }

    final /* synthetic */ void zzd(String str, String str2, String str3, int i, zzawy zzawyVar, TaskCompletionSource taskCompletionSource) throws Throwable {
        zzaxc zzaxcVarZza;
        zzbhx zzbhxVar;
        try {
            try {
                zzbhx zzbhxVarZza = this.zze.zza(str, str2, "com.google.perception", 2, zzawyVar, this.zzj);
                if (zzbhxVarZza != null) {
                    Log.d("AccelerationAllowlist", "Cached copy available, not calling the server");
                    taskCompletionSource.setResult(zzbhxVarZza);
                } else {
                    Log.d("AccelerationAllowlist", "fetching allowlist");
                    zzaws zzawsVarZza = zzawt.zza();
                    synchronized (this.zzk) {
                        this.zzl.zzc();
                        zzaxcVarZza = this.zzl.zza();
                    }
                    zzawo zzawoVar = new zzawo(zzawyVar, str, str2, "com.google.perception", 2, zzawsVarZza, zzaxcVarZza, this.zzh, this.zzg);
                    if (zzaym.zza(zzawoVar)) {
                        Log.d("AccelerationAllowlist", "Saving allowlist");
                        zzbhx zzbhxVarZza2 = zzawoVar.zza();
                        this.zze.zzc(zzbhxVarZza2, str, str2, "com.google.perception", 2, zzawyVar);
                        zzbhxVar = zzbhxVarZza2;
                    } else {
                        zzawyVar.zzd(zzags.RPC_EXPONENTIAL_BACKOFF_FAILED);
                        zzbhxVar = null;
                    }
                    taskCompletionSource.setResult(zzbhxVar);
                }
            } catch (Throwable th) {
                zzawyVar.zze();
                this.zzg.zzb(zzawyVar);
                throw th;
            }
        } catch (IOException | InterruptedException e) {
            zzawyVar.zzd(zzags.RPC_ERROR);
            taskCompletionSource.setException(e);
        }
        zzawyVar.zze();
        this.zzg.zzb(zzawyVar);
    }
}
