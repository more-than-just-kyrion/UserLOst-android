package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import android.content.Context;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.core.util.AtomicFile;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaxl {
    private static final Object zza;
    private final Context zzb;

    static {
        Component.builder(zzaxl.class).add(Dependency.required(Context.class)).factory(new ComponentFactory() { // from class: com.google.android.gms.internal.mlkit_vision_internal_vkp.zzaxk
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new zzaxl((Context) componentContainer.get(Context.class));
            }
        }).build();
        zza = new Object();
    }

    public zzaxl(Context context) {
        this.zzb = context;
    }

    public final zzaxm zza(zzaxi zzaxiVar) {
        zzaxm zzaxmVar;
        String str;
        synchronized (zza) {
            File fileZzb = zzb(zzaxiVar);
            try {
                String str2 = new String(new AtomicFile(fileZzb).readFully(), Charset.forName("UTF-8"));
                try {
                    zzael zzaelVarZzb = zzaeq.zzb(str2);
                    if (zzaelVarZzb instanceof zzaeo) {
                        zzaeo zzaeoVarZzb = zzaelVarZzb.zzb();
                        try {
                            zzaxc zzaxcVar = new zzaxc(zzaeoVarZzb.zzc("fid").zze());
                            String strZze = zzaeoVarZzb.zzc("refreshToken").zze();
                            String strZze2 = zzaeoVarZzb.zzc("temporaryToken").zze();
                            long jZzc = zzaeoVarZzb.zzc("temporaryTokenExpiryTimestamp").zzc();
                            str = str2;
                            try {
                                Log.d("MLKitInstallationIdSaver", "fid: " + zzaxcVar.toString());
                                Log.d("MLKitInstallationIdSaver", "refresh_token: " + strZze);
                                Log.d("MLKitInstallationIdSaver", "temporary_token: " + strZze2);
                                Log.d("MLKitInstallationIdSaver", "temporary token expiry: " + jZzc);
                                zzaxmVar = new zzaxm(zzaxcVar, strZze, strZze2, jZzc);
                            } catch (ClassCastException e) {
                                e = e;
                                zzaxiVar.zzc(zzave.FILE_READ_RETURNED_INVALID_DATA);
                                Log.e("MLKitInstallationIdSaver", "Error traversing installation info JSON object:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                zzaxmVar = null;
                            } catch (IllegalStateException e2) {
                                e = e2;
                                zzaxiVar.zzc(zzave.FILE_READ_RETURNED_INVALID_DATA);
                                Log.e("MLKitInstallationIdSaver", "Error traversing installation info JSON object:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                zzaxmVar = null;
                            } catch (NullPointerException e3) {
                                e = e3;
                                zzaxiVar.zzc(zzave.FILE_READ_RETURNED_INVALID_DATA);
                                Log.e("MLKitInstallationIdSaver", "Error traversing installation info JSON object:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                zzaxmVar = null;
                            }
                        } catch (ClassCastException | IllegalStateException | NullPointerException e4) {
                            e = e4;
                            str = str2;
                        }
                    } else {
                        Log.e("MLKitInstallationIdSaver", "Error parsing installation info JSON element:\n".concat(String.valueOf(String.valueOf(zzaelVarZzb))));
                        zzaxiVar.zzc(zzave.FILE_READ_RETURNED_MALFORMED_DATA);
                    }
                } catch (zzaes e5) {
                    Log.e("MLKitInstallationIdSaver", "Error parsing installation info JSON object:\n".concat(str2), e5);
                    zzaxiVar.zzc(zzave.FILE_READ_RETURNED_MALFORMED_DATA);
                }
                zzaxmVar = null;
            } catch (IOException e6) {
                if (!fileZzb.exists()) {
                    Log.i("MLKitInstallationIdSaver", "Installation id file not yet present: " + fileZzb.toString());
                    return null;
                }
                zzaxiVar.zzc(zzave.FILE_READ_FAILED);
                Log.w("MLKitInstallationIdSaver", "Error reading installation id file: " + fileZzb.toString(), e6);
                return null;
            }
        }
        return zzaxmVar;
    }

    final File zzb(zzaxi zzaxiVar) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(this.zzb);
        if (noBackupFilesDir == null || !noBackupFilesDir.isDirectory()) {
            Log.w("MLKitInstallationIdSaver", "noBackupFilesDir doesn't exist, using regular files directory instead");
            noBackupFilesDir = this.zzb.getFilesDir();
            if (noBackupFilesDir != null && !noBackupFilesDir.isDirectory()) {
                try {
                    if (!noBackupFilesDir.mkdirs()) {
                        Log.w("MLKitInstallationIdSaver", "mkdirs failed: " + noBackupFilesDir.toString());
                        zzaxiVar.zzd(zzave.DIRECTORY_CREATION_FAILED);
                    }
                } catch (SecurityException e) {
                    Log.w("MLKitInstallationIdSaver", "mkdirs threw an exception: ".concat(noBackupFilesDir.toString()), e);
                    zzaxiVar.zzd(zzave.DIRECTORY_CREATION_FAILED);
                }
            }
        }
        return new File(noBackupFilesDir, "com.google.mlkit.InstallationId");
    }

    public final void zzc(zzaxm zzaxmVar, zzaxi zzaxiVar) {
        File fileZzb;
        String str = String.format("{\n \"fid\": \"%s\",\n \"refreshToken\": \"%s\",\n \"temporaryToken\": \"%s\",\n \"temporaryTokenExpiryTimestamp\": \"%d\"\n}\n", zzaxmVar.zzb().zza(), zzaxmVar.zzc(), zzaxmVar.zzd(), Long.valueOf(zzaxmVar.zza()));
        synchronized (zza) {
            try {
                fileZzb = zzb(zzaxiVar);
                try {
                    Log.i("MLKitInstallationIdSaver", "Creating installation id: " + fileZzb.toString());
                    AtomicFile atomicFile = new AtomicFile(fileZzb);
                    FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
                    try {
                        PrintWriter printWriter = new PrintWriter(fileOutputStreamStartWrite);
                        printWriter.println(str);
                        printWriter.flush();
                        atomicFile.finishWrite(fileOutputStreamStartWrite);
                        Log.d("MLKitInstallationIdSaver", "Succeeded writing installation id: " + fileZzb.toString() + ":\n" + str);
                    } catch (Throwable th) {
                        atomicFile.failWrite(fileOutputStreamStartWrite);
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                    zzaxiVar.zzc(zzave.FILE_WRITE_FAILED);
                    Log.e("MLKitInstallationIdSaver", "Error writing to installation id file " + String.valueOf(fileZzb), e);
                }
            } catch (IOException e2) {
                e = e2;
                fileZzb = null;
            }
        }
    }
}
