package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import android.util.Log;
import androidx.work.WorkRequest;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaxe {
    private static final MediaType zzb = MediaType.parse("application/json; charset=utf-8");
    public final zzaxf zza;
    private final zzaxj zze;
    private final OkHttpClient zzc = new OkHttpClient.Builder().connectTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).readTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).writeTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).build();
    private zzaxm zzd = null;
    private final String zzf = "https://firebaseinstallations.googleapis.com/v1";

    public zzaxe(zzaxf zzaxfVar, zzaxj zzaxjVar) {
        this.zza = zzaxfVar;
        this.zze = zzaxjVar;
    }

    public final zzaxm zza() {
        return this.zzd;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0155  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v24, types: [com.google.android.gms.internal.mlkit_vision_internal_vkp.zzaxe] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.mlkit_vision_internal_vkp.zzaxe] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    final /* synthetic */ boolean zzb(zzaxc zzaxcVar, zzaxi zzaxiVar) throws Throwable {
        Object obj;
        String str;
        ?? r1;
        zzaxi zzaxiVar2;
        zzaeo zzaeoVarZzb;
        String str2;
        boolean z;
        ?? r2;
        String strString;
        zzaxe zzaxeVar = this;
        zzaxi zzaxiVar3 = zzaxiVar;
        String str3 = String.format("%s/projects/%s/installations", zzaxeVar.zzf, zzaxeVar.zza.zzc());
        Headers headersBuild = new Headers.Builder().add("x-goog-api-key", zzaxeVar.zza.zza()).build();
        String str4 = String.format("{fid: '%s', appId: '%s', authVersion: '%s', sdkVersion: '%s'}", zzaxcVar.zza(), zzaxeVar.zza.zzb(), "FIS_v2", "o:a:mlkit:1.0.0");
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzaxi zzaxiVar4 = new zzaxi();
        zzaxiVar4.zzg();
        try {
            try {
                Response responseExecute = zzaxeVar.zzc.newCall(new Request.Builder().headers(headersBuild).url(str3).post(RequestBody.create(zzb, str4)).build()).execute();
                int iCode = responseExecute.code();
                zzaxiVar4.zzf(iCode);
                if (iCode >= 200 && iCode < 300) {
                    try {
                        ResponseBody responseBodyBody = responseExecute.body();
                        try {
                            String strString2 = responseBodyBody.string();
                            if (responseBodyBody != null) {
                                responseBodyBody.close();
                            }
                            str = strString2;
                            r1 = zzaxeVar;
                        } catch (Throwable th) {
                            if (responseBodyBody == null) {
                                throw th;
                            }
                            try {
                                responseBodyBody.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                            zzaxiVar4.zze();
                            if (str == null) {
                                zzaeoVarZzb = zzaeq.zzb(str).zzb();
                                String strZze = zzaeoVarZzb.zzc("name").zze();
                                zzaxc zzaxcVar2 = new zzaxc(zzaeoVarZzb.zzc("fid").zze());
                                String strZze2 = zzaeoVarZzb.zzc("refreshToken").zze();
                                zzaeo zzaeoVarZza = zzaeoVarZzb.zza("authToken");
                                zzaxiVar2 = zzaxiVar4;
                                String strZze3 = zzaeoVarZza.zzc("token").zze();
                                String strZze4 = zzaeoVarZza.zzc("expiresIn").zze();
                                str = str;
                                str2 = str3;
                                long j = jCurrentTimeMillis + (Long.parseLong(strZze4.replaceFirst("s$", "")) * 1000);
                                Log.i("MLKitFbInstsRestClient", "installation name: " + strZze);
                                Log.d("MLKitFbInstsRestClient", "fid: " + zzaxcVar2.zza());
                                Log.d("MLKitFbInstsRestClient", "refresh_token: " + strZze2);
                                Log.d("MLKitFbInstsRestClient", "auth token: " + String.valueOf(zzaeoVarZza));
                                Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze4);
                                Log.d("MLKitFbInstsRestClient", "auth token expiry: " + j);
                                zzaxm zzaxmVar = new zzaxm(zzaxcVar2, strZze2, strZze3, j);
                                this = this;
                                this.zzd = zzaxmVar;
                                z = true;
                                zzaxiVar3 = zzaxiVar2;
                                r2 = this;
                                r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                return z;
                            }
                            r1 = this;
                            zzaxiVar3 = zzaxiVar4;
                            z = false;
                            r2 = r1;
                            r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                            return z;
                        }
                    } catch (IOException e) {
                        Log.e("MLKitFbInstsRestClient", "Error retrieving response body from HTTPS POST request to <" + str3 + ">", e);
                        zzaxiVar4.zzd(zzave.RPC_ERROR);
                        zzaxiVar3.zzb(zzave.RPC_ERROR);
                        obj = zzaxeVar;
                        str = null;
                        r1 = obj;
                    }
                    zzaxiVar4.zze();
                    if (str == null) {
                        zzaeoVarZzb = zzaeq.zzb(str).zzb();
                        String strZze5 = zzaeoVarZzb.zzc("name").zze();
                        zzaxc zzaxcVar3 = new zzaxc(zzaeoVarZzb.zzc("fid").zze());
                        String strZze6 = zzaeoVarZzb.zzc("refreshToken").zze();
                        zzaeo zzaeoVarZza2 = zzaeoVarZzb.zza("authToken");
                        zzaxiVar2 = zzaxiVar4;
                        String strZze7 = zzaeoVarZza2.zzc("token").zze();
                        String strZze8 = zzaeoVarZza2.zzc("expiresIn").zze();
                        str = str;
                        str2 = str3;
                        long j2 = jCurrentTimeMillis + (Long.parseLong(strZze8.replaceFirst("s$", "")) * 1000);
                        Log.i("MLKitFbInstsRestClient", "installation name: " + strZze5);
                        Log.d("MLKitFbInstsRestClient", "fid: " + zzaxcVar3.zza());
                        Log.d("MLKitFbInstsRestClient", "refresh_token: " + strZze6);
                        Log.d("MLKitFbInstsRestClient", "auth token: " + String.valueOf(zzaeoVarZza2));
                        Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze8);
                        Log.d("MLKitFbInstsRestClient", "auth token expiry: " + j2);
                        zzaxm zzaxmVar2 = new zzaxm(zzaxcVar3, strZze6, strZze7, j2);
                        this = this;
                        this.zzd = zzaxmVar2;
                        z = true;
                        zzaxiVar3 = zzaxiVar2;
                        r2 = this;
                        r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                        return z;
                    }
                    r1 = this;
                    zzaxiVar3 = zzaxiVar4;
                    z = false;
                    r2 = r1;
                    r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                    return z;
                }
                Log.e("MLKitFbInstsRestClient", "Got HTTP status " + iCode + " from HTTPS POST request to <" + str3 + ">");
                try {
                    ResponseBody responseBodyBody2 = responseExecute.body();
                    try {
                        strString = responseBodyBody2.string();
                        if (responseBodyBody2 != null) {
                            responseBodyBody2.close();
                        }
                    } catch (Throwable th3) {
                        if (responseBodyBody2 == null) {
                            throw th3;
                        }
                        try {
                            responseBodyBody2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                        Log.d("MLKitFbInstsRestClient", "HTTP Response Body:\n".concat(String.valueOf(strString)));
                        zzaxiVar4.zzd(zzave.RPC_ERROR);
                        zzaxiVar3.zzb(zzave.RPC_ERROR);
                        obj = "HTTP Response Body:\n";
                        str = null;
                        r1 = obj;
                        zzaxiVar4.zze();
                        if (str == null) {
                            try {
                                try {
                                    zzaeoVarZzb = zzaeq.zzb(str).zzb();
                                    try {
                                        String strZze9 = zzaeoVarZzb.zzc("name").zze();
                                        zzaxc zzaxcVar4 = new zzaxc(zzaeoVarZzb.zzc("fid").zze());
                                        String strZze10 = zzaeoVarZzb.zzc("refreshToken").zze();
                                        zzaeo zzaeoVarZza3 = zzaeoVarZzb.zza("authToken");
                                        zzaxiVar2 = zzaxiVar4;
                                        try {
                                            try {
                                                String strZze11 = zzaeoVarZza3.zzc("token").zze();
                                                String strZze12 = zzaeoVarZza3.zzc("expiresIn").zze();
                                                str = str;
                                                str2 = str3;
                                                try {
                                                    long j3 = jCurrentTimeMillis + (Long.parseLong(strZze12.replaceFirst("s$", "")) * 1000);
                                                    Log.i("MLKitFbInstsRestClient", "installation name: " + strZze9);
                                                    Log.d("MLKitFbInstsRestClient", "fid: " + zzaxcVar4.zza());
                                                    Log.d("MLKitFbInstsRestClient", "refresh_token: " + strZze10);
                                                    Log.d("MLKitFbInstsRestClient", "auth token: " + String.valueOf(zzaeoVarZza3));
                                                    Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze12);
                                                    Log.d("MLKitFbInstsRestClient", "auth token expiry: " + j3);
                                                    zzaxm zzaxmVar3 = new zzaxm(zzaxcVar4, strZze10, strZze11, j3);
                                                    this = this;
                                                    try {
                                                        this.zzd = zzaxmVar3;
                                                        z = true;
                                                        zzaxiVar3 = zzaxiVar2;
                                                        r2 = this;
                                                    } catch (ClassCastException e2) {
                                                        e = e2;
                                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                                        zzaxiVar3 = zzaxiVar2;
                                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        r1 = this;
                                                        z = false;
                                                        r2 = r1;
                                                    } catch (IllegalStateException e3) {
                                                        e = e3;
                                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                                        zzaxiVar3 = zzaxiVar2;
                                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        r1 = this;
                                                        z = false;
                                                        r2 = r1;
                                                    } catch (NullPointerException e4) {
                                                        e = e4;
                                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                                        zzaxiVar3 = zzaxiVar2;
                                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                                        r1 = this;
                                                        z = false;
                                                        r2 = r1;
                                                    }
                                                } catch (ClassCastException | IllegalStateException | NullPointerException e5) {
                                                    e = e5;
                                                    this = this;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                r1 = this;
                                                zzaxiVar3 = zzaxiVar2;
                                                r1.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                                throw th;
                                            }
                                        } catch (ClassCastException | IllegalStateException | NullPointerException e6) {
                                            e = e6;
                                            str2 = str3;
                                            Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                            zzaxiVar3 = zzaxiVar2;
                                            zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                            zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                            r1 = this;
                                            z = false;
                                            r2 = r1;
                                            r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                            return z;
                                        }
                                    } catch (ClassCastException e7) {
                                        e = e7;
                                        zzaxiVar2 = zzaxiVar4;
                                        str2 = str3;
                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                        zzaxiVar3 = zzaxiVar2;
                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                        r1 = this;
                                        z = false;
                                        r2 = r1;
                                        r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                        return z;
                                    } catch (IllegalStateException e8) {
                                        e = e8;
                                        zzaxiVar2 = zzaxiVar4;
                                        str2 = str3;
                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                        zzaxiVar3 = zzaxiVar2;
                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                        r1 = this;
                                        z = false;
                                        r2 = r1;
                                        r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                        return z;
                                    } catch (NullPointerException e9) {
                                        e = e9;
                                        zzaxiVar2 = zzaxiVar4;
                                        str2 = str3;
                                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from url <" + str2 + ">:\nraw json:\n" + str + "\nparsed json:\n" + zzaeoVarZzb.toString(), e);
                                        zzaxiVar3 = zzaxiVar2;
                                        zzaxiVar3.zzd(zzave.RPC_RETURNED_INVALID_RESULT);
                                        zzaxiVar.zzb(zzave.RPC_RETURNED_INVALID_RESULT);
                                        r1 = this;
                                        z = false;
                                        r2 = r1;
                                        r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                        return z;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        r1 = this;
                                        zzaxiVar2 = zzaxiVar4;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    r1 = r1;
                                }
                            } catch (zzaes e10) {
                                e = e10;
                                r1 = this;
                                zzaxiVar3 = zzaxiVar4;
                                Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str3 + ">:\n" + str, e);
                                zzaxiVar3.zzd(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                zzaxiVar3.zzb(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                z = false;
                                r2 = r1;
                                r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                return z;
                            } catch (IllegalStateException e11) {
                                e = e11;
                                r1 = this;
                                zzaxiVar3 = zzaxiVar4;
                                Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str3 + ">:\n" + str, e);
                                zzaxiVar3.zzd(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                zzaxiVar3.zzb(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                z = false;
                                r2 = r1;
                                r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                return z;
                            } catch (NullPointerException e12) {
                                e = e12;
                                r1 = this;
                                zzaxiVar3 = zzaxiVar4;
                                Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str3 + ">:\n" + str, e);
                                zzaxiVar3.zzd(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                zzaxiVar3.zzb(zzave.RPC_RETURNED_MALFORMED_RESULT);
                                z = false;
                                r2 = r1;
                                r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                return z;
                            } catch (Throwable th8) {
                                th = th8;
                                r1 = this;
                                zzaxiVar3 = zzaxiVar4;
                                r1.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                                throw th;
                            }
                            r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                            return z;
                        }
                        r1 = this;
                        zzaxiVar3 = zzaxiVar4;
                        z = false;
                        r2 = r1;
                        r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                        return z;
                    }
                } catch (IOException unused) {
                    strString = "<none>";
                }
                Log.d("MLKitFbInstsRestClient", "HTTP Response Body:\n".concat(String.valueOf(strString)));
                zzaxiVar4.zzd(zzave.RPC_ERROR);
                zzaxiVar3.zzb(zzave.RPC_ERROR);
                obj = "HTTP Response Body:\n";
            } catch (IOException e13) {
                IOException iOException = e13;
                Log.e("MLKitFbInstsRestClient", "Connection error (or timeout) sending HTTPS POST request to <" + str3 + ">", iOException);
                zzaxiVar4.zzd(zzave.NO_CONNECTION);
                zzaxiVar3.zzb(zzave.NO_CONNECTION);
                obj = iOException;
            }
            if (str == null) {
                zzaeoVarZzb = zzaeq.zzb(str).zzb();
                String strZze13 = zzaeoVarZzb.zzc("name").zze();
                zzaxc zzaxcVar5 = new zzaxc(zzaeoVarZzb.zzc("fid").zze());
                String strZze14 = zzaeoVarZzb.zzc("refreshToken").zze();
                zzaeo zzaeoVarZza4 = zzaeoVarZzb.zza("authToken");
                zzaxiVar2 = zzaxiVar4;
                String strZze15 = zzaeoVarZza4.zzc("token").zze();
                String strZze16 = zzaeoVarZza4.zzc("expiresIn").zze();
                str = str;
                str2 = str3;
                long j4 = jCurrentTimeMillis + (Long.parseLong(strZze16.replaceFirst("s$", "")) * 1000);
                Log.i("MLKitFbInstsRestClient", "installation name: " + strZze13);
                Log.d("MLKitFbInstsRestClient", "fid: " + zzaxcVar5.zza());
                Log.d("MLKitFbInstsRestClient", "refresh_token: " + strZze14);
                Log.d("MLKitFbInstsRestClient", "auth token: " + String.valueOf(zzaeoVarZza4));
                Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze16);
                Log.d("MLKitFbInstsRestClient", "auth token expiry: " + j4);
                zzaxm zzaxmVar4 = new zzaxm(zzaxcVar5, strZze14, strZze15, j4);
                this = this;
                this.zzd = zzaxmVar4;
                z = true;
                zzaxiVar3 = zzaxiVar2;
                r2 = this;
                r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
                return z;
            }
            r1 = this;
            zzaxiVar3 = zzaxiVar4;
            z = false;
            r2 = r1;
            r2.zze.zza(zzary.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzaxiVar3);
            return z;
        } catch (Throwable th9) {
            th = th9;
        }
        str = null;
        r1 = obj;
        zzaxiVar4.zze();
    }
}
