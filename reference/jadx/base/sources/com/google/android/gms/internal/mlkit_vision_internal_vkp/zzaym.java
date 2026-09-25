package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import android.util.Log;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaym {
    private static final int[] zzb = {0, 0, 1, 2, 4, 8, 16};
    public static final Random zza = new SecureRandom();

    public static boolean zza(zzayl zzaylVar) throws InterruptedException {
        int[] iArr = zzb;
        for (int i = 0; i < 7; i++) {
            int i2 = iArr[i];
            if (i2 > 0) {
                int i3 = i2 * 60000;
                Thread.sleep((i3 / 2) + zza.nextInt(i3));
            }
            try {
                if (zzaylVar.zzb()) {
                    return true;
                }
            } catch (zzayk e) {
                e = e;
                Log.e("MLK ExponentialBackoff", "retryWithRandomizedExponentialBackoff: ".concat(String.valueOf(e.getMessage())), e);
            } catch (IOException e2) {
                e = e2;
                Log.e("MLK ExponentialBackoff", "retryWithRandomizedExponentialBackoff: ".concat(String.valueOf(e.getMessage())), e);
            } catch (InterruptedException e3) {
                Log.i("MLK ExponentialBackoff", "retryWithRandomizedExponentialBackoff: interrupted");
                throw e3;
            }
        }
        return false;
    }
}
