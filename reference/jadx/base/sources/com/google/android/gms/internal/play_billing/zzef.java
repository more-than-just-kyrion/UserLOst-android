package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import net.sqlcipher.database.SQLiteDatabase;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.android.billingclient:billing@@7.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzef<T> implements zzeo<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzfp.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzec zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzdq zzl;
    private final zzff zzm;
    private final zzce zzn;
    private final zzei zzo;
    private final zzdx zzp;

    private zzef(int[] iArr, Object[] objArr, int i, int i2, zzec zzecVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzei zzeiVar, zzdq zzdqVar, zzff zzffVar, zzce zzceVar, zzdx zzdxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzceVar != null && zzceVar.zzf(zzecVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i4;
        this.zzk = i5;
        this.zzo = zzeiVar;
        this.zzl = zzdqVar;
        this.zzm = zzffVar;
        this.zzn = zzceVar;
        this.zzg = zzecVar;
        this.zzp = zzdxVar;
    }

    private static void zzA(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    private final void zzB(Object obj, Object obj2, int i) {
        if (zzI(obj2, i)) {
            int iZzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzeo zzeoVarZzv = zzv(i);
            if (!zzI(obj, i)) {
                if (zzL(object)) {
                    Object objZze = zzeoVarZzv.zze();
                    zzeoVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzeoVarZzv.zze();
                zzeoVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzeoVarZzv.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzM(obj2, i2, i)) {
            int iZzs = zzs(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzeo zzeoVarZzv = zzv(i);
            if (!zzM(obj, i2, i)) {
                if (zzL(object)) {
                    Object objZze = zzeoVarZzv.zze();
                    zzeoVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzeoVarZzv.zze();
                zzeoVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzeoVarZzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i) {
        int iZzp = zzp(i);
        long j = 1048575 & iZzp;
        if (j == 1048575) {
            return;
        }
        zzfp.zzq(obj, j, (1 << (iZzp >>> 20)) | zzfp.zzc(obj, j));
    }

    private final void zzE(Object obj, int i, int i2) {
        zzfp.zzq(obj, zzp(i2) & 1048575, i);
    }

    private final void zzF(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzs(i) & 1048575, obj2);
        zzD(obj, i);
    }

    private final void zzG(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzs(i2) & 1048575, obj2);
        zzE(obj, i, i2);
    }

    private final boolean zzH(Object obj, Object obj2, int i) {
        return zzI(obj, i) == zzI(obj2, i);
    }

    private final boolean zzI(Object obj, int i) {
        int iZzp = zzp(i);
        long j = iZzp & 1048575;
        if (j != 1048575) {
            return (zzfp.zzc(obj, j) & (1 << (iZzp >>> 20))) != 0;
        }
        int iZzs = zzs(i);
        long j2 = iZzs & 1048575;
        switch (zzr(iZzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzfp.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzfp.zzb(obj, j2)) != 0;
            case 2:
                return zzfp.zzd(obj, j2) != 0;
            case 3:
                return zzfp.zzd(obj, j2) != 0;
            case 4:
                return zzfp.zzc(obj, j2) != 0;
            case 5:
                return zzfp.zzd(obj, j2) != 0;
            case 6:
                return zzfp.zzc(obj, j2) != 0;
            case 7:
                return zzfp.zzw(obj, j2);
            case 8:
                Object objZzf = zzfp.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzbq) {
                    return !zzbq.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzfp.zzf(obj, j2) != null;
            case 10:
                return !zzbq.zzb.equals(zzfp.zzf(obj, j2));
            case 11:
                return zzfp.zzc(obj, j2) != 0;
            case 12:
                return zzfp.zzc(obj, j2) != 0;
            case 13:
                return zzfp.zzc(obj, j2) != 0;
            case 14:
                return zzfp.zzd(obj, j2) != 0;
            case 15:
                return zzfp.zzc(obj, j2) != 0;
            case 16:
                return zzfp.zzd(obj, j2) != 0;
            case 17:
                return zzfp.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzJ(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzI(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzK(Object obj, int i, zzeo zzeoVar) {
        return zzeoVar.zzk(zzfp.zzf(obj, i & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzcs) {
            return ((zzcs) obj).zzw();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i, int i2) {
        return zzfp.zzc(obj, (long) (zzp(i2) & 1048575)) == i;
    }

    private static boolean zzN(Object obj, long j) {
        return ((Boolean) zzfp.zzf(obj, j)).booleanValue();
    }

    private static final void zzO(int i, Object obj, zzfx zzfxVar) throws IOException {
        if (obj instanceof String) {
            zzfxVar.zzG(i, (String) obj);
        } else {
            zzfxVar.zzd(i, (zzbq) obj);
        }
    }

    static zzfg zzd(Object obj) {
        zzcs zzcsVar = (zzcs) obj;
        zzfg zzfgVar = zzcsVar.zzc;
        if (zzfgVar != zzfg.zzc()) {
            return zzfgVar;
        }
        zzfg zzfgVarZzf = zzfg.zzf();
        zzcsVar.zzc = zzfgVarZzf;
        return zzfgVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:126:0x0268  */
    /* JADX WARN: Code duplicated, block: B:129:0x027f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0282  */
    static zzef zzl(Class cls, zzdz zzdzVar, zzei zzeiVar, zzdq zzdqVar, zzff zzffVar, zzce zzceVar, zzdx zzdxVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int[] iArr;
        int i3;
        int i4;
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
        int iObjectFieldOffset;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset2;
        Field fieldZzz;
        char cCharAt9;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Object obj;
        Field fieldZzz2;
        int i25;
        Object obj2;
        Field fieldZzz3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        if (!(zzdzVar instanceof zzen)) {
            throw null;
        }
        zzen zzenVar = (zzen) zzdzVar;
        String strZzd = zzenVar.zzd();
        int length = strZzd.length();
        char c = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i30 = 1;
            while (true) {
                i = i30 + 1;
                if (strZzd.charAt(i30) < 55296) {
                    break;
                }
                i30 = i;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int iCharAt3 = strZzd.charAt(i);
        if (iCharAt3 >= 55296) {
            int i32 = iCharAt3 & 8191;
            int i33 = 13;
            while (true) {
                i29 = i31 + 1;
                cCharAt13 = strZzd.charAt(i31);
                if (cCharAt13 < 55296) {
                    break;
                }
                i32 |= (cCharAt13 & 8191) << i33;
                i33 += 13;
                i31 = i29;
            }
            iCharAt3 = i32 | (cCharAt13 << i33);
            i31 = i29;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i3 = 0;
            i6 = 0;
            i2 = 0;
            i4 = 0;
            iArr = zza;
            i5 = 0;
        } else {
            int i34 = i31 + 1;
            int iCharAt4 = strZzd.charAt(i31);
            if (iCharAt4 >= 55296) {
                int i35 = iCharAt4 & 8191;
                int i36 = 13;
                while (true) {
                    i14 = i34 + 1;
                    cCharAt8 = strZzd.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i14;
                }
                iCharAt4 = i35 | (cCharAt8 << i36);
                i34 = i14;
            }
            int i37 = i34 + 1;
            int iCharAt5 = strZzd.charAt(i34);
            if (iCharAt5 >= 55296) {
                int i38 = iCharAt5 & 8191;
                int i39 = 13;
                while (true) {
                    i13 = i37 + 1;
                    cCharAt7 = strZzd.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i13;
                }
                iCharAt5 = i38 | (cCharAt7 << i39);
                i37 = i13;
            }
            int i40 = i37 + 1;
            int iCharAt6 = strZzd.charAt(i37);
            if (iCharAt6 >= 55296) {
                int i41 = iCharAt6 & 8191;
                int i42 = 13;
                while (true) {
                    i12 = i40 + 1;
                    cCharAt6 = strZzd.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i12;
                }
                iCharAt6 = i41 | (cCharAt6 << i42);
                i40 = i12;
            }
            int i43 = i40 + 1;
            int iCharAt7 = strZzd.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i11 = i43 + 1;
                    cCharAt5 = strZzd.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i11;
                }
                iCharAt7 = i44 | (cCharAt5 << i45);
                i43 = i11;
            }
            int i46 = i43 + 1;
            iCharAt = strZzd.charAt(i43);
            if (iCharAt >= 55296) {
                int i47 = iCharAt & 8191;
                int i48 = 13;
                while (true) {
                    i10 = i46 + 1;
                    cCharAt4 = strZzd.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i10;
                }
                iCharAt = i47 | (cCharAt4 << i48);
                i46 = i10;
            }
            int i49 = i46 + 1;
            iCharAt2 = strZzd.charAt(i46);
            if (iCharAt2 >= 55296) {
                int i50 = iCharAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i9 = i49 + 1;
                    cCharAt3 = strZzd.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i9;
                }
                iCharAt2 = i50 | (cCharAt3 << i51);
                i49 = i9;
            }
            int i52 = i49 + 1;
            int iCharAt8 = strZzd.charAt(i49);
            if (iCharAt8 >= 55296) {
                int i53 = iCharAt8 & 8191;
                int i54 = 13;
                while (true) {
                    i8 = i52 + 1;
                    cCharAt2 = strZzd.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i8;
                }
                iCharAt8 = i53 | (cCharAt2 << i54);
                i52 = i8;
            }
            int i55 = i52 + 1;
            int iCharAt9 = strZzd.charAt(i52);
            if (iCharAt9 >= 55296) {
                int i56 = iCharAt9 & 8191;
                int i57 = 13;
                while (true) {
                    i7 = i55 + 1;
                    cCharAt = strZzd.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i7;
                }
                iCharAt9 = i56 | (cCharAt << i57);
                i55 = i7;
            }
            i2 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i3 = iCharAt6;
            i4 = iCharAt9;
            i5 = iCharAt4;
            i6 = iCharAt7;
            i31 = i55;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzenVar.zze();
        Class<?> cls2 = zzenVar.zza().getClass();
        int i58 = i4 + iCharAt2;
        int i59 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i59];
        int i60 = 0;
        int i61 = 0;
        int i62 = i4;
        int i63 = i58;
        while (i31 < length) {
            int i64 = i31 + 1;
            int iCharAt10 = strZzd.charAt(i31);
            if (iCharAt10 >= c) {
                int i65 = iCharAt10 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i28 = i66 + 1;
                    cCharAt12 = strZzd.charAt(i66);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i65 |= (cCharAt12 & 8191) << i67;
                    i67 += 13;
                    i66 = i28;
                }
                iCharAt10 = i65 | (cCharAt12 << i67);
                i15 = i28;
            } else {
                i15 = i64;
            }
            int i68 = i15 + 1;
            int iCharAt11 = strZzd.charAt(i15);
            if (iCharAt11 >= c) {
                int i69 = iCharAt11 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i27 = i70 + 1;
                    cCharAt11 = strZzd.charAt(i70);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i69 |= (cCharAt11 & 8191) << i71;
                    i71 += 13;
                    i70 = i27;
                }
                iCharAt11 = i69 | (cCharAt11 << i71);
                i16 = i27;
            } else {
                i16 = i68;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i60] = i61;
                i60++;
            }
            int i72 = iCharAt11 & 255;
            int i73 = iCharAt11 & 2048;
            int i74 = length;
            if (i72 >= 51) {
                int i75 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i76 = 13;
                    int i77 = iCharAt12 & 8191;
                    int i78 = i75;
                    while (true) {
                        i26 = i78 + 1;
                        cCharAt10 = strZzd.charAt(i78);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i77 |= (cCharAt10 & 8191) << i76;
                        i76 += 13;
                        i78 = i26;
                        c2 = 55296;
                    }
                    iCharAt12 = i77 | (cCharAt10 << i76);
                    i22 = i26;
                } else {
                    i22 = i75;
                }
                int i79 = i22;
                int i80 = i72 - 51;
                if (i80 == 9 || i80 == 17) {
                    i23 = i2 + 1;
                    int i81 = i61 / 3;
                    objArr[i81 + i81 + 1] = objArrZze[i2];
                } else {
                    if (i80 == 12) {
                        if (zzenVar.zzc() == 1 || i73 != 0) {
                            i23 = i2 + 1;
                            int i82 = i61 / 3;
                            objArr[i82 + i82 + 1] = objArrZze[i2];
                        } else {
                            i73 = 0;
                        }
                    }
                    i24 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i24];
                    if (obj instanceof Field) {
                        fieldZzz2 = (Field) obj;
                    } else {
                        fieldZzz2 = zzz(cls2, (String) obj);
                        objArrZze[i24] = fieldZzz2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                    i25 = i24 + 1;
                    obj2 = objArrZze[i25];
                    if (obj2 instanceof Field) {
                        fieldZzz3 = (Field) obj2;
                    } else {
                        fieldZzz3 = zzz(cls2, (String) obj2);
                        objArrZze[i25] = fieldZzz3;
                    }
                    zzenVar = zzenVar;
                    strZzd = strZzd;
                    i19 = i2;
                    i17 = i79;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                    i18 = 0;
                }
                i2 = i23;
                i24 = iCharAt12 + iCharAt12;
                obj = objArrZze[i24];
                if (obj instanceof Field) {
                    fieldZzz2 = (Field) obj;
                } else {
                    fieldZzz2 = zzz(cls2, (String) obj);
                    objArrZze[i24] = fieldZzz2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                i25 = i24 + 1;
                obj2 = objArrZze[i25];
                if (obj2 instanceof Field) {
                    fieldZzz3 = (Field) obj2;
                } else {
                    fieldZzz3 = zzz(cls2, (String) obj2);
                    objArrZze[i25] = fieldZzz3;
                }
                zzenVar = zzenVar;
                strZzd = strZzd;
                i19 = i2;
                i17 = i79;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                i18 = 0;
            } else {
                int i83 = i2 + 1;
                Field fieldZzz4 = zzz(cls2, (String) objArrZze[i2]);
                if (i72 == 9 || i72 == 17) {
                    zzenVar = zzenVar;
                    int i84 = i61 / 3;
                    objArr[i84 + i84 + 1] = fieldZzz4.getType();
                } else {
                    if (i72 == 27) {
                        i20 = 1;
                        i21 = i2 + 2;
                    } else if (i72 == 49) {
                        i21 = i2 + 2;
                        i20 = 1;
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        zzenVar = zzenVar;
                        if (zzenVar.zzc() == 1 || i73 != 0) {
                            i21 = i2 + 2;
                            int i85 = i61 / 3;
                            objArr[i85 + i85 + 1] = objArrZze[i83];
                            i83 = i21;
                        } else {
                            i73 = 0;
                        }
                    } else {
                        if (i72 == 50) {
                            int i86 = i2 + 2;
                            int i87 = i62 + 1;
                            iArr[i62] = i61;
                            int i88 = i61 / 3;
                            int i89 = i88 + i88;
                            objArr[i89] = objArrZze[i83];
                            if (i73 != 0) {
                                i83 = i2 + 3;
                                objArr[i89 + 1] = objArrZze[i86];
                                i62 = i87;
                            } else {
                                i83 = i86;
                                i62 = i87;
                                i73 = 0;
                            }
                        }
                        zzenVar = zzenVar;
                    }
                    int i90 = i61 / 3;
                    objArr[i90 + i90 + i20] = objArrZze[i83];
                    i83 = i21;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzz4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & 4096) == 0 || i72 > 17) {
                    i17 = i16;
                    i18 = 0;
                } else {
                    int i91 = i16 + 1;
                    int iCharAt13 = strZzd.charAt(i16);
                    if (iCharAt13 >= 55296) {
                        int i92 = iCharAt13 & 8191;
                        int i93 = 13;
                        while (true) {
                            i17 = i91 + 1;
                            cCharAt9 = strZzd.charAt(i91);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i92 |= (cCharAt9 & 8191) << i93;
                            i93 += 13;
                            i91 = i17;
                        }
                        iCharAt13 = i92 | (cCharAt9 << i93);
                    } else {
                        i17 = i91;
                    }
                    int i94 = i5 + i5 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i94];
                    if (obj3 instanceof Field) {
                        fieldZzz = (Field) obj3;
                    } else {
                        fieldZzz = zzz(cls2, (String) obj3);
                        objArrZze[i94] = fieldZzz;
                    }
                    i18 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz);
                }
                if (i72 >= 18 && i72 <= 49) {
                    iArr[i63] = iObjectFieldOffset3;
                    i63++;
                }
                i19 = i83;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i95 = i61 + 1;
            iArr2[i61] = iCharAt10;
            int i96 = i61 + 2;
            iArr2[i95] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? SQLiteDatabase.CREATE_IF_NECESSARY : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i73 != 0 ? Integer.MIN_VALUE : 0) | (i72 << 20);
            i61 += 3;
            iArr2[i96] = (i18 << 20) | iObjectFieldOffset;
            i2 = i19;
            i31 = i17;
            length = i74;
            zzenVar = zzenVar;
            strZzd = strZzd;
            i6 = i6;
            i3 = i3;
            c = 55296;
        }
        zzen zzenVar2 = zzenVar;
        return new zzef(iArr2, objArr, i3, i6, zzenVar2.zza(), zzenVar2.zzc(), false, iArr, i4, i58, zzeiVar, zzdqVar, zzffVar, zzceVar, zzdxVar);
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzfp.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzfp.zzf(obj, j)).floatValue();
    }

    private static int zzo(Object obj, long j) {
        return ((Integer) zzfp.zzf(obj, j)).intValue();
    }

    private final int zzp(int i) {
        return this.zzc[i + 2];
    }

    private final int zzq(int i, int i2) {
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

    private static int zzr(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzs(int i) {
        return this.zzc[i + 1];
    }

    private static long zzt(Object obj, long j) {
        return ((Long) zzfp.zzf(obj, j)).longValue();
    }

    private final zzcw zzu(int i) {
        int i2 = i / 3;
        return (zzcw) this.zzd[i2 + i2 + 1];
    }

    private final zzeo zzv(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzeo zzeoVar = (zzeo) objArr[i3];
        if (zzeoVar != null) {
            return zzeoVar;
        }
        zzeo zzeoVarZzb = zzel.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzeoVarZzb;
        return zzeoVarZzb;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzx(Object obj, int i) {
        zzeo zzeoVarZzv = zzv(i);
        int iZzs = zzs(i) & 1048575;
        if (!zzI(obj, i)) {
            return zzeoVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzeoVarZzv.zze();
        if (object != null) {
            zzeoVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i, int i2) {
        zzeo zzeoVarZzv = zzv(i2);
        if (!zzM(obj, i, i2)) {
            return zzeoVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i2) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzeoVarZzv.zze();
        if (object != null) {
            zzeoVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzz(Class cls, String str) {
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

    /* JADX WARN: Code duplicated, block: B:137:0x038d  */
    /* JADX WARN: Code duplicated, block: B:207:0x054e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v113, types: [com.google.android.gms.internal.play_billing.zzdk] */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v117, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v134 */
    /* JADX WARN: Type inference failed for: r0v182, types: [java.util.List] */
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
    /* JADX WARN: Type inference failed for: r1v123, types: [int] */
    /* JADX WARN: Type inference failed for: r1v126, types: [int] */
    /* JADX WARN: Type inference failed for: r1v165 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v169 */
    /* JADX WARN: Type inference failed for: r1v171 */
    /* JADX WARN: Type inference failed for: r1v172 */
    /* JADX WARN: Type inference failed for: r1v173 */
    /* JADX WARN: Type inference failed for: r1v83, types: [int] */
    /* JADX WARN: Type inference failed for: r1v85 */
    /* JADX WARN: Type inference failed for: r2v30, types: [int] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v44, types: [int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23, types: [int] */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v42, types: [int] */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
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
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final int zza(Object obj) {
        int i;
        ?? r16;
        ?? r5;
        int iZzw;
        int iZzw2;
        int iZzw3;
        int iZzx;
        int iZzw4;
        int iZzw5;
        int iZzd;
        int iZzw6;
        ?? Zzg;
        int size;
        int iZzw7;
        int iZzv;
        int iZzv2;
        ?? r3;
        int iZzu;
        ?? Zzw;
        ?? Zzh;
        int iZze;
        int iZzw8;
        int iZzw9;
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
            int iZzs = zzs(i3);
            int iZzr = zzr(iZzs);
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int i7 = iArr[i3 + 2];
            int i8 = i7 & i2;
            if (iZzr <= 17) {
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
            int i9 = iZzs & i2;
            if (iZzr >= zzcj.DOUBLE_LIST_PACKED.zza()) {
                zzcj.SINT64_LIST_PACKED.zza();
            }
            long j = i9;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 1:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 2:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(j2);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 3:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(j3);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 4:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(j4);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 5:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 6:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 7:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw4 = zzby.zzw(i6 << 3);
                        Zzh = iZzw4 + 1;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 8:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i10 = i6 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzbq) {
                            iZzw5 = zzby.zzw(i10);
                            iZzd = ((zzbq) object).zzd();
                            iZzw6 = zzby.zzw(iZzd);
                            Zzh = iZzw5 + iZzw6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzw3 = zzby.zzw(i10);
                            iZzx = zzby.zzv((String) object);
                            Zzh = iZzw3 + iZzx;
                            i4 += Zzh;
                        }
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 9:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        Zzh = zzeq.zzh(i6, unsafe.getObject(obj, j), zzv(i3));
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 10:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        zzbq zzbqVar = (zzbq) unsafe.getObject(obj, j);
                        iZzw5 = zzby.zzw(i6 << 3);
                        iZzd = zzbqVar.zzd();
                        iZzw6 = zzby.zzw(iZzd);
                        Zzh = iZzw5 + iZzw6 + iZzd;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 11:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i11 = unsafe.getInt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzw(i11);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 12:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(j5);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 13:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 14:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 15:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        int i12 = unsafe.getInt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzw((i12 >> 31) ^ (i12 + i12));
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 16:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx((j6 >> 63) ^ (j6 + j6));
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        Zzh = zzby.zzt(i6, (zzec) unsafe.getObject(obj, j), zzv(i3));
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 18:
                    Zzh = zzeq.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 19:
                    Zzh = zzeq.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i13 = zzeq.zza;
                    if (list.size() == 0) {
                        Zzg = z;
                    } else {
                        Zzg = zzeq.zzg(list) + (list.size() * zzby.zzw(i6 << 3));
                    }
                    i4 += Zzg;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i14 = zzeq.zza;
                    size = list2.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zzl(list2);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i15 = zzeq.zza;
                    size = list3.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zzf(list3);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 23:
                    Zzh = zzeq.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 24:
                    Zzh = zzeq.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i16 = zzeq.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        Zzh = z;
                    } else {
                        Zzh = size2 * (zzby.zzw(i6 << 3) + 1);
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 26:
                    ?? r0 = (List) unsafe.getObject(obj, j);
                    int i17 = zzeq.zza;
                    int size3 = r0.size();
                    if (size3 == 0) {
                        Zzg = z;
                    } else {
                        int iZzw10 = zzby.zzw(i6 << 3) * size3;
                        if (r0 instanceof zzdk) {
                            ?? r7 = (zzdk) r0;
                            for (?? r8 = z; r8 < size3; r8++) {
                                Object objZzf = r7.zzf(r8);
                                if (objZzf instanceof zzbq) {
                                    Zzg = iZzw10;
                                    int iZzd2 = ((zzbq) objZzf).zzd();
                                    iZzv2 = Zzg + zzby.zzw(iZzd2) + iZzd2;
                                } else {
                                    Zzg = iZzw10;
                                    iZzv2 = Zzg + zzby.zzv((String) objZzf);
                                }
                                Zzg = iZzv2;
                            }
                            Zzg = iZzw10;
                        } else {
                            for (?? r9 = z; r9 < size3; r9++) {
                                Object obj2 = r0.get(r9);
                                if (obj2 instanceof zzbq) {
                                    Zzg = iZzw10;
                                    int iZzd3 = ((zzbq) obj2).zzd();
                                    iZzv = Zzg + zzby.zzw(iZzd3) + iZzd3;
                                } else {
                                    Zzg = iZzw10;
                                    iZzv = Zzg + zzby.zzv((String) obj2);
                                }
                                Zzg = iZzv;
                            }
                            Zzg = iZzw10;
                        }
                    }
                    i4 += Zzg;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 27:
                    ?? r10 = (List) unsafe.getObject(obj, j);
                    zzeo zzeoVarZzv = zzv(i3);
                    int i18 = zzeq.zza;
                    int size4 = r10.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        int iZzw11 = zzby.zzw(i6 << 3) * size4;
                        for (?? r11 = z; r11 < size4; r11++) {
                            Object obj3 = r10.get(r11);
                            if (obj3 instanceof zzdi) {
                                r3 = iZzw11;
                                int iZza = ((zzdi) obj3).zza();
                                iZzu = (r3 == true ? 1 : 0) + zzby.zzw(iZza) + iZza;
                            } else {
                                r3 = iZzw11;
                                iZzu = (r3 == true ? 1 : 0) + zzby.zzu((zzec) obj3, zzeoVarZzv);
                            }
                            r3 = iZzu;
                        }
                        r3 = iZzw11;
                    }
                    i4 += r3;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 28:
                    ?? r12 = (List) unsafe.getObject(obj, j);
                    int i19 = zzeq.zza;
                    int size5 = r12.size();
                    if (size5 == 0) {
                        Zzw = z;
                    } else {
                        Zzw = size5 * zzby.zzw(i6 << 3);
                        for (?? r13 = z; r13 < r12.size(); r13++) {
                            int iZzd4 = ((zzbq) r12.get(r13)).zzd();
                            Zzw += zzby.zzw(iZzd4) + iZzd4;
                        }
                    }
                    i4 += Zzw;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i20 = zzeq.zza;
                    size = list5.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zzk(list5);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    int i21 = zzeq.zza;
                    size = list6.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zza(list6);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 31:
                    Zzh = zzeq.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 32:
                    Zzh = zzeq.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i22 = zzeq.zza;
                    size = list7.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zzi(list7);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i23 = zzeq.zza;
                    size = list8.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzw3 = zzeq.zzj(list8);
                        iZzw7 = zzby.zzw(i6 << 3);
                        iZzx = size * iZzw7;
                        Zzh = iZzw3 + iZzx;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 35:
                    iZze = zzeq.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 36:
                    iZze = zzeq.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 37:
                    iZze = zzeq.zzg((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 38:
                    iZze = zzeq.zzl((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 39:
                    iZze = zzeq.zzf((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 40:
                    iZze = zzeq.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 41:
                    iZze = zzeq.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i24 = zzeq.zza;
                    iZze = list9.size();
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 43:
                    iZze = zzeq.zzk((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 44:
                    iZze = zzeq.zza((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 45:
                    iZze = zzeq.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 46:
                    iZze = zzeq.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 47:
                    iZze = zzeq.zzi((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 48:
                    iZze = zzeq.zzj((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzw8 = zzby.zzw(i6 << 3);
                        iZzw9 = zzby.zzw(iZze);
                        Zzw = iZzw8 + iZzw9 + iZze;
                        i4 += Zzw;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 49:
                    ?? r14 = (List) unsafe.getObject(obj, j);
                    zzeo zzeoVarZzv2 = zzv(i3);
                    int i25 = zzeq.zza;
                    int size6 = r14.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        while (r6 < size6) {
                            r6 = z2;
                            int iZzt = zzby.zzt(i6, (zzec) r14.get(r6), zzeoVarZzv2);
                            r6++;
                            r4 = (r4 == true ? 1 : 0) + iZzt;
                        }
                        r6 = z2;
                    }
                    i4 += r4;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 50:
                    zzdw zzdwVar = (zzdw) unsafe.getObject(obj, j);
                    if (zzdwVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzdwVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                case 51:
                    if (zzM(obj, i6, i3)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 52:
                    if (zzM(obj, i6, i3)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 53:
                    if (zzM(obj, i6, i3)) {
                        long jZzt = zzt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(jZzt);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 54:
                    if (zzM(obj, i6, i3)) {
                        long jZzt2 = zzt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(jZzt2);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 55:
                    if (zzM(obj, i6, i3)) {
                        long jZzo = zzo(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(jZzo);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 56:
                    if (zzM(obj, i6, i3)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i6, i3)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 58:
                    if (zzM(obj, i6, i3)) {
                        iZzw4 = zzby.zzw(i6 << 3);
                        Zzh = iZzw4 + 1;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i6, i3)) {
                        int i26 = i6 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzbq) {
                            iZzw5 = zzby.zzw(i26);
                            iZzd = ((zzbq) object2).zzd();
                            iZzw6 = zzby.zzw(iZzd);
                            Zzh = iZzw5 + iZzw6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzw3 = zzby.zzw(i26);
                            iZzx = zzby.zzv((String) object2);
                            Zzh = iZzw3 + iZzx;
                            i4 += Zzh;
                        }
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i6, i3)) {
                        Zzh = zzeq.zzh(i6, unsafe.getObject(obj, j), zzv(i3));
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i6, i3)) {
                        zzbq zzbqVar2 = (zzbq) unsafe.getObject(obj, j);
                        iZzw5 = zzby.zzw(i6 << 3);
                        iZzd = zzbqVar2.zzd();
                        iZzw6 = zzby.zzw(iZzd);
                        Zzh = iZzw5 + iZzw6 + iZzd;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i6, i3)) {
                        int iZzo = zzo(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzw(iZzo);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i6, i3)) {
                        long jZzo2 = zzo(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx(jZzo2);
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i6, i3)) {
                        iZzw2 = zzby.zzw(i6 << 3);
                        Zzh = iZzw2 + 4;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 65:
                    if (zzM(obj, i6, i3)) {
                        iZzw = zzby.zzw(i6 << 3);
                        Zzh = iZzw + 8;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i6, i3)) {
                        int iZzo2 = zzo(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzw((iZzo2 >> 31) ^ (iZzo2 + iZzo2));
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i6, i3)) {
                        long jZzt3 = zzt(obj, j);
                        iZzw3 = zzby.zzw(i6 << 3);
                        iZzx = zzby.zzx((jZzt3 >> 63) ^ (jZzt3 + jZzt3));
                        Zzh = iZzw3 + iZzx;
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i6, i3)) {
                        Zzh = zzby.zzt(i6, (zzec) unsafe.getObject(obj, j), zzv(i3));
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                default:
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
            }
        }
        zzff zzffVar = this.zzm;
        int iZza2 = i4 + zzffVar.zza(zzffVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        zzci zzciVarZzb = this.zzn.zzb(obj);
        int iZzb = 0;
        for (int i27 = 0; i27 < zzciVarZzb.zza.zzb(); i27++) {
            Map.Entry entryZzg = zzciVarZzb.zza.zzg(i27);
            iZzb += zzci.zzb((zzch) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzciVarZzb.zza.zzc()) {
            iZzb += zzci.zzb((zzch) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzc.length; i4 += 3) {
            int iZzs = zzs(i4);
            int[] iArr = this.zzc;
            int i5 = 1048575 & iZzs;
            int iZzr = zzr(iZzs);
            int i6 = iArr[i4];
            long j = i5;
            int iHashCode = 37;
            switch (iZzr) {
                case 0:
                    i = i3 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzfp.zza(obj, j));
                    byte[] bArr = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzfp.zzb(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr2 = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr3 = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr4 = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    iFloatToIntBits = zzda.zza(zzfp.zzw(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    iFloatToIntBits = ((String) zzfp.zzf(obj, j)).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object objZzf = zzfp.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = i2 + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr5 = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = zzfp.zzd(obj, j);
                    byte[] bArr6 = zzda.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object objZzf2 = zzfp.zzf(obj, j);
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
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr8 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr9 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr10 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzda.zza(zzN(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = ((String) zzfp.zzf(obj, j)).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr11 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzo(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr12 = zzda.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzfp.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + this.zzm.zzd(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzn.zzb(obj).zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x024c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0250  */
    /* JADX WARN: Code duplicated, block: B:106:0x026a  */
    /* JADX WARN: Code duplicated, block: B:108:0x026e  */
    /* JADX WARN: Code duplicated, block: B:117:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:119:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:121:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:122:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:132:0x0309  */
    /* JADX WARN: Code duplicated, block: B:133:0x030b  */
    /* JADX WARN: Code duplicated, block: B:164:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:167:0x0401  */
    /* JADX WARN: Code duplicated, block: B:175:0x0459  */
    /* JADX WARN: Code duplicated, block: B:178:0x0460  */
    /* JADX WARN: Code duplicated, block: B:180:0x046f  */
    /* JADX WARN: Code duplicated, block: B:182:0x0474  */
    /* JADX WARN: Code duplicated, block: B:184:0x0481  */
    /* JADX WARN: Code duplicated, block: B:185:0x049f  */
    /* JADX WARN: Code duplicated, block: B:187:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:189:0x04ad A[LOOP:3: B:188:0x04ab->B:189:0x04ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:191:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:194:0x04c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:195:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:197:0x04da  */
    /* JADX WARN: Code duplicated, block: B:199:0x04e4 A[LOOP:4: B:196:0x04d8->B:199:0x04e4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:201:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:202:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:204:0x0501  */
    /* JADX WARN: Code duplicated, block: B:206:0x050c A[LOOP:5: B:205:0x050a->B:206:0x050c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:211:0x0522 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:212:0x0524  */
    /* JADX WARN: Code duplicated, block: B:214:0x0535  */
    /* JADX WARN: Code duplicated, block: B:216:0x053d A[LOOP:6: B:213:0x0533->B:216:0x053d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:219:0x0557  */
    /* JADX WARN: Code duplicated, block: B:221:0x055c  */
    /* JADX WARN: Code duplicated, block: B:222:0x0566 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:223:0x0568  */
    /* JADX WARN: Code duplicated, block: B:226:0x0586  */
    /* JADX WARN: Code duplicated, block: B:228:0x058a  */
    /* JADX WARN: Code duplicated, block: B:230:0x0597  */
    /* JADX WARN: Code duplicated, block: B:232:0x05a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:233:0x05a9  */
    /* JADX WARN: Code duplicated, block: B:235:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:238:0x05be  */
    /* JADX WARN: Code duplicated, block: B:239:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:242:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:245:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:248:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:251:0x0608  */
    /* JADX WARN: Code duplicated, block: B:253:0x0612  */
    /* JADX WARN: Code duplicated, block: B:255:0x061a  */
    /* JADX WARN: Code duplicated, block: B:257:0x061e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:258:0x0620  */
    /* JADX WARN: Code duplicated, block: B:259:0x0626  */
    /* JADX WARN: Code duplicated, block: B:262:0x0630  */
    /* JADX WARN: Code duplicated, block: B:264:0x0638  */
    /* JADX WARN: Code duplicated, block: B:266:0x0640  */
    /* JADX WARN: Code duplicated, block: B:268:0x0644 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    /* JADX WARN: Code duplicated, block: B:280:0x066d  */
    /* JADX WARN: Code duplicated, block: B:282:0x0677  */
    /* JADX WARN: Code duplicated, block: B:283:0x06a0 A[PHI: r8 r9 r10 r11
  0x06a0: PHI (r8v63 int) = (r8v59 int), (r8v65 int) binds: [B:281:0x0675, B:252:0x0610] A[DONT_GENERATE, DONT_INLINE]
  0x06a0: PHI (r9v45 int) = (r9v42 int), (r9v47 int) binds: [B:281:0x0675, B:252:0x0610] A[DONT_GENERATE, DONT_INLINE]
  0x06a0: PHI (r10v64 com.google.android.gms.internal.play_billing.zzbc) = (r10v61 com.google.android.gms.internal.play_billing.zzbc), (r10v66 com.google.android.gms.internal.play_billing.zzbc) binds: [B:281:0x0675, B:252:0x0610] A[DONT_GENERATE, DONT_INLINE]
  0x06a0: PHI (r11v21 int) = (r11v18 int), (r11v23 int) binds: [B:281:0x0675, B:252:0x0610] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:284:0x06ab  */
    /* JADX WARN: Code duplicated, block: B:286:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:288:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:290:0x06c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:291:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:292:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:295:0x06db  */
    /* JADX WARN: Code duplicated, block: B:297:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:299:0x06eb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:306:0x0706  */
    /* JADX WARN: Code duplicated, block: B:308:0x070e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x0710  */
    /* JADX WARN: Code duplicated, block: B:310:0x0714  */
    /* JADX WARN: Code duplicated, block: B:312:0x071c  */
    /* JADX WARN: Code duplicated, block: B:315:0x0729  */
    /* JADX WARN: Code duplicated, block: B:317:0x0731  */
    /* JADX WARN: Code duplicated, block: B:319:0x0739 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:323:0x0747  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:332:0x0766 A[PHI: r1 r3 r4 r7 r9 r13
  0x0766: PHI (r1v127 int) = (r1v118 int), (r1v121 int), (r1v123 int), (r1v125 int), (r1v130 int) binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]
  0x0766: PHI (r3v55 int) = (r3v50 int), (r3v52 int), (r3v53 int), (r3v54 int), (r3v57 int) binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]
  0x0766: PHI (r4v31 sun.misc.Unsafe) = 
  (r4v26 sun.misc.Unsafe)
  (r4v28 sun.misc.Unsafe)
  (r4v29 sun.misc.Unsafe)
  (r4v30 sun.misc.Unsafe)
  (r4v33 sun.misc.Unsafe)
 binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]
  0x0766: PHI (r7v14 int) = (r7v10 int), (r7v11 int), (r7v12 int), (r7v13 int), (r7v16 int) binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]
  0x0766: PHI (r9v39 int) = (r9v35 int), (r9v36 int), (r9v37 int), (r9v38 int), (r9v41 int) binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]
  0x0766: PHI (r13v43 com.google.android.gms.internal.play_billing.zzbc) = 
  (r13v39 com.google.android.gms.internal.play_billing.zzbc)
  (r13v40 com.google.android.gms.internal.play_billing.zzbc)
  (r13v41 com.google.android.gms.internal.play_billing.zzbc)
  (r13v42 com.google.android.gms.internal.play_billing.zzbc)
  (r13v45 com.google.android.gms.internal.play_billing.zzbc)
 binds: [B:396:0x087f, B:386:0x0847, B:370:0x07fb, B:346:0x079e, B:285:0x06b6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:333:0x076b  */
    /* JADX WARN: Code duplicated, block: B:335:0x0778  */
    /* JADX WARN: Code duplicated, block: B:337:0x0783  */
    /* JADX WARN: Code duplicated, block: B:339:0x078d  */
    /* JADX WARN: Code duplicated, block: B:340:0x078f  */
    /* JADX WARN: Code duplicated, block: B:346:0x079e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:347:0x07a0  */
    /* JADX WARN: Code duplicated, block: B:349:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:350:0x07ae  */
    /* JADX WARN: Code duplicated, block: B:353:0x07b5  */
    /* JADX WARN: Code duplicated, block: B:355:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:357:0x07c7  */
    /* JADX WARN: Code duplicated, block: B:358:0x07c9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:360:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:362:0x07dc  */
    /* JADX WARN: Code duplicated, block: B:364:0x07e7 A[LOOP:14: B:363:0x07e5->B:364:0x07e7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:369:0x07fa  */
    /* JADX WARN: Code duplicated, block: B:371:0x07fd  */
    /* JADX WARN: Code duplicated, block: B:373:0x080a  */
    /* JADX WARN: Code duplicated, block: B:375:0x0812 A[LOOP:15: B:372:0x0808->B:375:0x0812, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:376:0x081c  */
    /* JADX WARN: Code duplicated, block: B:378:0x0829  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:380:0x0834 A[LOOP:16: B:379:0x0832->B:380:0x0834, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:385:0x0846  */
    /* JADX WARN: Code duplicated, block: B:387:0x0849  */
    /* JADX WARN: Code duplicated, block: B:389:0x0856  */
    /* JADX WARN: Code duplicated, block: B:391:0x085e A[LOOP:17: B:388:0x0854->B:391:0x085e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:392:0x0868  */
    /* JADX WARN: Code duplicated, block: B:394:0x0875  */
    /* JADX WARN: Code duplicated, block: B:396:0x087f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:397:0x0881  */
    /* JADX WARN: Code duplicated, block: B:398:0x0893  */
    /* JADX WARN: Code duplicated, block: B:400:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:402:0x08ab A[LOOP:18: B:401:0x08a9->B:402:0x08ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:407:0x08be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:408:0x08c0  */
    /* JADX WARN: Code duplicated, block: B:410:0x08cd  */
    /* JADX WARN: Code duplicated, block: B:412:0x08d5 A[LOOP:19: B:409:0x08cb->B:412:0x08d5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:413:0x08df  */
    /* JADX WARN: Code duplicated, block: B:415:0x08ec  */
    /* JADX WARN: Code duplicated, block: B:417:0x08f7 A[LOOP:20: B:416:0x08f5->B:417:0x08f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:422:0x090e  */
    /* JADX WARN: Code duplicated, block: B:424:0x0911  */
    /* JADX WARN: Code duplicated, block: B:426:0x0922  */
    /* JADX WARN: Code duplicated, block: B:428:0x092a A[LOOP:21: B:425:0x0920->B:428:0x092a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:429:0x0938  */
    /* JADX WARN: Code duplicated, block: B:431:0x0945  */
    /* JADX WARN: Code duplicated, block: B:433:0x0950 A[LOOP:22: B:432:0x094e->B:433:0x0950, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:438:0x0966  */
    /* JADX WARN: Code duplicated, block: B:440:0x0969  */
    /* JADX WARN: Code duplicated, block: B:442:0x097a  */
    /* JADX WARN: Code duplicated, block: B:444:0x0982 A[LOOP:23: B:441:0x0978->B:444:0x0982, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:446:0x0992  */
    /* JADX WARN: Code duplicated, block: B:448:0x099a A[LOOP:2: B:445:0x0990->B:448:0x099a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:449:0x09ae A[PHI: r0 r7 r8 r9 r10 r11 r13
  0x09ae: PHI (r0v32 'this' com.google.android.gms.internal.play_billing.zzef<T>) = 
  (r0v1 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v1 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v1 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v1 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v8 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v31 'this' com.google.android.gms.internal.play_billing.zzef<T>)
  (r0v1 'this' com.google.android.gms.internal.play_billing.zzef<T>)
 binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r7v28 int) = (r7v7 int), (r7v8 int), (r7v9 int), (r7v14 int), (r7v18 int), (r13v35 int), (r7v32 int) binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r8v74 int) = (r8v53 int), (r8v54 int), (r8v55 int), (r8v57 int), (r8v64 int), (r8v72 int), (r8v77 int) binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r9v59 int) = (r9v32 int), (r9v33 int), (r9v34 int), (r9v39 int), (r9v46 int), (r9v54 int), (r9v61 int) binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r10v74 int) = (r10v35 int), (r10v36 int), (r10v37 int), (r10v51 int), (r10v65 int), (r10v72 int), (r10v77 int) binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r11v34 sun.misc.Unsafe) = 
  (r11v10 sun.misc.Unsafe)
  (r11v11 sun.misc.Unsafe)
  (r11v12 sun.misc.Unsafe)
  (r11v14 sun.misc.Unsafe)
  (r11v22 sun.misc.Unsafe)
  (r11v29 sun.misc.Unsafe)
  (r11v36 sun.misc.Unsafe)
 binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]
  0x09ae: PHI (r13v52 com.google.android.gms.internal.play_billing.zzbc) = 
  (r13v36 com.google.android.gms.internal.play_billing.zzbc)
  (r13v37 com.google.android.gms.internal.play_billing.zzbc)
  (r13v38 com.google.android.gms.internal.play_billing.zzbc)
  (r13v43 com.google.android.gms.internal.play_billing.zzbc)
  (r13v48 com.google.android.gms.internal.play_billing.zzbc)
  (r13v50 com.google.android.gms.internal.play_billing.zzbc)
  (r13v54 com.google.android.gms.internal.play_billing.zzbc)
 binds: [B:439:0x0967, B:423:0x090f, B:407:0x08be, B:332:0x0766, B:283:0x06a0, B:250:0x05ff, B:183:0x047f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:459:0x09f1  */
    /* JADX WARN: Code duplicated, block: B:462:0x0a02  */
    /* JADX WARN: Code duplicated, block: B:464:0x0a0e  */
    /* JADX WARN: Code duplicated, block: B:466:0x0a1f A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:467:0x0a2a  */
    /* JADX WARN: Code duplicated, block: B:469:0x0a2d  */
    /* JADX WARN: Code duplicated, block: B:470:0x0a55  */
    /* JADX WARN: Code duplicated, block: B:471:0x0a58  */
    /* JADX WARN: Code duplicated, block: B:473:0x0a5e  */
    /* JADX WARN: Code duplicated, block: B:474:0x0a7d  */
    /* JADX WARN: Code duplicated, block: B:475:0x0a85  */
    /* JADX WARN: Code duplicated, block: B:477:0x0a8d  */
    /* JADX WARN: Code duplicated, block: B:478:0x0aa2  */
    /* JADX WARN: Code duplicated, block: B:480:0x0aaa  */
    /* JADX WARN: Code duplicated, block: B:486:0x0acc  */
    /* JADX WARN: Code duplicated, block: B:488:0x0ad9  */
    /* JADX WARN: Code duplicated, block: B:490:0x0ae2  */
    /* JADX WARN: Code duplicated, block: B:494:0x0aff  */
    /* JADX WARN: Code duplicated, block: B:496:0x0b08  */
    /* JADX WARN: Code duplicated, block: B:497:0x0b2f  */
    /* JADX WARN: Code duplicated, block: B:500:0x0b3b  */
    /* JADX WARN: Code duplicated, block: B:502:0x0b47  */
    /* JADX WARN: Code duplicated, block: B:504:0x0b4f  */
    /* JADX WARN: Code duplicated, block: B:505:0x0b53  */
    /* JADX WARN: Code duplicated, block: B:514:0x0b79  */
    /* JADX WARN: Code duplicated, block: B:516:0x0b84  */
    /* JADX WARN: Code duplicated, block: B:518:0x0b91  */
    /* JADX WARN: Code duplicated, block: B:519:0x0b94  */
    /* JADX WARN: Code duplicated, block: B:521:0x0ba2 A[PHI: r1 r3 r5 r6 r9 r20
  0x0ba2: PHI (r1v174 int) = (r1v173 int), (r1v175 int) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]
  0x0ba2: PHI (r3v99 int) = (r3v98 int), (r3v100 int) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]
  0x0ba2: PHI (r5v115 com.google.android.gms.internal.play_billing.zzbc) = (r5v114 com.google.android.gms.internal.play_billing.zzbc), (r5v116 com.google.android.gms.internal.play_billing.zzbc) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]
  0x0ba2: PHI (r6v86 byte[]) = (r6v85 byte[]), (r6v87 byte[]) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]
  0x0ba2: PHI (r9v72 int) = (r9v71 int), (r9v73 int) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]
  0x0ba2: PHI (r20v24 int) = (r20v23 int), (r20v25 int) binds: [B:515:0x0b82, B:501:0x0b45] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:522:0x0ba5  */
    /* JADX WARN: Code duplicated, block: B:524:0x0bb1  */
    /* JADX WARN: Code duplicated, block: B:525:0x0bc3  */
    /* JADX WARN: Code duplicated, block: B:527:0x0bcf  */
    /* JADX WARN: Code duplicated, block: B:528:0x0be1  */
    /* JADX WARN: Code duplicated, block: B:530:0x0bec  */
    /* JADX WARN: Code duplicated, block: B:531:0x0bfe  */
    /* JADX WARN: Code duplicated, block: B:533:0x0c09  */
    /* JADX WARN: Code duplicated, block: B:535:0x0c1e  */
    /* JADX WARN: Code duplicated, block: B:537:0x0c2a  */
    /* JADX WARN: Code duplicated, block: B:538:0x0c3f  */
    /* JADX WARN: Code duplicated, block: B:540:0x0c4b  */
    /* JADX WARN: Code duplicated, block: B:541:0x0c60 A[PHI: r1 r4 r5 r6 r9 r20
  0x0c60: PHI (r1v190 int) = 
  (r1v166 int)
  (r1v167 int)
  (r1v168 int)
  (r1v169 int)
  (r1v170 int)
  (r1v171 int)
  (r1v174 int)
  (r1v183 int)
  (r1v191 int)
 binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c60: PHI (r4v87 int) = (r4v58 int), (r4v59 int), (r4v60 int), (r4v61 int), (r4v62 int), (r4v63 int), (r4v66 int), (r4v79 int), (r4v88 int) binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c60: PHI (r5v123 com.google.android.gms.internal.play_billing.zzbc) = 
  (r5v107 com.google.android.gms.internal.play_billing.zzbc)
  (r5v108 com.google.android.gms.internal.play_billing.zzbc)
  (r5v109 com.google.android.gms.internal.play_billing.zzbc)
  (r5v110 com.google.android.gms.internal.play_billing.zzbc)
  (r5v111 com.google.android.gms.internal.play_billing.zzbc)
  (r5v112 com.google.android.gms.internal.play_billing.zzbc)
  (r5v115 com.google.android.gms.internal.play_billing.zzbc)
  (r5v119 com.google.android.gms.internal.play_billing.zzbc)
  (r5v124 com.google.android.gms.internal.play_billing.zzbc)
 binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c60: PHI (r6v98 byte[]) = 
  (r6v78 byte[])
  (r6v79 byte[])
  (r6v80 byte[])
  (r6v81 byte[])
  (r6v82 byte[])
  (r6v83 byte[])
  (r6v86 byte[])
  (r6v91 byte[])
  (r6v99 byte[])
 binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c60: PHI (r9v90 int) = (r9v64 int), (r9v65 int), (r9v66 int), (r9v67 int), (r9v68 int), (r9v69 int), (r9v72 int), (r9v82 int), (r9v91 int) binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c60: PHI (r20v36 int) = 
  (r20v16 int)
  (r20v17 int)
  (r20v18 int)
  (r20v19 int)
  (r20v20 int)
  (r20v21 int)
  (r20v24 int)
  (r20v30 int)
  (r20v37 int)
 binds: [B:539:0x0c49, B:536:0x0c28, B:532:0x0c07, B:529:0x0bea, B:526:0x0bcd, B:523:0x0baf, B:521:0x0ba2, B:499:0x0b34, B:466:0x0a1f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:546:0x0c81 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:550:0x0c90  */
    /* JADX WARN: Code duplicated, block: B:557:0x0cb9  */
    /* JADX WARN: Code duplicated, block: B:57:0x016f  */
    /* JADX WARN: Code duplicated, block: B:590:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x018d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x02fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x031b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x034b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x035f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x037a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x0393 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x03ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:0x04c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x051d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:0x0668 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:0x0663 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x0659 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:610:0x0654 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x0701 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:612:0x06fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:0x0761 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:0x075c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x0757 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x0752 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x0799 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x07f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:0x0841 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:620:0x08b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:0x0909 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:622:0x0961 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:0x09b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x09dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x0c63 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:630:0x03ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:631:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:632:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:633:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x0187 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:636:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:637:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:638:0x0311 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:0x0327 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:0x0342 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:0x0356 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x0370 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x011f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:647:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:0x02e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:0x02b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:0x0299 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x0243 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:0x0265 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x0286 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x02dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:661:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:664:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:0x09cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:0x09bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:668:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:669:0x0c7a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:670:0x0444 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:671:0x09d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:672:0x0440 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x0434 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:685:0x09af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:687:0x04f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:688:0x054b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:691:0x054b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:696:0x05e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:698:0x05ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:701:0x065e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:702:0x064c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:0x0646 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:709:0x0879 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:710:0x06f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:711:0x06ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:717:0x0879 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:718:0x073f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:0x073b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:728:0x0879 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:733:0x0879 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:736:0x0879 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:739:0x09af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:742:0x09af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:745:0x09af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:746:0x0204 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:750:0x022a A[EDGE_INSN: B:750:0x022a->B:91:0x022a BREAK  A[LOOP:26: B:87:0x0217->B:90:0x0221], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:76:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:78:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:80:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:82:0x01fa A[LOOP:24: B:79:0x01f0->B:82:0x01fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x0206  */
    /* JADX WARN: Code duplicated, block: B:86:0x0210  */
    /* JADX WARN: Code duplicated, block: B:88:0x0219  */
    /* JADX WARN: Code duplicated, block: B:90:0x0221 A[LOOP:26: B:87:0x0217->B:90:0x0221, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:92:0x022e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0234 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0236  */
    /* JADX WARN: Code duplicated, block: B:99:0x0248  */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzbc zzbcVar) throws IOException {
        int i4;
        Unsafe unsafe;
        int iZzi;
        int i5;
        int i6;
        int iZzq;
        int i7;
        int i8;
        int i9;
        int i10;
        Unsafe unsafe2;
        zzbc zzbcVar2;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int iZzr;
        long j;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z;
        int i22;
        int i23;
        int i24;
        int i25;
        int length;
        int i26;
        char[] cArr;
        int i27;
        int i28;
        int i29;
        byte b;
        int i30;
        byte b2;
        byte b3;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        Unsafe unsafe3;
        int i36;
        zzbc zzbcVar3;
        int i37;
        long j2;
        Unsafe unsafe4;
        zzcz zzczVar;
        int i38;
        int i39;
        zzbc zzbcVar4;
        zzca zzcaVar;
        int iZzh;
        zzca zzcaVar2;
        int i40;
        zzck zzckVar;
        int iZzh2;
        zzck zzckVar2;
        int i41;
        zzdr zzdrVar;
        int iZzh3;
        zzdr zzdrVar2;
        int i42;
        Unsafe unsafe5;
        int i43;
        int i44;
        int iZzf;
        zzdr zzdrVar3;
        int iZzh4;
        zzdr zzdrVar4;
        int i45;
        zzct zzctVar;
        int iZzh5;
        zzct zzctVar2;
        int i46;
        zzbe zzbeVar;
        boolean z2;
        int iZzh6;
        boolean z3;
        zzbe zzbeVar2;
        int i47;
        boolean z4;
        int i48;
        int i49;
        int iZzh7;
        int i50;
        int i51;
        int i52;
        int iZzh8;
        int i53;
        int i54;
        int iZzh9;
        int i55;
        int iZzh10;
        int i56;
        int iZzj;
        zzcw zzcwVarZzu;
        zzff zzffVar;
        int i57;
        Iterator it;
        Object objZzo;
        int iIntValue;
        int size;
        Object objZzo2;
        int i58;
        int i59;
        int iIntValue2;
        zzct zzctVar3;
        int iZzh11;
        int iZzh12;
        zzct zzctVar4;
        int i60;
        zzdr zzdrVar5;
        int iZzh13;
        zzdr zzdrVar6;
        int i61;
        int i62;
        zzeo zzeoVarZzv;
        int iZzh14;
        int i63;
        int i64;
        Unsafe unsafe6;
        Object object;
        int i65;
        int i66;
        Unsafe unsafe7;
        long j3;
        byte[] bArr2;
        int iZzh15;
        int iZzk;
        int i67;
        boolean z5;
        int i68;
        int i69;
        byte[] bArr3;
        zzbc zzbcVar5;
        int i70;
        zzcw zzcwVarZzu2;
        zzcz zzczVarZzd;
        this = this;
        Object obj2 = obj;
        byte[] bArr4 = bArr;
        int i71 = i2;
        int i72 = i3;
        zzbc zzbcVar6 = zzbcVar;
        zzA(obj);
        Unsafe unsafe8 = zzb;
        int i73 = 0;
        int iZzg = i;
        int i74 = 0;
        int i75 = 0;
        int i76 = 0;
        int i77 = -1;
        int i78 = 1048575;
        while (true) {
            if (iZzg < i71) {
                int i79 = iZzg + 1;
                byte b4 = bArr4[iZzg];
                if (b4 < 0) {
                    iZzi = zzbd.zzi(b4, bArr4, i79, zzbcVar6);
                    i75 = zzbcVar6.zza;
                } else {
                    i75 = b4;
                    iZzi = i79;
                }
                int i80 = i75 >>> 3;
                if (i80 > i77) {
                    iZzq = (i80 < this.zze || i80 > this.zzf) ? -1 : this.zzq(i80, i74 / 3);
                } else {
                    if (i80 < this.zze || i80 > this.zzf) {
                        i5 = -1;
                        i6 = -1;
                    } else {
                        iZzq = this.zzq(i80, i73);
                    }
                    if (i6 == i5) {
                        i7 = iZzi;
                        i8 = i76;
                        i78 = i78;
                        i9 = i80;
                        i10 = i73;
                        unsafe2 = unsafe8;
                        zzbcVar2 = zzbcVar6;
                        i4 = i72;
                    } else {
                        i12 = i75 & 7;
                        iArr = this.zzc;
                        i13 = iArr[i6 + 1];
                        i14 = i75;
                        iZzr = zzr(i13);
                        j = i13 & 1048575;
                        i77 = i80;
                        if (iZzr <= 17) {
                            int i81 = iArr[i6 + 2];
                            i15 = 1 << (i81 >>> 20);
                            i16 = i81 & 1048575;
                            if (i16 != i78) {
                                if (i78 != 1048575) {
                                    unsafe8.putInt(obj2, i78, i76);
                                }
                                if (i16 == 1048575) {
                                    i76 = 0;
                                } else {
                                    i76 = unsafe8.getInt(obj2, i16);
                                }
                                i78 = i16;
                            } else {
                                i78 = i78;
                            }
                            switch (iZzr) {
                                case 0:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 1) {
                                        iZzg = i17 + 8;
                                        i76 |= i15;
                                        zzfp.zzo(obj2, j, Double.longBitsToDouble(zzbd.zzn(bArr4, i17)));
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4 || i4 == 0) {
                                            if (this.zzh || zzbcVar2.zzd == zzcd.zza) {
                                                i11 = i75;
                                                iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                            } else {
                                                if (zzbcVar2.zzd.zzb(this.zzg, i9) != null) {
                                                    throw null;
                                                }
                                                i11 = i75;
                                                iZzg = zzbd.zzg(i75, bArr, i7, i2, zzd(obj), zzbcVar);
                                            }
                                            bArr4 = bArr;
                                            i71 = i2;
                                            i74 = i73;
                                            i77 = i9;
                                            i75 = i11;
                                            unsafe8 = unsafe2;
                                            i78 = i78;
                                            i73 = i10;
                                            i76 = i8;
                                            zzbcVar6 = zzbcVar;
                                            i72 = i4;
                                        } else {
                                            iZzg = i7;
                                            i78 = i78;
                                            i76 = i8;
                                            unsafe = unsafe2;
                                        }
                                    }
                                    break;
                                case 1:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 5) {
                                        iZzg = i17 + 4;
                                        i76 |= i15;
                                        zzfp.zzp(obj2, j, Float.intBitsToFloat(zzbd.zzb(bArr4, i17)));
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 0) {
                                        int i82 = i76 | i15;
                                        int iZzk2 = zzbd.zzk(bArr4, i17, zzbcVar6);
                                        unsafe8.putLong(obj, j, zzbcVar6.zzb);
                                        i76 = i82;
                                        iZzg = iZzk2;
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 4:
                                case 11:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 0) {
                                        i76 |= i15;
                                        iZzg = zzbd.zzh(bArr4, i17, zzbcVar6);
                                        unsafe8.putInt(obj2, j, zzbcVar6.zza);
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 5:
                                case 14:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 1) {
                                        unsafe8.putLong(obj, j, zzbd.zzn(bArr4, i17));
                                        iZzg = i17 + 8;
                                        i76 = i15 | i76;
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 6:
                                case 13:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 5) {
                                        iZzg = i17 + 4;
                                        i76 |= i15;
                                        unsafe8.putInt(obj2, j, zzbd.zzb(bArr4, i17));
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 7:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 0) {
                                        i76 |= i15;
                                        iZzg = zzbd.zzk(bArr4, i17, zzbcVar6);
                                        if (zzbcVar6.zzb != 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        zzfp.zzm(obj2, j, z);
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 8:
                                    i22 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    if (i12 == 2) {
                                        if ((i13 & 536870912) != 0) {
                                            iZzg = zzbd.zzh(bArr4, i22, zzbcVar6);
                                            i24 = zzbcVar6.zza;
                                            if (i24 >= 0) {
                                                throw zzdc.zzd();
                                            }
                                            i25 = i76 | i15;
                                            if (i24 == 0) {
                                                zzbcVar6.zzc = "";
                                                i28 = i25;
                                                i73 = 0;
                                            } else {
                                                int i83 = zzfu.zza;
                                                length = bArr4.length;
                                                if ((((length - iZzg) - i24) | iZzg | i24) >= 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzg), Integer.valueOf(i24)));
                                                }
                                                i26 = iZzg + i24;
                                                cArr = new char[i24];
                                                i27 = 0;
                                                while (iZzg < i26) {
                                                    b3 = bArr4[iZzg];
                                                    if (zzfq.zzd(b3)) {
                                                        iZzg++;
                                                        cArr[i27] = (char) b3;
                                                        i27++;
                                                    } else {
                                                        while (iZzg < i26) {
                                                            i29 = iZzg + 1;
                                                            b = bArr4[iZzg];
                                                            if (zzfq.zzd(b)) {
                                                                cArr[i27] = (char) b;
                                                                i27++;
                                                                iZzg = i29;
                                                                while (iZzg < i26) {
                                                                    b2 = bArr4[iZzg];
                                                                    if (zzfq.zzd(b2)) {
                                                                    }
                                                                    iZzg++;
                                                                    cArr[i27] = (char) b2;
                                                                    i27++;
                                                                }
                                                            } else {
                                                                i30 = i25;
                                                                if (b < -32) {
                                                                    if (i29 < i26) {
                                                                        throw zzdc.zzc();
                                                                    }
                                                                    iZzg += 2;
                                                                    zzfq.zzc(b, bArr4[i29], cArr, i27);
                                                                    i27++;
                                                                } else if (b < -16) {
                                                                    if (i29 < i26 - 1) {
                                                                        throw zzdc.zzc();
                                                                    }
                                                                    zzfq.zzb(b, bArr4[i29], bArr4[iZzg + 2], cArr, i27);
                                                                    i27++;
                                                                    i25 = i30;
                                                                    iZzg += 3;
                                                                } else {
                                                                    if (i29 < i26 - 2) {
                                                                        throw zzdc.zzc();
                                                                    }
                                                                    byte b5 = bArr4[i29];
                                                                    int i84 = iZzg + 3;
                                                                    byte b6 = bArr4[iZzg + 2];
                                                                    iZzg += 4;
                                                                    zzfq.zza(b, b5, b6, bArr4[i84], cArr, i27);
                                                                    i27 += 2;
                                                                }
                                                                i25 = i30;
                                                            }
                                                            break;
                                                        }
                                                        i28 = i25;
                                                        i73 = 0;
                                                        zzbcVar6.zzc = new String(cArr, 0, i27);
                                                        iZzg = i26;
                                                    }
                                                }
                                                while (iZzg < i26) {
                                                    i29 = iZzg + 1;
                                                    b = bArr4[iZzg];
                                                    if (zzfq.zzd(b)) {
                                                        cArr[i27] = (char) b;
                                                        i27++;
                                                        iZzg = i29;
                                                        while (iZzg < i26) {
                                                            b2 = bArr4[iZzg];
                                                            if (zzfq.zzd(b2)) {
                                                            }
                                                            iZzg++;
                                                            cArr[i27] = (char) b2;
                                                            i27++;
                                                        }
                                                    } else {
                                                        i30 = i25;
                                                        if (b < -32) {
                                                            if (i29 < i26) {
                                                                throw zzdc.zzc();
                                                            }
                                                            iZzg += 2;
                                                            zzfq.zzc(b, bArr4[i29], cArr, i27);
                                                            i27++;
                                                        } else if (b < -16) {
                                                            if (i29 < i26 - 1) {
                                                                throw zzdc.zzc();
                                                            }
                                                            zzfq.zzb(b, bArr4[i29], bArr4[iZzg + 2], cArr, i27);
                                                            i27++;
                                                            i25 = i30;
                                                            iZzg += 3;
                                                        } else {
                                                            if (i29 < i26 - 2) {
                                                                throw zzdc.zzc();
                                                            }
                                                            byte b7 = bArr4[i29];
                                                            int i85 = iZzg + 3;
                                                            byte b8 = bArr4[iZzg + 2];
                                                            iZzg += 4;
                                                            zzfq.zza(b, b7, b8, bArr4[i85], cArr, i27);
                                                            i27 += 2;
                                                        }
                                                        i25 = i30;
                                                    }
                                                    break;
                                                }
                                                i28 = i25;
                                                i73 = 0;
                                                zzbcVar6.zzc = new String(cArr, 0, i27);
                                                iZzg = i26;
                                            }
                                            i76 = i28;
                                        } else {
                                            i73 = 0;
                                            iZzg = zzbd.zzh(bArr4, i22, zzbcVar6);
                                            i23 = zzbcVar6.zza;
                                            if (i23 >= 0) {
                                                throw zzdc.zzd();
                                            }
                                            i76 |= i15;
                                            if (i23 == 0) {
                                                zzbcVar6.zzc = "";
                                            } else {
                                                zzbcVar6.zzc = new String(bArr4, iZzg, i23, zzda.zzb);
                                                iZzg += i23;
                                            }
                                        }
                                        unsafe8.putObject(obj2, j, zzbcVar6.zzc);
                                        i75 = i19;
                                        i74 = i18;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i76 = i76;
                                        iZzi = i22;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 9:
                                    i31 = i6;
                                    i32 = i14;
                                    if (i12 == 2) {
                                        int i86 = i76 | i15;
                                        Object objZzx = this.zzx(obj2, i31);
                                        iZzg = zzbd.zzm(objZzx, this.zzv(i31), bArr, iZzi, i2, zzbcVar);
                                        this.zzF(obj2, i31, objZzx);
                                        i76 = i86;
                                        i75 = i32;
                                        i74 = i31;
                                        i73 = 0;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i20 = i32;
                                        i21 = i31;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 10:
                                    i31 = i6;
                                    i32 = i14;
                                    if (i12 == 2) {
                                        i76 |= i15;
                                        iZzg = zzbd.zza(bArr4, iZzi, zzbcVar6);
                                        unsafe8.putObject(obj2, j, zzbcVar6.zzc);
                                        i75 = i32;
                                        i74 = i31;
                                        i73 = 0;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i20 = i32;
                                        i21 = i31;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 12:
                                    i31 = i6;
                                    i32 = i14;
                                    if (i12 == 0) {
                                        iZzg = zzbd.zzh(bArr4, iZzi, zzbcVar6);
                                        i33 = zzbcVar6.zza;
                                        zzcw zzcwVarZzu3 = this.zzu(i31);
                                        if ((i13 & Integer.MIN_VALUE) != 0 || zzcwVarZzu3 == null || zzcwVarZzu3.zza(i33)) {
                                            i76 |= i15;
                                            unsafe8.putInt(obj2, j, i33);
                                        } else {
                                            zzd(obj).zzj(i32, Long.valueOf(i33));
                                        }
                                        i75 = i32;
                                        i74 = i31;
                                        i73 = 0;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i20 = i32;
                                        i21 = i31;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 15:
                                    i31 = i6;
                                    i32 = i14;
                                    if (i12 == 0) {
                                        i76 |= i15;
                                        iZzg = zzbd.zzh(bArr4, iZzi, zzbcVar6);
                                        unsafe8.putInt(obj2, j, zzbu.zzb(zzbcVar6.zza));
                                        i75 = i32;
                                        i74 = i31;
                                        i73 = 0;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i20 = i32;
                                        i21 = i31;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                case 16:
                                    if (i12 == 0) {
                                        int i87 = i76 | i15;
                                        int iZzk3 = zzbd.zzk(bArr4, iZzi, zzbcVar6);
                                        i31 = i6;
                                        i32 = i14;
                                        unsafe8.putLong(obj, j, zzbu.zzc(zzbcVar6.zzb));
                                        i76 = i87;
                                        iZzg = iZzk3;
                                        i75 = i32;
                                        i74 = i31;
                                        i73 = 0;
                                        i71 = i2;
                                        i72 = i3;
                                    } else {
                                        i21 = i6;
                                        i20 = i14;
                                        i10 = 0;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                                default:
                                    i17 = iZzi;
                                    i18 = i6;
                                    i19 = i14;
                                    i73 = 0;
                                    if (i12 == 3) {
                                        Object objZzx2 = this.zzx(obj2, i18);
                                        int iZzl = zzbd.zzl(objZzx2, this.zzv(i18), bArr, i17, i2, (i77 << 3) | 4, zzbcVar);
                                        this.zzF(obj2, i18, objZzx2);
                                        i72 = i3;
                                        zzbcVar6 = zzbcVar;
                                        i71 = i2;
                                        i77 = i77;
                                        unsafe8 = unsafe8;
                                        i74 = i18;
                                        iZzg = iZzl;
                                        i78 = i78;
                                        i73 = 0;
                                        i75 = i19;
                                        i76 |= i15;
                                    } else {
                                        i76 = i76;
                                        iZzi = i17;
                                        i10 = i73;
                                        unsafe8 = unsafe8;
                                        zzbcVar6 = zzbcVar6;
                                        i20 = i19;
                                        i21 = i18;
                                        i77 = i77;
                                        unsafe2 = unsafe8;
                                        i73 = i21;
                                        i8 = i76;
                                        i75 = i20;
                                        i4 = i3;
                                        zzbcVar2 = zzbcVar6;
                                        i9 = i77;
                                        i7 = iZzi;
                                        if (i75 == i4) {
                                        }
                                        if (this.zzh) {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        } else {
                                            i11 = i75;
                                            iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                        }
                                        bArr4 = bArr;
                                        i71 = i2;
                                        i74 = i73;
                                        i77 = i9;
                                        i75 = i11;
                                        unsafe8 = unsafe2;
                                        i78 = i78;
                                        i73 = i10;
                                        i76 = i8;
                                        zzbcVar6 = zzbcVar;
                                        i72 = i4;
                                    }
                                    break;
                            }
                        } else {
                            i78 = i78;
                            i34 = i14;
                            i10 = 0;
                            i35 = i6;
                            i9 = i77;
                            i8 = i76;
                            unsafe3 = unsafe8;
                            i71 = i2;
                            i36 = iZzi;
                            zzbcVar3 = zzbcVar6;
                            if (iZzr == 27) {
                                if (iZzr <= 49) {
                                    i37 = i35;
                                    j2 = i13;
                                    unsafe4 = zzb;
                                    zzczVar = (zzcz) unsafe4.getObject(obj2, j);
                                    if (zzczVar.zzc()) {
                                        int size2 = zzczVar.size();
                                        zzcz zzczVarZzd2 = zzczVar.zzd(size2 != 0 ? size2 + size2 : 10);
                                        unsafe4.putObject(obj2, j, zzczVarZzd2);
                                        zzczVar = zzczVarZzd2;
                                    }
                                    switch (iZzr) {
                                        case 18:
                                        case 35:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            if (i12 == 2) {
                                                zzcaVar2 = (zzca) zzczVar;
                                                iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i40 = zzbcVar4.zza + iZzg;
                                                while (iZzg < i40) {
                                                    zzcaVar2.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, iZzg)));
                                                    iZzg += 8;
                                                }
                                                if (iZzg != i40) {
                                                    throw zzdc.zzg();
                                                }
                                            } else if (i12 == 1) {
                                                iZzg = i36 + 8;
                                                zzcaVar = (zzca) zzczVar;
                                                zzcaVar.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, i36)));
                                                while (iZzg < i71) {
                                                    iZzh = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        zzcaVar.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, iZzh)));
                                                        iZzg = iZzh + 8;
                                                    }
                                                }
                                            } else {
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 19:
                                        case 36:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            if (i12 == 2) {
                                                zzckVar2 = (zzck) zzczVar;
                                                iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i41 = zzbcVar4.zza + iZzg;
                                                while (iZzg < i41) {
                                                    zzckVar2.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, iZzg)));
                                                    iZzg += 4;
                                                }
                                                if (iZzg != i41) {
                                                    throw zzdc.zzg();
                                                }
                                            } else if (i12 == 5) {
                                                iZzg = i36 + 4;
                                                zzckVar = (zzck) zzczVar;
                                                zzckVar.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, i36)));
                                                while (iZzg < i71) {
                                                    iZzh2 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        zzckVar.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, iZzh2)));
                                                        iZzg = iZzh2 + 4;
                                                    }
                                                }
                                            } else {
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            if (i12 == 2) {
                                                zzdrVar2 = (zzdr) zzczVar;
                                                iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i42 = zzbcVar4.zza + iZzg;
                                                while (iZzg < i42) {
                                                    iZzg = zzbd.zzk(bArr4, iZzg, zzbcVar4);
                                                    zzdrVar2.zzf(zzbcVar4.zzb);
                                                }
                                                if (iZzg != i42) {
                                                    throw zzdc.zzg();
                                                }
                                            } else if (i12 == 0) {
                                                zzdrVar = (zzdr) zzczVar;
                                                iZzg = zzbd.zzk(bArr4, i36, zzbcVar4);
                                                zzdrVar.zzf(zzbcVar4.zzb);
                                                while (iZzg < i71) {
                                                    iZzh3 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        iZzg = zzbd.zzk(bArr4, iZzh3, zzbcVar4);
                                                        zzdrVar.zzf(zzbcVar4.zzb);
                                                    }
                                                }
                                            } else {
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe5 = unsafe3;
                                            i43 = i37;
                                            zzbcVar4 = zzbcVar3;
                                            i44 = i9;
                                            if (i12 == 2) {
                                                iZzf = zzbd.zzf(bArr4, i36, zzczVar, zzbcVar4);
                                                i39 = i44;
                                                iZzg = iZzf;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                            } else if (i12 == 0) {
                                                i39 = i44;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                iZzg = zzbd.zzj(i38, bArr, i36, i2, zzczVar, zzbcVar);
                                            } else {
                                                i39 = i44;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe5 = unsafe3;
                                            i43 = i37;
                                            zzbcVar4 = zzbcVar3;
                                            i44 = i9;
                                            if (i12 == 2) {
                                                if (i12 == 1) {
                                                    iZzf = i36 + 8;
                                                    zzdrVar3 = (zzdr) zzczVar;
                                                    zzdrVar3.zzf(zzbd.zzn(bArr4, i36));
                                                    while (iZzf < i71) {
                                                        iZzh4 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                        if (i38 == zzbcVar4.zza) {
                                                            zzdrVar3.zzf(zzbd.zzn(bArr4, iZzh4));
                                                            iZzf = iZzh4 + 8;
                                                        }
                                                    }
                                                }
                                                i39 = i44;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                zzdrVar4 = (zzdr) zzczVar;
                                                iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i45 = zzbcVar4.zza + iZzf;
                                                while (iZzf < i45) {
                                                    zzdrVar4.zzf(zzbd.zzn(bArr4, iZzf));
                                                    iZzf += 8;
                                                }
                                                if (iZzf != i45) {
                                                    throw zzdc.zzg();
                                                }
                                            }
                                            i39 = i44;
                                            iZzg = iZzf;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe5 = unsafe3;
                                            i43 = i37;
                                            zzbcVar4 = zzbcVar3;
                                            i44 = i9;
                                            if (i12 == 2) {
                                                if (i12 == 5) {
                                                    iZzf = i36 + 4;
                                                    zzctVar = (zzct) zzczVar;
                                                    zzctVar.zzg(zzbd.zzb(bArr4, i36));
                                                    while (iZzf < i71) {
                                                        iZzh5 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                        if (i38 == zzbcVar4.zza) {
                                                            zzctVar.zzg(zzbd.zzb(bArr4, iZzh5));
                                                            iZzf = iZzh5 + 4;
                                                        }
                                                    }
                                                }
                                                i39 = i44;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                zzctVar2 = (zzct) zzczVar;
                                                iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i46 = zzbcVar4.zza + iZzf;
                                                while (iZzf < i46) {
                                                    zzctVar2.zzg(zzbd.zzb(bArr4, iZzf));
                                                    iZzf += 4;
                                                }
                                                if (iZzf != i46) {
                                                    throw zzdc.zzg();
                                                }
                                            }
                                            i39 = i44;
                                            iZzg = iZzf;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe5 = unsafe3;
                                            i43 = i37;
                                            zzbcVar4 = zzbcVar3;
                                            i44 = i9;
                                            if (i12 == 2) {
                                                if (i12 == 0) {
                                                    zzbeVar = (zzbe) zzczVar;
                                                    iZzf = zzbd.zzk(bArr4, i36, zzbcVar4);
                                                    if (zzbcVar4.zzb != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    zzbeVar.zze(z2);
                                                    while (iZzf < i71) {
                                                        iZzh6 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                        if (i38 == zzbcVar4.zza) {
                                                            iZzf = zzbd.zzk(bArr4, iZzh6, zzbcVar4);
                                                            if (zzbcVar4.zzb != 0) {
                                                                z3 = true;
                                                            } else {
                                                                z3 = false;
                                                            }
                                                            zzbeVar.zze(z3);
                                                        }
                                                    }
                                                }
                                                i39 = i44;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                zzbeVar2 = (zzbe) zzczVar;
                                                iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i47 = zzbcVar4.zza + iZzf;
                                                while (iZzf < i47) {
                                                    iZzf = zzbd.zzk(bArr4, iZzf, zzbcVar4);
                                                    if (zzbcVar4.zzb != 0) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    zzbeVar2.zze(z4);
                                                }
                                                if (iZzf != i47) {
                                                    throw zzdc.zzg();
                                                }
                                            }
                                            i39 = i44;
                                            iZzg = iZzf;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 26:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe5 = unsafe3;
                                            i43 = i37;
                                            zzbcVar4 = zzbcVar3;
                                            i44 = i9;
                                            if (i12 == 2) {
                                                if ((j2 & 536870912) == 0) {
                                                    iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                    i52 = zzbcVar4.zza;
                                                    if (i52 >= 0) {
                                                        throw zzdc.zzd();
                                                    }
                                                    if (i52 == 0) {
                                                        zzczVar.add("");
                                                    } else {
                                                        zzczVar.add(new String(bArr4, iZzf, i52, zzda.zzb));
                                                        iZzf += i52;
                                                    }
                                                    while (iZzf < i71) {
                                                        iZzh8 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                        if (i38 == zzbcVar4.zza) {
                                                            iZzf = zzbd.zzh(bArr4, iZzh8, zzbcVar4);
                                                            i53 = zzbcVar4.zza;
                                                            if (i53 >= 0) {
                                                                throw zzdc.zzd();
                                                            }
                                                            if (i53 == 0) {
                                                                zzczVar.add("");
                                                            } else {
                                                                zzczVar.add(new String(bArr4, iZzf, i53, zzda.zzb));
                                                                iZzf += i53;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                    i48 = zzbcVar4.zza;
                                                    if (i48 >= 0) {
                                                        throw zzdc.zzd();
                                                    }
                                                    if (i48 == 0) {
                                                        zzczVar.add("");
                                                    } else {
                                                        i49 = iZzf + i48;
                                                        if (zzfu.zze(bArr4, iZzf, i49)) {
                                                            throw zzdc.zzc();
                                                        }
                                                        zzczVar.add(new String(bArr4, iZzf, i48, zzda.zzb));
                                                        iZzf = i49;
                                                    }
                                                    while (iZzf < i71) {
                                                        iZzh7 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                        if (i38 == zzbcVar4.zza) {
                                                            iZzf = zzbd.zzh(bArr4, iZzh7, zzbcVar4);
                                                            i50 = zzbcVar4.zza;
                                                            if (i50 >= 0) {
                                                                throw zzdc.zzd();
                                                            }
                                                            if (i50 == 0) {
                                                                zzczVar.add("");
                                                            } else {
                                                                i51 = iZzf + i50;
                                                                if (zzfu.zze(bArr4, iZzf, i51)) {
                                                                    throw zzdc.zzc();
                                                                }
                                                                zzczVar.add(new String(bArr4, iZzf, i50, zzda.zzb));
                                                                iZzf = i51;
                                                            }
                                                        }
                                                    }
                                                }
                                                i39 = i44;
                                                iZzg = iZzf;
                                                i73 = i43;
                                                unsafe8 = unsafe5;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            }
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 27:
                                            zzbcVar3 = zzbcVar3;
                                            i54 = i34;
                                            i37 = i37;
                                            i9 = i9;
                                            if (i12 == 2) {
                                                this = this;
                                                i36 = i36;
                                                int iZze = zzbd.zze(this.zzv(i37), i54, bArr, i36, i2, zzczVar, zzbcVar);
                                                zzbcVar4 = zzbcVar3;
                                                i73 = i37;
                                                unsafe8 = unsafe3;
                                                i38 = i54;
                                                i39 = i9;
                                                iZzg = iZze;
                                            } else {
                                                this = this;
                                                i36 = i36;
                                                zzbcVar4 = zzbcVar3;
                                                i73 = i37;
                                                i39 = i9;
                                                i38 = i54;
                                                unsafe8 = unsafe3;
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 28:
                                            zzbcVar3 = zzbcVar3;
                                            i54 = i34;
                                            i37 = i37;
                                            i9 = i9;
                                            if (i12 == 2) {
                                                iZzh9 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                                i55 = zzbcVar3.zza;
                                                if (i55 >= 0) {
                                                    throw zzdc.zzd();
                                                }
                                                if (i55 <= bArr4.length - iZzh9) {
                                                    throw zzdc.zzg();
                                                }
                                                if (i55 == 0) {
                                                    zzczVar.add(zzbq.zzb);
                                                } else {
                                                    zzczVar.add(zzbq.zzl(bArr4, iZzh9, i55));
                                                    iZzh9 += i55;
                                                }
                                                while (iZzh9 < i71) {
                                                    iZzh10 = zzbd.zzh(bArr4, iZzh9, zzbcVar3);
                                                    if (i54 == zzbcVar3.zza) {
                                                        iZzg = iZzh9;
                                                        zzbcVar4 = zzbcVar3;
                                                        i73 = i37;
                                                        i39 = i9;
                                                        i38 = i54;
                                                        unsafe8 = unsafe3;
                                                        if (iZzg != i36) {
                                                            i71 = i71;
                                                            obj2 = obj;
                                                            i77 = i39;
                                                            i75 = i38;
                                                            i74 = i73;
                                                            zzbcVar6 = zzbcVar4;
                                                            i78 = i78;
                                                            i73 = 0;
                                                            i76 = i8;
                                                            i72 = i3;
                                                        } else {
                                                            i71 = i71;
                                                            obj2 = obj;
                                                            i7 = iZzg;
                                                            i9 = i39;
                                                            i75 = i38;
                                                            unsafe2 = unsafe8;
                                                            zzbcVar2 = zzbcVar4;
                                                            i4 = i3;
                                                        }
                                                        break;
                                                    } else {
                                                        iZzh9 = zzbd.zzh(bArr4, iZzh10, zzbcVar3);
                                                        i56 = zzbcVar3.zza;
                                                        if (i56 >= 0) {
                                                            throw zzdc.zzd();
                                                        }
                                                        if (i56 <= bArr4.length - iZzh9) {
                                                            throw zzdc.zzg();
                                                        }
                                                        if (i56 == 0) {
                                                            zzczVar.add(zzbq.zzb);
                                                        } else {
                                                            zzczVar.add(zzbq.zzl(bArr4, iZzh9, i56));
                                                            iZzh9 += i56;
                                                        }
                                                    }
                                                }
                                                iZzg = iZzh9;
                                                zzbcVar4 = zzbcVar3;
                                                i73 = i37;
                                                i39 = i9;
                                                i38 = i54;
                                                unsafe8 = unsafe3;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            }
                                            this = this;
                                            i36 = i36;
                                            zzbcVar4 = zzbcVar3;
                                            i73 = i37;
                                            i39 = i9;
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 30:
                                        case 44:
                                            i54 = i34;
                                            if (i12 == 2) {
                                                iZzj = zzbd.zzf(bArr4, i36, zzczVar, zzbcVar3);
                                            } else if (i12 == 0) {
                                                this = this;
                                                i38 = i54;
                                                unsafe8 = unsafe3;
                                                i73 = i37;
                                                i39 = i9;
                                                zzbcVar4 = zzbcVar3;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                iZzj = zzbd.zzj(i54, bArr, i36, i2, zzczVar, zzbcVar);
                                            }
                                            zzcwVarZzu = this.zzu(i37);
                                            zzffVar = this.zzm;
                                            int i88 = zzeq.zza;
                                            if (zzcwVarZzu != null) {
                                                i57 = iZzj;
                                            } else if (zzczVar instanceof RandomAccess) {
                                                size = zzczVar.size();
                                                i57 = iZzj;
                                                objZzo2 = null;
                                                i59 = 0;
                                                for (i58 = 0; i58 < size; i58++) {
                                                    iIntValue2 = ((Integer) zzczVar.get(i58)).intValue();
                                                    if (zzcwVarZzu.zza(iIntValue2)) {
                                                        if (i58 != i59) {
                                                            zzczVar.set(i59, Integer.valueOf(iIntValue2));
                                                        }
                                                        i59++;
                                                    } else {
                                                        objZzo2 = zzeq.zzo(obj2, i9, iIntValue2, objZzo2, zzffVar);
                                                    }
                                                }
                                                if (i59 != size) {
                                                    zzczVar.subList(i59, size).clear();
                                                }
                                            } else {
                                                i57 = iZzj;
                                                it = zzczVar.iterator();
                                                objZzo = null;
                                                while (it.hasNext()) {
                                                    iIntValue = ((Integer) it.next()).intValue();
                                                    if (!zzcwVarZzu.zza(iIntValue)) {
                                                        objZzo = zzeq.zzo(obj2, i9, iIntValue, objZzo, zzffVar);
                                                        it.remove();
                                                    }
                                                }
                                            }
                                            iZzg = i57;
                                            zzbcVar4 = zzbcVar3;
                                            i73 = i37;
                                            i39 = i9;
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            i54 = i34;
                                            if (i12 == 2) {
                                                if (i12 == 0) {
                                                    zzctVar3 = (zzct) zzczVar;
                                                    iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                                    zzctVar3.zzg(zzbu.zzb(zzbcVar3.zza));
                                                    while (iZzh11 < i71) {
                                                        iZzh12 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                        if (i54 == zzbcVar3.zza) {
                                                            iZzh11 = zzbd.zzh(bArr4, iZzh12, zzbcVar3);
                                                            zzctVar3.zzg(zzbu.zzb(zzbcVar3.zza));
                                                        }
                                                    }
                                                }
                                                i38 = i54;
                                                unsafe8 = unsafe3;
                                                i73 = i37;
                                                i39 = i9;
                                                zzbcVar4 = zzbcVar3;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                zzctVar4 = (zzct) zzczVar;
                                                iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                                i60 = zzbcVar3.zza + iZzh11;
                                                while (iZzh11 < i60) {
                                                    iZzh11 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                    zzctVar4.zzg(zzbu.zzb(zzbcVar3.zza));
                                                }
                                                if (iZzh11 != i60) {
                                                    throw zzdc.zzg();
                                                }
                                            }
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            iZzg = iZzh11;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            if (i12 == 2) {
                                                zzdrVar6 = (zzdr) zzczVar;
                                                iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                                i61 = zzbcVar3.zza + iZzh11;
                                                while (iZzh11 < i61) {
                                                    iZzh11 = zzbd.zzk(bArr4, iZzh11, zzbcVar3);
                                                    zzdrVar6.zzf(zzbu.zzc(zzbcVar3.zzb));
                                                }
                                                if (iZzh11 == i61) {
                                                    throw zzdc.zzg();
                                                }
                                                i38 = i34;
                                            } else if (i12 == 0) {
                                                i38 = i34;
                                                unsafe8 = unsafe3;
                                                i73 = i37;
                                                i39 = i9;
                                                zzbcVar4 = zzbcVar3;
                                                iZzg = i36;
                                                if (iZzg != i36) {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i77 = i39;
                                                    i75 = i38;
                                                    i74 = i73;
                                                    zzbcVar6 = zzbcVar4;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i76 = i8;
                                                    i72 = i3;
                                                } else {
                                                    i71 = i71;
                                                    obj2 = obj;
                                                    i7 = iZzg;
                                                    i9 = i39;
                                                    i75 = i38;
                                                    unsafe2 = unsafe8;
                                                    zzbcVar2 = zzbcVar4;
                                                    i4 = i3;
                                                }
                                            } else {
                                                zzdrVar5 = (zzdr) zzczVar;
                                                iZzh11 = zzbd.zzk(bArr4, i36, zzbcVar3);
                                                zzdrVar5.zzf(zzbu.zzc(zzbcVar3.zzb));
                                                while (true) {
                                                    if (iZzh11 < i71) {
                                                        iZzh13 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                        i54 = i34;
                                                        if (i54 == zzbcVar3.zza) {
                                                            iZzh11 = zzbd.zzk(bArr4, iZzh13, zzbcVar3);
                                                            zzdrVar5.zzf(zzbu.zzc(zzbcVar3.zzb));
                                                            i34 = i54;
                                                        }
                                                    } else {
                                                        i54 = i34;
                                                    }
                                                }
                                                i38 = i54;
                                            }
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            iZzg = iZzh11;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                        default:
                                            i36 = i36;
                                            i38 = i34;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            if (i12 == 3) {
                                                i62 = (i38 & (-8)) | 4;
                                                zzeoVarZzv = this.zzv(i73);
                                                iZzg = zzbd.zzc(zzeoVarZzv, bArr, i36, i2, i62, zzbcVar);
                                                zzczVar.add(zzbcVar4.zzc);
                                                while (iZzg < i71) {
                                                    iZzh14 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        iZzg = zzbd.zzc(zzeoVarZzv, bArr, iZzh14, i2, i62, zzbcVar);
                                                        zzczVar.add(zzbcVar4.zzc);
                                                    }
                                                }
                                            } else {
                                                iZzg = i36;
                                            }
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                            break;
                                    }
                                } else {
                                    unsafe2 = unsafe3;
                                    i63 = i35;
                                    i64 = i34;
                                    if (iZzr == 50) {
                                        i66 = i36;
                                        obj2 = obj;
                                        unsafe7 = zzb;
                                        j3 = iArr[i63 + 2] & 1048575;
                                        switch (iZzr) {
                                            case 51:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 1) {
                                                    iZzh15 = i66 + 8;
                                                    unsafe7.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(zzbd.zzn(bArr2, i66))));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i89 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i89;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 52:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 5) {
                                                    iZzh15 = i66 + 4;
                                                    unsafe7.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(zzbd.zzb(bArr2, i66))));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i810 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i810;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 0) {
                                                    iZzk = zzbd.zzk(bArr2, i66, zzbcVar2);
                                                    unsafe7.putObject(obj2, j, Long.valueOf(zzbcVar2.zzb));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    iZzh15 = iZzk;
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 0) {
                                                    iZzh15 = zzbd.zzh(bArr2, i66, zzbcVar2);
                                                    unsafe7.putObject(obj2, j, Integer.valueOf(zzbcVar2.zza));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i812 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i812;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 1) {
                                                    iZzh15 = i66 + 8;
                                                    unsafe7.putObject(obj2, j, Long.valueOf(zzbd.zzn(bArr2, i66)));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i813 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i813;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 5) {
                                                    iZzh15 = i66 + 4;
                                                    unsafe7.putObject(obj2, j, Integer.valueOf(zzbd.zzb(bArr2, i66)));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i814 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i814;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 58:
                                                i63 = i63;
                                                i9 = i9;
                                                i67 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 0) {
                                                    iZzk = zzbd.zzk(bArr2, i66, zzbcVar2);
                                                    i75 = i67;
                                                    if (zzbcVar2.zzb != 0) {
                                                        z5 = true;
                                                    } else {
                                                        z5 = false;
                                                    }
                                                    unsafe7.putObject(obj2, j, Boolean.valueOf(z5));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    iZzh15 = iZzk;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i815 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i815;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                }
                                                i75 = i67;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i816 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i816;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 59:
                                                i63 = i63;
                                                i9 = i9;
                                                i67 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                if (i12 == 2) {
                                                    iZzh15 = zzbd.zzh(bArr2, i66, zzbcVar2);
                                                    i68 = zzbcVar2.zza;
                                                    if (i68 == 0) {
                                                        unsafe7.putObject(obj2, j, "");
                                                    } else {
                                                        i69 = iZzh15 + i68;
                                                        if ((i13 & 536870912) == 0 && !zzfu.zze(bArr2, iZzh15, i69)) {
                                                            throw zzdc.zzc();
                                                        }
                                                        unsafe7.putObject(obj2, j, new String(bArr2, iZzh15, i68, zzda.zzb));
                                                        iZzh15 = i69;
                                                    }
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    i75 = i67;
                                                } else {
                                                    i75 = i67;
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i817 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i817;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 60:
                                                bArr3 = bArr;
                                                zzbcVar5 = zzbcVar;
                                                if (i12 == 2) {
                                                    Object objZzy = this.zzy(obj2, i9, i63);
                                                    i66 = i66;
                                                    int iZzm = zzbd.zzm(objZzy, this.zzv(i63), bArr, i66, i2, zzbcVar);
                                                    this.zzG(obj2, i9, i63, objZzy);
                                                    iZzh15 = iZzm;
                                                    bArr2 = bArr3;
                                                    i63 = i63;
                                                    i9 = i9;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                } else {
                                                    bArr2 = bArr3;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    iZzh15 = i66;
                                                }
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i818 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i818;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 61:
                                                bArr3 = bArr;
                                                zzbcVar5 = zzbcVar;
                                                if (i12 == 2) {
                                                    iZzh15 = zzbd.zza(bArr3, i66, zzbcVar5);
                                                    unsafe7.putObject(obj2, j, zzbcVar5.zzc);
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    bArr2 = bArr3;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i819 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i819;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                }
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i8110 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i8110;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 63:
                                                bArr3 = bArr;
                                                zzbcVar5 = zzbcVar;
                                                if (i12 == 0) {
                                                    int iZzh16 = zzbd.zzh(bArr3, i66, zzbcVar5);
                                                    i70 = zzbcVar5.zza;
                                                    zzcwVarZzu2 = this.zzu(i63);
                                                    if (zzcwVarZzu2 != null || zzcwVarZzu2.zza(i70)) {
                                                        unsafe7.putObject(obj2, j, Integer.valueOf(i70));
                                                        unsafe7.putInt(obj2, j3, i9);
                                                    } else {
                                                        zzd(obj).zzj(i64, Long.valueOf(i70));
                                                    }
                                                    iZzh15 = iZzh16;
                                                    bArr2 = bArr3;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i8111 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i8111;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                }
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i8112 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i8112;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 66:
                                                bArr3 = bArr;
                                                zzbcVar5 = zzbcVar;
                                                if (i12 == 0) {
                                                    iZzh15 = zzbd.zzh(bArr3, i66, zzbcVar5);
                                                    unsafe7.putObject(obj2, j, Integer.valueOf(zzbu.zzb(zzbcVar5.zza)));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    bArr2 = bArr3;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i8113 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i8113;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                }
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i8114 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i8114;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            case 67:
                                                zzbcVar5 = zzbcVar;
                                                if (i12 == 0) {
                                                    bArr3 = bArr;
                                                    iZzh15 = zzbd.zzk(bArr3, i66, zzbcVar5);
                                                    unsafe7.putObject(obj2, j, Long.valueOf(zzbu.zzc(zzbcVar5.zzb)));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                    bArr2 = bArr3;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i8115 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i8115;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                } else {
                                                    i63 = i63;
                                                    i9 = i9;
                                                    i66 = i66;
                                                    bArr2 = bArr;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    iZzh15 = i66;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i8116 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i8116;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                }
                                                break;
                                            case 68:
                                                if (i12 == 3) {
                                                    break;
                                                } else {
                                                    Object objZzy2 = this.zzy(obj2, i9, i63);
                                                    zzbcVar5 = zzbcVar;
                                                    int iZzl2 = zzbd.zzl(objZzy2, this.zzv(i63), bArr, i66, i2, (i64 & (-8)) | 4, zzbcVar);
                                                    this.zzG(obj2, i9, i63, objZzy2);
                                                    iZzh15 = iZzl2;
                                                    bArr2 = bArr;
                                                    zzbcVar2 = zzbcVar5;
                                                    i75 = i64;
                                                    if (iZzh15 != i66) {
                                                        i71 = i2;
                                                        i72 = i3;
                                                        zzbcVar6 = zzbcVar2;
                                                        bArr4 = bArr2;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i74 = i63;
                                                        i76 = i8;
                                                        unsafe8 = unsafe2;
                                                        int i8117 = iZzh15;
                                                        i77 = i9;
                                                        iZzg = i8117;
                                                    } else {
                                                        i4 = i3;
                                                        i7 = iZzh15;
                                                        i73 = i63;
                                                    }
                                                    break;
                                                }
                                            default:
                                                i63 = i63;
                                                i9 = i9;
                                                i75 = i64;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i8118 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i8118;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                        }
                                    } else {
                                        if (i12 == 2) {
                                            unsafe6 = zzb;
                                            Object objZzw = this.zzw(i63);
                                            object = unsafe6.getObject(obj, j);
                                            if (!((zzdw) object).zze()) {
                                                zzdw zzdwVarZzb = zzdw.zza().zzb();
                                                zzdx.zza(zzdwVarZzb, object);
                                                unsafe6.putObject(obj, j, zzdwVarZzb);
                                            }
                                            throw null;
                                        }
                                        i65 = i36;
                                        obj2 = obj;
                                        i4 = i3;
                                        i73 = i63;
                                        i9 = i9;
                                        i75 = i64;
                                        i7 = i65;
                                        zzbcVar2 = zzbcVar3;
                                    }
                                }
                                if (i75 == i4) {
                                }
                                if (this.zzh) {
                                    i11 = i75;
                                    iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                } else {
                                    i11 = i75;
                                    iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                }
                                bArr4 = bArr;
                                i71 = i2;
                                i74 = i73;
                                i77 = i9;
                                i75 = i11;
                                unsafe8 = unsafe2;
                                i78 = i78;
                                i73 = i10;
                                i76 = i8;
                                zzbcVar6 = zzbcVar;
                                i72 = i4;
                            } else if (i12 == 2) {
                                zzczVarZzd = (zzcz) unsafe3.getObject(obj2, j);
                                if (!zzczVarZzd.zzc()) {
                                    int size3 = zzczVarZzd.size();
                                    zzczVarZzd = zzczVarZzd.zzd(size3 != 0 ? size3 + size3 : 10);
                                    unsafe3.putObject(obj2, j, zzczVarZzd);
                                }
                                int iZze2 = zzbd.zze(this.zzv(i35), i34, bArr, i36, i2, zzczVarZzd, zzbcVar);
                                i72 = i3;
                                zzbcVar6 = zzbcVar3;
                                i71 = i71;
                                i77 = i9;
                                unsafe8 = unsafe3;
                                i74 = i35;
                                iZzg = iZze2;
                                i78 = i78;
                                i73 = 0;
                                i75 = i34;
                                i76 = i8;
                            } else {
                                unsafe2 = unsafe3;
                                i64 = i34;
                                i63 = i35;
                                i65 = i36;
                                i4 = i3;
                                i73 = i63;
                                i9 = i9;
                                i75 = i64;
                                i7 = i65;
                                zzbcVar2 = zzbcVar3;
                            }
                        }
                    }
                    if (i75 == i4) {
                    }
                    if (this.zzh) {
                        i11 = i75;
                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                    } else {
                        i11 = i75;
                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                    }
                    bArr4 = bArr;
                    i71 = i2;
                    i74 = i73;
                    i77 = i9;
                    i75 = i11;
                    unsafe8 = unsafe2;
                    i78 = i78;
                    i73 = i10;
                    i76 = i8;
                    zzbcVar6 = zzbcVar;
                    i72 = i4;
                }
                i6 = iZzq;
                i5 = -1;
                if (i6 == i5) {
                    i7 = iZzi;
                    i8 = i76;
                    i78 = i78;
                    i9 = i80;
                    i10 = i73;
                    unsafe2 = unsafe8;
                    zzbcVar2 = zzbcVar6;
                    i4 = i72;
                } else {
                    i12 = i75 & 7;
                    iArr = this.zzc;
                    i13 = iArr[i6 + 1];
                    i14 = i75;
                    iZzr = zzr(i13);
                    j = i13 & 1048575;
                    i77 = i80;
                    if (iZzr <= 17) {
                        int i820 = iArr[i6 + 2];
                        i15 = 1 << (i820 >>> 20);
                        i16 = i820 & 1048575;
                        if (i16 != i78) {
                            if (i78 != 1048575) {
                                unsafe8.putInt(obj2, i78, i76);
                            }
                            if (i16 == 1048575) {
                                i76 = 0;
                            } else {
                                i76 = unsafe8.getInt(obj2, i16);
                            }
                            i78 = i16;
                        } else {
                            i78 = i78;
                        }
                        switch (iZzr) {
                            case 0:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 1) {
                                    iZzg = i17 + 8;
                                    i76 |= i15;
                                    zzfp.zzo(obj2, j, Double.longBitsToDouble(zzbd.zzn(bArr4, i17)));
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 1:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 5) {
                                    iZzg = i17 + 4;
                                    i76 |= i15;
                                    zzfp.zzp(obj2, j, Float.intBitsToFloat(zzbd.zzb(bArr4, i17)));
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 2:
                            case 3:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 0) {
                                    int i821 = i76 | i15;
                                    int iZzk4 = zzbd.zzk(bArr4, i17, zzbcVar6);
                                    unsafe8.putLong(obj, j, zzbcVar6.zzb);
                                    i76 = i821;
                                    iZzg = iZzk4;
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 4:
                            case 11:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 0) {
                                    i76 |= i15;
                                    iZzg = zzbd.zzh(bArr4, i17, zzbcVar6);
                                    unsafe8.putInt(obj2, j, zzbcVar6.zza);
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 5:
                            case 14:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 1) {
                                    unsafe8.putLong(obj, j, zzbd.zzn(bArr4, i17));
                                    iZzg = i17 + 8;
                                    i76 = i15 | i76;
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 6:
                            case 13:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 5) {
                                    iZzg = i17 + 4;
                                    i76 |= i15;
                                    unsafe8.putInt(obj2, j, zzbd.zzb(bArr4, i17));
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 7:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 0) {
                                    i76 |= i15;
                                    iZzg = zzbd.zzk(bArr4, i17, zzbcVar6);
                                    if (zzbcVar6.zzb != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    zzfp.zzm(obj2, j, z);
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 8:
                                i22 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                if (i12 == 2) {
                                    if ((i13 & 536870912) != 0) {
                                        iZzg = zzbd.zzh(bArr4, i22, zzbcVar6);
                                        i24 = zzbcVar6.zza;
                                        if (i24 >= 0) {
                                            throw zzdc.zzd();
                                        }
                                        i25 = i76 | i15;
                                        if (i24 == 0) {
                                            zzbcVar6.zzc = "";
                                            i28 = i25;
                                            i73 = 0;
                                        } else {
                                            int i822 = zzfu.zza;
                                            length = bArr4.length;
                                            if ((((length - iZzg) - i24) | iZzg | i24) >= 0) {
                                                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzg), Integer.valueOf(i24)));
                                            }
                                            i26 = iZzg + i24;
                                            cArr = new char[i24];
                                            i27 = 0;
                                            while (iZzg < i26) {
                                                b3 = bArr4[iZzg];
                                                if (zzfq.zzd(b3)) {
                                                    iZzg++;
                                                    cArr[i27] = (char) b3;
                                                    i27++;
                                                } else {
                                                    while (iZzg < i26) {
                                                        i29 = iZzg + 1;
                                                        b = bArr4[iZzg];
                                                        if (zzfq.zzd(b)) {
                                                            cArr[i27] = (char) b;
                                                            i27++;
                                                            iZzg = i29;
                                                            while (iZzg < i26) {
                                                                b2 = bArr4[iZzg];
                                                                if (zzfq.zzd(b2)) {
                                                                }
                                                                iZzg++;
                                                                cArr[i27] = (char) b2;
                                                                i27++;
                                                            }
                                                        } else {
                                                            i30 = i25;
                                                            if (b < -32) {
                                                                if (i29 < i26) {
                                                                    throw zzdc.zzc();
                                                                }
                                                                iZzg += 2;
                                                                zzfq.zzc(b, bArr4[i29], cArr, i27);
                                                                i27++;
                                                            } else if (b < -16) {
                                                                if (i29 < i26 - 1) {
                                                                    throw zzdc.zzc();
                                                                }
                                                                zzfq.zzb(b, bArr4[i29], bArr4[iZzg + 2], cArr, i27);
                                                                i27++;
                                                                i25 = i30;
                                                                iZzg += 3;
                                                            } else {
                                                                if (i29 < i26 - 2) {
                                                                    throw zzdc.zzc();
                                                                }
                                                                byte b9 = bArr4[i29];
                                                                int i823 = iZzg + 3;
                                                                byte b10 = bArr4[iZzg + 2];
                                                                iZzg += 4;
                                                                zzfq.zza(b, b9, b10, bArr4[i823], cArr, i27);
                                                                i27 += 2;
                                                            }
                                                            i25 = i30;
                                                        }
                                                        break;
                                                    }
                                                    i28 = i25;
                                                    i73 = 0;
                                                    zzbcVar6.zzc = new String(cArr, 0, i27);
                                                    iZzg = i26;
                                                }
                                            }
                                            while (iZzg < i26) {
                                                i29 = iZzg + 1;
                                                b = bArr4[iZzg];
                                                if (zzfq.zzd(b)) {
                                                    cArr[i27] = (char) b;
                                                    i27++;
                                                    iZzg = i29;
                                                    while (iZzg < i26) {
                                                        b2 = bArr4[iZzg];
                                                        if (zzfq.zzd(b2)) {
                                                        }
                                                        iZzg++;
                                                        cArr[i27] = (char) b2;
                                                        i27++;
                                                    }
                                                } else {
                                                    i30 = i25;
                                                    if (b < -32) {
                                                        if (i29 < i26) {
                                                            throw zzdc.zzc();
                                                        }
                                                        iZzg += 2;
                                                        zzfq.zzc(b, bArr4[i29], cArr, i27);
                                                        i27++;
                                                    } else if (b < -16) {
                                                        if (i29 < i26 - 1) {
                                                            throw zzdc.zzc();
                                                        }
                                                        zzfq.zzb(b, bArr4[i29], bArr4[iZzg + 2], cArr, i27);
                                                        i27++;
                                                        i25 = i30;
                                                        iZzg += 3;
                                                    } else {
                                                        if (i29 < i26 - 2) {
                                                            throw zzdc.zzc();
                                                        }
                                                        byte b11 = bArr4[i29];
                                                        int i824 = iZzg + 3;
                                                        byte b12 = bArr4[iZzg + 2];
                                                        iZzg += 4;
                                                        zzfq.zza(b, b11, b12, bArr4[i824], cArr, i27);
                                                        i27 += 2;
                                                    }
                                                    i25 = i30;
                                                }
                                                break;
                                            }
                                            i28 = i25;
                                            i73 = 0;
                                            zzbcVar6.zzc = new String(cArr, 0, i27);
                                            iZzg = i26;
                                        }
                                        i76 = i28;
                                    } else {
                                        i73 = 0;
                                        iZzg = zzbd.zzh(bArr4, i22, zzbcVar6);
                                        i23 = zzbcVar6.zza;
                                        if (i23 >= 0) {
                                            throw zzdc.zzd();
                                        }
                                        i76 |= i15;
                                        if (i23 == 0) {
                                            zzbcVar6.zzc = "";
                                        } else {
                                            zzbcVar6.zzc = new String(bArr4, iZzg, i23, zzda.zzb);
                                            iZzg += i23;
                                        }
                                    }
                                    unsafe8.putObject(obj2, j, zzbcVar6.zzc);
                                    i75 = i19;
                                    i74 = i18;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i76 = i76;
                                    iZzi = i22;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 9:
                                i31 = i6;
                                i32 = i14;
                                if (i12 == 2) {
                                    int i825 = i76 | i15;
                                    Object objZzx3 = this.zzx(obj2, i31);
                                    iZzg = zzbd.zzm(objZzx3, this.zzv(i31), bArr, iZzi, i2, zzbcVar);
                                    this.zzF(obj2, i31, objZzx3);
                                    i76 = i825;
                                    i75 = i32;
                                    i74 = i31;
                                    i73 = 0;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i20 = i32;
                                    i21 = i31;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 10:
                                i31 = i6;
                                i32 = i14;
                                if (i12 == 2) {
                                    i76 |= i15;
                                    iZzg = zzbd.zza(bArr4, iZzi, zzbcVar6);
                                    unsafe8.putObject(obj2, j, zzbcVar6.zzc);
                                    i75 = i32;
                                    i74 = i31;
                                    i73 = 0;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i20 = i32;
                                    i21 = i31;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 12:
                                i31 = i6;
                                i32 = i14;
                                if (i12 == 0) {
                                    iZzg = zzbd.zzh(bArr4, iZzi, zzbcVar6);
                                    i33 = zzbcVar6.zza;
                                    zzcw zzcwVarZzu4 = this.zzu(i31);
                                    if ((i13 & Integer.MIN_VALUE) != 0) {
                                        i76 |= i15;
                                        unsafe8.putInt(obj2, j, i33);
                                    } else {
                                        i76 |= i15;
                                        unsafe8.putInt(obj2, j, i33);
                                    }
                                    i75 = i32;
                                    i74 = i31;
                                    i73 = 0;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i20 = i32;
                                    i21 = i31;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 15:
                                i31 = i6;
                                i32 = i14;
                                if (i12 == 0) {
                                    i76 |= i15;
                                    iZzg = zzbd.zzh(bArr4, iZzi, zzbcVar6);
                                    unsafe8.putInt(obj2, j, zzbu.zzb(zzbcVar6.zza));
                                    i75 = i32;
                                    i74 = i31;
                                    i73 = 0;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i20 = i32;
                                    i21 = i31;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            case 16:
                                if (i12 == 0) {
                                    int i826 = i76 | i15;
                                    int iZzk5 = zzbd.zzk(bArr4, iZzi, zzbcVar6);
                                    i31 = i6;
                                    i32 = i14;
                                    unsafe8.putLong(obj, j, zzbu.zzc(zzbcVar6.zzb));
                                    i76 = i826;
                                    iZzg = iZzk5;
                                    i75 = i32;
                                    i74 = i31;
                                    i73 = 0;
                                    i71 = i2;
                                    i72 = i3;
                                } else {
                                    i21 = i6;
                                    i20 = i14;
                                    i10 = 0;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                            default:
                                i17 = iZzi;
                                i18 = i6;
                                i19 = i14;
                                i73 = 0;
                                if (i12 == 3) {
                                    Object objZzx4 = this.zzx(obj2, i18);
                                    int iZzl3 = zzbd.zzl(objZzx4, this.zzv(i18), bArr, i17, i2, (i77 << 3) | 4, zzbcVar);
                                    this.zzF(obj2, i18, objZzx4);
                                    i72 = i3;
                                    zzbcVar6 = zzbcVar;
                                    i71 = i2;
                                    i77 = i77;
                                    unsafe8 = unsafe8;
                                    i74 = i18;
                                    iZzg = iZzl3;
                                    i78 = i78;
                                    i73 = 0;
                                    i75 = i19;
                                    i76 |= i15;
                                } else {
                                    i76 = i76;
                                    iZzi = i17;
                                    i10 = i73;
                                    unsafe8 = unsafe8;
                                    zzbcVar6 = zzbcVar6;
                                    i20 = i19;
                                    i21 = i18;
                                    i77 = i77;
                                    unsafe2 = unsafe8;
                                    i73 = i21;
                                    i8 = i76;
                                    i75 = i20;
                                    i4 = i3;
                                    zzbcVar2 = zzbcVar6;
                                    i9 = i77;
                                    i7 = iZzi;
                                    if (i75 == i4) {
                                    }
                                    if (this.zzh) {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    } else {
                                        i11 = i75;
                                        iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                                    }
                                    bArr4 = bArr;
                                    i71 = i2;
                                    i74 = i73;
                                    i77 = i9;
                                    i75 = i11;
                                    unsafe8 = unsafe2;
                                    i78 = i78;
                                    i73 = i10;
                                    i76 = i8;
                                    zzbcVar6 = zzbcVar;
                                    i72 = i4;
                                }
                                break;
                        }
                    } else {
                        i78 = i78;
                        i34 = i14;
                        i10 = 0;
                        i35 = i6;
                        i9 = i77;
                        i8 = i76;
                        unsafe3 = unsafe8;
                        i71 = i2;
                        i36 = iZzi;
                        zzbcVar3 = zzbcVar6;
                        if (iZzr == 27) {
                            if (iZzr <= 49) {
                                i37 = i35;
                                j2 = i13;
                                unsafe4 = zzb;
                                zzczVar = (zzcz) unsafe4.getObject(obj2, j);
                                if (zzczVar.zzc()) {
                                    int size4 = zzczVar.size();
                                    zzcz zzczVarZzd3 = zzczVar.zzd(size4 != 0 ? size4 + size4 : 10);
                                    unsafe4.putObject(obj2, j, zzczVarZzd3);
                                    zzczVar = zzczVarZzd3;
                                }
                                switch (iZzr) {
                                    case 18:
                                    case 35:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        if (i12 == 2) {
                                            zzcaVar2 = (zzca) zzczVar;
                                            iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i40 = zzbcVar4.zza + iZzg;
                                            while (iZzg < i40) {
                                                zzcaVar2.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, iZzg)));
                                                iZzg += 8;
                                            }
                                            if (iZzg != i40) {
                                                throw zzdc.zzg();
                                            }
                                        } else if (i12 == 1) {
                                            iZzg = i36 + 8;
                                            zzcaVar = (zzca) zzczVar;
                                            zzcaVar.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, i36)));
                                            while (iZzg < i71) {
                                                iZzh = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                if (i38 == zzbcVar4.zza) {
                                                    zzcaVar.zzf(Double.longBitsToDouble(zzbd.zzn(bArr4, iZzh)));
                                                    iZzg = iZzh + 8;
                                                }
                                            }
                                        } else {
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        if (i12 == 2) {
                                            zzckVar2 = (zzck) zzczVar;
                                            iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i41 = zzbcVar4.zza + iZzg;
                                            while (iZzg < i41) {
                                                zzckVar2.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, iZzg)));
                                                iZzg += 4;
                                            }
                                            if (iZzg != i41) {
                                                throw zzdc.zzg();
                                            }
                                        } else if (i12 == 5) {
                                            iZzg = i36 + 4;
                                            zzckVar = (zzck) zzczVar;
                                            zzckVar.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, i36)));
                                            while (iZzg < i71) {
                                                iZzh2 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                if (i38 == zzbcVar4.zza) {
                                                    zzckVar.zzf(Float.intBitsToFloat(zzbd.zzb(bArr4, iZzh2)));
                                                    iZzg = iZzh2 + 4;
                                                }
                                            }
                                        } else {
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        if (i12 == 2) {
                                            zzdrVar2 = (zzdr) zzczVar;
                                            iZzg = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i42 = zzbcVar4.zza + iZzg;
                                            while (iZzg < i42) {
                                                iZzg = zzbd.zzk(bArr4, iZzg, zzbcVar4);
                                                zzdrVar2.zzf(zzbcVar4.zzb);
                                            }
                                            if (iZzg != i42) {
                                                throw zzdc.zzg();
                                            }
                                        } else if (i12 == 0) {
                                            zzdrVar = (zzdr) zzczVar;
                                            iZzg = zzbd.zzk(bArr4, i36, zzbcVar4);
                                            zzdrVar.zzf(zzbcVar4.zzb);
                                            while (iZzg < i71) {
                                                iZzh3 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                if (i38 == zzbcVar4.zza) {
                                                    iZzg = zzbd.zzk(bArr4, iZzh3, zzbcVar4);
                                                    zzdrVar.zzf(zzbcVar4.zzb);
                                                }
                                            }
                                        } else {
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe5 = unsafe3;
                                        i43 = i37;
                                        zzbcVar4 = zzbcVar3;
                                        i44 = i9;
                                        if (i12 == 2) {
                                            iZzf = zzbd.zzf(bArr4, i36, zzczVar, zzbcVar4);
                                            i39 = i44;
                                            iZzg = iZzf;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                        } else if (i12 == 0) {
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = zzbd.zzj(i38, bArr, i36, i2, zzczVar, zzbcVar);
                                        } else {
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe5 = unsafe3;
                                        i43 = i37;
                                        zzbcVar4 = zzbcVar3;
                                        i44 = i9;
                                        if (i12 == 2) {
                                            if (i12 == 1) {
                                                iZzf = i36 + 8;
                                                zzdrVar3 = (zzdr) zzczVar;
                                                zzdrVar3.zzf(zzbd.zzn(bArr4, i36));
                                                while (iZzf < i71) {
                                                    iZzh4 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        zzdrVar3.zzf(zzbd.zzn(bArr4, iZzh4));
                                                        iZzf = iZzh4 + 8;
                                                    }
                                                }
                                            }
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            zzdrVar4 = (zzdr) zzczVar;
                                            iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i45 = zzbcVar4.zza + iZzf;
                                            while (iZzf < i45) {
                                                zzdrVar4.zzf(zzbd.zzn(bArr4, iZzf));
                                                iZzf += 8;
                                            }
                                            if (iZzf != i45) {
                                                throw zzdc.zzg();
                                            }
                                        }
                                        i39 = i44;
                                        iZzg = iZzf;
                                        i73 = i43;
                                        unsafe8 = unsafe5;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe5 = unsafe3;
                                        i43 = i37;
                                        zzbcVar4 = zzbcVar3;
                                        i44 = i9;
                                        if (i12 == 2) {
                                            if (i12 == 5) {
                                                iZzf = i36 + 4;
                                                zzctVar = (zzct) zzczVar;
                                                zzctVar.zzg(zzbd.zzb(bArr4, i36));
                                                while (iZzf < i71) {
                                                    iZzh5 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        zzctVar.zzg(zzbd.zzb(bArr4, iZzh5));
                                                        iZzf = iZzh5 + 4;
                                                    }
                                                }
                                            }
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            zzctVar2 = (zzct) zzczVar;
                                            iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i46 = zzbcVar4.zza + iZzf;
                                            while (iZzf < i46) {
                                                zzctVar2.zzg(zzbd.zzb(bArr4, iZzf));
                                                iZzf += 4;
                                            }
                                            if (iZzf != i46) {
                                                throw zzdc.zzg();
                                            }
                                        }
                                        i39 = i44;
                                        iZzg = iZzf;
                                        i73 = i43;
                                        unsafe8 = unsafe5;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe5 = unsafe3;
                                        i43 = i37;
                                        zzbcVar4 = zzbcVar3;
                                        i44 = i9;
                                        if (i12 == 2) {
                                            if (i12 == 0) {
                                                zzbeVar = (zzbe) zzczVar;
                                                iZzf = zzbd.zzk(bArr4, i36, zzbcVar4);
                                                if (zzbcVar4.zzb != 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                zzbeVar.zze(z2);
                                                while (iZzf < i71) {
                                                    iZzh6 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        iZzf = zzbd.zzk(bArr4, iZzh6, zzbcVar4);
                                                        if (zzbcVar4.zzb != 0) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        zzbeVar.zze(z3);
                                                    }
                                                }
                                            }
                                            i39 = i44;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            zzbeVar2 = (zzbe) zzczVar;
                                            iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                            i47 = zzbcVar4.zza + iZzf;
                                            while (iZzf < i47) {
                                                iZzf = zzbd.zzk(bArr4, iZzf, zzbcVar4);
                                                if (zzbcVar4.zzb != 0) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                zzbeVar2.zze(z4);
                                            }
                                            if (iZzf != i47) {
                                                throw zzdc.zzg();
                                            }
                                        }
                                        i39 = i44;
                                        iZzg = iZzf;
                                        i73 = i43;
                                        unsafe8 = unsafe5;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 26:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe5 = unsafe3;
                                        i43 = i37;
                                        zzbcVar4 = zzbcVar3;
                                        i44 = i9;
                                        if (i12 == 2) {
                                            if ((j2 & 536870912) == 0) {
                                                iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i52 = zzbcVar4.zza;
                                                if (i52 >= 0) {
                                                    throw zzdc.zzd();
                                                }
                                                if (i52 == 0) {
                                                    zzczVar.add("");
                                                } else {
                                                    zzczVar.add(new String(bArr4, iZzf, i52, zzda.zzb));
                                                    iZzf += i52;
                                                }
                                                while (iZzf < i71) {
                                                    iZzh8 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        iZzf = zzbd.zzh(bArr4, iZzh8, zzbcVar4);
                                                        i53 = zzbcVar4.zza;
                                                        if (i53 >= 0) {
                                                            throw zzdc.zzd();
                                                        }
                                                        if (i53 == 0) {
                                                            zzczVar.add("");
                                                        } else {
                                                            zzczVar.add(new String(bArr4, iZzf, i53, zzda.zzb));
                                                            iZzf += i53;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iZzf = zzbd.zzh(bArr4, i36, zzbcVar4);
                                                i48 = zzbcVar4.zza;
                                                if (i48 >= 0) {
                                                    throw zzdc.zzd();
                                                }
                                                if (i48 == 0) {
                                                    zzczVar.add("");
                                                } else {
                                                    i49 = iZzf + i48;
                                                    if (zzfu.zze(bArr4, iZzf, i49)) {
                                                        throw zzdc.zzc();
                                                    }
                                                    zzczVar.add(new String(bArr4, iZzf, i48, zzda.zzb));
                                                    iZzf = i49;
                                                }
                                                while (iZzf < i71) {
                                                    iZzh7 = zzbd.zzh(bArr4, iZzf, zzbcVar4);
                                                    if (i38 == zzbcVar4.zza) {
                                                        iZzf = zzbd.zzh(bArr4, iZzh7, zzbcVar4);
                                                        i50 = zzbcVar4.zza;
                                                        if (i50 >= 0) {
                                                            throw zzdc.zzd();
                                                        }
                                                        if (i50 == 0) {
                                                            zzczVar.add("");
                                                        } else {
                                                            i51 = iZzf + i50;
                                                            if (zzfu.zze(bArr4, iZzf, i51)) {
                                                                throw zzdc.zzc();
                                                            }
                                                            zzczVar.add(new String(bArr4, iZzf, i50, zzda.zzb));
                                                            iZzf = i51;
                                                        }
                                                    }
                                                }
                                            }
                                            i39 = i44;
                                            iZzg = iZzf;
                                            i73 = i43;
                                            unsafe8 = unsafe5;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        }
                                        i39 = i44;
                                        i73 = i43;
                                        unsafe8 = unsafe5;
                                        iZzg = i36;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 27:
                                        zzbcVar3 = zzbcVar3;
                                        i54 = i34;
                                        i37 = i37;
                                        i9 = i9;
                                        if (i12 == 2) {
                                            this = this;
                                            i36 = i36;
                                            int iZze3 = zzbd.zze(this.zzv(i37), i54, bArr, i36, i2, zzczVar, zzbcVar);
                                            zzbcVar4 = zzbcVar3;
                                            i73 = i37;
                                            unsafe8 = unsafe3;
                                            i38 = i54;
                                            i39 = i9;
                                            iZzg = iZze3;
                                        } else {
                                            this = this;
                                            i36 = i36;
                                            zzbcVar4 = zzbcVar3;
                                            i73 = i37;
                                            i39 = i9;
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 28:
                                        zzbcVar3 = zzbcVar3;
                                        i54 = i34;
                                        i37 = i37;
                                        i9 = i9;
                                        if (i12 == 2) {
                                            iZzh9 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                            i55 = zzbcVar3.zza;
                                            if (i55 >= 0) {
                                                throw zzdc.zzd();
                                            }
                                            if (i55 <= bArr4.length - iZzh9) {
                                                throw zzdc.zzg();
                                            }
                                            if (i55 == 0) {
                                                zzczVar.add(zzbq.zzb);
                                            } else {
                                                zzczVar.add(zzbq.zzl(bArr4, iZzh9, i55));
                                                iZzh9 += i55;
                                            }
                                            while (iZzh9 < i71) {
                                                iZzh10 = zzbd.zzh(bArr4, iZzh9, zzbcVar3);
                                                if (i54 == zzbcVar3.zza) {
                                                    iZzg = iZzh9;
                                                    zzbcVar4 = zzbcVar3;
                                                    i73 = i37;
                                                    i39 = i9;
                                                    i38 = i54;
                                                    unsafe8 = unsafe3;
                                                    if (iZzg != i36) {
                                                        i71 = i71;
                                                        obj2 = obj;
                                                        i77 = i39;
                                                        i75 = i38;
                                                        i74 = i73;
                                                        zzbcVar6 = zzbcVar4;
                                                        i78 = i78;
                                                        i73 = 0;
                                                        i76 = i8;
                                                        i72 = i3;
                                                    } else {
                                                        i71 = i71;
                                                        obj2 = obj;
                                                        i7 = iZzg;
                                                        i9 = i39;
                                                        i75 = i38;
                                                        unsafe2 = unsafe8;
                                                        zzbcVar2 = zzbcVar4;
                                                        i4 = i3;
                                                    }
                                                    break;
                                                } else {
                                                    iZzh9 = zzbd.zzh(bArr4, iZzh10, zzbcVar3);
                                                    i56 = zzbcVar3.zza;
                                                    if (i56 >= 0) {
                                                        throw zzdc.zzd();
                                                    }
                                                    if (i56 <= bArr4.length - iZzh9) {
                                                        throw zzdc.zzg();
                                                    }
                                                    if (i56 == 0) {
                                                        zzczVar.add(zzbq.zzb);
                                                    } else {
                                                        zzczVar.add(zzbq.zzl(bArr4, iZzh9, i56));
                                                        iZzh9 += i56;
                                                    }
                                                }
                                            }
                                            iZzg = iZzh9;
                                            zzbcVar4 = zzbcVar3;
                                            i73 = i37;
                                            i39 = i9;
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        }
                                        this = this;
                                        i36 = i36;
                                        zzbcVar4 = zzbcVar3;
                                        i73 = i37;
                                        i39 = i9;
                                        i38 = i54;
                                        unsafe8 = unsafe3;
                                        iZzg = i36;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i54 = i34;
                                        if (i12 == 2) {
                                            iZzj = zzbd.zzf(bArr4, i36, zzczVar, zzbcVar3);
                                        } else if (i12 == 0) {
                                            this = this;
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            iZzj = zzbd.zzj(i54, bArr, i36, i2, zzczVar, zzbcVar);
                                        }
                                        zzcwVarZzu = this.zzu(i37);
                                        zzffVar = this.zzm;
                                        int i827 = zzeq.zza;
                                        if (zzcwVarZzu != null) {
                                            i57 = iZzj;
                                        } else if (zzczVar instanceof RandomAccess) {
                                            size = zzczVar.size();
                                            i57 = iZzj;
                                            objZzo2 = null;
                                            i59 = 0;
                                            while (i58 < size) {
                                                iIntValue2 = ((Integer) zzczVar.get(i58)).intValue();
                                                if (zzcwVarZzu.zza(iIntValue2)) {
                                                    if (i58 != i59) {
                                                        zzczVar.set(i59, Integer.valueOf(iIntValue2));
                                                    }
                                                    i59++;
                                                } else {
                                                    objZzo2 = zzeq.zzo(obj2, i9, iIntValue2, objZzo2, zzffVar);
                                                }
                                            }
                                            if (i59 != size) {
                                                zzczVar.subList(i59, size).clear();
                                            }
                                        } else {
                                            i57 = iZzj;
                                            it = zzczVar.iterator();
                                            objZzo = null;
                                            while (it.hasNext()) {
                                                iIntValue = ((Integer) it.next()).intValue();
                                                if (!zzcwVarZzu.zza(iIntValue)) {
                                                    objZzo = zzeq.zzo(obj2, i9, iIntValue, objZzo, zzffVar);
                                                    it.remove();
                                                }
                                            }
                                        }
                                        iZzg = i57;
                                        zzbcVar4 = zzbcVar3;
                                        i73 = i37;
                                        i39 = i9;
                                        i38 = i54;
                                        unsafe8 = unsafe3;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i54 = i34;
                                        if (i12 == 2) {
                                            if (i12 == 0) {
                                                zzctVar3 = (zzct) zzczVar;
                                                iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                                zzctVar3.zzg(zzbu.zzb(zzbcVar3.zza));
                                                while (iZzh11 < i71) {
                                                    iZzh12 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                    if (i54 == zzbcVar3.zza) {
                                                        iZzh11 = zzbd.zzh(bArr4, iZzh12, zzbcVar3);
                                                        zzctVar3.zzg(zzbu.zzb(zzbcVar3.zza));
                                                    }
                                                }
                                            }
                                            i38 = i54;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            zzctVar4 = (zzct) zzczVar;
                                            iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                            i60 = zzbcVar3.zza + iZzh11;
                                            while (iZzh11 < i60) {
                                                iZzh11 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                zzctVar4.zzg(zzbu.zzb(zzbcVar3.zza));
                                            }
                                            if (iZzh11 != i60) {
                                                throw zzdc.zzg();
                                            }
                                        }
                                        i38 = i54;
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        iZzg = iZzh11;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        if (i12 == 2) {
                                            zzdrVar6 = (zzdr) zzczVar;
                                            iZzh11 = zzbd.zzh(bArr4, i36, zzbcVar3);
                                            i61 = zzbcVar3.zza + iZzh11;
                                            while (iZzh11 < i61) {
                                                iZzh11 = zzbd.zzk(bArr4, iZzh11, zzbcVar3);
                                                zzdrVar6.zzf(zzbu.zzc(zzbcVar3.zzb));
                                            }
                                            if (iZzh11 == i61) {
                                                throw zzdc.zzg();
                                            }
                                            i38 = i34;
                                        } else if (i12 == 0) {
                                            i38 = i34;
                                            unsafe8 = unsafe3;
                                            i73 = i37;
                                            i39 = i9;
                                            zzbcVar4 = zzbcVar3;
                                            iZzg = i36;
                                            if (iZzg != i36) {
                                                i71 = i71;
                                                obj2 = obj;
                                                i77 = i39;
                                                i75 = i38;
                                                i74 = i73;
                                                zzbcVar6 = zzbcVar4;
                                                i78 = i78;
                                                i73 = 0;
                                                i76 = i8;
                                                i72 = i3;
                                            } else {
                                                i71 = i71;
                                                obj2 = obj;
                                                i7 = iZzg;
                                                i9 = i39;
                                                i75 = i38;
                                                unsafe2 = unsafe8;
                                                zzbcVar2 = zzbcVar4;
                                                i4 = i3;
                                            }
                                        } else {
                                            zzdrVar5 = (zzdr) zzczVar;
                                            iZzh11 = zzbd.zzk(bArr4, i36, zzbcVar3);
                                            zzdrVar5.zzf(zzbu.zzc(zzbcVar3.zzb));
                                            while (true) {
                                                if (iZzh11 < i71) {
                                                    iZzh13 = zzbd.zzh(bArr4, iZzh11, zzbcVar3);
                                                    i54 = i34;
                                                    if (i54 == zzbcVar3.zza) {
                                                        iZzh11 = zzbd.zzk(bArr4, iZzh13, zzbcVar3);
                                                        zzdrVar5.zzf(zzbu.zzc(zzbcVar3.zzb));
                                                        i34 = i54;
                                                    }
                                                } else {
                                                    i54 = i34;
                                                }
                                            }
                                            i38 = i54;
                                        }
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        iZzg = iZzh11;
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                    default:
                                        i36 = i36;
                                        i38 = i34;
                                        unsafe8 = unsafe3;
                                        i73 = i37;
                                        i39 = i9;
                                        zzbcVar4 = zzbcVar3;
                                        if (i12 == 3) {
                                            i62 = (i38 & (-8)) | 4;
                                            zzeoVarZzv = this.zzv(i73);
                                            iZzg = zzbd.zzc(zzeoVarZzv, bArr, i36, i2, i62, zzbcVar);
                                            zzczVar.add(zzbcVar4.zzc);
                                            while (iZzg < i71) {
                                                iZzh14 = zzbd.zzh(bArr4, iZzg, zzbcVar4);
                                                if (i38 == zzbcVar4.zza) {
                                                    iZzg = zzbd.zzc(zzeoVarZzv, bArr, iZzh14, i2, i62, zzbcVar);
                                                    zzczVar.add(zzbcVar4.zzc);
                                                }
                                            }
                                        } else {
                                            iZzg = i36;
                                        }
                                        if (iZzg != i36) {
                                            i71 = i71;
                                            obj2 = obj;
                                            i77 = i39;
                                            i75 = i38;
                                            i74 = i73;
                                            zzbcVar6 = zzbcVar4;
                                            i78 = i78;
                                            i73 = 0;
                                            i76 = i8;
                                            i72 = i3;
                                        } else {
                                            i71 = i71;
                                            obj2 = obj;
                                            i7 = iZzg;
                                            i9 = i39;
                                            i75 = i38;
                                            unsafe2 = unsafe8;
                                            zzbcVar2 = zzbcVar4;
                                            i4 = i3;
                                        }
                                        break;
                                }
                            } else {
                                unsafe2 = unsafe3;
                                i63 = i35;
                                i64 = i34;
                                if (iZzr == 50) {
                                    i66 = i36;
                                    obj2 = obj;
                                    unsafe7 = zzb;
                                    j3 = iArr[i63 + 2] & 1048575;
                                    switch (iZzr) {
                                        case 51:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 1) {
                                                iZzh15 = i66 + 8;
                                                unsafe7.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(zzbd.zzn(bArr2, i66))));
                                                unsafe7.putInt(obj2, j3, i9);
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i8119 = iZzh15;
                                                i77 = i9;
                                                iZzg = i8119;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 52:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 5) {
                                                iZzh15 = i66 + 4;
                                                unsafe7.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(zzbd.zzb(bArr2, i66))));
                                                unsafe7.putInt(obj2, j3, i9);
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81110 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81110;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 0) {
                                                iZzk = zzbd.zzk(bArr2, i66, zzbcVar2);
                                                unsafe7.putObject(obj2, j, Long.valueOf(zzbcVar2.zzb));
                                                unsafe7.putInt(obj2, j3, i9);
                                                iZzh15 = iZzk;
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81111 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81111;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 0) {
                                                iZzh15 = zzbd.zzh(bArr2, i66, zzbcVar2);
                                                unsafe7.putObject(obj2, j, Integer.valueOf(zzbcVar2.zza));
                                                unsafe7.putInt(obj2, j3, i9);
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81112 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81112;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 1) {
                                                iZzh15 = i66 + 8;
                                                unsafe7.putObject(obj2, j, Long.valueOf(zzbd.zzn(bArr2, i66)));
                                                unsafe7.putInt(obj2, j3, i9);
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81113 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81113;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 5) {
                                                iZzh15 = i66 + 4;
                                                unsafe7.putObject(obj2, j, Integer.valueOf(zzbd.zzb(bArr2, i66)));
                                                unsafe7.putInt(obj2, j3, i9);
                                            } else {
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81114 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81114;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 58:
                                            i63 = i63;
                                            i9 = i9;
                                            i67 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 0) {
                                                iZzk = zzbd.zzk(bArr2, i66, zzbcVar2);
                                                i75 = i67;
                                                if (zzbcVar2.zzb != 0) {
                                                    z5 = true;
                                                } else {
                                                    z5 = false;
                                                }
                                                unsafe7.putObject(obj2, j, Boolean.valueOf(z5));
                                                unsafe7.putInt(obj2, j3, i9);
                                                iZzh15 = iZzk;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i81115 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i81115;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            }
                                            i75 = i67;
                                            iZzh15 = i66;
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81116 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81116;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 59:
                                            i63 = i63;
                                            i9 = i9;
                                            i67 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            if (i12 == 2) {
                                                iZzh15 = zzbd.zzh(bArr2, i66, zzbcVar2);
                                                i68 = zzbcVar2.zza;
                                                if (i68 == 0) {
                                                    unsafe7.putObject(obj2, j, "");
                                                } else {
                                                    i69 = iZzh15 + i68;
                                                    if ((i13 & 536870912) == 0) {
                                                    }
                                                    unsafe7.putObject(obj2, j, new String(bArr2, iZzh15, i68, zzda.zzb));
                                                    iZzh15 = i69;
                                                }
                                                unsafe7.putInt(obj2, j3, i9);
                                                i75 = i67;
                                            } else {
                                                i75 = i67;
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81117 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81117;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 60:
                                            bArr3 = bArr;
                                            zzbcVar5 = zzbcVar;
                                            if (i12 == 2) {
                                                Object objZzy3 = this.zzy(obj2, i9, i63);
                                                i66 = i66;
                                                int iZzm2 = zzbd.zzm(objZzy3, this.zzv(i63), bArr, i66, i2, zzbcVar);
                                                this.zzG(obj2, i9, i63, objZzy3);
                                                iZzh15 = iZzm2;
                                                bArr2 = bArr3;
                                                i63 = i63;
                                                i9 = i9;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                            } else {
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                iZzh15 = i66;
                                            }
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i81118 = iZzh15;
                                                i77 = i9;
                                                iZzg = i81118;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 61:
                                            bArr3 = bArr;
                                            zzbcVar5 = zzbcVar;
                                            if (i12 == 2) {
                                                iZzh15 = zzbd.zza(bArr3, i66, zzbcVar5);
                                                unsafe7.putObject(obj2, j, zzbcVar5.zzc);
                                                unsafe7.putInt(obj2, j3, i9);
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i81119 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i81119;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            }
                                            bArr2 = bArr3;
                                            zzbcVar2 = zzbcVar5;
                                            i75 = i64;
                                            iZzh15 = i66;
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i811110 = iZzh15;
                                                i77 = i9;
                                                iZzg = i811110;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 63:
                                            bArr3 = bArr;
                                            zzbcVar5 = zzbcVar;
                                            if (i12 == 0) {
                                                int iZzh17 = zzbd.zzh(bArr3, i66, zzbcVar5);
                                                i70 = zzbcVar5.zza;
                                                zzcwVarZzu2 = this.zzu(i63);
                                                if (zzcwVarZzu2 != null) {
                                                    unsafe7.putObject(obj2, j, Integer.valueOf(i70));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                } else {
                                                    unsafe7.putObject(obj2, j, Integer.valueOf(i70));
                                                    unsafe7.putInt(obj2, j3, i9);
                                                }
                                                iZzh15 = iZzh17;
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811111 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811111;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            }
                                            bArr2 = bArr3;
                                            zzbcVar2 = zzbcVar5;
                                            i75 = i64;
                                            iZzh15 = i66;
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i811112 = iZzh15;
                                                i77 = i9;
                                                iZzg = i811112;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 66:
                                            bArr3 = bArr;
                                            zzbcVar5 = zzbcVar;
                                            if (i12 == 0) {
                                                iZzh15 = zzbd.zzh(bArr3, i66, zzbcVar5);
                                                unsafe7.putObject(obj2, j, Integer.valueOf(zzbu.zzb(zzbcVar5.zza)));
                                                unsafe7.putInt(obj2, j3, i9);
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811113 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811113;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            }
                                            bArr2 = bArr3;
                                            zzbcVar2 = zzbcVar5;
                                            i75 = i64;
                                            iZzh15 = i66;
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i811114 = iZzh15;
                                                i77 = i9;
                                                iZzg = i811114;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                        case 67:
                                            zzbcVar5 = zzbcVar;
                                            if (i12 == 0) {
                                                bArr3 = bArr;
                                                iZzh15 = zzbd.zzk(bArr3, i66, zzbcVar5);
                                                unsafe7.putObject(obj2, j, Long.valueOf(zzbu.zzc(zzbcVar5.zzb)));
                                                unsafe7.putInt(obj2, j3, i9);
                                                bArr2 = bArr3;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811115 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811115;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            } else {
                                                i63 = i63;
                                                i9 = i9;
                                                i66 = i66;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                iZzh15 = i66;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811116 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811116;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                            }
                                            break;
                                        case 68:
                                            if (i12 == 3) {
                                                break;
                                            } else {
                                                Object objZzy4 = this.zzy(obj2, i9, i63);
                                                zzbcVar5 = zzbcVar;
                                                int iZzl4 = zzbd.zzl(objZzy4, this.zzv(i63), bArr, i66, i2, (i64 & (-8)) | 4, zzbcVar);
                                                this.zzG(obj2, i9, i63, objZzy4);
                                                iZzh15 = iZzl4;
                                                bArr2 = bArr;
                                                zzbcVar2 = zzbcVar5;
                                                i75 = i64;
                                                if (iZzh15 != i66) {
                                                    i71 = i2;
                                                    i72 = i3;
                                                    zzbcVar6 = zzbcVar2;
                                                    bArr4 = bArr2;
                                                    i78 = i78;
                                                    i73 = 0;
                                                    i74 = i63;
                                                    i76 = i8;
                                                    unsafe8 = unsafe2;
                                                    int i811117 = iZzh15;
                                                    i77 = i9;
                                                    iZzg = i811117;
                                                } else {
                                                    i4 = i3;
                                                    i7 = iZzh15;
                                                    i73 = i63;
                                                }
                                                break;
                                            }
                                        default:
                                            i63 = i63;
                                            i9 = i9;
                                            i75 = i64;
                                            i66 = i66;
                                            bArr2 = bArr;
                                            zzbcVar2 = zzbcVar;
                                            iZzh15 = i66;
                                            if (iZzh15 != i66) {
                                                i71 = i2;
                                                i72 = i3;
                                                zzbcVar6 = zzbcVar2;
                                                bArr4 = bArr2;
                                                i78 = i78;
                                                i73 = 0;
                                                i74 = i63;
                                                i76 = i8;
                                                unsafe8 = unsafe2;
                                                int i811118 = iZzh15;
                                                i77 = i9;
                                                iZzg = i811118;
                                            } else {
                                                i4 = i3;
                                                i7 = iZzh15;
                                                i73 = i63;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i12 == 2) {
                                        unsafe6 = zzb;
                                        Object objZzw2 = this.zzw(i63);
                                        object = unsafe6.getObject(obj, j);
                                        if (!((zzdw) object).zze()) {
                                            zzdw zzdwVarZzb2 = zzdw.zza().zzb();
                                            zzdx.zza(zzdwVarZzb2, object);
                                            unsafe6.putObject(obj, j, zzdwVarZzb2);
                                        }
                                        throw null;
                                    }
                                    i65 = i36;
                                    obj2 = obj;
                                    i4 = i3;
                                    i73 = i63;
                                    i9 = i9;
                                    i75 = i64;
                                    i7 = i65;
                                    zzbcVar2 = zzbcVar3;
                                }
                            }
                            if (i75 == i4) {
                            }
                            if (this.zzh) {
                                i11 = i75;
                                iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                            } else {
                                i11 = i75;
                                iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                            }
                            bArr4 = bArr;
                            i71 = i2;
                            i74 = i73;
                            i77 = i9;
                            i75 = i11;
                            unsafe8 = unsafe2;
                            i78 = i78;
                            i73 = i10;
                            i76 = i8;
                            zzbcVar6 = zzbcVar;
                            i72 = i4;
                        } else if (i12 == 2) {
                            zzczVarZzd = (zzcz) unsafe3.getObject(obj2, j);
                            if (!zzczVarZzd.zzc()) {
                                int size5 = zzczVarZzd.size();
                                zzczVarZzd = zzczVarZzd.zzd(size5 != 0 ? size5 + size5 : 10);
                                unsafe3.putObject(obj2, j, zzczVarZzd);
                            }
                            int iZze4 = zzbd.zze(this.zzv(i35), i34, bArr, i36, i2, zzczVarZzd, zzbcVar);
                            i72 = i3;
                            zzbcVar6 = zzbcVar3;
                            i71 = i71;
                            i77 = i9;
                            unsafe8 = unsafe3;
                            i74 = i35;
                            iZzg = iZze4;
                            i78 = i78;
                            i73 = 0;
                            i75 = i34;
                            i76 = i8;
                        } else {
                            unsafe2 = unsafe3;
                            i64 = i34;
                            i63 = i35;
                            i65 = i36;
                            i4 = i3;
                            i73 = i63;
                            i9 = i9;
                            i75 = i64;
                            i7 = i65;
                            zzbcVar2 = zzbcVar3;
                        }
                    }
                }
                if (i75 == i4) {
                }
                if (this.zzh) {
                    i11 = i75;
                    iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                } else {
                    i11 = i75;
                    iZzg = zzbd.zzg(i11, bArr, i7, i2, zzd(obj), zzbcVar);
                }
                bArr4 = bArr;
                i71 = i2;
                i74 = i73;
                i77 = i9;
                i75 = i11;
                unsafe8 = unsafe2;
                i78 = i78;
                i73 = i10;
                i76 = i8;
                zzbcVar6 = zzbcVar;
                i72 = i4;
            } else {
                i4 = i72;
                unsafe = unsafe8;
            }
        }
        if (i78 != 1048575) {
            unsafe.putInt(obj2, i78, i76);
        }
        for (int i90 = this.zzj; i90 < this.zzk; i90++) {
            int[] iArr2 = this.zzi;
            int[] iArr3 = this.zzc;
            int i91 = iArr2[i90];
            int i92 = iArr3[i91];
            Object objZzf = zzfp.zzf(obj2, this.zzs(i91) & 1048575);
            if (objZzf != null && this.zzu(i91) != null) {
                throw null;
            }
        }
        if (i4 == 0) {
            if (iZzg != i2) {
                throw zzdc.zze();
            }
        } else if (iZzg > i2 || i75 != i4) {
            throw zzdc.zze();
        }
        return iZzg;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final Object zze() {
        return ((zzcs) this.zzg).zzl();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzcs) {
                zzcs zzcsVar = (zzcs) obj;
                zzcsVar.zzu(Integer.MAX_VALUE);
                zzcsVar.zza = 0;
                zzcsVar.zzs();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzs = zzs(i);
                int i2 = 1048575 & iZzs;
                int iZzr = zzr(iZzs);
                long j = i2;
                if (iZzr != 9) {
                    if (iZzr != 60 && iZzr != 68) {
                        switch (iZzr) {
                            case 17:
                                if (zzI(obj, i)) {
                                    zzv(i).zzf(zzb.getObject(obj, j));
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
                                this.zzl.zza(obj, j);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzdw) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (zzM(obj, this.zzc[i], i)) {
                        zzv(i).zzf(zzb.getObject(obj, j));
                    }
                } else if (zzI(obj, i)) {
                    zzv(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzm.zzg(obj);
            if (this.zzh) {
                this.zzn.zzd(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzs = zzs(i);
            int i2 = 1048575 & iZzs;
            int[] iArr = this.zzc;
            int iZzr = zzr(iZzs);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzr) {
                case 0:
                    if (zzI(obj2, i)) {
                        zzfp.zzo(obj, j, zzfp.zza(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i)) {
                        zzfp.zzp(obj, j, zzfp.zzb(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i)) {
                        zzfp.zzm(obj, j, zzfp.zzw(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i);
                    break;
                case 10:
                    if (zzI(obj2, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i)) {
                        zzfp.zzq(obj, j, zzfp.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i)) {
                        zzfp.zzr(obj, j, zzfp.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 17:
                    zzB(obj, obj2, i);
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
                    this.zzl.zzb(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzeq.zza;
                    zzfp.zzs(obj, j, zzdx.zza(zzfp.zzf(obj, j), zzfp.zzf(obj2, j)));
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
                    if (zzM(obj2, i3, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzE(obj, i3, i);
                    }
                    break;
                case 60:
                    zzC(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(obj2, i3, i)) {
                        zzfp.zzs(obj, j, zzfp.zzf(obj2, j));
                        zzE(obj, i3, i);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i);
                    break;
            }
        }
        zzeq.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzeq.zzp(this.zzn, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzbc zzbcVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzbcVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final void zzi(Object obj, zzfx zzfxVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i;
        Map.Entry entry2;
        int i2;
        boolean z;
        boolean z2;
        if (this.zzh) {
            zzci zzciVarZzb = this.zzn.zzb(obj);
            if (zzciVarZzb.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzf = zzciVarZzb.zzf();
                entry = (Map.Entry) itZzf.next();
                it = itZzf;
            }
        } else {
            entry = null;
            it = null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < iArr.length) {
            int iZzs = zzs(i5);
            int[] iArr2 = this.zzc;
            int iZzr = zzr(iZzs);
            int i6 = iArr2[i5];
            if (iZzr <= 17) {
                int i7 = iArr2[i5 + 2];
                int i8 = i7 & 1048575;
                if (i8 != i3) {
                    i4 = i8 == 1048575 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
                } else {
                    entry = entry;
                }
                i2 = 1 << (i7 >>> 20);
                i = i4;
                entry2 = entry;
            } else {
                i = i4;
                entry2 = entry;
                i2 = 0;
            }
            int i9 = i3;
            while (entry2 != null && this.zzn.zza(entry2) <= i6) {
                this.zzn.zze(zzfxVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzs & 1048575;
            switch (iZzr) {
                case 0:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzf(i6, zzfp.zza(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 1:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzo(i6, zzfp.zzb(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 2:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzt(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 3:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzK(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 4:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzr(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 5:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzm(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 6:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzk(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 7:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzb(i6, zzfp.zzw(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 8:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzO(i6, unsafe.getObject(obj, j), zzfxVar);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 9:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzv(i6, unsafe.getObject(obj, j), zzv(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 10:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzd(i6, (zzbq) unsafe.getObject(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 11:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzI(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 12:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzi(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 13:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzx(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 14:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzz(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 15:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzB(i6, unsafe.getInt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 16:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzD(i6, unsafe.getLong(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 17:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzfxVar.zzq(i6, unsafe.getObject(obj, j), zzv(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 18:
                    z = false;
                    zzeq.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 19:
                    z = false;
                    zzeq.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 20:
                    z = false;
                    zzeq.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 21:
                    z = false;
                    zzeq.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 22:
                    z = false;
                    zzeq.zzy(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 23:
                    z = false;
                    zzeq.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 24:
                    z = false;
                    zzeq.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 25:
                    z = false;
                    zzeq.zzs(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 26:
                    int i10 = this.zzc[i5];
                    List list = (List) unsafe.getObject(obj, j);
                    int i11 = zzeq.zza;
                    if (list != null && !list.isEmpty()) {
                        zzfxVar.zzH(i10, list);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 27:
                    int i12 = this.zzc[i5];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzeo zzeoVarZzv = zzv(i5);
                    int i13 = zzeq.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i14 = 0; i14 < list2.size(); i14++) {
                            ((zzbz) zzfxVar).zzv(i12, list2.get(i14), zzeoVarZzv);
                        }
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 28:
                    int i15 = this.zzc[i5];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i16 = zzeq.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzfxVar.zze(i15, list3);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 29:
                    z2 = false;
                    zzeq.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 30:
                    z2 = false;
                    zzeq.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 31:
                    z2 = false;
                    zzeq.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 32:
                    z2 = false;
                    zzeq.zzB(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 33:
                    z2 = false;
                    zzeq.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 34:
                    z2 = false;
                    zzeq.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, false);
                    it = it;
                    iArr = iArr;
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 35:
                    zzeq.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 36:
                    zzeq.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 37:
                    zzeq.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 38:
                    zzeq.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 39:
                    zzeq.zzy(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 40:
                    zzeq.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 41:
                    zzeq.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 42:
                    zzeq.zzs(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 43:
                    zzeq.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 44:
                    zzeq.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 45:
                    zzeq.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 46:
                    zzeq.zzB(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 47:
                    zzeq.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 48:
                    zzeq.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzfxVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 49:
                    int i17 = this.zzc[i5];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzeo zzeoVarZzv2 = zzv(i5);
                    int i18 = zzeq.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i19 = 0; i19 < list4.size(); i19++) {
                            ((zzbz) zzfxVar).zzq(i17, list4.get(i19), zzeoVarZzv2);
                        }
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        throw null;
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 51:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzf(i6, zzm(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 52:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzo(i6, zzn(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 53:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzt(i6, zzt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 54:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzK(i6, zzt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 55:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzr(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 56:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzm(i6, zzt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 57:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzk(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 58:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzb(i6, zzN(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 59:
                    if (zzM(obj, i6, i5)) {
                        zzO(i6, unsafe.getObject(obj, j), zzfxVar);
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 60:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzv(i6, unsafe.getObject(obj, j), zzv(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 61:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzd(i6, (zzbq) unsafe.getObject(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 62:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzI(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 63:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzi(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 64:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzx(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 65:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzz(i6, zzt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 66:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzB(i6, zzo(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 67:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzD(i6, zzt(obj, j));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 68:
                    if (zzM(obj, i6, i5)) {
                        zzfxVar.zzq(i6, unsafe.getObject(obj, j), zzv(i5));
                    }
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                default:
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
            }
        }
        Iterator it2 = it;
        while (entry != null) {
            this.zzn.zze(zzfxVar, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        zzff zzffVar = this.zzm;
        zzffVar.zzj(zzffVar.zzd(obj), zzfxVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzG;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzs = zzs(i);
            long j = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i) || Double.doubleToLongBits(zzfp.zza(obj, j)) != Double.doubleToLongBits(zzfp.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i) || Float.floatToIntBits(zzfp.zzb(obj, j)) != Float.floatToIntBits(zzfp.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i) || zzfp.zzw(obj, j) != zzfp.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i) || zzfp.zzc(obj, j) != zzfp.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i) || zzfp.zzd(obj, j) != zzfp.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
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
                    zZzG = zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j));
                    break;
                case 50:
                    zZzG = zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j));
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
                    long jZzp = zzp(i) & 1048575;
                    if (zzfp.zzc(obj, jZzp) != zzfp.zzc(obj2, jZzp) || !zzeq.zzG(zzfp.zzf(obj, j), zzfp.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzG) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzn.zzb(obj).equals(this.zzn.zzb(obj2));
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzeo
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        List list;
        zzeo zzeoVarZzv;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int iZzs = zzs(i7);
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
            if ((268435456 & iZzs) != 0 && !zzJ(obj, i7, i, i2, i11)) {
                return false;
            }
            int iZzr = zzr(iZzs);
            if (iZzr == 9 || iZzr == 17) {
                if (zzJ(obj, i7, i, i2, i11) && !zzK(obj, iZzs, zzv(i7))) {
                    return false;
                }
            } else if (iZzr == 27) {
                list = (List) zzfp.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzeoVarZzv = zzv(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzeoVarZzv.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzM(obj, i8, i7) && !zzK(obj, iZzs, zzv(i7))) {
                    return false;
                }
            } else if (iZzr == 49) {
                list = (List) zzfp.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    zzeoVarZzv = zzv(i7);
                    while (i3 < list.size()) {
                        if (!zzeoVarZzv.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzr == 50 && !((zzdw) zzfp.zzf(obj, iZzs & 1048575)).isEmpty()) {
                throw null;
            }
            i5++;
            i6 = i;
            i4 = i2;
        }
        return !this.zzh || this.zzn.zzb(obj).zzj();
    }
}
