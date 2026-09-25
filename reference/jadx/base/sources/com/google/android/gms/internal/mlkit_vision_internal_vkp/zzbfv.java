package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.sqlcipher.database.SQLiteDatabase;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
final class zzbfv<T> implements zzbgm<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzbhk.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzbfs zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzbhd zzm;
    private final zzbdw zzn;

    private zzbfv(int[] iArr, Object[] objArr, int i, int i2, zzbfs zzbfsVar, boolean z, int[] iArr2, int i3, int i4, zzbfy zzbfyVar, zzbfe zzbfeVar, zzbhd zzbhdVar, zzbdw zzbdwVar, zzbfn zzbfnVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzbfsVar instanceof zzbel;
        boolean z2 = false;
        if (zzbdwVar != null && (zzbfsVar instanceof zzbeh)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzm = zzbhdVar;
        this.zzn = zzbdwVar;
        this.zzg = zzbfsVar;
    }

    private final Object zzA(Object obj, int i) {
        zzbgm zzbgmVarZzx = zzx(i);
        int iZzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzbgmVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzbgmVarZzx.zze();
        if (object != null) {
            zzbgmVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzbgm zzbgmVarZzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzbgmVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzbgmVarZzx.zze();
        if (object != null) {
            zzbgmVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzbgm zzbgmVarZzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object objZze = zzbgmVarZzx.zze();
                    zzbgmVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzbgmVarZzx.zze();
                zzbgmVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzbgmVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzR(obj2, i2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzbgm zzbgmVarZzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object objZze = zzbgmVarZzx.zze();
                    zzbgmVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzbgmVarZzx.zze();
                zzbgmVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzbgmVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzbge zzbgeVar) throws IOException {
        long j = i & 1048575;
        if (zzM(i)) {
            zzbhk.zzs(obj, j, zzbgeVar.zzu());
        } else if (this.zzi) {
            zzbhk.zzs(obj, j, zzbgeVar.zzt());
        } else {
            zzbhk.zzs(obj, j, zzbgeVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int iZzr = zzr(i);
        long j = 1048575 & iZzr;
        if (j == 1048575) {
            return;
        }
        zzbhk.zzq(obj, j, (1 << (iZzr >>> 20)) | zzbhk.zzc(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzbhk.zzq(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int iZzr = zzr(i);
        long j = iZzr & 1048575;
        if (j != 1048575) {
            return (zzbhk.zzc(obj, j) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i);
        long j2 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzbhk.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzbhk.zzb(obj, j2)) != 0;
            case 2:
                return zzbhk.zzd(obj, j2) != 0;
            case 3:
                return zzbhk.zzd(obj, j2) != 0;
            case 4:
                return zzbhk.zzc(obj, j2) != 0;
            case 5:
                return zzbhk.zzd(obj, j2) != 0;
            case 6:
                return zzbhk.zzc(obj, j2) != 0;
            case 7:
                return zzbhk.zzw(obj, j2);
            case 8:
                Object objZzf = zzbhk.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzbdd) {
                    return !zzbdd.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzbhk.zzf(obj, j2) != null;
            case 10:
                return !zzbdd.zzb.equals(zzbhk.zzf(obj, j2));
            case 11:
                return zzbhk.zzc(obj, j2) != 0;
            case 12:
                return zzbhk.zzc(obj, j2) != 0;
            case 13:
                return zzbhk.zzc(obj, j2) != 0;
            case 14:
                return zzbhk.zzd(obj, j2) != 0;
            case 15:
                return zzbhk.zzc(obj, j2) != 0;
            case 16:
                return zzbhk.zzd(obj, j2) != 0;
            case 17:
                return zzbhk.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzN(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzbgm zzbgmVar) {
        return zzbgmVar.zzl(zzbhk.zzf(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzbel) {
            return ((zzbel) obj).zzU();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzbhk.zzc(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzbhk.zzf(obj, j)).booleanValue();
    }

    private static final int zzT(byte[] bArr, int i, int i2, zzbhq zzbhqVar, Class cls, zzbcr zzbcrVar) throws IOException {
        int i3;
        zzbhq zzbhqVar2 = zzbhq.DOUBLE;
        switch (zzbhqVar) {
            case DOUBLE:
                i3 = i + 8;
                zzbcrVar.zzc = Double.valueOf(Double.longBitsToDouble(zzbcs.zzq(bArr, i)));
                break;
            case FLOAT:
                i3 = i + 4;
                zzbcrVar.zzc = Float.valueOf(Float.intBitsToFloat(zzbcs.zzb(bArr, i)));
                break;
            case INT64:
            case UINT64:
                int iZzm = zzbcs.zzm(bArr, i, zzbcrVar);
                zzbcrVar.zzc = Long.valueOf(zzbcrVar.zzb);
                return iZzm;
            case INT32:
            case UINT32:
            case ENUM:
                int iZzj = zzbcs.zzj(bArr, i, zzbcrVar);
                zzbcrVar.zzc = Integer.valueOf(zzbcrVar.zza);
                return iZzj;
            case FIXED64:
            case SFIXED64:
                i3 = i + 8;
                zzbcrVar.zzc = Long.valueOf(zzbcs.zzq(bArr, i));
                break;
            case FIXED32:
            case SFIXED32:
                i3 = i + 4;
                zzbcrVar.zzc = Integer.valueOf(zzbcs.zzb(bArr, i));
                break;
            case BOOL:
                int iZzm2 = zzbcs.zzm(bArr, i, zzbcrVar);
                zzbcrVar.zzc = Boolean.valueOf(zzbcrVar.zzb != 0);
                return iZzm2;
            case STRING:
                return zzbcs.zzh(bArr, i, zzbcrVar);
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return zzbcs.zzd(zzbgb.zza().zzb(cls), bArr, i, i2, zzbcrVar);
            case BYTES:
                return zzbcs.zza(bArr, i, zzbcrVar);
            case SINT32:
                int iZzj2 = zzbcs.zzj(bArr, i, zzbcrVar);
                zzbcrVar.zzc = Integer.valueOf(zzbdj.zzF(zzbcrVar.zza));
                return iZzj2;
            case SINT64:
                int iZzm3 = zzbcs.zzm(bArr, i, zzbcrVar);
                zzbcrVar.zzc = Long.valueOf(zzbdj.zzG(zzbcrVar.zzb));
                return iZzm3;
        }
        return i3;
    }

    private static final void zzU(int i, Object obj, zzbhs zzbhsVar) throws IOException {
        if (obj instanceof String) {
            zzbhsVar.zzH(i, (String) obj);
        } else {
            zzbhsVar.zzd(i, (zzbdd) obj);
        }
    }

    static zzbhe zzd(Object obj) {
        zzbel zzbelVar = (zzbel) obj;
        zzbhe zzbheVar = zzbelVar.zzc;
        if (zzbheVar != zzbhe.zzc()) {
            return zzbheVar;
        }
        zzbhe zzbheVarZzf = zzbhe.zzf();
        zzbelVar.zzc = zzbheVarZzf;
        return zzbheVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:126:0x0268  */
    /* JADX WARN: Code duplicated, block: B:129:0x027f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0282  */
    /* JADX WARN: Code duplicated, block: B:169:0x0345  */
    /* JADX WARN: Code duplicated, block: B:183:0x0391  */
    /* JADX WARN: Code duplicated, block: B:186:0x039a  */
    static zzbfv zzm(Class cls, zzbfp zzbfpVar, zzbfy zzbfyVar, zzbfe zzbfeVar, zzbhd zzbhdVar, zzbdw zzbdwVar, zzbfn zzbfnVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        char cCharAt;
        int i8;
        char cCharAt2;
        int i9;
        char cCharAt3;
        int i10;
        char cCharAt4;
        int i11;
        char cCharAt5;
        int i12;
        char cCharAt6;
        int i13;
        char cCharAt7;
        int i14;
        char cCharAt8;
        int i15;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        int i20;
        int i21;
        Field fieldZzC;
        int i22;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldZzC2;
        int i28;
        Object obj2;
        Field fieldZzC3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(zzbfpVar instanceof zzbgd)) {
            throw null;
        }
        zzbgd zzbgdVar = (zzbgd) zzbfpVar;
        String strZzd = zzbgdVar.zzd();
        int length = strZzd.length();
        char c = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (strZzd.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int iCharAt3 = strZzd.charAt(i);
        if (iCharAt3 >= 55296) {
            int i35 = iCharAt3 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                cCharAt13 = strZzd.charAt(i34);
                if (cCharAt13 < 55296) {
                    break;
                }
                i35 |= (cCharAt13 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            iCharAt3 = i35 | (cCharAt13 << i36);
            i34 = i32;
        }
        if (iCharAt3 == 0) {
            i4 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i2 = 0;
            i5 = 0;
            i3 = 0;
            iArr = zza;
            i6 = 0;
        } else {
            int i37 = i34 + 1;
            int iCharAt4 = strZzd.charAt(i34);
            if (iCharAt4 >= 55296) {
                int i38 = iCharAt4 & 8191;
                int i39 = 13;
                while (true) {
                    i14 = i37 + 1;
                    cCharAt8 = strZzd.charAt(i37);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt8 & 8191) << i39;
                    i39 += 13;
                    i37 = i14;
                }
                iCharAt4 = i38 | (cCharAt8 << i39);
                i37 = i14;
            }
            int i40 = i37 + 1;
            int iCharAt5 = strZzd.charAt(i37);
            if (iCharAt5 >= 55296) {
                int i41 = iCharAt5 & 8191;
                int i42 = 13;
                while (true) {
                    i13 = i40 + 1;
                    cCharAt7 = strZzd.charAt(i40);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt7 & 8191) << i42;
                    i42 += 13;
                    i40 = i13;
                }
                iCharAt5 = i41 | (cCharAt7 << i42);
                i40 = i13;
            }
            int i43 = i40 + 1;
            int iCharAt6 = strZzd.charAt(i40);
            if (iCharAt6 >= 55296) {
                int i44 = iCharAt6 & 8191;
                int i45 = 13;
                while (true) {
                    i12 = i43 + 1;
                    cCharAt6 = strZzd.charAt(i43);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt6 & 8191) << i45;
                    i45 += 13;
                    i43 = i12;
                }
                iCharAt6 = i44 | (cCharAt6 << i45);
                i43 = i12;
            }
            int i46 = i43 + 1;
            int iCharAt7 = strZzd.charAt(i43);
            if (iCharAt7 >= 55296) {
                int i47 = iCharAt7 & 8191;
                int i48 = 13;
                while (true) {
                    i11 = i46 + 1;
                    cCharAt5 = strZzd.charAt(i46);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt5 & 8191) << i48;
                    i48 += 13;
                    i46 = i11;
                }
                iCharAt7 = i47 | (cCharAt5 << i48);
                i46 = i11;
            }
            int i49 = i46 + 1;
            iCharAt = strZzd.charAt(i46);
            if (iCharAt >= 55296) {
                int i50 = iCharAt & 8191;
                int i51 = 13;
                while (true) {
                    i10 = i49 + 1;
                    cCharAt4 = strZzd.charAt(i49);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt4 & 8191) << i51;
                    i51 += 13;
                    i49 = i10;
                }
                iCharAt = i50 | (cCharAt4 << i51);
                i49 = i10;
            }
            int i52 = i49 + 1;
            iCharAt2 = strZzd.charAt(i49);
            if (iCharAt2 >= 55296) {
                int i53 = iCharAt2 & 8191;
                int i54 = 13;
                while (true) {
                    i9 = i52 + 1;
                    cCharAt3 = strZzd.charAt(i52);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt3 & 8191) << i54;
                    i54 += 13;
                    i52 = i9;
                }
                iCharAt2 = i53 | (cCharAt3 << i54);
                i52 = i9;
            }
            int i55 = i52 + 1;
            int iCharAt8 = strZzd.charAt(i52);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i8 = i55 + 1;
                    cCharAt2 = strZzd.charAt(i55);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt2 & 8191) << i57;
                    i57 += 13;
                    i55 = i8;
                }
                iCharAt8 = i56 | (cCharAt2 << i57);
                i55 = i8;
            }
            int i58 = i55 + 1;
            int iCharAt9 = strZzd.charAt(i55);
            if (iCharAt9 >= 55296) {
                int i59 = iCharAt9 & 8191;
                int i60 = 13;
                while (true) {
                    i7 = i58 + 1;
                    cCharAt = strZzd.charAt(i58);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i59 |= (cCharAt & 8191) << i60;
                    i60 += 13;
                    i58 = i7;
                }
                iCharAt9 = i59 | (cCharAt << i60);
                i58 = i7;
            }
            int i61 = iCharAt4 + iCharAt4 + iCharAt5;
            int[] iArr2 = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i2 = iCharAt6;
            i3 = iCharAt9;
            i4 = i61;
            iArr = iArr2;
            i5 = iCharAt7;
            i6 = iCharAt4;
            i34 = i58;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzbgdVar.zze();
        Class<?> cls2 = zzbgdVar.zza().getClass();
        int i62 = i3 + iCharAt2;
        int i63 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i63];
        int i64 = i3;
        int i65 = i62;
        int i66 = 0;
        int i67 = 0;
        while (i34 < length) {
            int i68 = i34 + 1;
            int iCharAt10 = strZzd.charAt(i34);
            if (iCharAt10 >= c) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i31 = i70 + 1;
                    cCharAt12 = strZzd.charAt(i70);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i31;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i15 = i31;
            } else {
                i15 = i68;
            }
            int i72 = i15 + 1;
            int iCharAt11 = strZzd.charAt(i15);
            if (iCharAt11 >= c) {
                int i73 = iCharAt11 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i30 = i74 + 1;
                    cCharAt11 = strZzd.charAt(i74);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i75;
                    i75 += 13;
                    i74 = i30;
                }
                iCharAt11 = i73 | (cCharAt11 << i75);
                i16 = i30;
            } else {
                i16 = i72;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i66] = i67;
                i66++;
            }
            int i76 = iCharAt11 & 255;
            int i77 = length;
            int i78 = iCharAt11 & 2048;
            int i79 = i5;
            if (i76 >= 51) {
                int i80 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i81 = iCharAt12 & 8191;
                    int i82 = i80;
                    int i83 = 13;
                    while (true) {
                        i29 = i82 + 1;
                        cCharAt10 = strZzd.charAt(i82);
                        i17 = i2;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i81 |= (cCharAt10 & 8191) << i83;
                        i83 += 13;
                        i82 = i29;
                        i2 = i17;
                    }
                    iCharAt12 = i81 | (cCharAt10 << i83);
                    i25 = i29;
                } else {
                    i17 = i2;
                    i25 = i80;
                }
                int i84 = i76 - 51;
                int i85 = i25;
                if (i84 == 9 || i84 == 17) {
                    i26 = i4 + 1;
                    int i86 = i67 / 3;
                    objArr[i86 + i86 + 1] = objArrZze[i4];
                } else {
                    if (i84 == 12) {
                        if (zzbgdVar.zzc() == 1 || i78 != 0) {
                            i26 = i4 + 1;
                            int i87 = i67 / 3;
                            objArr[i87 + i87 + 1] = objArrZze[i4];
                        } else {
                            i78 = 0;
                        }
                    }
                    i27 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i27];
                    if (obj instanceof Field) {
                        fieldZzC2 = (Field) obj;
                    } else {
                        fieldZzC2 = zzC(cls2, (String) obj);
                        objArrZze[i27] = fieldZzC2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzC2);
                    i28 = i27 + 1;
                    obj2 = objArrZze[i28];
                    int i88 = i78;
                    if (obj2 instanceof Field) {
                        fieldZzC3 = (Field) obj2;
                    } else {
                        fieldZzC3 = zzC(cls2, (String) obj2);
                        objArrZze[i28] = fieldZzC3;
                    }
                    i18 = i4;
                    i19 = i85;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC3);
                    i20 = 0;
                    strZzd = strZzd;
                    zzbgdVar = zzbgdVar;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i21 = i88;
                }
                i4 = i26;
                i27 = iCharAt12 + iCharAt12;
                obj = objArrZze[i27];
                if (obj instanceof Field) {
                    fieldZzC2 = (Field) obj;
                } else {
                    fieldZzC2 = zzC(cls2, (String) obj);
                    objArrZze[i27] = fieldZzC2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzC2);
                i28 = i27 + 1;
                obj2 = objArrZze[i28];
                int i89 = i78;
                if (obj2 instanceof Field) {
                    fieldZzC3 = (Field) obj2;
                } else {
                    fieldZzC3 = zzC(cls2, (String) obj2);
                    objArrZze[i28] = fieldZzC3;
                }
                i18 = i4;
                i19 = i85;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC3);
                i20 = 0;
                strZzd = strZzd;
                zzbgdVar = zzbgdVar;
                iObjectFieldOffset = iObjectFieldOffset4;
                i21 = i89;
            } else {
                i17 = i2;
                i18 = i4 + 1;
                Field fieldZzC4 = zzC(cls2, (String) objArrZze[i4]);
                if (i76 == 9 || i76 == 17) {
                    int i90 = i67 / 3;
                    objArr[i90 + i90 + 1] = fieldZzC4.getType();
                } else {
                    if (i76 != 27) {
                        if (i76 == 49) {
                            i24 = i4 + 2;
                            i23 = 1;
                        } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                            zzbgdVar = zzbgdVar;
                            if (zzbgdVar.zzc() == 1 || i78 != 0) {
                                i24 = i4 + 2;
                                int i91 = i67 / 3;
                                objArr[i91 + i91 + 1] = objArrZze[i18];
                                i18 = i24;
                            } else {
                                i78 = 0;
                            }
                        } else if (i76 == 50) {
                            int i92 = i4 + 2;
                            int i93 = i64 + 1;
                            iArr[i64] = i67;
                            int i94 = i67 / 3;
                            int i95 = i94 + i94;
                            objArr[i95] = objArrZze[i18];
                            if (i78 != 0) {
                                i18 = i4 + 3;
                                objArr[i95 + 1] = objArrZze[i92];
                                i64 = i93;
                                zzbgdVar = zzbgdVar;
                            } else {
                                i18 = i92;
                                i64 = i93;
                                i78 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt11 & 4096) != 0 || i76 > 17) {
                            i19 = i16;
                            i20 = 0;
                        } else {
                            int i96 = i16 + 1;
                            int iCharAt13 = strZzd.charAt(i16);
                            if (iCharAt13 >= 55296) {
                                int i97 = iCharAt13 & 8191;
                                int i98 = 13;
                                while (true) {
                                    i22 = i96 + 1;
                                    cCharAt9 = strZzd.charAt(i96);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i97 |= (cCharAt9 & 8191) << i98;
                                    i98 += 13;
                                    i96 = i22;
                                }
                                iCharAt13 = i97 | (cCharAt9 << i98);
                                i96 = i22;
                            }
                            int i99 = i6 + i6 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i99];
                            i19 = i96;
                            if (obj3 instanceof Field) {
                                fieldZzC = (Field) obj3;
                            } else {
                                fieldZzC = zzC(cls2, (String) obj3);
                                objArrZze[i99] = fieldZzC;
                            }
                            i20 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC);
                        }
                        if (i76 >= 18 && i76 <= 49) {
                            iArr[i65] = iObjectFieldOffset;
                            i65++;
                        }
                        i21 = i78;
                    } else {
                        i23 = 1;
                        i24 = i4 + 2;
                    }
                    int i100 = i67 / 3;
                    objArr[i100 + i100 + i23] = objArrZze[i18];
                    i18 = i24;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0) {
                        i19 = i16;
                        i20 = 0;
                    } else {
                        i19 = i16;
                        i20 = 0;
                    }
                    if (i76 >= 18) {
                        iArr[i65] = iObjectFieldOffset;
                        i65++;
                    }
                    i21 = i78;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    i19 = i16;
                    i20 = 0;
                } else {
                    i19 = i16;
                    i20 = 0;
                }
                if (i76 >= 18) {
                    iArr[i65] = iObjectFieldOffset;
                    i65++;
                }
                i21 = i78;
            }
            int i101 = i67 + 1;
            iArr3[i67] = iCharAt10;
            int i102 = i67 + 2;
            Class<?> cls3 = cls2;
            iArr3[i101] = iObjectFieldOffset | (i21 != 0 ? Integer.MIN_VALUE : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? SQLiteDatabase.CREATE_IF_NECESSARY : 0) | (i76 << 20);
            i67 += 3;
            iArr3[i102] = (i20 << 20) | iObjectFieldOffset2;
            strZzd = strZzd;
            i4 = i18;
            length = i77;
            i5 = i79;
            cls2 = cls3;
            zzbgdVar = zzbgdVar;
            i34 = i19;
            i2 = i17;
            c = 55296;
        }
        return new zzbfv(iArr3, objArr, i2, i5, zzbgdVar.zza(), false, iArr, i3, i62, zzbfyVar, zzbfeVar, zzbhdVar, zzbdwVar, zzbfnVar);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzbhk.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzbhk.zzf(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzbhk.zzf(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzbhk.zzf(obj, j)).longValue();
    }

    private final zzbep zzw(int i) {
        int i2 = i / 3;
        return (zzbep) this.zzd[i2 + i2 + 1];
    }

    private final zzbgm zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzbgm zzbgmVar = (zzbgm) objArr[i3];
        if (zzbgmVar != null) {
            return zzbgmVar;
        }
        zzbgm zzbgmVarZzb = zzbgb.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzbgmVarZzb;
        return zzbgmVarZzb;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzbhd zzbhdVar, Object obj3) {
        zzbep zzbepVarZzw;
        int i2 = this.zzc[i];
        Object objZzf = zzbhk.zzf(obj, zzu(i) & 1048575);
        if (objZzf == null || (zzbepVarZzw = zzw(i)) == null) {
            return obj2;
        }
        zzbfk zzbfkVarZzc = ((zzbfl) zzz(i)).zzc();
        Iterator it = ((zzbfm) objZzf).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzbepVarZzw.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzbhdVar.zza(obj3);
                }
                int iZzb = zzbfl.zzb(zzbfkVarZzc, entry.getKey(), entry.getValue());
                zzbdd zzbddVar = zzbdd.zzb;
                byte[] bArr = new byte[iZzb];
                zzbdm zzbdmVar = new zzbdm(bArr, 0, iZzb);
                try {
                    zzbfl.zze(zzbdmVar, zzbfkVarZzc, entry.getKey(), entry.getValue());
                    zzbhdVar.zzg(obj2, i2, zzbcz.zza(zzbdmVar, bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0394  */
    /* JADX WARN: Code duplicated, block: B:207:0x0555  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v253, types: [int] */
    /* JADX WARN: Type inference failed for: r0v261 */
    /* JADX WARN: Type inference failed for: r0v263 */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v279 */
    /* JADX WARN: Type inference failed for: r0v280 */
    /* JADX WARN: Type inference failed for: r12v4, types: [int] */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v6, types: [int] */
    /* JADX WARN: Type inference failed for: r12v7, types: [int] */
    /* JADX WARN: Type inference failed for: r12v9, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v120, types: [int] */
    /* JADX WARN: Type inference failed for: r1v123, types: [int] */
    /* JADX WARN: Type inference failed for: r1v160 */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v166 */
    /* JADX WARN: Type inference failed for: r1v167 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v80, types: [int] */
    /* JADX WARN: Type inference failed for: r1v82 */
    /* JADX WARN: Type inference failed for: r2v32, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v44, types: [int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82, types: [int] */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r2v85, types: [int] */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [int] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [int] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v39, types: [int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v46, types: [int] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v38, types: [int] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final int zza(Object obj) {
        int i;
        ?? r16;
        ?? r5;
        int iZzF;
        int iZzF2;
        int iZzF3;
        int iZzG;
        int iZzF4;
        int iZzF5;
        int iZzd;
        int iZzF6;
        ?? Zzg;
        int size;
        int iZzF7;
        int iZzE;
        int iZzE2;
        ?? r3;
        int iZzD;
        ?? ZzF;
        ?? Zzh;
        int iZze;
        int iZzF8;
        int iZzF9;
        ?? r4;
        ?? r6;
        ?? r1;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i2 = 1048575;
        ?? r2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < this.zzc.length) {
            int iZzu = zzu(i3);
            int iZzt = zzt(iZzu);
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int i7 = iArr[i3 + 2];
            int i8 = i7 & i2;
            if (iZzt <= 17) {
                if (i8 != i5) {
                    r1 = i8 == i2 ? z : unsafe.getInt(obj, i8);
                    i5 = i8;
                }
                i = i5;
                r16 = r1;
                r5 = 1 << (i7 >>> 20);
            } else {
                r1 = r2;
                i = i5;
                r16 = r2 == true ? 1 : 0;
                r5 = z;
            }
            int i9 = iZzu & i2;
            if (iZzt >= zzbeb.DOUBLE_LIST_PACKED.zza()) {
                zzbeb.SINT64_LIST_PACKED.zza();
            }
            long j = i9;
            switch (iZzt) {
                case 0:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 1:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 2:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(j2);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 3:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(j3);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 4:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(j4);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 5:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 6:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 7:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF4 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF4 + 1;
                        i4 += Zzh;
                    }
                    break;
                case 8:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i10 = i6 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzbdd) {
                            iZzF5 = zzbdq.zzF(i10);
                            iZzd = ((zzbdd) object).zzd();
                            iZzF6 = zzbdq.zzF(iZzd);
                            Zzh = iZzF5 + iZzF6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzF3 = zzbdq.zzF(i10);
                            iZzG = zzbdq.zzE((String) object);
                            Zzh = iZzF3 + iZzG;
                            i4 += Zzh;
                        }
                    }
                    break;
                case 9:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        Zzh = zzbgo.zzh(i6, unsafe.getObject(obj, j), zzx(i3));
                        i4 += Zzh;
                    }
                    break;
                case 10:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        zzbdd zzbddVar = (zzbdd) unsafe.getObject(obj, j);
                        iZzF5 = zzbdq.zzF(i6 << 3);
                        iZzd = zzbddVar.zzd();
                        iZzF6 = zzbdq.zzF(iZzd);
                        Zzh = iZzF5 + iZzF6 + iZzd;
                        i4 += Zzh;
                    }
                    break;
                case 11:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i11 = unsafe.getInt(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzF(i11);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 12:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(j5);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 13:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 14:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 15:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzF((i12 >> 31) ^ (i12 + i12));
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 16:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG((j6 >> 63) ^ (j6 + j6));
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 17:
                    if (zzO(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        Zzh = zzbdq.zzB(i6, (zzbfs) unsafe.getObject(obj, j), zzx(i3));
                        i4 += Zzh;
                    }
                    break;
                case 18:
                    Zzh = zzbgo.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 19:
                    Zzh = zzbgo.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i13 = zzbgo.zza;
                    if (list.size() == 0) {
                        Zzg = z;
                    } else {
                        Zzg = zzbgo.zzg(list) + (list.size() * zzbdq.zzF(i6 << 3));
                    }
                    i4 += Zzg;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i14 = zzbgo.zza;
                    size = list2.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zzl(list2);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i15 = zzbgo.zza;
                    size = list3.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zzf(list3);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 23:
                    Zzh = zzbgo.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 24:
                    Zzh = zzbgo.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i16 = zzbgo.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        Zzh = z;
                    } else {
                        Zzh = size2 * (zzbdq.zzF(i6 << 3) + 1);
                    }
                    i4 += Zzh;
                    break;
                case 26:
                    ?? r0 = (List) unsafe.getObject(obj, j);
                    int i17 = zzbgo.zza;
                    int size3 = r0.size();
                    if (size3 == 0) {
                        Zzg = z;
                    } else {
                        int iZzF10 = zzbdq.zzF(i6 << 3) * size3;
                        if (r0 instanceof zzbfd) {
                            zzbfd zzbfdVar = (zzbfd) r0;
                            for (?? r7 = z; r7 < size3; r7++) {
                                Object objZzc = zzbfdVar.zzc();
                                if (objZzc instanceof zzbdd) {
                                    Zzg = iZzF10;
                                    int iZzd2 = ((zzbdd) objZzc).zzd();
                                    iZzE2 = Zzg + zzbdq.zzF(iZzd2) + iZzd2;
                                } else {
                                    Zzg = iZzF10;
                                    iZzE2 = Zzg + zzbdq.zzE((String) objZzc);
                                }
                                Zzg = iZzE2;
                            }
                            Zzg = iZzF10;
                        } else {
                            for (?? r8 = z; r8 < size3; r8++) {
                                Object obj2 = r0.get(r8);
                                if (obj2 instanceof zzbdd) {
                                    Zzg = iZzF10;
                                    int iZzd3 = ((zzbdd) obj2).zzd();
                                    iZzE = Zzg + zzbdq.zzF(iZzd3) + iZzd3;
                                } else {
                                    Zzg = iZzF10;
                                    iZzE = Zzg + zzbdq.zzE((String) obj2);
                                }
                                Zzg = iZzE;
                            }
                            Zzg = iZzF10;
                        }
                    }
                    i4 += Zzg;
                    break;
                case 27:
                    ?? r9 = (List) unsafe.getObject(obj, j);
                    zzbgm zzbgmVarZzx = zzx(i3);
                    int i18 = zzbgo.zza;
                    int size4 = r9.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        int iZzF11 = zzbdq.zzF(i6 << 3) * size4;
                        for (?? r10 = z; r10 < size4; r10++) {
                            Object obj3 = r9.get(r10);
                            if (obj3 instanceof zzbfc) {
                                r3 = iZzF11;
                                int iZza = ((zzbfc) obj3).zza();
                                iZzD = (r3 == true ? 1 : 0) + zzbdq.zzF(iZza) + iZza;
                            } else {
                                r3 = iZzF11;
                                iZzD = (r3 == true ? 1 : 0) + zzbdq.zzD((zzbfs) obj3, zzbgmVarZzx);
                            }
                            r3 = iZzD;
                        }
                        r3 = iZzF11;
                    }
                    i4 += r3;
                    break;
                case 28:
                    ?? r11 = (List) unsafe.getObject(obj, j);
                    int i19 = zzbgo.zza;
                    int size5 = r11.size();
                    if (size5 == 0) {
                        ZzF = z;
                    } else {
                        ZzF = size5 * zzbdq.zzF(i6 << 3);
                        for (?? r12 = z; r12 < r11.size(); r12++) {
                            int iZzd4 = ((zzbdd) r11.get(r12)).zzd();
                            ZzF += zzbdq.zzF(iZzd4) + iZzd4;
                        }
                    }
                    i4 += ZzF;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i20 = zzbgo.zza;
                    size = list5.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zzk(list5);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    int i21 = zzbgo.zza;
                    size = list6.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zza(list6);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 31:
                    Zzh = zzbgo.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 32:
                    Zzh = zzbgo.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i22 = zzbgo.zza;
                    size = list7.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zzi(list7);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i23 = zzbgo.zza;
                    size = list8.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzF3 = zzbgo.zzj(list8);
                        iZzF7 = zzbdq.zzF(i6 << 3);
                        iZzG = size * iZzF7;
                        Zzh = iZzF3 + iZzG;
                    }
                    i4 += Zzh;
                    break;
                case 35:
                    iZze = zzbgo.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 36:
                    iZze = zzbgo.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 37:
                    iZze = zzbgo.zzg((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 38:
                    iZze = zzbgo.zzl((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 39:
                    iZze = zzbgo.zzf((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 40:
                    iZze = zzbgo.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 41:
                    iZze = zzbgo.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i24 = zzbgo.zza;
                    iZze = list9.size();
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 43:
                    iZze = zzbgo.zzk((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 44:
                    iZze = zzbgo.zza((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 45:
                    iZze = zzbgo.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 46:
                    iZze = zzbgo.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 47:
                    iZze = zzbgo.zzi((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 48:
                    iZze = zzbgo.zzj((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzF8 = zzbdq.zzF(i6 << 3);
                        iZzF9 = zzbdq.zzF(iZze);
                        ZzF = iZzF8 + iZzF9 + iZze;
                        i4 += ZzF;
                    }
                    break;
                case 49:
                    ?? r13 = (List) unsafe.getObject(obj, j);
                    zzbgm zzbgmVarZzx2 = zzx(i3);
                    int i25 = zzbgo.zza;
                    int size6 = r13.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        while (r6 < size6) {
                            r6 = z2;
                            int iZzB = zzbdq.zzB(i6, (zzbfs) r13.get(r6), zzbgmVarZzx2);
                            r6++;
                            r4 = (r4 == true ? 1 : 0) + iZzB;
                        }
                        r6 = z2;
                    }
                    i4 += r4;
                    break;
                case 50:
                    zzbfm zzbfmVar = (zzbfm) unsafe.getObject(obj, j);
                    zzbfl zzbflVar = (zzbfl) zzz(i3);
                    if (zzbfmVar.isEmpty()) {
                        Zzg = z;
                    } else {
                        Zzg = z;
                        for (Map.Entry entry : zzbfmVar.entrySet()) {
                            Zzg += zzbflVar.zza(i6, entry.getKey(), entry.getValue());
                        }
                    }
                    i4 += Zzg;
                    break;
                case 51:
                    if (zzR(obj, i6, i3)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i3)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i3)) {
                        long jZzv = zzv(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(jZzv);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i3)) {
                        long jZzv2 = zzv(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(jZzv2);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i3)) {
                        long jZzp = zzp(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(jZzp);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i3)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i3)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i3)) {
                        iZzF4 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF4 + 1;
                        i4 += Zzh;
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i3)) {
                        int i26 = i6 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzbdd) {
                            iZzF5 = zzbdq.zzF(i26);
                            iZzd = ((zzbdd) object2).zzd();
                            iZzF6 = zzbdq.zzF(iZzd);
                            Zzh = iZzF5 + iZzF6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzF3 = zzbdq.zzF(i26);
                            iZzG = zzbdq.zzE((String) object2);
                            Zzh = iZzF3 + iZzG;
                            i4 += Zzh;
                        }
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i3)) {
                        Zzh = zzbgo.zzh(i6, unsafe.getObject(obj, j), zzx(i3));
                        i4 += Zzh;
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i3)) {
                        zzbdd zzbddVar2 = (zzbdd) unsafe.getObject(obj, j);
                        iZzF5 = zzbdq.zzF(i6 << 3);
                        iZzd = zzbddVar2.zzd();
                        iZzF6 = zzbdq.zzF(iZzd);
                        Zzh = iZzF5 + iZzF6 + iZzd;
                        i4 += Zzh;
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i3)) {
                        int iZzp = zzp(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzF(iZzp);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i3)) {
                        long jZzp2 = zzp(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG(jZzp2);
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i3)) {
                        iZzF2 = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF2 + 4;
                        i4 += Zzh;
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i3)) {
                        iZzF = zzbdq.zzF(i6 << 3);
                        Zzh = iZzF + 8;
                        i4 += Zzh;
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i3)) {
                        int iZzp2 = zzp(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzF((iZzp2 >> 31) ^ (iZzp2 + iZzp2));
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i3)) {
                        long jZzv3 = zzv(obj, j);
                        iZzF3 = zzbdq.zzF(i6 << 3);
                        iZzG = zzbdq.zzG((jZzv3 >> 63) ^ (jZzv3 + jZzv3));
                        Zzh = iZzF3 + iZzG;
                        i4 += Zzh;
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i3)) {
                        Zzh = zzbdq.zzB(i6, (zzbfs) unsafe.getObject(obj, j), zzx(i3));
                        i4 += Zzh;
                    }
                    break;
            }
            i3 += 3;
            i5 = i;
            r2 = r16;
            z = false;
            i2 = 1048575;
        }
        int iZza2 = i4 + ((zzbel) obj).zzc.zza();
        if (!this.zzh) {
            return iZza2;
        }
        zzbea zzbeaVar = ((zzbeh) obj).zzb;
        int iZzc = zzbeaVar.zza.zzc();
        int iZzb = 0;
        for (int i27 = 0; i27 < iZzc; i27++) {
            Map.Entry entryZzg = zzbeaVar.zza.zzg(i27);
            iZzb += zzbea.zzb((zzbdz) ((zzbgq) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzbeaVar.zza.zzd()) {
            iZzb += zzbea.zzb((zzbdz) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzc.length; i4 += 3) {
            int iZzu = zzu(i4);
            int[] iArr = this.zzc;
            int i5 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i6 = iArr[i4];
            long j = i5;
            int iHashCode = 37;
            switch (iZzt) {
                case 0:
                    i = i3 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzbhk.zza(obj, j));
                    byte[] bArr = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzbhk.zzb(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = zzbhk.zzd(obj, j);
                    byte[] bArr2 = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = zzbhk.zzd(obj, j);
                    byte[] bArr3 = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = zzbhk.zzd(obj, j);
                    byte[] bArr4 = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    iFloatToIntBits = zzbeu.zza(zzbhk.zzw(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    iFloatToIntBits = ((String) zzbhk.zzf(obj, j)).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object objZzf = zzbhk.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = i2 + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = zzbhk.zzd(obj, j);
                    byte[] bArr5 = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = zzbhk.zzd(obj, j);
                    byte[] bArr6 = zzbeu.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object objZzf2 = zzbhk.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i3 = i2 + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzbeu.zza(zzS(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = ((String) zzbhk.zzf(obj, j)).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzp(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzbeu.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzR(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzbhk.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + ((zzbel) obj).zzc.hashCode();
        return this.zzh ? (iHashCode2 * 53) + ((zzbeh) obj).zzb.zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:508:0x0c89 A[PHI: r0 r1 r7 r8 r12 r23 r28
  0x0c89: PHI (r0v271 boolean) = (r0v240 boolean), (r0v245 boolean), (r0v272 boolean) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r1v188 java.lang.Object) = (r1v158 java.lang.Object), (r1v162 java.lang.Object), (r1v189 java.lang.Object) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r7v74 com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbcr) = 
  (r7v48 com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbcr)
  (r7v52 com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbcr)
  (r7v75 com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbcr)
 binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r8v135 int) = (r8v110 int), (r8v114 int), (r8v136 int) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r12v45 int) = (r12v19 int), (r12v23 int), (r12v46 int) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r23v66 java.lang.String) = (r23v41 java.lang.String), (r23v45 java.lang.String), (r23v67 java.lang.String) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]
  0x0c89: PHI (r28v28 int) = (r28v7 int), (r28v11 int), (r28v29 int) binds: [B:506:0x0c71, B:492:0x0bf1, B:432:0x0a38] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:559:0x0e47  */
    /* JADX WARN: Code duplicated, block: B:619:0x08de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:0x0c8c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:664:0x08ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:670:0x0ca1 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzbcr zzbcrVar) throws IOException {
        zzbfv<T> zzbfvVar;
        String str;
        Unsafe unsafe;
        Object obj2;
        int iZzm;
        int i4;
        int i5;
        int iZzk;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        zzbfv<T> zzbfvVar2;
        Object obj3;
        Object obj4;
        int i10;
        Object obj5;
        int i11;
        int i12;
        int i13;
        zzbfv<T> zzbfvVar3;
        int i14;
        int iZzm2;
        zzbfv<T> zzbfvVar4;
        int i15;
        int i16;
        int i17;
        int i18;
        zzbet zzbetVar;
        zzbfv<T> zzbfvVar5;
        int i19;
        int i20;
        String str2;
        int i21;
        int i22;
        int i23;
        String str3;
        zzbfv<T> zzbfvVar6;
        int i24;
        int i25;
        int iZzj;
        Object[] objArr;
        int iZzl;
        int i26;
        int iZzj2;
        int iZzm3;
        int i27;
        int i28;
        int i29;
        zzbfv<T> zzbfvVar7 = this;
        Object obj6 = obj;
        i2 = i2;
        i3 = i3;
        zzbcr zzbcrVar2 = zzbcrVar;
        zzD(obj);
        Unsafe unsafe2 = zzb;
        int iZzi = i;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = -1;
        int i34 = 1048575;
        while (true) {
            Object objValueOf = null;
            if (iZzi < i2) {
                int i35 = iZzi + 1;
                int i36 = bArr[iZzi];
                if (i36 < 0) {
                    iZzk = zzbcs.zzk(i36, bArr, i35, zzbcrVar2);
                    i5 = zzbcrVar2.zza;
                } else {
                    i5 = i36;
                    iZzk = i35;
                }
                int i37 = i5 >>> 3;
                int iZzs = i37 > i33 ? (i37 < zzbfvVar7.zze || i37 > zzbfvVar7.zzf) ? -1 : zzbfvVar7.zzs(i37, i30 / 3) : zzbfvVar7.zzq(i37);
                if (iZzs != -1) {
                    int i38 = i5 & 7;
                    int[] iArr = zzbfvVar7.zzc;
                    int i39 = i5;
                    int i40 = iArr[iZzs + 1];
                    str = "Failed to parse the message.";
                    int iZzt = zzt(i40);
                    long j = i40 & 1048575;
                    if (iZzt <= 17) {
                        int i41 = iArr[iZzs + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i34) {
                            if (i34 != 1048575) {
                                unsafe2.putInt(obj6, i34, i32);
                            }
                            i32 = i43 == 1048575 ? 0 : unsafe2.getInt(obj6, i43);
                            i7 = i43;
                        } else {
                            i7 = i34;
                        }
                        switch (iZzt) {
                            case 0:
                                i11 = iZzk;
                                i12 = iZzs;
                                z = true;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 1) {
                                    iZzi = i11 + 8;
                                    i32 |= i42;
                                    zzbhk.zzo(obj6, j, Double.longBitsToDouble(zzbcs.zzq(bArr, i11)));
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i33 = i37;
                                    i34 = i7;
                                    zzbfvVar7 = this;
                                    i30 = i12;
                                } else {
                                    i15 = i12;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 1:
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 5) {
                                    iZzi = i11 + 4;
                                    i32 |= i42;
                                    zzbhk.zzp(obj6, j, Float.intBitsToFloat(zzbcs.zzb(bArr, i11)));
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i33 = i37;
                                    i34 = i7;
                                    zzbfvVar7 = this;
                                    i30 = i12;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 2:
                            case 3:
                                zzbfvVar3 = this;
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 0) {
                                    i14 = i42 | i32;
                                    iZzm2 = zzbcs.zzm(bArr, i11, zzbcrVar2);
                                    zzbfvVar4 = zzbfvVar3;
                                    unsafe2.putLong(obj, j, zzbcrVar2.zzb);
                                    i31 = i13;
                                    i30 = i12;
                                    i32 = i14;
                                    iZzi = iZzm2;
                                    zzbfvVar7 = zzbfvVar4;
                                    i33 = i37;
                                    i34 = i7;
                                    i3 = i3;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 4:
                            case 11:
                                zzbfvVar3 = this;
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 0) {
                                    i32 |= i42;
                                    iZzi = zzbcs.zzj(bArr, i11, zzbcrVar2);
                                    unsafe2.putInt(obj6, j, zzbcrVar2.zza);
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 5:
                            case 14:
                                i11 = iZzk;
                                i12 = iZzs;
                                z = true;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 1) {
                                    iZzm2 = i11 + 8;
                                    i14 = i42 | i32;
                                    zzbfvVar4 = this;
                                    unsafe2.putLong(obj, j, zzbcs.zzq(bArr, i11));
                                    i31 = i13;
                                    i30 = i12;
                                    i32 = i14;
                                    iZzi = iZzm2;
                                    zzbfvVar7 = zzbfvVar4;
                                    i33 = i37;
                                    i34 = i7;
                                    i3 = i3;
                                } else {
                                    i15 = i12;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 6:
                            case 13:
                                zzbfvVar3 = this;
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 5) {
                                    iZzi = i11 + 4;
                                    i32 |= i42;
                                    unsafe2.putInt(obj6, j, zzbcs.zzb(bArr, i11));
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 7:
                                zzbfvVar3 = this;
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 0) {
                                    i32 |= i42;
                                    iZzi = zzbcs.zzm(bArr, i11, zzbcrVar2);
                                    zzbhk.zzm(obj6, j, zzbcrVar2.zzb != 0);
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 8:
                                zzbfvVar3 = this;
                                i11 = iZzk;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 2) {
                                    i32 |= i42;
                                    iZzi = zzM(i40) ? zzbcs.zzh(bArr, i11, zzbcrVar2) : zzbcs.zzg(bArr, i11, zzbcrVar2);
                                    unsafe2.putObject(obj6, j, zzbcrVar2.zzc);
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 9:
                                zzbfvVar3 = this;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 2) {
                                    Object objZzA = zzbfvVar3.zzA(obj6, i12);
                                    zzbfvVar4 = zzbfvVar3;
                                    iZzi = zzbcs.zzo(objZzA, zzbfvVar3.zzx(i12), bArr, iZzk, i2, zzbcrVar);
                                    zzbfvVar4.zzJ(obj6, i12, objZzA);
                                    i31 = i13 == true ? 1 : 0;
                                    i30 = i12;
                                    i32 = i42 | i32;
                                    zzbfvVar7 = zzbfvVar4;
                                    i33 = i37;
                                    i34 = i7;
                                    i3 = i3;
                                } else {
                                    i11 = iZzk;
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 10:
                                zzbfvVar3 = this;
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 2) {
                                    i32 |= i42;
                                    iZzi = zzbcs.zza(bArr, iZzk, zzbcrVar2);
                                    unsafe2.putObject(obj6, j, zzbcrVar2.zzc);
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i11 = iZzk;
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 12:
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 0) {
                                    iZzi = zzbcs.zzj(bArr, iZzk, zzbcrVar2);
                                    int i44 = zzbcrVar2.zza;
                                    zzbfvVar3 = this;
                                    zzbep zzbepVarZzw = zzbfvVar3.zzw(i12);
                                    if ((i40 & Integer.MIN_VALUE) == 0 || zzbepVarZzw == null || zzbepVarZzw.zza(i44)) {
                                        i32 |= i42;
                                        unsafe2.putInt(obj6, j, i44);
                                    } else {
                                        zzd(obj).zzj(i13 == true ? 1 : 0, Long.valueOf(i44));
                                    }
                                    i2 = i2;
                                    i3 = i3;
                                    i31 = i13;
                                    i30 = i12;
                                    i33 = i37;
                                    zzbfvVar7 = zzbfvVar3;
                                    i34 = i7;
                                } else {
                                    i11 = iZzk;
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 15:
                                i12 = iZzs;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 0) {
                                    i32 |= i42;
                                    iZzi = zzbcs.zzj(bArr, iZzk, zzbcrVar2);
                                    unsafe2.putInt(obj6, j, zzbdj.zzF(zzbcrVar2.zza));
                                    i31 = i13 == true ? 1 : 0;
                                    i30 = i12;
                                    i33 = i37;
                                    i34 = i7;
                                    zzbfvVar7 = this;
                                } else {
                                    i11 = iZzk;
                                    i15 = i12;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            case 16:
                                if (i38 == 0) {
                                    int i45 = i32 | i42;
                                    int iZzm4 = zzbcs.zzm(bArr, iZzk, zzbcrVar2);
                                    unsafe2.putLong(obj, j, zzbdj.zzG(zzbcrVar2.zzb));
                                    i31 = i39 == true ? 1 : 0;
                                    i32 = i45;
                                    iZzi = iZzm4;
                                    i30 = iZzs;
                                    i33 = i37;
                                    i34 = i7;
                                    zzbfvVar7 = this;
                                } else {
                                    i13 = i39 == true ? 1 : 0;
                                    i11 = iZzk;
                                    i15 = iZzs;
                                    unsafe2 = unsafe2;
                                    z = true;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                            default:
                                i11 = iZzk;
                                i12 = iZzs;
                                z = true;
                                i13 = i39 == true ? 1 : 0;
                                if (i38 == 3) {
                                    Object objZzA2 = zzA(obj6, i12);
                                    int iZzn = zzbcs.zzn(objZzA2, zzx(i12), bArr, i11, i2, (i37 << 3) | 4, zzbcrVar);
                                    zzJ(obj6, i12, objZzA2);
                                    i3 = i3;
                                    zzbcrVar2 = zzbcrVar2;
                                    i2 = i2;
                                    unsafe2 = unsafe2;
                                    i31 = i13 == true ? 1 : 0;
                                    iZzi = iZzn;
                                    i34 = i7;
                                    i32 |= i42;
                                    zzbfvVar7 = this;
                                    i30 = i12;
                                    i33 = i37;
                                } else {
                                    i15 = i12;
                                    i9 = i15;
                                    iZzm = i11;
                                    unsafe = unsafe2;
                                    obj = obj6;
                                    i6 = i32;
                                    zzbcrVar2 = zzbcrVar2;
                                    i8 = i37;
                                    i4 = i13;
                                    i3 = i3;
                                }
                                break;
                        }
                    } else {
                        int i46 = iZzk;
                        i6 = i32;
                        i7 = i34;
                        zzbfv<T> zzbfvVar8 = zzbfvVar7;
                        Unsafe unsafe3 = unsafe2;
                        i13 = i39 == true ? 1 : 0;
                        if (iZzt != 27) {
                            int i47 = iZzs;
                            unsafe = unsafe3;
                            if (iZzt <= 49) {
                                long j2 = i40;
                                Unsafe unsafe4 = zzb;
                                zzbet zzbetVar2 = (zzbet) unsafe4.getObject(obj6, j);
                                if (zzbetVar2.zzc()) {
                                    zzbetVar = zzbetVar2;
                                } else {
                                    int size = zzbetVar2.size();
                                    zzbet zzbetVarZzd = zzbetVar2.zzd(size != 0 ? size + size : 10);
                                    unsafe4.putObject(obj6, j, zzbetVarZzd);
                                    zzbetVar = zzbetVarZzd;
                                }
                                switch (iZzt) {
                                    case 18:
                                    case 35:
                                        zzbfvVar5 = this;
                                        i19 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str2 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        if (i38 != 2) {
                                            if (i38 == 1) {
                                                iZzi = i19 + 8;
                                                int i48 = zzbcs.zza;
                                                zzbds zzbdsVar = (zzbds) zzbetVar;
                                                zzbdsVar.zzf(Double.longBitsToDouble(zzbcs.zzq(bArr, i19)));
                                                while (iZzi < i20) {
                                                    int iZzj3 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        zzbdsVar.zzf(Double.longBitsToDouble(zzbcs.zzq(bArr, iZzj3)));
                                                        iZzi = iZzj3 + 8;
                                                    }
                                                }
                                            }
                                            i22 = i19;
                                            str = str2;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i49 = zzbcs.zza;
                                            zzbds zzbdsVar2 = (zzbds) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i19, zzbcrVar2);
                                            int i50 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i50) {
                                                zzbdsVar2.zzf(Double.longBitsToDouble(zzbcs.zzq(bArr, iZzi)));
                                                iZzi += 8;
                                            }
                                            if (iZzi != i50) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i22 = i19;
                                        str = str2;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        zzbfvVar5 = this;
                                        i19 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str2 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        if (i38 != 2) {
                                            if (i38 == 5) {
                                                iZzi = i19 + 4;
                                                int i51 = zzbcs.zza;
                                                zzbec zzbecVar = (zzbec) zzbetVar;
                                                zzbecVar.zzg(Float.intBitsToFloat(zzbcs.zzb(bArr, i19)));
                                                while (iZzi < i20) {
                                                    int iZzj4 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        zzbecVar.zzg(Float.intBitsToFloat(zzbcs.zzb(bArr, iZzj4)));
                                                        iZzi = iZzj4 + 4;
                                                    }
                                                }
                                            }
                                            i22 = i19;
                                            str = str2;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i52 = zzbcs.zza;
                                            zzbec zzbecVar2 = (zzbec) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i19, zzbcrVar2);
                                            int i53 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i53) {
                                                zzbecVar2.zzg(Float.intBitsToFloat(zzbcs.zzb(bArr, iZzi)));
                                                iZzi += 4;
                                            }
                                            if (iZzi != i53) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i22 = i19;
                                        str = str2;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        zzbfvVar5 = this;
                                        i19 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str2 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        if (i38 != 2) {
                                            if (i38 == 0) {
                                                int i54 = zzbcs.zza;
                                                zzbfg zzbfgVar = (zzbfg) zzbetVar;
                                                iZzi = zzbcs.zzm(bArr, i19, zzbcrVar2);
                                                zzbfgVar.zzg(zzbcrVar2.zzb);
                                                while (iZzi < i20) {
                                                    int iZzj5 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzi = zzbcs.zzm(bArr, iZzj5, zzbcrVar2);
                                                        zzbfgVar.zzg(zzbcrVar2.zzb);
                                                    }
                                                }
                                            }
                                            i22 = i19;
                                            str = str2;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i55 = zzbcs.zza;
                                            zzbfg zzbfgVar2 = (zzbfg) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i19, zzbcrVar2);
                                            int i56 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i56) {
                                                iZzi = zzbcs.zzm(bArr, iZzi, zzbcrVar2);
                                                zzbfgVar2.zzg(zzbcrVar2.zzb);
                                            }
                                            if (iZzi != i56) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i22 = i19;
                                        str = str2;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i23 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str3 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        zzbfvVar6 = this;
                                        if (i38 == 2) {
                                            iZzi = zzbcs.zzf(bArr, i23, zzbetVar, zzbcrVar2);
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            i24 = i21;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else if (i38 == 0) {
                                            str2 = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            iZzi = zzbcs.zzl(i13 == true ? 1 : 0, bArr, i23, i2, zzbetVar, zzbcrVar);
                                            i22 = i23;
                                            str = str2;
                                            i24 = i21;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            zzbfvVar5 = zzbfvVar6;
                                            str = str3;
                                            i22 = i23;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        i23 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str3 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        zzbfvVar6 = this;
                                        if (i38 != 2) {
                                            if (i38 == 1) {
                                                iZzi = i23 + 8;
                                                int i57 = zzbcs.zza;
                                                zzbfg zzbfgVar3 = (zzbfg) zzbetVar;
                                                zzbfgVar3.zzg(zzbcs.zzq(bArr, i23));
                                                while (iZzi < i20) {
                                                    int iZzj6 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        zzbfgVar3.zzg(zzbcs.zzq(bArr, iZzj6));
                                                        iZzi = iZzj6 + 8;
                                                    }
                                                }
                                            }
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i58 = zzbcs.zza;
                                            zzbfg zzbfgVar4 = (zzbfg) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                            int i59 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i59) {
                                                zzbfgVar4.zzg(zzbcs.zzq(bArr, iZzi));
                                                iZzi += 8;
                                            }
                                            if (iZzi != i59) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        str = str3;
                                        zzbfvVar5 = zzbfvVar6;
                                        i22 = i23;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i23 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str3 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        zzbfvVar6 = this;
                                        if (i38 != 2) {
                                            if (i38 == 5) {
                                                iZzi = i23 + 4;
                                                int i60 = zzbcs.zza;
                                                zzbem zzbemVar = (zzbem) zzbetVar;
                                                zzbemVar.zzg(zzbcs.zzb(bArr, i23));
                                                while (iZzi < i20) {
                                                    int iZzj7 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        zzbemVar.zzg(zzbcs.zzb(bArr, iZzj7));
                                                        iZzi = iZzj7 + 4;
                                                    }
                                                }
                                            }
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i61 = zzbcs.zza;
                                            zzbem zzbemVar2 = (zzbem) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                            int i62 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i62) {
                                                zzbemVar2.zzg(zzbcs.zzb(bArr, iZzi));
                                                iZzi += 4;
                                            }
                                            if (iZzi != i62) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        str = str3;
                                        zzbfvVar5 = zzbfvVar6;
                                        i22 = i23;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i23 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str3 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        zzbfvVar6 = this;
                                        if (i38 != 2) {
                                            if (i38 == 0) {
                                                int i63 = zzbcs.zza;
                                                zzbct zzbctVar = (zzbct) zzbetVar;
                                                iZzi = zzbcs.zzm(bArr, i23, zzbcrVar2);
                                                zzbctVar.zze(zzbcrVar2.zzb != 0);
                                                while (iZzi < i20) {
                                                    int iZzj8 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzi = zzbcs.zzm(bArr, iZzj8, zzbcrVar2);
                                                        zzbctVar.zze(zzbcrVar2.zzb != 0);
                                                    }
                                                }
                                            }
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i64 = zzbcs.zza;
                                            zzbct zzbctVar2 = (zzbct) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                            int i65 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i65) {
                                                iZzi = zzbcs.zzm(bArr, iZzi, zzbcrVar2);
                                                zzbctVar2.zze(zzbcrVar2.zzb != 0);
                                            }
                                            if (iZzi != i65) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        str = str3;
                                        zzbfvVar5 = zzbfvVar6;
                                        i22 = i23;
                                        i24 = i21;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 26:
                                        i23 = i46;
                                        i20 = i2;
                                        i25 = i37;
                                        str3 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        zzbfvVar6 = this;
                                        if (i38 == 2) {
                                            if ((j2 & 536870912) == 0) {
                                                iZzj = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                                int i66 = zzbcrVar2.zza;
                                                if (i66 < 0) {
                                                    throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i66 == 0) {
                                                    objArr = "";
                                                    zzbetVar.add(objArr);
                                                } else {
                                                    objArr = "";
                                                    zzbetVar.add(new String(bArr, iZzj, i66, zzbeu.zza));
                                                    iZzj += i66;
                                                }
                                                while (iZzj < i20) {
                                                    int iZzj9 = zzbcs.zzj(bArr, iZzj, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzj = zzbcs.zzj(bArr, iZzj9, zzbcrVar2);
                                                        int i67 = zzbcrVar2.zza;
                                                        if (i67 < 0) {
                                                            throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i67 == 0) {
                                                            zzbetVar.add(objArr);
                                                        } else {
                                                            zzbetVar.add(new String(bArr, iZzj, i67, zzbeu.zza));
                                                            iZzj += i67;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iZzj = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                                int i68 = zzbcrVar2.zza;
                                                if (i68 < 0) {
                                                    throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i68 == 0) {
                                                    zzbetVar.add("");
                                                } else {
                                                    int i69 = iZzj + i68;
                                                    if (!zzbhp.zze(bArr, iZzj, i69)) {
                                                        throw new zzbew("Protocol message had invalid UTF-8.");
                                                    }
                                                    zzbetVar.add(new String(bArr, iZzj, i68, zzbeu.zza));
                                                    iZzj = i69;
                                                }
                                                while (iZzj < i20) {
                                                    int iZzj10 = zzbcs.zzj(bArr, iZzj, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzj = zzbcs.zzj(bArr, iZzj10, zzbcrVar2);
                                                        int i70 = zzbcrVar2.zza;
                                                        if (i70 < 0) {
                                                            throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i70 == 0) {
                                                            zzbetVar.add("");
                                                        } else {
                                                            int i71 = iZzj + i70;
                                                            if (!zzbhp.zze(bArr, iZzj, i71)) {
                                                                throw new zzbew("Protocol message had invalid UTF-8.");
                                                            }
                                                            zzbetVar.add(new String(bArr, iZzj, i70, zzbeu.zza));
                                                            iZzj = i71;
                                                        }
                                                    }
                                                }
                                            }
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            iZzi = iZzj;
                                            i24 = i21;
                                            i8 = i25;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            i8 = i25;
                                            str = str3;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            i24 = i21;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        }
                                        break;
                                    case 27:
                                        this = this;
                                        i23 = i46;
                                        i20 = i2;
                                        i47 = i47;
                                        unsafe = unsafe;
                                        if (i38 == 2) {
                                            zzbfvVar6 = this;
                                            i25 = i37;
                                            i21 = i47;
                                            iZzj = zzbcs.zze(this.zzx(i47), i13 == true ? 1 : 0, bArr, i23, i2, zzbetVar, zzbcrVar);
                                            zzbcrVar2 = zzbcrVar2;
                                            zzbfvVar5 = zzbfvVar6;
                                            i22 = i23;
                                            iZzi = iZzj;
                                            i24 = i21;
                                            i8 = i25;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        }
                                        i22 = i23;
                                        int i72 = i47;
                                        zzbfvVar5 = this;
                                        i8 = i37;
                                        i24 = i72;
                                        iZzi = i22;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 28:
                                        this = this;
                                        i23 = i46;
                                        i20 = i2;
                                        i47 = i47;
                                        unsafe = unsafe;
                                        if (i38 == 2) {
                                            int iZzj11 = zzbcs.zzj(bArr, i23, zzbcrVar2);
                                            int i73 = zzbcrVar2.zza;
                                            if (i73 < 0) {
                                                throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i73 > bArr.length - iZzj11) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i73 == 0) {
                                                zzbetVar.add(zzbdd.zzb);
                                            } else {
                                                zzbetVar.add(zzbdd.zzo(bArr, iZzj11, i73));
                                                iZzj11 += i73;
                                            }
                                            while (iZzj11 < i20) {
                                                int iZzj12 = zzbcs.zzj(bArr, iZzj11, zzbcrVar2);
                                                if (i13 != zzbcrVar2.zza) {
                                                    iZzi = iZzj11;
                                                    i22 = i23;
                                                    int i74 = i47;
                                                    zzbfvVar5 = this;
                                                    i8 = i37;
                                                    i24 = i74;
                                                    if (iZzi != i22) {
                                                        i3 = i3;
                                                        i31 = i13 == true ? 1 : 0;
                                                        i33 = i8;
                                                        i30 = i24;
                                                        zzbfvVar7 = zzbfvVar5;
                                                        i32 = i6;
                                                        i34 = i7;
                                                        unsafe2 = unsafe;
                                                        i2 = i20;
                                                        obj6 = obj;
                                                    } else {
                                                        obj = obj;
                                                        iZzm = iZzi;
                                                        i9 = i24;
                                                        zzbcrVar2 = zzbcrVar2;
                                                        z = true;
                                                        i4 = i13;
                                                        i3 = i3;
                                                    }
                                                    break;
                                                } else {
                                                    iZzj11 = zzbcs.zzj(bArr, iZzj12, zzbcrVar2);
                                                    int i75 = zzbcrVar2.zza;
                                                    if (i75 < 0) {
                                                        throw new zzbew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i75 > bArr.length - iZzj11) {
                                                        throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i75 == 0) {
                                                        zzbetVar.add(zzbdd.zzb);
                                                    } else {
                                                        zzbetVar.add(zzbdd.zzo(bArr, iZzj11, i75));
                                                        iZzj11 += i75;
                                                    }
                                                }
                                            }
                                            iZzi = iZzj11;
                                            i22 = i23;
                                            int i76 = i47;
                                            zzbfvVar5 = this;
                                            i8 = i37;
                                            i24 = i76;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        }
                                        i22 = i23;
                                        int i77 = i47;
                                        zzbfvVar5 = this;
                                        i8 = i37;
                                        i24 = i77;
                                        iZzi = i22;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        if (i38 == 2) {
                                            iZzl = zzbcs.zzf(bArr, i46, zzbetVar, zzbcrVar2);
                                            i20 = i2;
                                        } else if (i38 != 0) {
                                            i20 = i2;
                                            unsafe = unsafe;
                                            zzbfvVar5 = this;
                                            i22 = i46;
                                            i8 = i37;
                                            i24 = i47;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            i20 = i2;
                                            iZzl = zzbcs.zzl(i13 == true ? 1 : 0, bArr, i46, i2, zzbetVar, zzbcrVar);
                                        }
                                        zzbgo.zzn(obj, i37, zzbetVar, zzw(i47), null, this.zzm);
                                        i22 = i46;
                                        iZzi = iZzl;
                                        int i78 = i47;
                                        zzbfvVar5 = this;
                                        i8 = i37;
                                        i24 = i78;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        if (i38 != 2) {
                                            if (i38 == 0) {
                                                int i79 = zzbcs.zza;
                                                zzbem zzbemVar3 = (zzbem) zzbetVar;
                                                iZzi = zzbcs.zzj(bArr, i46, zzbcrVar2);
                                                zzbemVar3.zzg(zzbdj.zzF(zzbcrVar2.zza));
                                                while (iZzi < i2) {
                                                    int iZzj13 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzi = zzbcs.zzj(bArr, iZzj13, zzbcrVar2);
                                                        zzbemVar3.zzg(zzbdj.zzF(zzbcrVar2.zza));
                                                    }
                                                }
                                            }
                                            zzbfvVar5 = this;
                                            i22 = i46;
                                            i20 = i2;
                                            i8 = i37;
                                            i24 = i47;
                                            unsafe = unsafe;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i80 = zzbcs.zza;
                                            zzbem zzbemVar4 = (zzbem) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i46, zzbcrVar2);
                                            int i81 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i81) {
                                                iZzi = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                zzbemVar4.zzg(zzbdj.zzF(zzbcrVar2.zza));
                                            }
                                            if (iZzi != i81) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        zzbfvVar5 = this;
                                        i22 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        i24 = i47;
                                        unsafe = unsafe;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        if (i38 != 2) {
                                            if (i38 == 0) {
                                                int i82 = zzbcs.zza;
                                                zzbfg zzbfgVar5 = (zzbfg) zzbetVar;
                                                iZzi = zzbcs.zzm(bArr, i46, zzbcrVar2);
                                                zzbfgVar5.zzg(zzbdj.zzG(zzbcrVar2.zzb));
                                                while (iZzi < i2) {
                                                    int iZzj14 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                    if (i13 == zzbcrVar2.zza) {
                                                        iZzi = zzbcs.zzm(bArr, iZzj14, zzbcrVar2);
                                                        zzbfgVar5.zzg(zzbdj.zzG(zzbcrVar2.zzb));
                                                    }
                                                }
                                            }
                                            zzbfvVar5 = this;
                                            i22 = i46;
                                            i20 = i2;
                                            i8 = i37;
                                            i24 = i47;
                                            unsafe = unsafe;
                                            iZzi = i22;
                                            if (iZzi != i22) {
                                                i3 = i3;
                                                i31 = i13 == true ? 1 : 0;
                                                i33 = i8;
                                                i30 = i24;
                                                zzbfvVar7 = zzbfvVar5;
                                                i32 = i6;
                                                i34 = i7;
                                                unsafe2 = unsafe;
                                                i2 = i20;
                                                obj6 = obj;
                                            } else {
                                                obj = obj;
                                                iZzm = iZzi;
                                                i9 = i24;
                                                zzbcrVar2 = zzbcrVar2;
                                                z = true;
                                                i4 = i13;
                                                i3 = i3;
                                            }
                                        } else {
                                            int i83 = zzbcs.zza;
                                            zzbfg zzbfgVar6 = (zzbfg) zzbetVar;
                                            iZzi = zzbcs.zzj(bArr, i46, zzbcrVar2);
                                            int i84 = zzbcrVar2.zza + iZzi;
                                            while (iZzi < i84) {
                                                iZzi = zzbcs.zzm(bArr, iZzi, zzbcrVar2);
                                                zzbfgVar6.zzg(zzbdj.zzG(zzbcrVar2.zzb));
                                            }
                                            if (iZzi != i84) {
                                                throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        zzbfvVar5 = this;
                                        i22 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        i24 = i47;
                                        unsafe = unsafe;
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                    default:
                                        zzbfvVar5 = this;
                                        i19 = i46;
                                        i20 = i2;
                                        i8 = i37;
                                        str2 = str;
                                        i21 = i47;
                                        unsafe = unsafe;
                                        if (i38 == 3) {
                                            int i85 = ((i13 == true ? 1 : 0) & (-8)) | 4;
                                            zzbgm zzbgmVarZzx = zzbfvVar5.zzx(i21);
                                            str = str2;
                                            i24 = i21;
                                            i22 = i19;
                                            iZzi = zzbcs.zzc(zzbgmVarZzx, bArr, i19, i2, i85, zzbcrVar);
                                            zzbetVar.add(zzbcrVar2.zzc);
                                            while (iZzi < i20) {
                                                int iZzj15 = zzbcs.zzj(bArr, iZzi, zzbcrVar2);
                                                if (i13 == zzbcrVar2.zza) {
                                                    iZzi = zzbcs.zzc(zzbgmVarZzx, bArr, iZzj15, i2, i85, zzbcrVar);
                                                    zzbetVar.add(zzbcrVar2.zzc);
                                                }
                                            }
                                        } else {
                                            i22 = i19;
                                            str = str2;
                                            i24 = i21;
                                            iZzi = i22;
                                        }
                                        if (iZzi != i22) {
                                            i3 = i3;
                                            i31 = i13 == true ? 1 : 0;
                                            i33 = i8;
                                            i30 = i24;
                                            zzbfvVar7 = zzbfvVar5;
                                            i32 = i6;
                                            i34 = i7;
                                            unsafe2 = unsafe;
                                            i2 = i20;
                                            obj6 = obj;
                                        } else {
                                            obj = obj;
                                            iZzm = iZzi;
                                            i9 = i24;
                                            zzbcrVar2 = zzbcrVar2;
                                            z = true;
                                            i4 = i13;
                                            i3 = i3;
                                        }
                                        break;
                                }
                            } else {
                                i16 = i13 == true ? 1 : 0;
                                int i86 = i37;
                                str = str;
                                i9 = i47;
                                unsafe = unsafe;
                                i18 = i46;
                                if (iZzt != 50) {
                                    Unsafe unsafe5 = zzb;
                                    long j3 = iArr[i9 + 2] & 1048575;
                                    switch (iZzt) {
                                        case 51:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            z = true;
                                            if (i38 == 1) {
                                                unsafe5.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzbcs.zzq(bArr, i18))));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = i18 + 8;
                                            } else {
                                                iZzj2 = i18;
                                            }
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 52:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 5) {
                                                iZzm3 = i18 + 4;
                                                unsafe5.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzbcs.zzb(bArr, i18))));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 0) {
                                                iZzm3 = zzbcs.zzm(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, Long.valueOf(zzbcrVar2.zzb));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 0) {
                                                iZzm3 = zzbcs.zzj(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, Integer.valueOf(zzbcrVar2.zza));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            z = true;
                                            if (i38 == 1) {
                                                iZzm3 = i18 + 8;
                                                unsafe5.putObject(obj, j, Long.valueOf(zzbcs.zzq(bArr, i18)));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                            } else {
                                                iZzj2 = i18;
                                            }
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 5) {
                                                iZzm3 = i18 + 4;
                                                unsafe5.putObject(obj, j, Integer.valueOf(zzbcs.zzb(bArr, i18)));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 58:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 0) {
                                                iZzm3 = zzbcs.zzm(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, Boolean.valueOf(zzbcrVar2.zzb != 0));
                                                unsafe5.putInt(obj, j3, i8);
                                                iZzj2 = iZzm3;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 59:
                                            obj = obj;
                                            str = str;
                                            i9 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            if (i38 == 2) {
                                                iZzj2 = zzbcs.zzj(bArr, i18, zzbcrVar2);
                                                int i87 = zzbcrVar2.zza;
                                                if (i87 == 0) {
                                                    unsafe5.putObject(obj, j, "");
                                                } else {
                                                    int i88 = iZzj2 + i87;
                                                    if ((i40 & 536870912) != 0 && !zzbhp.zze(bArr, iZzj2, i88)) {
                                                        throw new zzbew("Protocol message had invalid UTF-8.");
                                                    }
                                                    unsafe5.putObject(obj, j, new String(bArr, iZzj2, i87, zzbeu.zza));
                                                    iZzj2 = i88;
                                                }
                                                unsafe5.putInt(obj, j3, i8);
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 60:
                                            obj = obj;
                                            str = str;
                                            i27 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i28 = i86;
                                            if (i38 == 2) {
                                                Object objZzB = zzB(obj, i28, i27);
                                                int iZzo = zzbcs.zzo(objZzB, zzx(i27), bArr, i18, i2, zzbcrVar);
                                                zzK(obj, i28, i27, objZzB);
                                                iZzj2 = iZzo;
                                                i9 = i27;
                                                i8 = i28;
                                                obj = obj;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            } else {
                                                i9 = i27;
                                                i8 = i28;
                                                z = true;
                                                iZzj2 = i18;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            break;
                                        case 61:
                                            obj = obj;
                                            str = str;
                                            i27 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i4 = i16 == true ? 1 : 0;
                                            i28 = i86;
                                            if (i38 == 2) {
                                                iZzj2 = zzbcs.zza(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, zzbcrVar2.zzc);
                                                unsafe5.putInt(obj, j3, i28);
                                                i9 = i27;
                                                i8 = i28;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            i9 = i27;
                                            i8 = i28;
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 63:
                                            obj = obj;
                                            str = str;
                                            i27 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i28 = i86;
                                            if (i38 == 0) {
                                                iZzj2 = zzbcs.zzj(bArr, i18, zzbcrVar2);
                                                int i89 = zzbcrVar2.zza;
                                                zzbep zzbepVarZzw2 = zzw(i27);
                                                if (zzbepVarZzw2 == null || zzbepVarZzw2.zza(i89)) {
                                                    i4 = i16 == true ? 1 : 0;
                                                    unsafe5.putObject(obj, j, Integer.valueOf(i89));
                                                    unsafe5.putInt(obj, j3, i28);
                                                } else {
                                                    zzbhe zzbheVarZzd = zzd(obj);
                                                    Long lValueOf = Long.valueOf(i89);
                                                    i4 = i16 == true ? 1 : 0;
                                                    zzbheVarZzd.zzj(i4 == true ? 1 : 0, lValueOf);
                                                }
                                                i9 = i27;
                                                i8 = i28;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            } else {
                                                i4 = i16 == true ? 1 : 0;
                                                i9 = i27;
                                                i8 = i28;
                                                z = true;
                                                iZzj2 = i18;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            break;
                                        case 66:
                                            obj = obj;
                                            str = str;
                                            i29 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i28 = i86;
                                            if (i38 == 0) {
                                                iZzj2 = zzbcs.zzj(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, Integer.valueOf(zzbdj.zzF(zzbcrVar2.zza)));
                                                unsafe5.putInt(obj, j3, i28);
                                                i9 = i29;
                                                i4 = i16 == true ? 1 : 0;
                                                i8 = i28;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            i9 = i29;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i28;
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 67:
                                            obj = obj;
                                            str = str;
                                            i29 = i9;
                                            zzbcrVar2 = zzbcrVar2;
                                            i28 = i86;
                                            if (i38 == 0) {
                                                iZzj2 = zzbcs.zzm(bArr, i18, zzbcrVar2);
                                                unsafe5.putObject(obj, j, Long.valueOf(zzbdj.zzG(zzbcrVar2.zzb)));
                                                unsafe5.putInt(obj, j3, i28);
                                                i9 = i29;
                                                i4 = i16 == true ? 1 : 0;
                                                i8 = i28;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            i9 = i29;
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i28;
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                        case 68:
                                            if (i38 == 3) {
                                                int i90 = ((i16 == true ? 1 : 0) & (-8)) | 4;
                                                obj = obj;
                                                i28 = i86;
                                                Object objZzB2 = zzB(obj, i28, i9);
                                                str = str;
                                                zzbcrVar2 = zzbcrVar2;
                                                int iZzn2 = zzbcs.zzn(objZzB2, zzx(i9), bArr, i18, i2, i90, zzbcrVar);
                                                zzK(obj, i28, i9, objZzB2);
                                                i9 = i9;
                                                i18 = i18;
                                                iZzj2 = iZzn2;
                                                i4 = i16 == true ? 1 : 0;
                                                i8 = i28;
                                                z = true;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            } else {
                                                i4 = i16 == true ? 1 : 0;
                                                i8 = i86;
                                                z = true;
                                                iZzj2 = i18;
                                                if (iZzj2 != i18) {
                                                    zzbfvVar7 = this;
                                                    i2 = i2;
                                                    i3 = i3;
                                                    iZzi = iZzj2;
                                                    i31 = i4 == true ? 1 : 0;
                                                    i32 = i6;
                                                    i34 = i7;
                                                    i30 = i9;
                                                    unsafe2 = unsafe;
                                                    zzbcrVar2 = zzbcrVar2;
                                                    obj6 = obj;
                                                    i33 = i8;
                                                } else {
                                                    i3 = i3;
                                                    iZzm = iZzj2;
                                                }
                                            }
                                            break;
                                        default:
                                            i4 = i16 == true ? 1 : 0;
                                            i8 = i86;
                                            z = true;
                                            iZzj2 = i18;
                                            if (iZzj2 != i18) {
                                                zzbfvVar7 = this;
                                                i2 = i2;
                                                i3 = i3;
                                                iZzi = iZzj2;
                                                i31 = i4 == true ? 1 : 0;
                                                i32 = i6;
                                                i34 = i7;
                                                i30 = i9;
                                                unsafe2 = unsafe;
                                                zzbcrVar2 = zzbcrVar2;
                                                obj6 = obj;
                                                i33 = i8;
                                            } else {
                                                i3 = i3;
                                                iZzm = iZzj2;
                                            }
                                            break;
                                    }
                                } else if (i38 == 2) {
                                    Unsafe unsafe6 = zzb;
                                    Object objZzz = zzz(i9);
                                    Object object = unsafe6.getObject(obj, j);
                                    if (zzbfn.zza(object)) {
                                        zzbfm zzbfmVarZzb = zzbfm.zza().zzb();
                                        zzbfn.zzb(zzbfmVarZzb, object);
                                        unsafe6.putObject(obj, j, zzbfmVarZzb);
                                        object = zzbfmVarZzb;
                                    }
                                    zzbfk zzbfkVarZzc = ((zzbfl) objZzz).zzc();
                                    zzbfm zzbfmVar = (zzbfm) object;
                                    int iZzj16 = zzbcs.zzj(bArr, i18, zzbcrVar2);
                                    int i91 = zzbcrVar2.zza;
                                    if (i91 < 0 || i91 > i2 - iZzj16) {
                                        throw new zzbew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                    }
                                    iZzm = iZzj16 + i91;
                                    Object obj7 = zzbfkVarZzc.zzb;
                                    Object obj8 = zzbfkVarZzc.zzd;
                                    while (iZzj16 < iZzm) {
                                        int iZzk2 = iZzj16 + 1;
                                        int i92 = bArr[iZzj16];
                                        if (i92 < 0) {
                                            iZzk2 = zzbcs.zzk(i92, bArr, iZzk2, zzbcrVar2);
                                            i92 = zzbcrVar2.zza;
                                        }
                                        int i93 = i92 >>> 3;
                                        Object obj9 = obj8;
                                        int i94 = i92 & 7;
                                        if (i93 != 1) {
                                            if (i93 != 2) {
                                                obj7 = obj7;
                                                i26 = i86;
                                                iZzj16 = zzbcs.zzp(i92, bArr, iZzk2, i2, zzbcrVar2);
                                                obj8 = obj9;
                                            } else if (i94 == zzbfkVarZzc.zzc.zza()) {
                                                i26 = i86;
                                                obj7 = obj7;
                                                iZzj16 = zzT(bArr, iZzk2, i2, zzbfkVarZzc.zzc, zzbfkVarZzc.zzd.getClass(), zzbcrVar);
                                                obj8 = zzbcrVar2.zzc;
                                            } else {
                                                i26 = i86;
                                            }
                                            obj7 = obj7;
                                            i86 = i26;
                                        } else {
                                            i26 = i86;
                                            if (i94 == zzbfkVarZzc.zza.zza()) {
                                                iZzj16 = zzT(bArr, iZzk2, i2, zzbfkVarZzc.zza, null, zzbcrVar);
                                                obj7 = zzbcrVar2.zzc;
                                                obj8 = obj9;
                                            }
                                            i86 = i26;
                                        }
                                        iZzj16 = zzbcs.zzp(i92, bArr, iZzk2, i2, zzbcrVar2);
                                        obj8 = obj9;
                                        obj7 = obj7;
                                        i86 = i26;
                                    }
                                    Object obj10 = obj8;
                                    Object obj11 = obj7;
                                    i17 = i86;
                                    if (iZzj16 != iZzm) {
                                        throw new zzbew(str);
                                    }
                                    zzbfmVar.put(obj11, obj10);
                                    if (iZzm != i18) {
                                        zzbfvVar7 = this;
                                        obj6 = obj;
                                        i3 = i3;
                                        i30 = i9;
                                        iZzi = iZzm;
                                        i32 = i6;
                                        i31 = i16 == true ? 1 : 0;
                                        i34 = i7;
                                        unsafe2 = unsafe;
                                        i33 = i17;
                                        i2 = i2;
                                    } else {
                                        str = str;
                                        i9 = i9;
                                        zzbcrVar2 = zzbcrVar2;
                                        i4 = i16;
                                        i8 = i17;
                                        z = true;
                                    }
                                } else {
                                    i17 = i86;
                                    str = str;
                                    iZzm = i18;
                                    i9 = i9;
                                    zzbcrVar2 = zzbcrVar2;
                                    i4 = i16;
                                    i8 = i17;
                                    z = true;
                                }
                            }
                        } else if (i38 == 2) {
                            zzbet zzbetVarZzd2 = (zzbet) unsafe3.getObject(obj6, j);
                            if (!zzbetVarZzd2.zzc()) {
                                int size2 = zzbetVarZzd2.size();
                                zzbetVarZzd2 = zzbetVarZzd2.zzd(size2 != 0 ? size2 + size2 : 10);
                                unsafe3.putObject(obj6, j, zzbetVarZzd2);
                            }
                            i33 = i37;
                            int iZze = zzbcs.zze(zzbfvVar8.zzx(iZzs), i13 == true ? 1 : 0, bArr, i46, i2, zzbetVarZzd2, zzbcrVar);
                            i3 = i3;
                            zzbcrVar2 = zzbcrVar2;
                            i2 = i2;
                            unsafe2 = unsafe3;
                            i31 = i13 == true ? 1 : 0;
                            i32 = i6;
                            i34 = i7;
                            zzbfvVar7 = zzbfvVar8;
                            i30 = iZzs;
                            iZzi = iZze;
                        } else {
                            unsafe = unsafe3;
                            i16 = i13 == true ? 1 : 0;
                            i17 = i37;
                            str = str;
                            i9 = iZzs;
                            i18 = i46;
                            str = str;
                            iZzm = i18;
                            i9 = i9;
                            zzbcrVar2 = zzbcrVar2;
                            i4 = i16;
                            i8 = i17;
                            z = true;
                        }
                    }
                } else {
                    iZzm = iZzk;
                    i6 = i32;
                    i7 = i34;
                    obj = obj6;
                    str = "Failed to parse the message.";
                    i8 = i37;
                    unsafe = unsafe2;
                    zzbcrVar2 = zzbcrVar2;
                    i3 = i3;
                    i9 = 0;
                    z = true;
                    i4 = i5;
                }
                if (i4 != i3 || i3 == 0) {
                    zzbfv<T> zzbfvVar9 = this;
                    if (zzbfvVar9.zzh) {
                        zzbdv zzbdvVar = zzbcrVar2.zzd;
                        int i95 = zzbdv.zzb;
                        int i96 = zzbgb.zza;
                        if (zzbdvVar != zzbdv.zza) {
                            zzbfs zzbfsVar = zzbfvVar9.zzg;
                            zzbdv zzbdvVar2 = zzbcrVar2.zzd;
                            int i97 = zzbcs.zza;
                            zzbej zzbejVarZzc = zzbdvVar2.zzc(zzbfsVar, i8);
                            if (zzbejVarZzc != null) {
                                obj4 = obj;
                                zzbeh zzbehVar = (zzbeh) obj4;
                                zzbehVar.zzn();
                                zzbea zzbeaVar = zzbehVar.zzb;
                                zzbhq zzbhqVar = zzbejVarZzc.zzb.zzb;
                                if (zzbhqVar == zzbhq.ENUM) {
                                    zzbcs.zzj(bArr, iZzm, zzbcrVar2);
                                    throw null;
                                }
                                switch (zzbhqVar) {
                                    case DOUBLE:
                                        i10 = iZzm + 8;
                                        objValueOf = Double.valueOf(Double.longBitsToDouble(zzbcs.zzq(bArr, iZzm)));
                                        iZzm = i10;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case FLOAT:
                                        i10 = iZzm + 4;
                                        objValueOf = Float.valueOf(Float.intBitsToFloat(zzbcs.zzb(bArr, iZzm)));
                                        iZzm = i10;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case INT64:
                                    case UINT64:
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        iZzm = zzbcs.zzm(bArr, iZzm, zzbcrVar2);
                                        objValueOf = Long.valueOf(zzbcrVar2.zzb);
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case INT32:
                                    case UINT32:
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        iZzm = zzbcs.zzj(bArr, iZzm, zzbcrVar2);
                                        objValueOf = Integer.valueOf(zzbcrVar2.zza);
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case FIXED64:
                                    case SFIXED64:
                                        i10 = iZzm + 8;
                                        objValueOf = Long.valueOf(zzbcs.zzq(bArr, iZzm));
                                        iZzm = i10;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case FIXED32:
                                    case SFIXED32:
                                        i10 = iZzm + 4;
                                        objValueOf = Integer.valueOf(zzbcs.zzb(bArr, iZzm));
                                        iZzm = i10;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case BOOL:
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        iZzm = zzbcs.zzm(bArr, iZzm, zzbcrVar2);
                                        if (zzbcrVar2.zzb == 0) {
                                            z = false;
                                        }
                                        objValueOf = Boolean.valueOf(z);
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case STRING:
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        iZzm = zzbcs.zzg(bArr, iZzm, zzbcrVar2);
                                        obj5 = zzbcrVar2.zzc;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case GROUP:
                                        int i98 = (i8 << 3) | 4;
                                        zzbgm zzbgmVarZzb = zzbgb.zza().zzb(zzbejVarZzc.zza.getClass());
                                        Object objZzf = zzbeaVar.zzf(zzbejVarZzc.zzb);
                                        if (objZzf == null) {
                                            objZzf = zzbgmVarZzb.zze();
                                            zzbeaVar.zzj(zzbejVarZzc.zzb, objZzf);
                                        }
                                        i8 = i8;
                                        i4 = i4 == true ? 1 : 0;
                                        iZzi = zzbcs.zzn(objZzf, zzbgmVarZzb, bArr, iZzm, i2, i98, zzbcrVar);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        break;
                                    case MESSAGE:
                                        zzbgm zzbgmVarZzb2 = zzbgb.zza().zzb(zzbejVarZzc.zza.getClass());
                                        Object objZzf2 = zzbeaVar.zzf(zzbejVarZzc.zzb);
                                        if (objZzf2 == null) {
                                            objZzf2 = zzbgmVarZzb2.zze();
                                            zzbeaVar.zzj(zzbejVarZzc.zzb, objZzf2);
                                        }
                                        iZzi = zzbcs.zzo(objZzf2, zzbgmVarZzb2, bArr, iZzm, i2, zzbcrVar);
                                        break;
                                    case BYTES:
                                        iZzm = zzbcs.zza(bArr, iZzm, zzbcrVar2);
                                        obj5 = zzbcrVar2.zzc;
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case ENUM:
                                        throw new IllegalStateException("Shouldn't reach here.");
                                    case SINT32:
                                        iZzm = zzbcs.zzj(bArr, iZzm, zzbcrVar2);
                                        objValueOf = Integer.valueOf(zzbdj.zzF(zzbcrVar2.zza));
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    case SINT64:
                                        iZzm = zzbcs.zzm(bArr, iZzm, zzbcrVar2);
                                        objValueOf = Long.valueOf(zzbdj.zzG(zzbcrVar2.zzb));
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                    default:
                                        i8 = i8;
                                        obj4 = obj4;
                                        i4 = i4 == true ? 1 : 0;
                                        zzbfvVar9 = zzbfvVar9;
                                        obj5 = objValueOf;
                                        zzbeaVar.zzj(zzbejVarZzc.zzb, obj5);
                                        zzbfvVar2 = zzbfvVar9;
                                        obj3 = obj4;
                                        iZzi = iZzm;
                                        break;
                                }
                            } else {
                                obj4 = obj;
                                iZzi = zzbcs.zzi((i4 == true ? 1 : 0) == true ? 1 : 0, bArr, iZzm, i2, zzd(obj), zzbcrVar);
                            }
                            i8 = i8;
                            obj3 = obj4;
                            i4 = i4 == true ? 1 : 0;
                            zzbfvVar2 = zzbfvVar9;
                        } else {
                            i8 = i8;
                            i4 = i4 == true ? 1 : 0;
                            zzbfvVar2 = zzbfvVar9;
                            obj3 = obj;
                            iZzi = zzbcs.zzi(i4 == true ? 1 : 0, bArr, iZzm, i2, zzd(obj), zzbcrVar);
                        }
                    } else {
                        i8 = i8;
                        i4 = i4 == true ? 1 : 0;
                        zzbfvVar2 = zzbfvVar9;
                        obj3 = obj;
                        iZzi = zzbcs.zzi(i4 == true ? 1 : 0, bArr, iZzm, i2, zzd(obj), zzbcrVar);
                    }
                    i2 = i2;
                    i3 = i3;
                    zzbcrVar2 = zzbcrVar2;
                    obj6 = obj3;
                    zzbfvVar7 = zzbfvVar2;
                    i32 = i6;
                    i33 = i8;
                    i31 = i4;
                    i34 = i7;
                    i30 = i9;
                    unsafe2 = unsafe;
                } else {
                    zzbfvVar = this;
                    obj2 = obj;
                    i32 = i6;
                    i34 = i7;
                }
            } else {
                zzbfvVar = zzbfvVar7;
                str = "Failed to parse the message.";
                unsafe = unsafe2;
                i3 = i3;
                obj2 = obj6;
                iZzm = iZzi;
                i4 = i31;
            }
        }
        if (i34 != 1048575) {
            unsafe.putInt(obj2, i34, i32);
        }
        zzbhe zzbheVar = null;
        for (int i99 = zzbfvVar.zzk; i99 < zzbfvVar.zzl; i99++) {
            zzbheVar = (zzbhe) zzy(obj, zzbfvVar.zzj[i99], zzbheVar, zzbfvVar.zzm, obj);
        }
        if (zzbheVar != null) {
            zzbfvVar.zzm.zzj(obj2, zzbheVar);
        }
        if (i3 != 0) {
            String str4 = str;
            if (iZzm > i2 || i4 != i3) {
                throw new zzbew(str4);
            }
        } else if (iZzm != i2) {
            throw new zzbew(str);
        }
        return iZzm;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final Object zze() {
        return ((zzbel) this.zzg).zzF();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x0084 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzbel) {
                zzbel zzbelVar = (zzbel) obj;
                zzbelVar.zzS(Integer.MAX_VALUE);
                zzbelVar.zza = 0;
                zzbelVar.zzQ();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzu = zzu(i);
                int i2 = 1048575 & iZzu;
                int iZzt = zzt(iZzu);
                long j = i2;
                if (iZzt != 9) {
                    if (iZzt != 60 && iZzt != 68) {
                        switch (iZzt) {
                            case 17:
                                if (zzN(obj, i)) {
                                    zzx(i).zzf(zzb.getObject(obj, j));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzbet) zzbhk.zzf(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzbfm) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (zzR(obj, this.zzc[i], i)) {
                        zzx(i).zzf(zzb.getObject(obj, j));
                    }
                } else if (zzN(obj, i)) {
                    zzx(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            int i2 = 1048575 & iZzu;
            int[] iArr = this.zzc;
            int iZzt = zzt(iZzu);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzbhk.zzo(obj, j, zzbhk.zza(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 1:
                    if (zzN(obj2, i)) {
                        zzbhk.zzp(obj, j, zzbhk.zzb(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 2:
                    if (zzN(obj2, i)) {
                        zzbhk.zzr(obj, j, zzbhk.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 3:
                    if (zzN(obj2, i)) {
                        zzbhk.zzr(obj, j, zzbhk.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 4:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 5:
                    if (zzN(obj2, i)) {
                        zzbhk.zzr(obj, j, zzbhk.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 6:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 7:
                    if (zzN(obj2, i)) {
                        zzbhk.zzm(obj, j, zzbhk.zzw(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 8:
                    if (zzN(obj2, i)) {
                        zzbhk.zzs(obj, j, zzbhk.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzbhk.zzs(obj, j, zzbhk.zzf(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 11:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 12:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 13:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 14:
                    if (zzN(obj2, i)) {
                        zzbhk.zzr(obj, j, zzbhk.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 15:
                    if (zzN(obj2, i)) {
                        zzbhk.zzq(obj, j, zzbhk.zzc(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 16:
                    if (zzN(obj2, i)) {
                        zzbhk.zzr(obj, j, zzbhk.zzd(obj2, j));
                        zzH(obj, i);
                    }
                    break;
                case 17:
                    zzE(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzbet zzbetVarZzd = (zzbet) zzbhk.zzf(obj, j);
                    zzbet zzbetVar = (zzbet) zzbhk.zzf(obj2, j);
                    int size = zzbetVarZzd.size();
                    int size2 = zzbetVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzbetVarZzd.zzc()) {
                            zzbetVarZzd = zzbetVarZzd.zzd(size2 + size);
                        }
                        zzbetVarZzd.addAll(zzbetVar);
                    }
                    if (size > 0) {
                        zzbetVar = zzbetVarZzd;
                    }
                    zzbhk.zzs(obj, j, zzbetVar);
                    break;
                case 50:
                    int i4 = zzbgo.zza;
                    zzbhk.zzs(obj, j, zzbfn.zzb(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i3, i)) {
                        zzbhk.zzs(obj, j, zzbhk.zzf(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzbhk.zzs(obj, j, zzbhk.zzf(obj2, j));
                        zzI(obj, i3, i);
                    }
                    break;
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
        }
        zzbgo.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzbgo.zzp(this.zzn, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:186:0x0674  */
    /* JADX WARN: Code duplicated, block: B:393:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0172  */
    /* JADX WARN: Code duplicated, block: B:60:0x0177 A[Catch: all -> 0x01be, TryCatch #1 {all -> 0x01be, blocks: (B:3:0x000b, B:12:0x0031, B:18:0x0041, B:19:0x0048, B:21:0x0053, B:22:0x005b, B:55:0x0166, B:63:0x0191, B:60:0x0177, B:62:0x017f, B:24:0x0061, B:25:0x006b, B:26:0x0075, B:27:0x007f, B:28:0x0089, B:29:0x0090, B:30:0x0091, B:31:0x009b, B:32:0x00a1, B:34:0x00ab, B:36:0x00c0, B:37:0x00cd, B:38:0x00d2, B:39:0x00de, B:41:0x00e8, B:43:0x00fd, B:44:0x010a, B:45:0x010f, B:46:0x011a, B:47:0x011f, B:48:0x0128, B:49:0x0131, B:50:0x013a, B:51:0x0143, B:52:0x014c, B:53:0x0155, B:54:0x015e, B:64:0x0198, B:65:0x019b, B:67:0x019e, B:68:0x01a2, B:15:0x0037, B:76:0x01c1, B:77:0x01c5, B:78:0x01cc, B:80:0x01d1, B:171:0x0633, B:81:0x01d7, B:82:0x01e9, B:83:0x01fb, B:84:0x020d, B:85:0x021f, B:86:0x0231, B:88:0x023b, B:91:0x0242, B:92:0x0248, B:93:0x0256, B:94:0x0268, B:95:0x0276, B:96:0x0288, B:97:0x0290, B:98:0x02a2, B:99:0x02b4, B:100:0x02c6, B:101:0x02d8, B:102:0x02ea, B:103:0x02fc, B:104:0x030e, B:105:0x0320, B:107:0x0330, B:111:0x0351, B:108:0x033c, B:110:0x0342, B:112:0x035e, B:113:0x036e, B:114:0x037a, B:115:0x0386, B:116:0x0392, B:117:0x039e, B:118:0x03b4, B:119:0x03c0, B:120:0x03cc, B:121:0x03d8, B:122:0x03e4, B:123:0x03f0, B:124:0x03fc, B:125:0x0408, B:126:0x0414, B:127:0x0420, B:128:0x042c, B:129:0x0438, B:130:0x0444, B:131:0x0450, B:132:0x0466, B:133:0x0472, B:134:0x047e, B:135:0x048e, B:137:0x0494, B:138:0x04a4, B:139:0x04b3, B:140:0x04bf, B:141:0x04cb, B:142:0x04d7, B:143:0x04e3, B:144:0x04ef, B:145:0x04fb, B:146:0x0507, B:147:0x0513, B:148:0x0525, B:149:0x0534, B:150:0x0543, B:151:0x0552, B:152:0x0561, B:154:0x056b, B:157:0x0572, B:158:0x0578, B:159:0x0583, B:160:0x0592, B:161:0x05a1, B:162:0x05b3, B:163:0x05bb, B:164:0x05ca, B:165:0x05d9, B:166:0x05e8, B:167:0x05f7, B:168:0x0606, B:169:0x0615, B:170:0x0624, B:178:0x0651, B:179:0x0656), top: B:197:0x000b, inners: #0 }] */
    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final void zzh(Object obj, zzbge zzbgeVar, zzbdv zzbdvVar) throws IOException {
        Object objZzy;
        Object objZzs;
        int iOrdinal;
        Object objZzf;
        zzbdvVar.getClass();
        zzD(obj);
        zzbhd zzbhdVar = this.zzm;
        Object objZza = null;
        zzbea zzbeaVarZzn = null;
        while (true) {
            try {
                int iZzc = zzbgeVar.zzc();
                int iZzq = zzq(iZzc);
                if (iZzq >= 0) {
                    int iZzu = zzu(iZzq);
                    try {
                        switch (zzt(iZzu)) {
                            case 0:
                                zzbhk.zzo(obj, iZzu & 1048575, zzbgeVar.zza());
                                zzH(obj, iZzq);
                                continue;
                            case 1:
                                zzbhk.zzp(obj, iZzu & 1048575, zzbgeVar.zzb());
                                zzH(obj, iZzq);
                                continue;
                            case 2:
                                zzbhk.zzr(obj, iZzu & 1048575, zzbgeVar.zzl());
                                zzH(obj, iZzq);
                                continue;
                            case 3:
                                zzbhk.zzr(obj, iZzu & 1048575, zzbgeVar.zzo());
                                zzH(obj, iZzq);
                                continue;
                            case 4:
                                zzbhk.zzq(obj, iZzu & 1048575, zzbgeVar.zzg());
                                zzH(obj, iZzq);
                                continue;
                            case 5:
                                zzbhk.zzr(obj, iZzu & 1048575, zzbgeVar.zzk());
                                zzH(obj, iZzq);
                                continue;
                            case 6:
                                zzbhk.zzq(obj, iZzu & 1048575, zzbgeVar.zzf());
                                zzH(obj, iZzq);
                                continue;
                            case 7:
                                zzbhk.zzm(obj, iZzu & 1048575, zzbgeVar.zzQ());
                                zzH(obj, iZzq);
                                continue;
                            case 8:
                                zzG(obj, iZzu, zzbgeVar);
                                zzH(obj, iZzq);
                                continue;
                            case 9:
                                zzbfs zzbfsVar = (zzbfs) zzA(obj, iZzq);
                                zzbgeVar.zzw(zzbfsVar, zzx(iZzq), zzbdvVar);
                                zzJ(obj, iZzq, zzbfsVar);
                                continue;
                            case 10:
                                zzbhk.zzs(obj, iZzu & 1048575, zzbgeVar.zzp());
                                zzH(obj, iZzq);
                                continue;
                            case 11:
                                zzbhk.zzq(obj, iZzu & 1048575, zzbgeVar.zzj());
                                zzH(obj, iZzq);
                                continue;
                            case 12:
                                int iZze = zzbgeVar.zze();
                                zzbep zzbepVarZzw = zzw(iZzq);
                                if (zzbepVarZzw == null || zzbepVarZzw.zza(iZze)) {
                                    zzbhk.zzq(obj, iZzu & 1048575, iZze);
                                    zzH(obj, iZzq);
                                    continue;
                                } else {
                                    objZza = zzbgo.zzo(obj, iZzc, iZze, objZza, zzbhdVar);
                                }
                                break;
                            case 13:
                                zzbhk.zzq(obj, iZzu & 1048575, zzbgeVar.zzh());
                                zzH(obj, iZzq);
                                continue;
                            case 14:
                                zzbhk.zzr(obj, iZzu & 1048575, zzbgeVar.zzm());
                                zzH(obj, iZzq);
                                continue;
                            case 15:
                                zzbhk.zzq(obj, iZzu & 1048575, zzbgeVar.zzi());
                                zzH(obj, iZzq);
                                continue;
                            case 16:
                                zzbhk.zzr(obj, iZzu & 1048575, zzbgeVar.zzn());
                                zzH(obj, iZzq);
                                continue;
                            case 17:
                                zzbfs zzbfsVar2 = (zzbfs) zzA(obj, iZzq);
                                zzbgeVar.zzv(zzbfsVar2, zzx(iZzq), zzbdvVar);
                                zzJ(obj, iZzq, zzbfsVar2);
                                continue;
                            case 18:
                                zzbgeVar.zzz(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 19:
                                zzbgeVar.zzD(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 20:
                                zzbgeVar.zzG(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 21:
                                zzbgeVar.zzP(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 22:
                                zzbgeVar.zzF(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 23:
                                zzbgeVar.zzC(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 24:
                                zzbgeVar.zzB(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 25:
                                zzbgeVar.zzx(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 26:
                                if (zzM(iZzu)) {
                                    ((zzbdk) zzbgeVar).zzN(zzbfe.zza(obj, iZzu & 1048575), true);
                                } else {
                                    ((zzbdk) zzbgeVar).zzN(zzbfe.zza(obj, iZzu & 1048575), false);
                                    continue;
                                }
                                break;
                            case 27:
                                zzbgeVar.zzI(zzbfe.zza(obj, iZzu & 1048575), zzx(iZzq), zzbdvVar);
                                continue;
                            case 28:
                                zzbgeVar.zzy(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 29:
                                zzbgeVar.zzO(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 30:
                                List listZza = zzbfe.zza(obj, iZzu & 1048575);
                                zzbgeVar.zzA(listZza);
                                objZza = zzbgo.zzn(obj, iZzc, listZza, zzw(iZzq), objZza, zzbhdVar);
                                continue;
                            case 31:
                                zzbgeVar.zzJ(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 32:
                                zzbgeVar.zzK(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 33:
                                zzbgeVar.zzL(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 34:
                                zzbgeVar.zzM(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 35:
                                zzbgeVar.zzz(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 36:
                                zzbgeVar.zzD(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 37:
                                zzbgeVar.zzG(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 38:
                                zzbgeVar.zzP(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 39:
                                zzbgeVar.zzF(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 40:
                                zzbgeVar.zzC(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 41:
                                zzbgeVar.zzB(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 42:
                                zzbgeVar.zzx(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 43:
                                zzbgeVar.zzO(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 44:
                                List listZza2 = zzbfe.zza(obj, iZzu & 1048575);
                                zzbgeVar.zzA(listZza2);
                                objZza = zzbgo.zzn(obj, iZzc, listZza2, zzw(iZzq), objZza, zzbhdVar);
                                continue;
                            case 45:
                                zzbgeVar.zzJ(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 46:
                                zzbgeVar.zzK(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 47:
                                zzbgeVar.zzL(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 48:
                                zzbgeVar.zzM(zzbfe.zza(obj, iZzu & 1048575));
                                continue;
                            case 49:
                                zzbgeVar.zzE(zzbfe.zza(obj, iZzu & 1048575), zzx(iZzq), zzbdvVar);
                                continue;
                            case 50:
                                Object objZzz = zzz(iZzq);
                                long jZzu = zzu(iZzq) & 1048575;
                                Object objZzf2 = zzbhk.zzf(obj, jZzu);
                                if (objZzf2 == null) {
                                    objZzf2 = zzbfm.zza().zzb();
                                    zzbhk.zzs(obj, jZzu, objZzf2);
                                } else if (zzbfn.zza(objZzf2)) {
                                    Object objZzb = zzbfm.zza().zzb();
                                    zzbfn.zzb(objZzb, objZzf2);
                                    zzbhk.zzs(obj, jZzu, objZzb);
                                    objZzf2 = objZzb;
                                }
                                zzbgeVar.zzH((zzbfm) objZzf2, ((zzbfl) objZzz).zzc(), zzbdvVar);
                                continue;
                            case 51:
                                zzbhk.zzs(obj, iZzu & 1048575, Double.valueOf(zzbgeVar.zza()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 52:
                                zzbhk.zzs(obj, iZzu & 1048575, Float.valueOf(zzbgeVar.zzb()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 53:
                                zzbhk.zzs(obj, iZzu & 1048575, Long.valueOf(zzbgeVar.zzl()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 54:
                                zzbhk.zzs(obj, iZzu & 1048575, Long.valueOf(zzbgeVar.zzo()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 55:
                                zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(zzbgeVar.zzg()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 56:
                                zzbhk.zzs(obj, iZzu & 1048575, Long.valueOf(zzbgeVar.zzk()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 57:
                                zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(zzbgeVar.zzf()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 58:
                                zzbhk.zzs(obj, iZzu & 1048575, Boolean.valueOf(zzbgeVar.zzQ()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 59:
                                zzG(obj, iZzu, zzbgeVar);
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 60:
                                zzbfs zzbfsVar3 = (zzbfs) zzB(obj, iZzc, iZzq);
                                zzbgeVar.zzw(zzbfsVar3, zzx(iZzq), zzbdvVar);
                                zzK(obj, iZzc, iZzq, zzbfsVar3);
                                continue;
                            case 61:
                                zzbhk.zzs(obj, iZzu & 1048575, zzbgeVar.zzp());
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 62:
                                zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(zzbgeVar.zzj()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 63:
                                int iZze2 = zzbgeVar.zze();
                                zzbep zzbepVarZzw2 = zzw(iZzq);
                                if (zzbepVarZzw2 == null || zzbepVarZzw2.zza(iZze2)) {
                                    zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(iZze2));
                                    zzI(obj, iZzc, iZzq);
                                    continue;
                                } else {
                                    objZza = zzbgo.zzo(obj, iZzc, iZze2, objZza, zzbhdVar);
                                }
                                break;
                            case 64:
                                zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(zzbgeVar.zzh()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 65:
                                zzbhk.zzs(obj, iZzu & 1048575, Long.valueOf(zzbgeVar.zzm()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 66:
                                zzbhk.zzs(obj, iZzu & 1048575, Integer.valueOf(zzbgeVar.zzi()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 67:
                                zzbhk.zzs(obj, iZzu & 1048575, Long.valueOf(zzbgeVar.zzn()));
                                zzI(obj, iZzc, iZzq);
                                continue;
                            case 68:
                                zzbfs zzbfsVar4 = (zzbfs) zzB(obj, iZzc, iZzq);
                                zzbgeVar.zzv(zzbfsVar4, zzx(iZzq), zzbdvVar);
                                zzK(obj, iZzc, iZzq, zzbfsVar4);
                                continue;
                            default:
                                if (objZza == null) {
                                    objZza = zzbhdVar.zza(obj);
                                }
                                if (!zzbhdVar.zzk(objZza, zzbgeVar, 0)) {
                                    objZzy = objZza;
                                    for (int i = this.zzk; i < this.zzl; i++) {
                                        objZzy = zzy(obj, this.zzj[i], objZzy, zzbhdVar, obj);
                                    }
                                }
                                break;
                        }
                    } catch (zzbev unused) {
                        if (objZza == null) {
                            objZza = zzbhdVar.zza(obj);
                        }
                        if (!zzbhdVar.zzk(objZza, zzbgeVar, 0)) {
                            objZzy = objZza;
                            for (int i2 = this.zzk; i2 < this.zzl; i2++) {
                                objZzy = zzy(obj, this.zzj[i2], objZzy, zzbhdVar, obj);
                            }
                            if (objZzy != null) {
                                zzbhdVar.zzj(obj, objZzy);
                            }
                        }
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    objZzy = objZza;
                    for (int i3 = this.zzk; i3 < this.zzl; i3++) {
                        objZzy = zzy(obj, this.zzj[i3], objZzy, zzbhdVar, obj);
                    }
                } else {
                    zzbej zzbejVarZzc = !this.zzh ? null : zzbdvVar.zzc(this.zzg, iZzc);
                    if (zzbejVarZzc != null) {
                        if (zzbeaVarZzn == null) {
                            zzbeaVarZzn = ((zzbeh) obj).zzn();
                        }
                        zzbej zzbejVar = zzbejVarZzc;
                        if (zzbejVarZzc.zzb.zzb == zzbhq.ENUM) {
                            zzbgeVar.zzg();
                            throw null;
                        }
                        switch (zzbejVarZzc.zzb.zzb) {
                            case DOUBLE:
                                objZzs = Double.valueOf(zzbgeVar.zza());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if ((iOrdinal != 9 || iOrdinal == 10) && (objZzf = zzbeaVarZzn.zzf(zzbejVarZzc.zzb)) != null) {
                                    byte[] bArr = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case FLOAT:
                                objZzs = Float.valueOf(zzbgeVar.zzb());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr2 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr3 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case INT64:
                                objZzs = Long.valueOf(zzbgeVar.zzl());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr4 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr5 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case UINT64:
                                objZzs = Long.valueOf(zzbgeVar.zzo());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr6 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr7 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case INT32:
                                objZzs = Integer.valueOf(zzbgeVar.zzg());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr8 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr9 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case FIXED64:
                                objZzs = Long.valueOf(zzbgeVar.zzk());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr10 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr11 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case FIXED32:
                                objZzs = Integer.valueOf(zzbgeVar.zzf());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr12 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr13 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case BOOL:
                                objZzs = Boolean.valueOf(zzbgeVar.zzQ());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr14 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr15 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case STRING:
                                objZzs = zzbgeVar.zzt();
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr16 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr17 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case GROUP:
                                Object objZzf3 = zzbeaVarZzn.zzf(zzbejVarZzc.zzb);
                                if (objZzf3 instanceof zzbel) {
                                    zzbgm zzbgmVarZzb = zzbgb.zza().zzb(objZzf3.getClass());
                                    if (!((zzbel) objZzf3).zzU()) {
                                        Object objZze = zzbgmVarZzb.zze();
                                        zzbgmVarZzb.zzg(objZze, objZzf3);
                                        zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZze);
                                        objZzf3 = objZze;
                                    }
                                    zzbgeVar.zzv(objZzf3, zzbgmVarZzb, zzbdvVar);
                                } else {
                                    objZzs = zzbgeVar.zzr(zzbejVarZzc.zza.getClass(), zzbdvVar);
                                    iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                    if (iOrdinal != 9) {
                                        byte[] bArr18 = zzbeu.zzb;
                                        objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                    } else {
                                        byte[] bArr19 = zzbeu.zzb;
                                        objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                    }
                                    zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                }
                                break;
                            case MESSAGE:
                                Object objZzf4 = zzbeaVarZzn.zzf(zzbejVarZzc.zzb);
                                if (objZzf4 instanceof zzbel) {
                                    zzbgm zzbgmVarZzb2 = zzbgb.zza().zzb(objZzf4.getClass());
                                    if (!((zzbel) objZzf4).zzU()) {
                                        Object objZze2 = zzbgmVarZzb2.zze();
                                        zzbgmVarZzb2.zzg(objZze2, objZzf4);
                                        zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZze2);
                                        objZzf4 = objZze2;
                                    }
                                    zzbgeVar.zzw(objZzf4, zzbgmVarZzb2, zzbdvVar);
                                } else {
                                    objZzs = zzbgeVar.zzs(zzbejVarZzc.zza.getClass(), zzbdvVar);
                                    iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                    if (iOrdinal != 9) {
                                        byte[] bArr110 = zzbeu.zzb;
                                        objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                    } else {
                                        byte[] bArr111 = zzbeu.zzb;
                                        objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                    }
                                    zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                }
                                break;
                            case BYTES:
                                objZzs = zzbgeVar.zzp();
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr112 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr113 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case UINT32:
                                objZzs = Integer.valueOf(zzbgeVar.zzj());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr114 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr115 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case ENUM:
                                throw new IllegalStateException("Shouldn't reach here.");
                            case SFIXED32:
                                objZzs = Integer.valueOf(zzbgeVar.zzh());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr116 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr117 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case SFIXED64:
                                objZzs = Long.valueOf(zzbgeVar.zzm());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr118 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr119 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case SINT32:
                                objZzs = Integer.valueOf(zzbgeVar.zzi());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr1110 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr1111 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            case SINT64:
                                objZzs = Long.valueOf(zzbgeVar.zzn());
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr1112 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr1113 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                            default:
                                objZzs = null;
                                iOrdinal = zzbejVarZzc.zzb.zzb.ordinal();
                                if (iOrdinal != 9) {
                                    byte[] bArr1114 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                } else {
                                    byte[] bArr1115 = zzbeu.zzb;
                                    objZzs = ((zzbfs) objZzf).zzW().zzp((zzbfs) objZzs).zzw();
                                }
                                zzbeaVarZzn.zzj(zzbejVarZzc.zzb, objZzs);
                                break;
                        }
                    } else {
                        if (objZza == null) {
                            objZza = zzbhdVar.zza(obj);
                        }
                        if (!zzbhdVar.zzk(objZza, zzbgeVar, 0)) {
                            objZzy = objZza;
                            for (int i4 = this.zzk; i4 < this.zzl; i4++) {
                                objZzy = zzy(obj, this.zzj[i4], objZzy, zzbhdVar, obj);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                Object objZzy2 = objZza;
                for (int i5 = this.zzk; i5 < this.zzl; i5++) {
                    objZzy2 = zzy(obj, this.zzj[i5], objZzy2, zzbhdVar, obj);
                }
                if (objZzy2 != null) {
                    zzbhdVar.zzj(obj, objZzy2);
                }
                throw th;
            }
        }
        if (objZzy != null) {
            zzbhdVar.zzj(obj, objZzy);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzbcr zzbcrVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzbcrVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0222  */
    /* JADX WARN: Code duplicated, block: B:101:0x0232  */
    /* JADX WARN: Code duplicated, block: B:102:0x0242  */
    /* JADX WARN: Code duplicated, block: B:103:0x0252  */
    /* JADX WARN: Code duplicated, block: B:104:0x0262  */
    /* JADX WARN: Code duplicated, block: B:105:0x0272  */
    /* JADX WARN: Code duplicated, block: B:106:0x0282  */
    /* JADX WARN: Code duplicated, block: B:107:0x0292  */
    /* JADX WARN: Code duplicated, block: B:108:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:109:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:110:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:111:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:112:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:113:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:114:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:115:0x030e  */
    /* JADX WARN: Code duplicated, block: B:116:0x031d  */
    /* JADX WARN: Code duplicated, block: B:118:0x032f  */
    /* JADX WARN: Code duplicated, block: B:123:0x0348  */
    /* JADX WARN: Code duplicated, block: B:130:0x0367 A[LOOP:3: B:128:0x0361->B:130:0x0367, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:131:0x0374  */
    /* JADX WARN: Code duplicated, block: B:136:0x038d  */
    /* JADX WARN: Code duplicated, block: B:137:0x039c  */
    /* JADX WARN: Code duplicated, block: B:138:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:139:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:140:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:141:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:142:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:143:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:146:0x040c  */
    /* JADX WARN: Code duplicated, block: B:148:0x0424  */
    /* JADX WARN: Code duplicated, block: B:149:0x0431  */
    /* JADX WARN: Code duplicated, block: B:151:0x0448  */
    /* JADX WARN: Code duplicated, block: B:152:0x0451  */
    /* JADX WARN: Code duplicated, block: B:154:0x0468  */
    /* JADX WARN: Code duplicated, block: B:155:0x0471  */
    /* JADX WARN: Code duplicated, block: B:157:0x0488  */
    /* JADX WARN: Code duplicated, block: B:158:0x0491  */
    /* JADX WARN: Code duplicated, block: B:160:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:161:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:163:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:164:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:166:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:167:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:169:0x0508  */
    /* JADX WARN: Code duplicated, block: B:170:0x0513  */
    /* JADX WARN: Code duplicated, block: B:172:0x052a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0537  */
    /* JADX WARN: Code duplicated, block: B:175:0x054e  */
    /* JADX WARN: Code duplicated, block: B:176:0x0557  */
    /* JADX WARN: Code duplicated, block: B:178:0x056e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0577  */
    /* JADX WARN: Code duplicated, block: B:181:0x058e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0597  */
    /* JADX WARN: Code duplicated, block: B:184:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:185:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:187:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:188:0x05d7  */
    /* JADX WARN: Code duplicated, block: B:190:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:191:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:193:0x060e  */
    /* JADX WARN: Code duplicated, block: B:194:0x0616  */
    /* JADX WARN: Code duplicated, block: B:196:0x062d  */
    /* JADX WARN: Code duplicated, block: B:197:0x0635  */
    /* JADX WARN: Code duplicated, block: B:199:0x064c  */
    /* JADX WARN: Code duplicated, block: B:213:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0653 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0097  */
    /* JADX WARN: Code duplicated, block: B:32:0x009f  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00db  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:53:0x0105  */
    /* JADX WARN: Code duplicated, block: B:55:0x010b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0115  */
    /* JADX WARN: Code duplicated, block: B:58:0x011b  */
    /* JADX WARN: Code duplicated, block: B:59:0x0128  */
    /* JADX WARN: Code duplicated, block: B:61:0x012e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0137  */
    /* JADX WARN: Code duplicated, block: B:64:0x013d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0146  */
    /* JADX WARN: Code duplicated, block: B:67:0x014c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0155  */
    /* JADX WARN: Code duplicated, block: B:70:0x015b  */
    /* JADX WARN: Code duplicated, block: B:71:0x0164  */
    /* JADX WARN: Code duplicated, block: B:73:0x016a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0173  */
    /* JADX WARN: Code duplicated, block: B:76:0x0179  */
    /* JADX WARN: Code duplicated, block: B:77:0x0182  */
    /* JADX WARN: Code duplicated, block: B:79:0x0188  */
    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    /* JADX WARN: Code duplicated, block: B:80:0x0191  */
    /* JADX WARN: Code duplicated, block: B:82:0x0197  */
    /* JADX WARN: Code duplicated, block: B:83:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01af  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:96:0x01e5 A[LOOP:2: B:94:0x01df->B:96:0x01e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:98:0x0202  */
    /* JADX WARN: Code duplicated, block: B:99:0x0212  */
    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final void zzj(Object obj, zzbhs zzbhsVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i;
        int i2;
        int i3;
        long j;
        Iterator it2;
        int[] iArr;
        boolean z;
        int i4;
        List list;
        int i5;
        List list2;
        zzbgm zzbgmVarZzx;
        int i6;
        int i7;
        List list3;
        boolean z2;
        int i8;
        List list4;
        zzbgm zzbgmVarZzx2;
        int i9;
        Object object;
        if (this.zzh) {
            zzbea zzbeaVar = ((zzbeh) obj).zzb;
            if (zzbeaVar.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzg = zzbeaVar.zzg();
                entry = (Map.Entry) itZzg.next();
                it = itZzg;
            }
        } else {
            entry = null;
            it = null;
        }
        int[] iArr2 = this.zzc;
        Unsafe unsafe = zzb;
        int i10 = 1048575;
        int i11 = 0;
        int i12 = 0;
        while (i12 < iArr2.length) {
            int iZzu = zzu(i12);
            int[] iArr3 = this.zzc;
            int iZzt = zzt(iZzu);
            int i13 = iArr3[i12];
            if (iZzt <= 17) {
                int i14 = iArr3[i12 + 2];
                int i15 = i14 & 1048575;
                if (i15 != i10) {
                    i11 = i15 == 1048575 ? 0 : unsafe.getInt(obj, i15);
                    i10 = i15;
                } else {
                    entry = entry;
                }
                i = i10;
                i3 = 1 << (i14 >>> 20);
                i2 = i11;
            } else {
                entry = entry;
                i = i10;
                i2 = i11;
                i3 = 0;
            }
            while (entry != null) {
                if (i13 >= 32149011) {
                    this.zzn.zzc(zzbhsVar, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                } else {
                    j = iZzu & 1048575;
                    switch (iZzt) {
                        case 0:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzf(i13, zzbhk.zza(obj, j));
                            }
                            break;
                        case 1:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzo(i13, zzbhk.zzb(obj, j));
                            }
                            break;
                        case 2:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzt(i13, unsafe.getLong(obj, j));
                            }
                            break;
                        case 3:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzL(i13, unsafe.getLong(obj, j));
                            }
                            break;
                        case 4:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzr(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 5:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzm(i13, unsafe.getLong(obj, j));
                            }
                            break;
                        case 6:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzk(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 7:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzb(i13, zzbhk.zzw(obj, j));
                            }
                            break;
                        case 8:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzU(i13, unsafe.getObject(obj, j), zzbhsVar);
                            }
                            break;
                        case 9:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzw(i13, unsafe.getObject(obj, j), zzx(i12));
                            }
                            break;
                        case 10:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzd(i13, (zzbdd) unsafe.getObject(obj, j));
                            }
                            break;
                        case 11:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzJ(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 12:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzi(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 13:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzy(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 14:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzA(i13, unsafe.getLong(obj, j));
                            }
                            break;
                        case 15:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzC(i13, unsafe.getInt(obj, j));
                            }
                            break;
                        case 16:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzE(i13, unsafe.getLong(obj, j));
                            }
                            break;
                        case 17:
                            it2 = it;
                            iArr = iArr2;
                            if (zzO(obj, i12, i, i2, i3)) {
                                zzbhsVar.zzq(i13, unsafe.getObject(obj, j), zzx(i12));
                            }
                            break;
                        case 18:
                            z = false;
                            zzbgo.zzs(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 19:
                            z = false;
                            zzbgo.zzw(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 20:
                            z = false;
                            zzbgo.zzy(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 21:
                            z = false;
                            zzbgo.zzE(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 22:
                            z = false;
                            zzbgo.zzx(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 23:
                            z = false;
                            zzbgo.zzv(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 24:
                            z = false;
                            zzbgo.zzu(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 25:
                            z = false;
                            zzbgo.zzr(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 26:
                            i4 = this.zzc[i12];
                            list = (List) unsafe.getObject(obj, j);
                            int i16 = zzbgo.zza;
                            if (list != null && !list.isEmpty()) {
                                zzbhsVar.zzI(i4, list);
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 27:
                            i5 = this.zzc[i12];
                            list2 = (List) unsafe.getObject(obj, j);
                            zzbgmVarZzx = zzx(i12);
                            int i17 = zzbgo.zza;
                            if (list2 != null && !list2.isEmpty()) {
                                for (i6 = 0; i6 < list2.size(); i6++) {
                                    ((zzbdr) zzbhsVar).zzw(i5, list2.get(i6), zzbgmVarZzx);
                                }
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 28:
                            i7 = this.zzc[i12];
                            list3 = (List) unsafe.getObject(obj, j);
                            int i18 = zzbgo.zza;
                            if (list3 != null && !list3.isEmpty()) {
                                zzbhsVar.zze(i7, list3);
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 29:
                            z2 = false;
                            zzbgo.zzD(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 30:
                            z2 = false;
                            zzbgo.zzt(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 31:
                            z2 = false;
                            zzbgo.zzz(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 32:
                            z2 = false;
                            zzbgo.zzA(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 33:
                            z2 = false;
                            zzbgo.zzB(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 34:
                            z2 = false;
                            zzbgo.zzC(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 35:
                            zzbgo.zzs(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 36:
                            zzbgo.zzw(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 37:
                            zzbgo.zzy(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 38:
                            zzbgo.zzE(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 39:
                            zzbgo.zzx(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 40:
                            zzbgo.zzv(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 41:
                            zzbgo.zzu(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 42:
                            zzbgo.zzr(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 43:
                            zzbgo.zzD(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 44:
                            zzbgo.zzt(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 45:
                            zzbgo.zzz(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 46:
                            zzbgo.zzA(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 47:
                            zzbgo.zzB(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 48:
                            zzbgo.zzC(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 49:
                            i8 = this.zzc[i12];
                            list4 = (List) unsafe.getObject(obj, j);
                            zzbgmVarZzx2 = zzx(i12);
                            int i19 = zzbgo.zza;
                            if (list4 != null && !list4.isEmpty()) {
                                for (i9 = 0; i9 < list4.size(); i9++) {
                                    ((zzbdr) zzbhsVar).zzq(i8, list4.get(i9), zzbgmVarZzx2);
                                }
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 50:
                            object = unsafe.getObject(obj, j);
                            if (object != null) {
                                zzbhsVar.zzv(i13, ((zzbfl) zzz(i12)).zzc(), (zzbfm) object);
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 51:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzf(i13, zzn(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 52:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzo(i13, zzo(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 53:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzt(i13, zzv(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 54:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzL(i13, zzv(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 55:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzr(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 56:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzm(i13, zzv(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 57:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzk(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 58:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzb(i13, zzS(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 59:
                            if (zzR(obj, i13, i12)) {
                                zzU(i13, unsafe.getObject(obj, j), zzbhsVar);
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 60:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzw(i13, unsafe.getObject(obj, j), zzx(i12));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 61:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzd(i13, (zzbdd) unsafe.getObject(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 62:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzJ(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 63:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzi(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 64:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzy(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 65:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzA(i13, zzv(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 66:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzC(i13, zzp(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 67:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzE(i13, zzv(obj, j));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        case 68:
                            if (zzR(obj, i13, i12)) {
                                zzbhsVar.zzq(i13, unsafe.getObject(obj, j), zzx(i12));
                            }
                            it2 = it;
                            iArr = iArr2;
                            break;
                        default:
                            it2 = it;
                            iArr = iArr2;
                            break;
                    }
                    i12 += 3;
                    i10 = i;
                    entry = entry;
                    it = it2;
                    iArr2 = iArr;
                    i11 = i2;
                }
            }
            j = iZzu & 1048575;
            switch (iZzt) {
                case 0:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzf(i13, zzbhk.zza(obj, j));
                    }
                    break;
                case 1:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzo(i13, zzbhk.zzb(obj, j));
                    }
                    break;
                case 2:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzt(i13, unsafe.getLong(obj, j));
                    }
                    break;
                case 3:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzL(i13, unsafe.getLong(obj, j));
                    }
                    break;
                case 4:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzr(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 5:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzm(i13, unsafe.getLong(obj, j));
                    }
                    break;
                case 6:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzk(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 7:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzb(i13, zzbhk.zzw(obj, j));
                    }
                    break;
                case 8:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzU(i13, unsafe.getObject(obj, j), zzbhsVar);
                    }
                    break;
                case 9:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzw(i13, unsafe.getObject(obj, j), zzx(i12));
                    }
                    break;
                case 10:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzd(i13, (zzbdd) unsafe.getObject(obj, j));
                    }
                    break;
                case 11:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzJ(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 12:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzi(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 13:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzy(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 14:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzA(i13, unsafe.getLong(obj, j));
                    }
                    break;
                case 15:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzC(i13, unsafe.getInt(obj, j));
                    }
                    break;
                case 16:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzE(i13, unsafe.getLong(obj, j));
                    }
                    break;
                case 17:
                    it2 = it;
                    iArr = iArr2;
                    if (zzO(obj, i12, i, i2, i3)) {
                        zzbhsVar.zzq(i13, unsafe.getObject(obj, j), zzx(i12));
                    }
                    break;
                case 18:
                    z = false;
                    zzbgo.zzs(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 19:
                    z = false;
                    zzbgo.zzw(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 20:
                    z = false;
                    zzbgo.zzy(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 21:
                    z = false;
                    zzbgo.zzE(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 22:
                    z = false;
                    zzbgo.zzx(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 23:
                    z = false;
                    zzbgo.zzv(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 24:
                    z = false;
                    zzbgo.zzu(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 25:
                    z = false;
                    zzbgo.zzr(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 26:
                    i4 = this.zzc[i12];
                    list = (List) unsafe.getObject(obj, j);
                    int i110 = zzbgo.zza;
                    if (list != null) {
                        zzbhsVar.zzI(i4, list);
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 27:
                    i5 = this.zzc[i12];
                    list2 = (List) unsafe.getObject(obj, j);
                    zzbgmVarZzx = zzx(i12);
                    int i111 = zzbgo.zza;
                    if (list2 != null) {
                        while (i6 < list2.size()) {
                            ((zzbdr) zzbhsVar).zzw(i5, list2.get(i6), zzbgmVarZzx);
                        }
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 28:
                    i7 = this.zzc[i12];
                    list3 = (List) unsafe.getObject(obj, j);
                    int i112 = zzbgo.zza;
                    if (list3 != null) {
                        zzbhsVar.zze(i7, list3);
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 29:
                    z2 = false;
                    zzbgo.zzD(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 30:
                    z2 = false;
                    zzbgo.zzt(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 31:
                    z2 = false;
                    zzbgo.zzz(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 32:
                    z2 = false;
                    zzbgo.zzA(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 33:
                    z2 = false;
                    zzbgo.zzB(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 34:
                    z2 = false;
                    zzbgo.zzC(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, false);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 35:
                    zzbgo.zzs(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 36:
                    zzbgo.zzw(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 37:
                    zzbgo.zzy(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 38:
                    zzbgo.zzE(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 39:
                    zzbgo.zzx(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 40:
                    zzbgo.zzv(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 41:
                    zzbgo.zzu(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 42:
                    zzbgo.zzr(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 43:
                    zzbgo.zzD(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 44:
                    zzbgo.zzt(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 45:
                    zzbgo.zzz(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 46:
                    zzbgo.zzA(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 47:
                    zzbgo.zzB(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 48:
                    zzbgo.zzC(this.zzc[i12], (List) unsafe.getObject(obj, j), zzbhsVar, true);
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 49:
                    i8 = this.zzc[i12];
                    list4 = (List) unsafe.getObject(obj, j);
                    zzbgmVarZzx2 = zzx(i12);
                    int i113 = zzbgo.zza;
                    if (list4 != null) {
                        while (i9 < list4.size()) {
                            ((zzbdr) zzbhsVar).zzq(i8, list4.get(i9), zzbgmVarZzx2);
                        }
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 50:
                    object = unsafe.getObject(obj, j);
                    if (object != null) {
                        zzbhsVar.zzv(i13, ((zzbfl) zzz(i12)).zzc(), (zzbfm) object);
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 51:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzf(i13, zzn(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 52:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzo(i13, zzo(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 53:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzt(i13, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 54:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzL(i13, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 55:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzr(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 56:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzm(i13, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 57:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzk(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 58:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzb(i13, zzS(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 59:
                    if (zzR(obj, i13, i12)) {
                        zzU(i13, unsafe.getObject(obj, j), zzbhsVar);
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 60:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzw(i13, unsafe.getObject(obj, j), zzx(i12));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 61:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzd(i13, (zzbdd) unsafe.getObject(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 62:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzJ(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 63:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzi(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 64:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzy(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 65:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzA(i13, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 66:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzC(i13, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 67:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzE(i13, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                case 68:
                    if (zzR(obj, i13, i12)) {
                        zzbhsVar.zzq(i13, unsafe.getObject(obj, j), zzx(i12));
                    }
                    it2 = it;
                    iArr = iArr2;
                    break;
                default:
                    it2 = it;
                    iArr = iArr2;
                    break;
            }
            i12 += 3;
            i10 = i;
            entry = entry;
            it = it2;
            iArr2 = iArr;
            i11 = i2;
        }
        Iterator it3 = it;
        while (entry != null) {
            this.zzn.zzc(zzbhsVar, entry);
            entry = it3.hasNext() ? (Map.Entry) it3.next() : null;
        }
        ((zzbel) obj).zzc.zzl(zzbhsVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final boolean zzk(Object obj, Object obj2) {
        boolean zZzF;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            long j = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzbhk.zza(obj, j)) != Double.doubleToLongBits(zzbhk.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzbhk.zzb(obj, j)) != Float.floatToIntBits(zzbhk.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzbhk.zzd(obj, j) != zzbhk.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzbhk.zzd(obj, j) != zzbhk.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzbhk.zzd(obj, j) != zzbhk.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzbhk.zzw(obj, j) != zzbhk.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzbhk.zzd(obj, j) != zzbhk.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzbhk.zzc(obj, j) != zzbhk.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzbhk.zzd(obj, j) != zzbhk.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzF = zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j));
                    break;
                case 50:
                    zZzF = zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzr = zzr(i) & 1048575;
                    if (zzbhk.zzc(obj, jZzr) != zzbhk.zzc(obj2, jZzr) || !zzbgo.zzF(zzbhk.zzf(obj, j), zzbhk.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzF) {
                return false;
            }
        }
        if (!((zzbel) obj).zzc.equals(((zzbel) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzbeh) obj).zzb.equals(((zzbeh) obj2).zzb);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f3 A[LOOP:2: B:53:0x00e2->B:58:0x00f3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0110 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbgm
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        List list;
        zzbgm zzbgmVarZzx;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int iZzu = zzu(i7);
            int i9 = this.zzc[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = zzb.getInt(obj, i10);
                }
                i2 = i4;
                i = i10;
            } else {
                i = i6;
                i2 = i4;
            }
            if ((268435456 & iZzu) != 0 && !zzO(obj, i7, i, i2, i11)) {
                return false;
            }
            int iZzt = zzt(iZzu);
            if (iZzt == 9 || iZzt == 17) {
                if (zzO(obj, i7, i, i2, i11) && !zzP(obj, iZzu, zzx(i7))) {
                    return false;
                }
            } else if (iZzt == 27) {
                list = (List) zzbhk.zzf(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzbgmVarZzx = zzx(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzbgmVarZzx.zzl(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzt == 60 || iZzt == 68) {
                if (zzR(obj, i8, i7) && !zzP(obj, iZzu, zzx(i7))) {
                    return false;
                }
            } else if (iZzt == 49) {
                list = (List) zzbhk.zzf(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    zzbgmVarZzx = zzx(i7);
                    while (i3 < list.size()) {
                        if (!zzbgmVarZzx.zzl(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzt != 50) {
                continue;
            } else {
                zzbfm zzbfmVar = (zzbfm) zzbhk.zzf(obj, iZzu & 1048575);
                if (!zzbfmVar.isEmpty() && ((zzbfl) zzz(i7)).zzc().zzc.zzb() == zzbhr.MESSAGE) {
                    zzbgm zzbgmVarZzb = null;
                    for (Object obj2 : zzbfmVar.values()) {
                        if (zzbgmVarZzb == null) {
                            zzbgmVarZzb = zzbgb.zza().zzb(obj2.getClass());
                        }
                        if (!zzbgmVarZzb.zzl(obj2)) {
                            return false;
                        }
                    }
                }
            }
            i5++;
            i6 = i;
            i4 = i2;
        }
        return !this.zzh || ((zzbeh) obj).zzb.zzm();
    }
}
