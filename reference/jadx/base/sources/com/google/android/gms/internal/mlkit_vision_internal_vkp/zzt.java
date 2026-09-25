package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzt {
    public static final /* synthetic */ int zza = 0;
    private static final String[] zzb = {"com.android.", "com.google.", "com.chrome.", "com.nest.", "com.waymo.", "com.waze"};
    private static final String[] zzc;
    private static final String[] zzd;

    static {
        String[] strArr = new String[2];
        strArr[0] = "media";
        strArr[1] = (Build.HARDWARE.equals("goldfish") || Build.HARDWARE.equals("ranchu")) ? "androidx.test.services.storage.runfiles" : "";
        zzc = strArr;
        String[] strArr2 = new String[3];
        strArr2[0] = Build.VERSION.SDK_INT <= 25 ? "com.google.android.inputmethod.latin.inputcontent" : "";
        strArr2[1] = Build.VERSION.SDK_INT <= 25 ? "com.google.android.inputmethod.latin.dev.inputcontent" : "";
        strArr2[2] = "com.google.android.apps.docs.storage.legacy";
        zzd = strArr2;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0189 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x0186 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x01a5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0153 A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:80:0x016a A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0177 A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:84:0x017b A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0196 A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:92:0x019a A[Catch: IOException -> 0x01c0, FileNotFoundException -> 0x01cf, TryCatch #2 {FileNotFoundException -> 0x01cf, IOException -> 0x01c0, blocks: (B:61:0x010a, B:63:0x0126, B:65:0x012e, B:67:0x0137, B:96:0x01a8, B:73:0x0153, B:75:0x0159, B:77:0x015f, B:80:0x016a, B:82:0x0177, B:84:0x017b, B:87:0x0186, B:88:0x0189, B:90:0x0196, B:92:0x019a, B:95:0x01a5, B:70:0x0144, B:100:0x01b0, B:101:0x01bf), top: B:110:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01ae  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (r10.zzb == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        if (r10.zzb != false) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AssetFileDescriptor zza(final Context context, Uri uri, String str) throws FileNotFoundException {
        Context contextCreateDeviceProtectedStorageContext;
        File[] fileArrZzf;
        int length;
        int i;
        int i2;
        File file;
        File dataDir;
        zzs zzsVar = zzs.zza;
        ContentResolver contentResolver = context.getContentResolver();
        if (Build.VERSION.SDK_INT < 30) {
            uri = Uri.parse(uri.toString());
        }
        String scheme = uri.getScheme();
        if ("android.resource".equals(scheme)) {
            return contentResolver.openAssetFileDescriptor(uri, "r");
        }
        int i3 = 0;
        if ("content".equals(scheme)) {
            String authority = uri.getAuthority();
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
            if (providerInfoResolveContentProvider == null) {
                int iLastIndexOf = authority.lastIndexOf(64);
                if (iLastIndexOf >= 0) {
                    authority = authority.substring(iLastIndexOf + 1);
                    providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
                }
                if (providerInfoResolveContentProvider == null) {
                }
            }
            if (zzs.zzc(zzsVar, context, new zzu(uri, providerInfoResolveContentProvider, authority)) - 1 != 1) {
                if (!context.getPackageName().equals(providerInfoResolveContentProvider.packageName)) {
                    if (!zzsVar.zzb) {
                        if (context.checkUriPermission(uri, Process.myPid(), Process.myUid(), 1) != 0 && providerInfoResolveContentProvider.exported) {
                            String[] strArr = zzc;
                            int length2 = strArr.length;
                            for (int i4 = 0; i4 < 2; i4++) {
                                if (!strArr[i4].equals(authority)) {
                                }
                            }
                            String[] strArr2 = zzd;
                            int length3 = strArr2.length;
                            for (int i5 = 0; i5 < 3; i5++) {
                                if (!strArr2[i5].equals(authority)) {
                                }
                            }
                            String[] strArr3 = zzb;
                            while (i3 < 6) {
                                String str2 = strArr3[i3];
                                if (str2.charAt(str2.length() - 1) == '.') {
                                    if (!providerInfoResolveContentProvider.packageName.startsWith(str2)) {
                                        i3++;
                                    }
                                } else if (!providerInfoResolveContentProvider.packageName.equals(str2)) {
                                    i3++;
                                }
                            }
                        }
                        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                        zzb(assetFileDescriptorOpenAssetFileDescriptor);
                        return assetFileDescriptorOpenAssetFileDescriptor;
                    }
                }
            }
            throw new FileNotFoundException("Can't open content uri.");
        }
        if (!"file".equals(scheme)) {
            throw new FileNotFoundException("Unsupported scheme");
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(uri, "r");
        zzb(assetFileDescriptorOpenAssetFileDescriptor2);
        try {
            ParcelFileDescriptor parcelFileDescriptor = assetFileDescriptorOpenAssetFileDescriptor2.getParcelFileDescriptor();
            String canonicalPath = new File(uri.getPath()).getCanonicalPath();
            zzd(parcelFileDescriptor, canonicalPath);
            if (!canonicalPath.startsWith("/proc/") && !canonicalPath.startsWith("/data/misc/")) {
                zzs.zza(zzsVar);
                File dataDir2 = ContextCompat.getDataDir(context);
                if (dataDir2 != null) {
                    if (!canonicalPath.startsWith(zzc(dataDir2))) {
                        contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(context);
                        if (contextCreateDeviceProtectedStorageContext != null || (dataDir = ContextCompat.getDataDir(contextCreateDeviceProtectedStorageContext)) == null || !canonicalPath.startsWith(zzc(dataDir))) {
                            fileArrZzf = zzf(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzm
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    int i6 = zzt.zza;
                                    return ContextCompat.getExternalFilesDirs(context, null);
                                }
                            });
                            length = fileArrZzf.length;
                            i = 0;
                            while (true) {
                                if (i >= length) {
                                    for (File file2 : zzf(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzn
                                        @Override // java.util.concurrent.Callable
                                        public final Object call() {
                                            int i6 = zzt.zza;
                                            return ContextCompat.getExternalCacheDirs(context);
                                        }
                                    })) {
                                        if (file2 != null || !canonicalPath.startsWith(zzc(file2))) {
                                        }
                                    }
                                    break;
                                }
                                file = fileArrZzf[i];
                                if (file != null || !canonicalPath.startsWith(zzc(file))) {
                                    i++;
                                }
                            }
                        }
                    }
                    if (i3 == zzsVar.zzb) {
                        return assetFileDescriptorOpenAssetFileDescriptor2;
                    }
                } else if (!canonicalPath.startsWith(zzc(Environment.getDataDirectory()))) {
                    contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(context);
                    if (contextCreateDeviceProtectedStorageContext != null) {
                        fileArrZzf = zzf(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzm
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i6 = zzt.zza;
                                return ContextCompat.getExternalFilesDirs(context, null);
                            }
                        });
                        length = fileArrZzf.length;
                        i = 0;
                        while (true) {
                            if (i >= length) {
                                while (i2 < r1) {
                                    if (file2 != null) {
                                    }
                                }
                                break;
                                break;
                            }
                            file = fileArrZzf[i];
                            if (file != null) {
                            }
                            i++;
                        }
                    } else {
                        fileArrZzf = zzf(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzm
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i6 = zzt.zza;
                                return ContextCompat.getExternalFilesDirs(context, null);
                            }
                        });
                        length = fileArrZzf.length;
                        i = 0;
                        while (true) {
                            if (i >= length) {
                                while (i2 < r1) {
                                    if (file2 != null) {
                                    }
                                }
                                break;
                                break;
                            }
                            file = fileArrZzf[i];
                            if (file != null) {
                            }
                            i++;
                        }
                    }
                    if (i3 == zzsVar.zzb) {
                        return assetFileDescriptorOpenAssetFileDescriptor2;
                    }
                }
                i3 = 1;
                if (i3 == zzsVar.zzb) {
                    return assetFileDescriptorOpenAssetFileDescriptor2;
                }
            }
            throw new FileNotFoundException("Can't open file: ".concat(String.valueOf(canonicalPath)));
        } catch (FileNotFoundException e) {
            zze(assetFileDescriptorOpenAssetFileDescriptor2, e);
            throw e;
        } catch (IOException e2) {
            FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
            fileNotFoundException.initCause(e2);
            zze(assetFileDescriptorOpenAssetFileDescriptor2, fileNotFoundException);
            throw fileNotFoundException;
        }
    }

    private static Object zzb(Object obj) throws FileNotFoundException {
        if (obj != null) {
            return obj;
        }
        throw new FileNotFoundException("Content resolver returned null value.");
    }

    private static String zzc(File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        return !canonicalPath.endsWith("/") ? String.valueOf(canonicalPath).concat("/") : canonicalPath;
    }

    private static void zzd(ParcelFileDescriptor parcelFileDescriptor, String str) throws IOException {
        try {
            StructStat structStatFstat = Os.fstat(parcelFileDescriptor.getFileDescriptor());
            try {
                StructStat structStatLstat = Os.lstat(str);
                if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                    throw new FileNotFoundException("Can't open file: ".concat(String.valueOf(str)));
                }
                if (structStatFstat.st_dev != structStatLstat.st_dev || structStatFstat.st_ino != structStatLstat.st_ino) {
                    throw new FileNotFoundException("Can't open file: ".concat(String.valueOf(str)));
                }
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        } catch (ErrnoException e2) {
            throw new IOException(e2);
        }
    }

    private static void zze(AssetFileDescriptor assetFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            assetFileDescriptor.close();
        } catch (IOException e) {
            fileNotFoundException.addSuppressed(e);
        }
    }

    private static File[] zzf(Callable callable) {
        try {
            return (File[]) callable.call();
        } catch (NullPointerException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
