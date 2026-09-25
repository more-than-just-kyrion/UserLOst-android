package com.google.android.gms.internal.mlkit_vision_object_detection_bundled;

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

/* JADX INFO: compiled from: com.google.mlkit:object-detection@@17.0.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzui {
    private static final MediaType zzb = MediaType.parse("application/json; charset=utf-8");
    public final zzuj zza;
    private final zzun zze;
    private final OkHttpClient zzc = new OkHttpClient.Builder().connectTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).readTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).writeTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS).build();
    private zzuq zzd = null;
    private final String zzf = "https://firebaseinstallations.googleapis.com/v1";

    public zzui(zzuj zzujVar, zzun zzunVar) {
        this.zza = zzujVar;
        this.zze = zzunVar;
    }

    private static long zze(long j, String str) {
        return j + (Long.parseLong(str.replaceFirst("s$", "")) * 1000);
    }

    private final String zzf(Headers headers, String str, String str2, zzum zzumVar, zzum zzumVar2) {
        String strString;
        try {
            Response responseExecute = this.zzc.newCall(new Request.Builder().headers(headers).url(str).post(RequestBody.create(zzb, str2)).build()).execute();
            int iCode = responseExecute.code();
            zzumVar2.zzf(iCode);
            if (iCode >= 200 && iCode < 300) {
                try {
                    ResponseBody responseBodyBody = responseExecute.body();
                    try {
                        String strString2 = responseBodyBody.string();
                        if (responseBodyBody != null) {
                            responseBodyBody.close();
                        }
                        return strString2;
                    } catch (Throwable th) {
                        if (responseBodyBody != null) {
                            try {
                                responseBodyBody.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    Log.e("MLKitFbInstsRestClient", "Error retrieving response body from HTTPS POST request to <" + str + ">", e);
                    zzumVar2.zzd(zzsw.RPC_ERROR);
                    zzumVar.zzb(zzsw.RPC_ERROR);
                    return null;
                }
            }
            Log.e("MLKitFbInstsRestClient", "Got HTTP status " + iCode + " from HTTPS POST request to <" + str + ">");
            try {
                ResponseBody responseBodyBody2 = responseExecute.body();
                try {
                    strString = responseBodyBody2.string();
                    if (responseBodyBody2 != null) {
                        responseBodyBody2.close();
                    }
                    Log.d("MLKitFbInstsRestClient", "HTTP Response Body:\n".concat(String.valueOf(strString)));
                    zzumVar2.zzd(zzsw.RPC_ERROR);
                    zzumVar.zzb(zzsw.RPC_ERROR);
                    return null;
                } catch (Throwable th3) {
                    if (responseBodyBody2 != null) {
                        try {
                            responseBodyBody2.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (IOException unused) {
                strString = "<none>";
            }
        } catch (IOException e2) {
            Log.e("MLKitFbInstsRestClient", "Connection error (or timeout) sending HTTPS POST request to <" + str + ">", e2);
            zzumVar2.zzd(zzsw.NO_CONNECTION);
            zzumVar.zzb(zzsw.NO_CONNECTION);
            return null;
        }
    }

    public final zzuq zza() {
        return this.zzd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzun] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v24, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzui] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzui] */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzui] */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r26v0, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzui] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzum] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v5, types: [okhttp3.Headers] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzum] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzun] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    final /* synthetic */ boolean zzb(zzuf zzufVar, zzum zzumVar) throws Throwable {
        ?? r24;
        String str;
        ?? r1;
        boolean z;
        ?? r2;
        ?? r3;
        String str2 = String.format("%s/projects/%s/installations", this.zzf, this.zza.zzc());
        ?? Build = new Headers.Builder().add("x-goog-api-key", this.zza.zza()).build();
        String str3 = String.format("{fid: '%s', appId: '%s', authVersion: '%s', sdkVersion: '%s'}", zzufVar.zza(), this.zza.zzb(), "FIS_v2", "o:a:mlkit:1.0.0");
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzum zzumVar2 = new zzum();
        zzumVar2.zzg();
        ?? Zzf = zzf(Build, str2, str3, zzumVar, zzumVar2);
        zzumVar2.zze();
        try {
            if (Zzf != 0) {
                try {
                    try {
                        try {
                            zzck zzckVarZzb = zzcm.zzb(Zzf).zzb();
                            try {
                                String strZze = zzckVarZzb.zzc("name").zze();
                                zzuf zzufVar2 = new zzuf(zzckVarZzb.zzc("fid").zze());
                                String strZze2 = zzckVarZzb.zzc("refreshToken").zze();
                                zzck zzckVarZza = zzckVarZzb.zza("authToken");
                                r24 = Zzf;
                                try {
                                    String strZze3 = zzckVarZza.zzc("token").zze();
                                    String strZze4 = zzckVarZza.zzc("expiresIn").zze();
                                    long jZze = zze(jCurrentTimeMillis, strZze4);
                                    str = "Error traversing JSON object returned from url <";
                                    try {
                                        Log.i("MLKitFbInstsRestClient", "installation name: " + strZze);
                                        Log.d("MLKitFbInstsRestClient", "fid: " + zzufVar2.zza());
                                        Log.d("MLKitFbInstsRestClient", "refresh_token: " + strZze2);
                                        Log.d("MLKitFbInstsRestClient", "auth token: " + String.valueOf(zzckVarZza));
                                        Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze4);
                                        Log.d("MLKitFbInstsRestClient", "auth token expiry: " + jZze);
                                        r1 = this;
                                        try {
                                            r1.zzd = new zzuq(zzufVar2, strZze2, strZze3, jZze);
                                            z = true;
                                            r2 = zzumVar2;
                                            r3 = r1;
                                        } catch (ClassCastException e) {
                                            e = e;
                                            Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                            zzum zzumVar3 = zzumVar2;
                                            zzumVar3.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            Zzf = r1;
                                            Build = zzumVar3;
                                            z = false;
                                            r3 = Zzf;
                                            r2 = Build;
                                        } catch (IllegalStateException e2) {
                                            e = e2;
                                            Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                            zzum zzumVar4 = zzumVar2;
                                            zzumVar4.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            Zzf = r1;
                                            Build = zzumVar4;
                                            z = false;
                                            r3 = Zzf;
                                            r2 = Build;
                                        } catch (NullPointerException e3) {
                                            e = e3;
                                            Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                            zzum zzumVar5 = zzumVar2;
                                            zzumVar5.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                            Zzf = r1;
                                            Build = zzumVar5;
                                            z = false;
                                            r3 = Zzf;
                                            r2 = Build;
                                        }
                                    } catch (ClassCastException e4) {
                                        e = e4;
                                        r1 = this;
                                        Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                        zzum zzumVar6 = zzumVar2;
                                        zzumVar6.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        Zzf = r1;
                                        Build = zzumVar6;
                                        z = false;
                                        r3 = Zzf;
                                        r2 = Build;
                                        r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                                        return z;
                                    } catch (IllegalStateException e5) {
                                        e = e5;
                                        r1 = this;
                                        Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                        zzum zzumVar7 = zzumVar2;
                                        zzumVar7.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        Zzf = r1;
                                        Build = zzumVar7;
                                        z = false;
                                        r3 = Zzf;
                                        r2 = Build;
                                        r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                                        return z;
                                    } catch (NullPointerException e6) {
                                        e = e6;
                                        r1 = this;
                                        Log.e("MLKitFbInstsRestClient", str + str2 + ">:\nraw json:\n" + r24 + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                                        zzum zzumVar8 = zzumVar2;
                                        zzumVar8.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                                        Zzf = r1;
                                        Build = zzumVar8;
                                        z = false;
                                        r3 = Zzf;
                                        r2 = Build;
                                        r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                                        return z;
                                    }
                                } catch (ClassCastException | IllegalStateException | NullPointerException e7) {
                                    e = e7;
                                    r1 = this;
                                    str = "Error traversing JSON object returned from url <";
                                }
                            } catch (ClassCastException | IllegalStateException | NullPointerException e8) {
                                e = e8;
                                r24 = Zzf;
                                str = "Error traversing JSON object returned from url <";
                            }
                        } catch (Throwable th) {
                            th = th;
                            Zzf = Zzf;
                            Build = zzumVar2;
                            Zzf.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, Build);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        Zzf = this;
                        Build = zzumVar2;
                        Zzf.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, Build);
                        throw th;
                    }
                } catch (zzco e9) {
                    e = e9;
                    zzum zzumVar9 = zzumVar2;
                    Zzf = this;
                    Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str2 + ">:\n" + Zzf, e);
                    zzumVar9.zzd(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    zzumVar.zzb(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    Build = zzumVar9;
                    z = false;
                    r3 = Zzf;
                    r2 = Build;
                    r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                    return z;
                } catch (IllegalStateException e10) {
                    e = e10;
                    zzum zzumVar10 = zzumVar2;
                    Zzf = this;
                    Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str2 + ">:\n" + Zzf, e);
                    zzumVar10.zzd(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    zzumVar.zzb(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    Build = zzumVar10;
                    z = false;
                    r3 = Zzf;
                    r2 = Build;
                    r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                    return z;
                } catch (NullPointerException e11) {
                    e = e11;
                    zzum zzumVar11 = zzumVar2;
                    Zzf = this;
                    Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str2 + ">:\n" + Zzf, e);
                    zzumVar11.zzd(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    zzumVar.zzb(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    Build = zzumVar11;
                    z = false;
                    r3 = Zzf;
                    r2 = Build;
                    r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                    return z;
                }
                r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
                return z;
            }
            Zzf = this;
            Build = zzumVar2;
            z = false;
            r3 = Zzf;
            r2 = Build;
            r3.zze.zza(zzpb.INSTALLATION_ID_FIS_CREATE_INSTALLATION, r2);
            return z;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final boolean zzc(final zzum zzumVar) throws InterruptedException {
        if (this.zzd == null) {
            return false;
        }
        boolean zZza = zzwj.zza(new zzwi() { // from class: com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzug
            @Override // com.google.android.gms.internal.mlkit_vision_object_detection_bundled.zzwi
            public final boolean zza() {
                return this.zza.zzd(zzumVar);
            }
        });
        if (!zZza) {
            zzumVar.zzc(zzsw.RPC_EXPONENTIAL_BACKOFF_FAILED);
        }
        return zZza;
    }

    public final boolean zzd(zzum zzumVar) {
        String str = String.format("%s/projects/%s/installations/%s/authTokens:generate", this.zzf, this.zza.zzc(), this.zzd.zzb().zza());
        Headers headersBuild = new Headers.Builder().add("authorization", "FIS_v2 ".concat(String.valueOf(this.zzd.zzc()))).add("x-goog-api-key", this.zza.zza()).build();
        String str2 = String.format("{installation:{sdkVersion:'%s'}}", "o:a:mlkit:1.0.0");
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzum zzumVar2 = new zzum();
        zzumVar2.zzg();
        String strZzf = zzf(headersBuild, str, str2, zzumVar, zzumVar2);
        zzumVar2.zze();
        boolean z = false;
        try {
            if (strZzf != null) {
                try {
                    zzck zzckVarZzb = zzcm.zzb(strZzf).zzb();
                    try {
                        String strZze = zzckVarZzb.zzc("token").zze();
                        String strZze2 = zzckVarZzb.zzc("expiresIn").zze();
                        long jZze = zze(jCurrentTimeMillis, strZze2);
                        Log.d("MLKitFbInstsRestClient", "refreshed auth token: " + strZze);
                        Log.d("MLKitFbInstsRestClient", "auth token expires in: " + strZze2);
                        Log.d("MLKitFbInstsRestClient", "auth token expiry: " + jZze);
                        this.zzd = new zzuq(this.zzd.zzb(), this.zzd.zzc(), strZze, jZze);
                        z = true;
                    } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                        zzumVar2.zzd(zzsw.RPC_RETURNED_INVALID_RESULT);
                        zzumVar.zzb(zzsw.RPC_RETURNED_INVALID_RESULT);
                        Log.e("MLKitFbInstsRestClient", "Error traversing JSON object returned from <" + str + ">:\nraw json:\n" + strZzf + "\nparsed json:\n" + zzckVarZzb.toString(), e);
                    }
                } catch (zzco e2) {
                    Log.e("MLKitFbInstsRestClient", "Error parsing JSON object returned from <" + str + ">:\n" + strZzf, e2);
                    zzumVar2.zzd(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                    zzumVar.zzb(zzsw.RPC_RETURNED_MALFORMED_RESULT);
                }
            }
            return z;
        } finally {
            this.zze.zza(zzpb.INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN, zzumVar2);
        }
    }
}
