package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import net.sqlcipher.database.SQLiteDatabase;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.mlkit:barcode-scanning@@17.3.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfp<T> implements zzge<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzgz.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfm zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzgs zzl;
    private final zzdt zzm;

    private zzfp(int[] iArr, Object[] objArr, int i, int i2, zzfm zzfmVar, boolean z, int[] iArr2, int i3, int i4, zzfs zzfsVar, zzez zzezVar, zzgs zzgsVar, zzdt zzdtVar, zzfh zzfhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzdtVar != null && (zzfmVar instanceof zzed)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzgsVar;
        this.zzm = zzdtVar;
        this.zzg = zzfmVar;
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
            zzge zzgeVarZzv = zzv(i);
            if (!zzI(obj, i)) {
                if (zzL(object)) {
                    Object objZze = zzgeVarZzv.zze();
                    zzgeVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzgeVarZzv.zze();
                zzgeVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgeVarZzv.zzg(object2, object);
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
            zzge zzgeVarZzv = zzv(i);
            if (!zzM(obj, i2, i)) {
                if (zzL(object)) {
                    Object objZze = zzgeVarZzv.zze();
                    zzgeVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzL(object2)) {
                Object objZze2 = zzgeVarZzv.zze();
                zzgeVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzgeVarZzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i) {
        int iZzp = zzp(i);
        long j = 1048575 & iZzp;
        if (j == 1048575) {
            return;
        }
        zzgz.zzq(obj, j, (1 << (iZzp >>> 20)) | zzgz.zzc(obj, j));
    }

    private final void zzE(Object obj, int i, int i2) {
        zzgz.zzq(obj, zzp(i2) & 1048575, i);
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
            return (zzgz.zzc(obj, j) & (1 << (iZzp >>> 20))) != 0;
        }
        int iZzs = zzs(i);
        long j2 = iZzs & 1048575;
        switch (zzr(iZzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzgz.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzgz.zzb(obj, j2)) != 0;
            case 2:
                return zzgz.zzd(obj, j2) != 0;
            case 3:
                return zzgz.zzd(obj, j2) != 0;
            case 4:
                return zzgz.zzc(obj, j2) != 0;
            case 5:
                return zzgz.zzd(obj, j2) != 0;
            case 6:
                return zzgz.zzc(obj, j2) != 0;
            case 7:
                return zzgz.zzw(obj, j2);
            case 8:
                Object objZzf = zzgz.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzdf) {
                    return !zzdf.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzgz.zzf(obj, j2) != null;
            case 10:
                return !zzdf.zzb.equals(zzgz.zzf(obj, j2));
            case 11:
                return zzgz.zzc(obj, j2) != 0;
            case 12:
                return zzgz.zzc(obj, j2) != 0;
            case 13:
                return zzgz.zzc(obj, j2) != 0;
            case 14:
                return zzgz.zzd(obj, j2) != 0;
            case 15:
                return zzgz.zzc(obj, j2) != 0;
            case 16:
                return zzgz.zzd(obj, j2) != 0;
            case 17:
                return zzgz.zzf(obj, j2) != null;
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

    private static boolean zzK(Object obj, int i, zzge zzgeVar) {
        return zzgeVar.zzk(zzgz.zzf(obj, i & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzeh) {
            return ((zzeh) obj).zzY();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i, int i2) {
        return zzgz.zzc(obj, (long) (zzp(i2) & 1048575)) == i;
    }

    private static boolean zzN(Object obj, long j) {
        return ((Boolean) zzgz.zzf(obj, j)).booleanValue();
    }

    private static final void zzO(int i, Object obj, zzhh zzhhVar) throws IOException {
        if (obj instanceof String) {
            zzhhVar.zzG(i, (String) obj);
        } else {
            zzhhVar.zzd(i, (zzdf) obj);
        }
    }

    static zzgt zzd(Object obj) {
        zzeh zzehVar = (zzeh) obj;
        zzgt zzgtVar = zzehVar.zzc;
        if (zzgtVar != zzgt.zzc()) {
            return zzgtVar;
        }
        zzgt zzgtVarZzf = zzgt.zzf();
        zzehVar.zzc = zzgtVarZzf;
        return zzgtVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:126:0x0268  */
    /* JADX WARN: Code duplicated, block: B:129:0x027f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0282  */
    /* JADX WARN: Code duplicated, block: B:169:0x0345  */
    /* JADX WARN: Code duplicated, block: B:183:0x0391  */
    /* JADX WARN: Code duplicated, block: B:186:0x039a  */
    static zzfp zzl(Class cls, zzfj zzfjVar, zzfs zzfsVar, zzez zzezVar, zzgs zzgsVar, zzdt zzdtVar, zzfh zzfhVar) {
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
        Field fieldZzz;
        int i22;
        char cCharAt9;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldZzz2;
        int i28;
        Object obj2;
        Field fieldZzz3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(zzfjVar instanceof zzfw)) {
            throw null;
        }
        zzfw zzfwVar = (zzfw) zzfjVar;
        String strZzd = zzfwVar.zzd();
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
        Object[] objArrZze = zzfwVar.zze();
        Class<?> cls2 = zzfwVar.zza().getClass();
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
                        if (zzfwVar.zzc() == 1 || i78 != 0) {
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
                        fieldZzz2 = (Field) obj;
                    } else {
                        fieldZzz2 = zzz(cls2, (String) obj);
                        objArrZze[i27] = fieldZzz2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzz2);
                    i28 = i27 + 1;
                    obj2 = objArrZze[i28];
                    int i88 = i78;
                    if (obj2 instanceof Field) {
                        fieldZzz3 = (Field) obj2;
                    } else {
                        fieldZzz3 = zzz(cls2, (String) obj2);
                        objArrZze[i28] = fieldZzz3;
                    }
                    i18 = i4;
                    i19 = i85;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz3);
                    i20 = 0;
                    strZzd = strZzd;
                    zzfwVar = zzfwVar;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i21 = i88;
                }
                i4 = i26;
                i27 = iCharAt12 + iCharAt12;
                obj = objArrZze[i27];
                if (obj instanceof Field) {
                    fieldZzz2 = (Field) obj;
                } else {
                    fieldZzz2 = zzz(cls2, (String) obj);
                    objArrZze[i27] = fieldZzz2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzz2);
                i28 = i27 + 1;
                obj2 = objArrZze[i28];
                int i89 = i78;
                if (obj2 instanceof Field) {
                    fieldZzz3 = (Field) obj2;
                } else {
                    fieldZzz3 = zzz(cls2, (String) obj2);
                    objArrZze[i28] = fieldZzz3;
                }
                i18 = i4;
                i19 = i85;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz3);
                i20 = 0;
                strZzd = strZzd;
                zzfwVar = zzfwVar;
                iObjectFieldOffset = iObjectFieldOffset4;
                i21 = i89;
            } else {
                i17 = i2;
                i18 = i4 + 1;
                Field fieldZzz4 = zzz(cls2, (String) objArrZze[i4]);
                if (i76 == 9 || i76 == 17) {
                    int i90 = i67 / 3;
                    objArr[i90 + i90 + 1] = fieldZzz4.getType();
                } else {
                    if (i76 != 27) {
                        if (i76 == 49) {
                            i24 = i4 + 2;
                            i23 = 1;
                        } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                            zzfwVar = zzfwVar;
                            if (zzfwVar.zzc() == 1 || i78 != 0) {
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
                                zzfwVar = zzfwVar;
                            } else {
                                i18 = i92;
                                i64 = i93;
                                i78 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz4);
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
                                fieldZzz = (Field) obj3;
                            } else {
                                fieldZzz = zzz(cls2, (String) obj3);
                                objArrZze[i99] = fieldZzz;
                            }
                            i20 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz);
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
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz4);
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
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz4);
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
            zzfwVar = zzfwVar;
            i34 = i19;
            i2 = i17;
            c = 55296;
        }
        return new zzfp(iArr3, objArr, i2, i5, zzfwVar.zza(), false, iArr, i3, i62, zzfsVar, zzezVar, zzgsVar, zzdtVar, zzfhVar);
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzgz.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzgz.zzf(obj, j)).floatValue();
    }

    private static int zzo(Object obj, long j) {
        return ((Integer) zzgz.zzf(obj, j)).intValue();
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
        return ((Long) zzgz.zzf(obj, j)).longValue();
    }

    private final zzel zzu(int i) {
        int i2 = i / 3;
        return (zzel) this.zzd[i2 + i2 + 1];
    }

    private final zzge zzv(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzge zzgeVar = (zzge) objArr[i3];
        if (zzgeVar != null) {
            return zzgeVar;
        }
        zzge zzgeVarZzb = zzfu.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzgeVarZzb;
        return zzgeVarZzb;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzx(Object obj, int i) {
        zzge zzgeVarZzv = zzv(i);
        int iZzs = zzs(i) & 1048575;
        if (!zzI(obj, i)) {
            return zzgeVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgeVarZzv.zze();
        if (object != null) {
            zzgeVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i, int i2) {
        zzge zzgeVarZzv = zzv(i2);
        if (!zzM(obj, i, i2)) {
            return zzgeVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i2) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgeVarZzv.zze();
        if (object != null) {
            zzgeVarZzv.zzg(objZze, object);
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
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v256, types: [int] */
    /* JADX WARN: Type inference failed for: r0v264 */
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
    /* JADX WARN: Type inference failed for: r0v281 */
    /* JADX WARN: Type inference failed for: r0v282 */
    /* JADX WARN: Type inference failed for: r0v283 */
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
    /* JADX WARN: Type inference failed for: r1v162 */
    /* JADX WARN: Type inference failed for: r1v165 */
    /* JADX WARN: Type inference failed for: r1v166 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v169 */
    /* JADX WARN: Type inference failed for: r1v170 */
    /* JADX WARN: Type inference failed for: r1v80, types: [int] */
    /* JADX WARN: Type inference failed for: r1v82 */
    /* JADX WARN: Type inference failed for: r2v32, types: [int] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38, types: [int] */
    /* JADX WARN: Type inference failed for: r2v42, types: [int] */
    /* JADX WARN: Type inference failed for: r2v46, types: [int] */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55, types: [int] */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [int] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [int] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v39, types: [int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v46, types: [int] */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
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
    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final int zza(Object obj) {
        int i;
        ?? r16;
        ?? r5;
        int iZzA;
        int iZzA2;
        int iZzA3;
        int iZzB;
        int iZzA4;
        int iZzA5;
        int iZzd;
        int iZzA6;
        ?? Zzg;
        int size;
        int iZzA7;
        int iZzz;
        int iZzz2;
        ?? r3;
        int iZzy;
        ?? ZzA;
        ?? Zzh;
        int iZze;
        int iZzA8;
        int iZzA9;
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
            if (iZzr >= zzdy.DOUBLE_LIST_PACKED.zza()) {
                zzdy.SINT64_LIST_PACKED.zza();
            }
            long j = i9;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i3, i, r16 == true ? 1 : 0, r5)) {
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(j2);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(j3);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(j4);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA4 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA4 + 1;
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
                        if (object instanceof zzdf) {
                            iZzA5 = zzdn.zzA(i10);
                            iZzd = ((zzdf) object).zzd();
                            iZzA6 = zzdn.zzA(iZzd);
                            Zzh = iZzA5 + iZzA6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzA3 = zzdn.zzA(i10);
                            iZzB = zzdn.zzz((String) object);
                            Zzh = iZzA3 + iZzB;
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
                        Zzh = zzgg.zzh(i6, unsafe.getObject(obj, j), zzv(i3));
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
                        zzdf zzdfVar = (zzdf) unsafe.getObject(obj, j);
                        iZzA5 = zzdn.zzA(i6 << 3);
                        iZzd = zzdfVar.zzd();
                        iZzA6 = zzdn.zzA(iZzd);
                        Zzh = iZzA5 + iZzA6 + iZzd;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzA(i11);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(j5);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzA((i12 >> 31) ^ (i12 + i12));
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB((j6 >> 63) ^ (j6 + j6));
                        Zzh = iZzA3 + iZzB;
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
                        Zzh = zzdn.zzw(i6, (zzfm) unsafe.getObject(obj, j), zzv(i3));
                        i4 += Zzh;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 18:
                    Zzh = zzgg.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 19:
                    Zzh = zzgg.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i13 = zzgg.zza;
                    if (list.size() == 0) {
                        Zzg = z;
                    } else {
                        Zzg = zzgg.zzg(list) + (list.size() * zzdn.zzA(i6 << 3));
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
                    int i14 = zzgg.zza;
                    size = list2.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zzl(list2);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
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
                    int i15 = zzgg.zza;
                    size = list3.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zzf(list3);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 23:
                    Zzh = zzgg.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 24:
                    Zzh = zzgg.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i16 = zzgg.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        Zzh = z;
                    } else {
                        Zzh = size2 * (zzdn.zzA(i6 << 3) + 1);
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
                    int i17 = zzgg.zza;
                    int size3 = r0.size();
                    if (size3 == 0) {
                        Zzg = z;
                    } else {
                        int iZzA10 = zzdn.zzA(i6 << 3) * size3;
                        if (r0 instanceof zzey) {
                            zzey zzeyVar = (zzey) r0;
                            for (?? r7 = z; r7 < size3; r7++) {
                                Object objZza = zzeyVar.zza();
                                if (objZza instanceof zzdf) {
                                    Zzg = iZzA10;
                                    int iZzd2 = ((zzdf) objZza).zzd();
                                    iZzz2 = Zzg + zzdn.zzA(iZzd2) + iZzd2;
                                } else {
                                    Zzg = iZzA10;
                                    iZzz2 = Zzg + zzdn.zzz((String) objZza);
                                }
                                Zzg = iZzz2;
                            }
                            Zzg = iZzA10;
                        } else {
                            for (?? r8 = z; r8 < size3; r8++) {
                                Object obj2 = r0.get(r8);
                                if (obj2 instanceof zzdf) {
                                    Zzg = iZzA10;
                                    int iZzd3 = ((zzdf) obj2).zzd();
                                    iZzz = Zzg + zzdn.zzA(iZzd3) + iZzd3;
                                } else {
                                    Zzg = iZzA10;
                                    iZzz = Zzg + zzdn.zzz((String) obj2);
                                }
                                Zzg = iZzz;
                            }
                            Zzg = iZzA10;
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
                    ?? r9 = (List) unsafe.getObject(obj, j);
                    zzge zzgeVarZzv = zzv(i3);
                    int i18 = zzgg.zza;
                    int size4 = r9.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        int iZzA11 = zzdn.zzA(i6 << 3) * size4;
                        for (?? r10 = z; r10 < size4; r10++) {
                            Object obj3 = r9.get(r10);
                            if (obj3 instanceof zzex) {
                                r3 = iZzA11;
                                int iZza = ((zzex) obj3).zza();
                                iZzy = (r3 == true ? 1 : 0) + zzdn.zzA(iZza) + iZza;
                            } else {
                                r3 = iZzA11;
                                iZzy = (r3 == true ? 1 : 0) + zzdn.zzy((zzfm) obj3, zzgeVarZzv);
                            }
                            r3 = iZzy;
                        }
                        r3 = iZzA11;
                    }
                    i4 += r3;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 28:
                    ?? r11 = (List) unsafe.getObject(obj, j);
                    int i19 = zzgg.zza;
                    int size5 = r11.size();
                    if (size5 == 0) {
                        ZzA = z;
                    } else {
                        ZzA = size5 * zzdn.zzA(i6 << 3);
                        for (?? r12 = z; r12 < r11.size(); r12++) {
                            int iZzd4 = ((zzdf) r11.get(r12)).zzd();
                            ZzA += zzdn.zzA(iZzd4) + iZzd4;
                        }
                    }
                    i4 += ZzA;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i20 = zzgg.zza;
                    size = list5.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zzk(list5);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
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
                    int i21 = zzgg.zza;
                    size = list6.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zza(list6);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 31:
                    Zzh = zzgg.zzb(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 32:
                    Zzh = zzgg.zzd(i6, (List) unsafe.getObject(obj, j), z);
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i22 = zzgg.zza;
                    size = list7.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zzi(list7);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
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
                    int i23 = zzgg.zza;
                    size = list8.size();
                    if (size == 0) {
                        Zzh = z;
                    } else {
                        iZzA3 = zzgg.zzj(list8);
                        iZzA7 = zzdn.zzA(i6 << 3);
                        iZzB = size * iZzA7;
                        Zzh = iZzA3 + iZzB;
                    }
                    i4 += Zzh;
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 35:
                    iZze = zzgg.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 36:
                    iZze = zzgg.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 37:
                    iZze = zzgg.zzg((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 38:
                    iZze = zzgg.zzl((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 39:
                    iZze = zzgg.zzf((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 40:
                    iZze = zzgg.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 41:
                    iZze = zzgg.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i24 = zzgg.zza;
                    iZze = list9.size();
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 43:
                    iZze = zzgg.zzk((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 44:
                    iZze = zzgg.zza((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 45:
                    iZze = zzgg.zzc((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 46:
                    iZze = zzgg.zze((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 47:
                    iZze = zzgg.zzi((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 48:
                    iZze = zzgg.zzj((List) unsafe.getObject(obj, j));
                    if (iZze > 0) {
                        iZzA8 = zzdn.zzA(i6 << 3);
                        iZzA9 = zzdn.zzA(iZze);
                        ZzA = iZzA8 + iZzA9 + iZze;
                        i4 += ZzA;
                    }
                    i3 += 3;
                    i5 = i;
                    r2 = r16;
                    z = false;
                    i2 = 1048575;
                    break;
                case 49:
                    ?? r13 = (List) unsafe.getObject(obj, j);
                    zzge zzgeVarZzv2 = zzv(i3);
                    int i25 = zzgg.zza;
                    int size6 = r13.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        while (r6 < size6) {
                            r6 = z2;
                            int iZzw = zzdn.zzw(i6, (zzfm) r13.get(r6), zzgeVarZzv2);
                            r6++;
                            r4 = (r4 == true ? 1 : 0) + iZzw;
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
                    zzfg zzfgVar = (zzfg) unsafe.getObject(obj, j);
                    if (zzfgVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzfgVar.entrySet().iterator();
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
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(jZzt);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(jZzt2);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(jZzo);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA4 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA4 + 1;
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
                        if (object2 instanceof zzdf) {
                            iZzA5 = zzdn.zzA(i26);
                            iZzd = ((zzdf) object2).zzd();
                            iZzA6 = zzdn.zzA(iZzd);
                            Zzh = iZzA5 + iZzA6 + iZzd;
                            i4 += Zzh;
                        } else {
                            iZzA3 = zzdn.zzA(i26);
                            iZzB = zzdn.zzz((String) object2);
                            Zzh = iZzA3 + iZzB;
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
                        Zzh = zzgg.zzh(i6, unsafe.getObject(obj, j), zzv(i3));
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
                        zzdf zzdfVar2 = (zzdf) unsafe.getObject(obj, j);
                        iZzA5 = zzdn.zzA(i6 << 3);
                        iZzd = zzdfVar2.zzd();
                        iZzA6 = zzdn.zzA(iZzd);
                        Zzh = iZzA5 + iZzA6 + iZzd;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzA(iZzo);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB(jZzo2);
                        Zzh = iZzA3 + iZzB;
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
                        iZzA2 = zzdn.zzA(i6 << 3);
                        Zzh = iZzA2 + 4;
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
                        iZzA = zzdn.zzA(i6 << 3);
                        Zzh = iZzA + 8;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzA((iZzo2 >> 31) ^ (iZzo2 + iZzo2));
                        Zzh = iZzA3 + iZzB;
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
                        iZzA3 = zzdn.zzA(i6 << 3);
                        iZzB = zzdn.zzB((jZzt3 >> 63) ^ (jZzt3 + jZzt3));
                        Zzh = iZzA3 + iZzB;
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
                        Zzh = zzdn.zzw(i6, (zzfm) unsafe.getObject(obj, j), zzv(i3));
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
        int iZza2 = i4 + ((zzeh) obj).zzc.zza();
        if (!this.zzh) {
            return iZza2;
        }
        zzdx zzdxVar = ((zzed) obj).zzb;
        int iZzc = zzdxVar.zza.zzc();
        int iZza3 = 0;
        for (int i27 = 0; i27 < iZzc; i27++) {
            Map.Entry entryZzg = zzdxVar.zza.zzg(i27);
            iZza3 += zzdx.zza((zzdw) ((zzgi) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzdxVar.zza.zzd()) {
            iZza3 += zzdx.zza((zzdw) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZza3;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
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
                    jDoubleToLongBits = Double.doubleToLongBits(zzgz.zza(obj, j));
                    byte[] bArr = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzgz.zzb(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = zzgz.zzd(obj, j);
                    byte[] bArr2 = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = zzgz.zzd(obj, j);
                    byte[] bArr3 = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = zzgz.zzd(obj, j);
                    byte[] bArr4 = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    iFloatToIntBits = zzep.zza(zzgz.zzw(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    iFloatToIntBits = ((String) zzgz.zzf(obj, j)).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object objZzf = zzgz.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = i2 + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = zzgz.zzd(obj, j);
                    byte[] bArr5 = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = zzgz.zzd(obj, j);
                    byte[] bArr6 = zzep.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object objZzf2 = zzgz.zzf(obj, j);
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
                    iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j));
                        byte[] bArr7 = zzep.zzb;
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
                        byte[] bArr8 = zzep.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzt(obj, j);
                        byte[] bArr9 = zzep.zzb;
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
                        byte[] bArr10 = zzep.zzb;
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
                        iFloatToIntBits = zzep.zza(zzN(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = ((String) zzgz.zzf(obj, j)).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
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
                        byte[] bArr11 = zzep.zzb;
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
                        byte[] bArr12 = zzep.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzgz.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + ((zzeh) obj).zzc.hashCode();
        return this.zzh ? (iHashCode2 * 53) + ((zzed) obj).zzb.zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0269  */
    /* JADX WARN: Code duplicated, block: B:103:0x0288  */
    /* JADX WARN: Code duplicated, block: B:105:0x028c  */
    /* JADX WARN: Code duplicated, block: B:114:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:121:0x031a  */
    /* JADX WARN: Code duplicated, block: B:122:0x031c  */
    /* JADX WARN: Code duplicated, block: B:153:0x040d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0414  */
    /* JADX WARN: Code duplicated, block: B:164:0x046e  */
    /* JADX WARN: Code duplicated, block: B:167:0x0475  */
    /* JADX WARN: Code duplicated, block: B:169:0x0483  */
    /* JADX WARN: Code duplicated, block: B:172:0x048b  */
    /* JADX WARN: Code duplicated, block: B:174:0x0497  */
    /* JADX WARN: Code duplicated, block: B:175:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:177:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:179:0x04c5 A[LOOP:3: B:178:0x04c3->B:179:0x04c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:184:0x04e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:185:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:187:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:189:0x0502 A[LOOP:4: B:186:0x04f6->B:189:0x0502, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:191:0x0515  */
    /* JADX WARN: Code duplicated, block: B:192:0x051c  */
    /* JADX WARN: Code duplicated, block: B:194:0x0521  */
    /* JADX WARN: Code duplicated, block: B:196:0x052e A[LOOP:5: B:195:0x052c->B:196:0x052e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:201:0x0545 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:202:0x0547  */
    /* JADX WARN: Code duplicated, block: B:204:0x055a  */
    /* JADX WARN: Code duplicated, block: B:206:0x0562 A[LOOP:6: B:203:0x0558->B:206:0x0562, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:209:0x057b  */
    /* JADX WARN: Code duplicated, block: B:211:0x0580  */
    /* JADX WARN: Code duplicated, block: B:212:0x0589 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:213:0x058b  */
    /* JADX WARN: Code duplicated, block: B:216:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:218:0x05aa  */
    /* JADX WARN: Code duplicated, block: B:220:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:222:0x05c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:223:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:225:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:228:0x05de  */
    /* JADX WARN: Code duplicated, block: B:229:0x05e6  */
    /* JADX WARN: Code duplicated, block: B:232:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:235:0x060c  */
    /* JADX WARN: Code duplicated, block: B:238:0x0621  */
    /* JADX WARN: Code duplicated, block: B:241:0x062d  */
    /* JADX WARN: Code duplicated, block: B:243:0x0636  */
    /* JADX WARN: Code duplicated, block: B:245:0x063e  */
    /* JADX WARN: Code duplicated, block: B:247:0x0642 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:248:0x0644  */
    /* JADX WARN: Code duplicated, block: B:249:0x064a  */
    /* JADX WARN: Code duplicated, block: B:252:0x0654  */
    /* JADX WARN: Code duplicated, block: B:254:0x065c  */
    /* JADX WARN: Code duplicated, block: B:256:0x0664  */
    /* JADX WARN: Code duplicated, block: B:258:0x0668 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:270:0x0697  */
    /* JADX WARN: Code duplicated, block: B:272:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:273:0x06c4 A[PHI: r8 r10 r11 r14
  0x06c4: PHI (r8v84 int) = (r8v80 int), (r8v86 int) binds: [B:271:0x069e, B:242:0x0634] A[DONT_GENERATE, DONT_INLINE]
  0x06c4: PHI (r10v69 int) = (r10v66 int), (r10v71 int) binds: [B:271:0x069e, B:242:0x0634] A[DONT_GENERATE, DONT_INLINE]
  0x06c4: PHI (r11v28 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu) = 
  (r11v25 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r11v30 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
 binds: [B:271:0x069e, B:242:0x0634] A[DONT_GENERATE, DONT_INLINE]
  0x06c4: PHI (r14v49 int) = (r14v46 int), (r14v51 int) binds: [B:271:0x069e, B:242:0x0634] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:274:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:276:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:278:0x06e9  */
    /* JADX WARN: Code duplicated, block: B:280:0x06f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:281:0x06f3  */
    /* JADX WARN: Code duplicated, block: B:282:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:285:0x0708  */
    /* JADX WARN: Code duplicated, block: B:287:0x0710  */
    /* JADX WARN: Code duplicated, block: B:289:0x0718 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:297:0x073c  */
    /* JADX WARN: Code duplicated, block: B:299:0x0746 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:300:0x0748  */
    /* JADX WARN: Code duplicated, block: B:301:0x074e  */
    /* JADX WARN: Code duplicated, block: B:303:0x0756  */
    /* JADX WARN: Code duplicated, block: B:305:0x0765  */
    /* JADX WARN: Code duplicated, block: B:307:0x076d  */
    /* JADX WARN: Code duplicated, block: B:309:0x0775 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:313:0x0783  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:323:0x07b0  */
    /* JADX WARN: Code duplicated, block: B:324:0x07b6  */
    /* JADX WARN: Code duplicated, block: B:326:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:328:0x07cc  */
    /* JADX WARN: Code duplicated, block: B:330:0x07d6  */
    /* JADX WARN: Code duplicated, block: B:331:0x07d8  */
    /* JADX WARN: Code duplicated, block: B:337:0x07e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:338:0x07ea  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:340:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:341:0x07fa  */
    /* JADX WARN: Code duplicated, block: B:344:0x0801  */
    /* JADX WARN: Code duplicated, block: B:346:0x0809  */
    /* JADX WARN: Code duplicated, block: B:348:0x0813  */
    /* JADX WARN: Code duplicated, block: B:349:0x0815  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:351:0x081b  */
    /* JADX WARN: Code duplicated, block: B:353:0x0824  */
    /* JADX WARN: Code duplicated, block: B:355:0x0831 A[LOOP:14: B:354:0x082f->B:355:0x0831, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:360:0x0845  */
    /* JADX WARN: Code duplicated, block: B:362:0x0848  */
    /* JADX WARN: Code duplicated, block: B:364:0x0857  */
    /* JADX WARN: Code duplicated, block: B:366:0x085f A[LOOP:15: B:363:0x0855->B:366:0x085f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:367:0x0869  */
    /* JADX WARN: Code duplicated, block: B:369:0x0872  */
    /* JADX WARN: Code duplicated, block: B:36:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:371:0x087f A[LOOP:16: B:370:0x087d->B:371:0x087f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:376:0x0892  */
    /* JADX WARN: Code duplicated, block: B:378:0x0895  */
    /* JADX WARN: Code duplicated, block: B:380:0x08a4  */
    /* JADX WARN: Code duplicated, block: B:382:0x08ac A[LOOP:17: B:379:0x08a2->B:382:0x08ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:383:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:385:0x08bf  */
    /* JADX WARN: Code duplicated, block: B:388:0x08c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:389:0x08cb  */
    /* JADX WARN: Code duplicated, block: B:390:0x08de A[PHI: r4 r7 r8 r14
  0x08de: PHI (r4v34 int) = (r4v30 int), (r4v32 int), (r4v33 int), (r4v36 int) binds: [B:388:0x08c9, B:377:0x0893, B:361:0x0846, B:337:0x07e8] A[DONT_GENERATE, DONT_INLINE]
  0x08de: PHI (r7v12 int) = (r7v9 int), (r7v10 int), (r7v11 int), (r7v14 int) binds: [B:388:0x08c9, B:377:0x0893, B:361:0x0846, B:337:0x07e8] A[DONT_GENERATE, DONT_INLINE]
  0x08de: PHI (r8v64 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu) = 
  (r8v61 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v62 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v63 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v66 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
 binds: [B:388:0x08c9, B:377:0x0893, B:361:0x0846, B:337:0x07e8] A[DONT_GENERATE, DONT_INLINE]
  0x08de: PHI (r14v41 sun.misc.Unsafe) = (r14v38 sun.misc.Unsafe), (r14v39 sun.misc.Unsafe), (r14v40 sun.misc.Unsafe), (r14v43 sun.misc.Unsafe) binds: [B:388:0x08c9, B:377:0x0893, B:361:0x0846, B:337:0x07e8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:391:0x08e4  */
    /* JADX WARN: Code duplicated, block: B:393:0x08f0  */
    /* JADX WARN: Code duplicated, block: B:395:0x08fd A[LOOP:18: B:394:0x08fb->B:395:0x08fd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:400:0x0911 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:401:0x0913  */
    /* JADX WARN: Code duplicated, block: B:403:0x0922  */
    /* JADX WARN: Code duplicated, block: B:405:0x092a A[LOOP:19: B:402:0x0920->B:405:0x092a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:406:0x0934  */
    /* JADX WARN: Code duplicated, block: B:408:0x0940  */
    /* JADX WARN: Code duplicated, block: B:410:0x094d A[LOOP:20: B:409:0x094b->B:410:0x094d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:415:0x0965  */
    /* JADX WARN: Code duplicated, block: B:417:0x0968  */
    /* JADX WARN: Code duplicated, block: B:419:0x097b  */
    /* JADX WARN: Code duplicated, block: B:421:0x0983 A[LOOP:21: B:418:0x0979->B:421:0x0983, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:422:0x0991  */
    /* JADX WARN: Code duplicated, block: B:424:0x099d  */
    /* JADX WARN: Code duplicated, block: B:426:0x09aa A[LOOP:22: B:425:0x09a8->B:426:0x09aa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:431:0x09c1  */
    /* JADX WARN: Code duplicated, block: B:433:0x09c4  */
    /* JADX WARN: Code duplicated, block: B:435:0x09d7  */
    /* JADX WARN: Code duplicated, block: B:437:0x09df A[LOOP:23: B:434:0x09d5->B:437:0x09df, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:439:0x09ef  */
    /* JADX WARN: Code duplicated, block: B:441:0x09f7 A[LOOP:2: B:438:0x09ed->B:441:0x09f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:442:0x0a0b A[PHI: r0 r7 r8 r9 r10 r11 r14
  0x0a0b: PHI (r0v40 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>) = 
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v16 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v39 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
  (r0v1 'this' com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfp<T>)
 binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r7v28 int) = (r7v6 int), (r7v7 int), (r7v8 int), (r7v12 int), (r7v16 int), (r7v18 int), (r7v23 int), (r7v32 int) binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r8v98 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu) = 
  (r8v58 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v59 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v60 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v64 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v69 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v85 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v80 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r8v100 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
 binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r9v59 int) = (r9v38 int), (r9v39 int), (r9v40 int), (r9v44 int), (r9v47 int), (r9v55 int), (r9v57 int), (r9v61 int) binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r10v85 int) = (r10v41 int), (r10v42 int), (r10v43 int), (r10v45 int), (r10v57 int), (r10v70 int), (r9v37 int), (r10v88 int) binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r11v42 int) = (r11v12 int), (r11v13 int), (r11v14 int), (r11v16 int), (r11v18 int), (r11v29 int), (r6v44 int), (r11v45 int) binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]
  0x0a0b: PHI (r14v63 sun.misc.Unsafe) = 
  (r14v35 sun.misc.Unsafe)
  (r14v36 sun.misc.Unsafe)
  (r14v37 sun.misc.Unsafe)
  (r14v41 sun.misc.Unsafe)
  (r14v45 sun.misc.Unsafe)
  (r14v50 sun.misc.Unsafe)
  (r14v58 sun.misc.Unsafe)
  (r14v67 sun.misc.Unsafe)
 binds: [B:432:0x09c2, B:416:0x0966, B:400:0x0911, B:390:0x08de, B:323:0x07b0, B:273:0x06c4, B:240:0x0627, B:173:0x0495] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:452:0x0a5a  */
    /* JADX WARN: Code duplicated, block: B:455:0x0a6b  */
    /* JADX WARN: Code duplicated, block: B:457:0x0a7a  */
    /* JADX WARN: Code duplicated, block: B:459:0x0a92 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:460:0x0a9c  */
    /* JADX WARN: Code duplicated, block: B:462:0x0a9f  */
    /* JADX WARN: Code duplicated, block: B:463:0x0acb  */
    /* JADX WARN: Code duplicated, block: B:465:0x0ad6  */
    /* JADX WARN: Code duplicated, block: B:466:0x0aef  */
    /* JADX WARN: Code duplicated, block: B:468:0x0afa  */
    /* JADX WARN: Code duplicated, block: B:470:0x0b19  */
    /* JADX WARN: Code duplicated, block: B:472:0x0b24  */
    /* JADX WARN: Code duplicated, block: B:478:0x0b46  */
    /* JADX WARN: Code duplicated, block: B:480:0x0b59  */
    /* JADX WARN: Code duplicated, block: B:482:0x0b67  */
    /* JADX WARN: Code duplicated, block: B:484:0x0b7d  */
    /* JADX WARN: Code duplicated, block: B:485:0x0b86  */
    /* JADX WARN: Code duplicated, block: B:487:0x0b94  */
    /* JADX WARN: Code duplicated, block: B:488:0x0bbc  */
    /* JADX WARN: Code duplicated, block: B:490:0x0bc7  */
    /* JADX WARN: Code duplicated, block: B:492:0x0bd2  */
    /* JADX WARN: Code duplicated, block: B:494:0x0bda  */
    /* JADX WARN: Code duplicated, block: B:495:0x0bde  */
    /* JADX WARN: Code duplicated, block: B:504:0x0c02  */
    /* JADX WARN: Code duplicated, block: B:506:0x0c0c  */
    /* JADX WARN: Code duplicated, block: B:508:0x0c16  */
    /* JADX WARN: Code duplicated, block: B:509:0x0c19  */
    /* JADX WARN: Code duplicated, block: B:511:0x0c27  */
    /* JADX WARN: Code duplicated, block: B:513:0x0c32  */
    /* JADX WARN: Code duplicated, block: B:514:0x0c44  */
    /* JADX WARN: Code duplicated, block: B:516:0x0c4f  */
    /* JADX WARN: Code duplicated, block: B:517:0x0c61  */
    /* JADX WARN: Code duplicated, block: B:519:0x0c6b  */
    /* JADX WARN: Code duplicated, block: B:520:0x0c7c  */
    /* JADX WARN: Code duplicated, block: B:522:0x0c86  */
    /* JADX WARN: Code duplicated, block: B:523:0x0c97  */
    /* JADX WARN: Code duplicated, block: B:525:0x0ca2  */
    /* JADX WARN: Code duplicated, block: B:526:0x0cb7  */
    /* JADX WARN: Code duplicated, block: B:528:0x0cc2  */
    /* JADX WARN: Code duplicated, block: B:529:0x0cd7 A[PHI: r1 r12 r13 r14 r19 r23
  0x0cd7: PHI (r1v214 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu) = 
  (r1v196 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v197 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v198 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v199 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v200 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v201 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v202 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v203 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v207 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v209 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
  (r1v215 com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcu)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]
  0x0cd7: PHI (r12v45 int) = 
  (r12v19 int)
  (r12v20 int)
  (r12v21 int)
  (r12v22 int)
  (r12v23 int)
  (r12v24 int)
  (r12v25 int)
  (r12v26 int)
  (r12v30 int)
  (r12v36 int)
  (r12v46 int)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]
  0x0cd7: PHI (r13v81 int) = 
  (r13v60 int)
  (r13v61 int)
  (r13v62 int)
  (r13v63 int)
  (r13v64 int)
  (r13v65 int)
  (r13v66 int)
  (r13v67 int)
  (r13v69 int)
  (r13v73 int)
  (r13v82 int)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]
  0x0cd7: PHI (r14v96 int) = 
  (r14v69 int)
  (r14v70 int)
  (r14v71 int)
  (r14v72 int)
  (r14v73 int)
  (r14v74 int)
  (r14v75 int)
  (r14v76 int)
  (r14v81 int)
  (r14v86 int)
  (r14v97 int)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]
  0x0cd7: PHI (r19v43 int) = 
  (r19v28 int)
  (r19v29 int)
  (r19v30 int)
  (r19v31 int)
  (r19v32 int)
  (r19v33 int)
  (r19v34 int)
  (r19v35 int)
  (r19v37 int)
  (r19v39 int)
  (r19v44 int)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]
  0x0cd7: PHI (r23v22 sun.misc.Unsafe) = 
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
  (r23v16 sun.misc.Unsafe)
  (r23v18 sun.misc.Unsafe)
  (r23v13 sun.misc.Unsafe)
 binds: [B:527:0x0cc0, B:524:0x0ca0, B:521:0x0c84, B:518:0x0c69, B:515:0x0c4d, B:512:0x0c30, B:505:0x0c0a, B:491:0x0bd0, B:484:0x0b7d, B:489:0x0bc1, B:459:0x0a92] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:538:0x0d0b  */
    /* JADX WARN: Code duplicated, block: B:540:0x0d15  */
    /* JADX WARN: Code duplicated, block: B:542:0x0d23  */
    /* JADX WARN: Code duplicated, block: B:543:0x0d3d  */
    /* JADX WARN: Code duplicated, block: B:544:0x0d5e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0177  */
    /* JADX WARN: Code duplicated, block: B:575:0x00c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:577:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:579:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:580:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:0x01d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:0x030f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:583:0x032a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x033e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x0358 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:0x036a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:587:0x0385 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x039c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:589:0x0401 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:590:0x04dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x053f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x0691 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x068b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x067e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x0678 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:0x0736 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x0729 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x07aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x07a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x0797 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x078f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x07e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x083f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x088c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:0x090b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x095f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:0x09bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:0x0a0e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x0a45 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x0cda A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:0x03d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x0133 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:620:0x01cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:0x0308 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:622:0x0322 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:0x0336 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x0351 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:0x0363 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x037d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:627:0x0394 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:628:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:630:0x0123 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:631:0x01bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:632:0x01bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:633:0x01bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x01bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x02f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:636:0x02dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:637:0x02c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:638:0x0255 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:647:0x03b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x044d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x0445 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:0x03fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:0x0a31 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:0x0a23 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x0cf0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:0x0455 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x0a42 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:670:0x0a0c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:672:0x0512 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x0570 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:676:0x0570 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:681:0x0604 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:683:0x05ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:685:0x0670 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:687:0x0684 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:688:0x066a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:693:0x071e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:695:0x072f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:696:0x071a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:702:0x079d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:0x077b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:704:0x0777 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:713:0x08c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:718:0x08c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:721:0x08c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:724:0x0a0c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:0x0a0c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:730:0x0a0c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:732:0x0216 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:735:0x023c A[EDGE_INSN: B:735:0x023c->B:89:0x023c BREAK  A[LOOP:26: B:85:0x0229->B:88:0x0233], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:74:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:76:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:78:0x0204  */
    /* JADX WARN: Code duplicated, block: B:80:0x020c A[LOOP:24: B:77:0x0202->B:80:0x020c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x0218  */
    /* JADX WARN: Code duplicated, block: B:84:0x0222  */
    /* JADX WARN: Code duplicated, block: B:86:0x022b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0233 A[LOOP:26: B:85:0x0229->B:88:0x0233, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x0240  */
    /* JADX WARN: Code duplicated, block: B:92:0x0246 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0248  */
    /* JADX WARN: Code duplicated, block: B:96:0x025d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0265  */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzcu zzcuVar) throws IOException {
        zzfp<T> zzfpVar;
        Unsafe unsafe;
        int i4;
        int i5;
        int i6;
        int iZzk;
        int i7;
        int i8;
        int iZzq;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Unsafe unsafe2;
        int i15;
        int i16;
        Unsafe unsafe3;
        zzfp<T> zzfpVar2;
        int i17;
        zzds zzdsVar;
        zzgs zzgsVar;
        zzef zzefVarZzb;
        int i18;
        int[] iArr;
        int i19;
        int i20;
        int iZzr;
        long j;
        int i21;
        String str;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        boolean z;
        int i28;
        int i29;
        int i30;
        int i31;
        int length;
        int i32;
        char[] cArr;
        int i33;
        int i34;
        int i35;
        byte b;
        int i36;
        int i37;
        String str2;
        byte b2;
        byte b3;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        zzcu zzcuVar2;
        Unsafe unsafe4;
        int i44;
        int i45;
        int i46;
        zzeo zzeoVarZzd;
        int i47;
        int i48;
        Unsafe unsafe5;
        long j2;
        Unsafe unsafe6;
        zzeo zzeoVarZzd2;
        zzeo zzeoVar;
        int i49;
        int i50;
        zzdp zzdpVar;
        int iZzj;
        zzdp zzdpVar2;
        int i51;
        zzdz zzdzVar;
        int iZzj2;
        zzdz zzdzVar2;
        int i52;
        zzfb zzfbVar;
        int iZzj3;
        zzfb zzfbVar2;
        int i53;
        int i54;
        zzfb zzfbVar3;
        int iZzj4;
        zzfb zzfbVar4;
        int i55;
        zzei zzeiVar;
        int iZzj5;
        zzei zzeiVar2;
        int i56;
        zzcw zzcwVar;
        boolean z2;
        int iZzj6;
        boolean z3;
        zzcw zzcwVar2;
        int i57;
        boolean z4;
        int iZzj7;
        int i58;
        int i59;
        int iZzj8;
        int i60;
        int i61;
        int iZzj9;
        int i62;
        Object obj2;
        int iZzj10;
        int i63;
        int i64;
        int iZzj11;
        int i65;
        int iZzj12;
        int i66;
        int i67;
        int iZzl;
        zzel zzelVarZzu;
        zzgs zzgsVar2;
        int i68;
        Iterator it;
        Object objZzn;
        int iIntValue;
        int size;
        Object objZzn2;
        int i69;
        int i70;
        int iIntValue2;
        zzei zzeiVar3;
        int iZzj13;
        int iZzj14;
        zzei zzeiVar4;
        int i71;
        zzfb zzfbVar5;
        int iZzj15;
        zzfb zzfbVar6;
        int iZzj16;
        int i72;
        int i73;
        zzge zzgeVarZzv;
        int iZzj17;
        Unsafe unsafe7;
        Object object;
        Unsafe unsafe8;
        long j3;
        int i74;
        int iZzm;
        boolean z5;
        int iZzj18;
        int i75;
        int i76;
        zzcu zzcuVar3;
        int i77;
        int i78;
        Unsafe unsafe9;
        int iZza;
        int i79;
        zzel zzelVarZzu2;
        this = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        int i80 = i2;
        i3 = i3;
        zzcu zzcuVar4 = zzcuVar;
        zzA(obj);
        Unsafe unsafe10 = zzb;
        int i81 = 0;
        int iZzi = i;
        int i82 = 0;
        int i83 = 0;
        int i84 = 0;
        int i85 = -1;
        int i86 = 1048575;
        while (true) {
            if (iZzi < i80) {
                int i87 = iZzi + 1;
                byte b4 = bArr2[iZzi];
                if (b4 < 0) {
                    iZzk = zzcv.zzk(b4, bArr2, i87, zzcuVar4);
                    i6 = zzcuVar4.zza;
                } else {
                    i6 = b4;
                    iZzk = i87;
                }
                int i88 = i6 >>> 3;
                if (i88 > i85) {
                    iZzq = (i88 < this.zze || i88 > this.zzf) ? -1 : this.zzq(i88, i82 / 3);
                } else {
                    if (i88 < this.zze || i88 > this.zzf) {
                        i7 = -1;
                        i8 = -1;
                    } else {
                        iZzq = this.zzq(i88, i81);
                    }
                    if (i8 == i7) {
                        i18 = i6 & 7;
                        iArr = this.zzc;
                        i19 = iArr[i8 + 1];
                        i20 = i6;
                        iZzr = zzr(i19);
                        j = i19 & 1048575;
                        i21 = i88;
                        str = "Protocol message had invalid UTF-8.";
                        if (iZzr <= 17) {
                            int i89 = iArr[i8 + 2];
                            i22 = 1 << (i89 >>> 20);
                            i23 = i89 & 1048575;
                            if (i23 != i86) {
                                if (i86 != 1048575) {
                                    unsafe10.putInt(obj3, i86, i84);
                                }
                                if (i23 == 1048575) {
                                    i84 = 0;
                                } else {
                                    i84 = unsafe10.getInt(obj3, i23);
                                }
                                i12 = i23;
                            } else {
                                i12 = i86;
                            }
                            switch (iZzr) {
                                case 0:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 1) {
                                        iZzi = i24 + 8;
                                        i84 |= i22;
                                        zzgz.zzo(obj3, j, Double.longBitsToDouble(zzcv.zzq(bArr2, i24)));
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 1:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 5) {
                                        iZzi = i24 + 4;
                                        i84 |= i22;
                                        zzgz.zzp(obj3, j, Float.intBitsToFloat(zzcv.zzc(bArr2, i24)));
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 0) {
                                        int i90 = i84 | i22;
                                        int iZzm2 = zzcv.zzm(bArr2, i24, zzcuVar4);
                                        unsafe10.putLong(obj, j, zzcuVar4.zzb);
                                        i84 = i90;
                                        iZzi = iZzm2;
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 4:
                                case 11:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 0) {
                                        i84 |= i22;
                                        iZzi = zzcv.zzj(bArr2, i24, zzcuVar4);
                                        unsafe10.putInt(obj3, j, zzcuVar4.zza);
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 5:
                                case 14:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 1) {
                                        unsafe10.putLong(obj, j, zzcv.zzq(bArr2, i24));
                                        iZzi = i24 + 8;
                                        i84 = i22 | i84;
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 6:
                                case 13:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 5) {
                                        iZzi = i24 + 4;
                                        i84 |= i22;
                                        unsafe10.putInt(obj3, j, zzcv.zzc(bArr2, i24));
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 7:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 0) {
                                        i84 |= i22;
                                        iZzi = zzcv.zzm(bArr2, i24, zzcuVar4);
                                        if (zzcuVar4.zzb != 0) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        zzgz.zzm(obj3, j, z);
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 8:
                                    i28 = iZzk;
                                    i25 = i8;
                                    i29 = i20;
                                    if (i18 == 2) {
                                        if ((i19 & 536870912) != 0) {
                                            iZzi = zzcv.zzj(bArr2, i28, zzcuVar4);
                                            i30 = zzcuVar4.zza;
                                            if (i30 >= 0) {
                                                throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            i31 = i84 | i22;
                                            if (i30 == 0) {
                                                zzcuVar4.zzc = "";
                                                i34 = i31;
                                                i20 = i29;
                                                i81 = 0;
                                            } else {
                                                length = bArr2.length;
                                                int i91 = zzhe.zza;
                                                if ((iZzi | i30 | ((length - iZzi) - i30)) >= 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzi), Integer.valueOf(i30)));
                                                }
                                                i32 = iZzi + i30;
                                                cArr = new char[i30];
                                                i33 = 0;
                                                while (iZzi < i32) {
                                                    b3 = bArr2[iZzi];
                                                    if (zzha.zzd(b3)) {
                                                        iZzi++;
                                                        cArr[i33] = (char) b3;
                                                        i33++;
                                                    } else {
                                                        while (iZzi < i32) {
                                                            i35 = iZzi + 1;
                                                            b = bArr2[iZzi];
                                                            if (zzha.zzd(b)) {
                                                                cArr[i33] = (char) b;
                                                                i33++;
                                                                iZzi = i35;
                                                                while (iZzi < i32) {
                                                                    b2 = bArr2[iZzi];
                                                                    if (zzha.zzd(b2)) {
                                                                    }
                                                                    iZzi++;
                                                                    cArr[i33] = (char) b2;
                                                                    i33++;
                                                                    break;
                                                                }
                                                            } else {
                                                                i36 = i31;
                                                                if (b < -32) {
                                                                    i37 = i29;
                                                                    str2 = str;
                                                                    if (b < -16) {
                                                                        if (i35 < i32 - 1) {
                                                                            throw new zzer(str2);
                                                                        }
                                                                        zzha.zzb(b, bArr2[i35], bArr2[iZzi + 2], cArr, i33);
                                                                        str = str2;
                                                                        i33++;
                                                                        i31 = i36;
                                                                        i29 = i37;
                                                                        iZzi += 3;
                                                                    } else {
                                                                        if (i35 < i32 - 2) {
                                                                            throw new zzer(str2);
                                                                        }
                                                                        byte b5 = bArr2[i35];
                                                                        int i92 = iZzi + 3;
                                                                        byte b6 = bArr2[iZzi + 2];
                                                                        iZzi += 4;
                                                                        zzha.zza(b, b5, b6, bArr2[i92], cArr, i33);
                                                                        i33 += 2;
                                                                        str = str2;
                                                                        i31 = i36;
                                                                        i29 = i37;
                                                                    }
                                                                } else {
                                                                    if (i35 < i32) {
                                                                        throw new zzer(str);
                                                                    }
                                                                    iZzi += 2;
                                                                    zzha.zzc(b, bArr2[i35], cArr, i33);
                                                                    i33++;
                                                                    i31 = i36;
                                                                }
                                                            }
                                                        }
                                                        i34 = i31;
                                                        i20 = i29;
                                                        i81 = 0;
                                                        zzcuVar4.zzc = new String(cArr, 0, i33);
                                                        iZzi = i32;
                                                    }
                                                }
                                                while (iZzi < i32) {
                                                    i35 = iZzi + 1;
                                                    b = bArr2[iZzi];
                                                    if (zzha.zzd(b)) {
                                                        cArr[i33] = (char) b;
                                                        i33++;
                                                        iZzi = i35;
                                                        while (iZzi < i32) {
                                                            b2 = bArr2[iZzi];
                                                            if (zzha.zzd(b2)) {
                                                            }
                                                            iZzi++;
                                                            cArr[i33] = (char) b2;
                                                            i33++;
                                                            break;
                                                        }
                                                    } else {
                                                        i36 = i31;
                                                        if (b < -32) {
                                                            i37 = i29;
                                                            str2 = str;
                                                            if (b < -16) {
                                                                if (i35 < i32 - 1) {
                                                                    throw new zzer(str2);
                                                                }
                                                                zzha.zzb(b, bArr2[i35], bArr2[iZzi + 2], cArr, i33);
                                                                str = str2;
                                                                i33++;
                                                                i31 = i36;
                                                                i29 = i37;
                                                                iZzi += 3;
                                                            } else {
                                                                if (i35 < i32 - 2) {
                                                                    throw new zzer(str2);
                                                                }
                                                                byte b7 = bArr2[i35];
                                                                int i93 = iZzi + 3;
                                                                byte b8 = bArr2[iZzi + 2];
                                                                iZzi += 4;
                                                                zzha.zza(b, b7, b8, bArr2[i93], cArr, i33);
                                                                i33 += 2;
                                                                str = str2;
                                                                i31 = i36;
                                                                i29 = i37;
                                                            }
                                                        } else {
                                                            if (i35 < i32) {
                                                                throw new zzer(str);
                                                            }
                                                            iZzi += 2;
                                                            zzha.zzc(b, bArr2[i35], cArr, i33);
                                                            i33++;
                                                            i31 = i36;
                                                        }
                                                    }
                                                }
                                                i34 = i31;
                                                i20 = i29;
                                                i81 = 0;
                                                zzcuVar4.zzc = new String(cArr, 0, i33);
                                                iZzi = i32;
                                            }
                                            i84 = i34;
                                        } else {
                                            i20 = i29;
                                            i81 = 0;
                                            i84 |= i22;
                                            iZzi = zzcv.zzh(bArr2, i28, zzcuVar4);
                                        }
                                        unsafe10.putObject(obj3, j, zzcuVar4.zzc);
                                        i82 = i25;
                                        i86 = i12;
                                        i83 = i20;
                                        i85 = i21;
                                        i80 = i2;
                                    } else {
                                        i26 = i28;
                                        i20 = i29;
                                        i27 = i25;
                                        i14 = 0;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 9:
                                    i38 = i8;
                                    i39 = i20;
                                    if (i18 == 2) {
                                        int i94 = i84 | i22;
                                        Object objZzx = this.zzx(obj3, i38);
                                        iZzi = zzcv.zzo(objZzx, this.zzv(i38), bArr, iZzk, i2, zzcuVar);
                                        this.zzF(obj3, i38, objZzx);
                                        i84 = i94;
                                        i83 = i39;
                                        i82 = i38;
                                        i86 = i12;
                                        i85 = i21;
                                        i81 = 0;
                                        i80 = i2;
                                        i3 = i3;
                                    } else {
                                        i26 = iZzk;
                                        i84 = i84;
                                        unsafe10 = unsafe10;
                                        zzcuVar4 = zzcuVar4;
                                        i20 = i39;
                                        i27 = i38;
                                        i21 = i21;
                                        i14 = 0;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 10:
                                    i38 = i8;
                                    i39 = i20;
                                    if (i18 == 2) {
                                        i84 |= i22;
                                        iZzi = zzcv.zza(bArr2, iZzk, zzcuVar4);
                                        unsafe10.putObject(obj3, j, zzcuVar4.zzc);
                                        i83 = i39;
                                        i82 = i38;
                                        i86 = i12;
                                        i85 = i21;
                                        i81 = 0;
                                        i80 = i2;
                                        i3 = i3;
                                    } else {
                                        i26 = iZzk;
                                        i84 = i84;
                                        unsafe10 = unsafe10;
                                        zzcuVar4 = zzcuVar4;
                                        i20 = i39;
                                        i27 = i38;
                                        i21 = i21;
                                        i14 = 0;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 12:
                                    i38 = i8;
                                    i39 = i20;
                                    if (i18 == 0) {
                                        iZzi = zzcv.zzj(bArr2, iZzk, zzcuVar4);
                                        i40 = zzcuVar4.zza;
                                        zzel zzelVarZzu3 = this.zzu(i38);
                                        if ((i19 & Integer.MIN_VALUE) != 0 || zzelVarZzu3 == null || zzelVarZzu3.zza(i40)) {
                                            i84 |= i22;
                                            unsafe10.putInt(obj3, j, i40);
                                        } else {
                                            zzd(obj).zzj(i39, Long.valueOf(i40));
                                        }
                                        i83 = i39;
                                        i82 = i38;
                                        i86 = i12;
                                        i85 = i21;
                                        i81 = 0;
                                        i80 = i2;
                                        i3 = i3;
                                    } else {
                                        i26 = iZzk;
                                        i84 = i84;
                                        unsafe10 = unsafe10;
                                        zzcuVar4 = zzcuVar4;
                                        i20 = i39;
                                        i27 = i38;
                                        i21 = i21;
                                        i14 = 0;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 15:
                                    i38 = i8;
                                    i39 = i20;
                                    if (i18 == 0) {
                                        i84 |= i22;
                                        iZzi = zzcv.zzj(bArr2, iZzk, zzcuVar4);
                                        unsafe10.putInt(obj3, j, zzdj.zzb(zzcuVar4.zza));
                                        i83 = i39;
                                        i82 = i38;
                                        i86 = i12;
                                        i85 = i21;
                                        i81 = 0;
                                        i80 = i2;
                                        i3 = i3;
                                    } else {
                                        i26 = iZzk;
                                        i84 = i84;
                                        unsafe10 = unsafe10;
                                        zzcuVar4 = zzcuVar4;
                                        i20 = i39;
                                        i27 = i38;
                                        i21 = i21;
                                        i14 = 0;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                case 16:
                                    if (i18 == 0) {
                                        int i95 = i84 | i22;
                                        int iZzm3 = zzcv.zzm(bArr2, iZzk, zzcuVar4);
                                        i38 = i8;
                                        i39 = i20;
                                        unsafe10.putLong(obj, j, zzdj.zzc(zzcuVar4.zzb));
                                        i84 = i95;
                                        iZzi = iZzm3;
                                        i83 = i39;
                                        i82 = i38;
                                        i86 = i12;
                                        i85 = i21;
                                        i81 = 0;
                                        i80 = i2;
                                        i3 = i3;
                                    } else {
                                        i26 = iZzk;
                                        i84 = i84;
                                        unsafe10 = unsafe10;
                                        zzcuVar4 = zzcuVar4;
                                        i21 = i21;
                                        i14 = 0;
                                        i27 = i8;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                                default:
                                    i24 = iZzk;
                                    i25 = i8;
                                    i81 = 0;
                                    if (i18 == 3) {
                                        Object objZzx2 = this.zzx(obj3, i25);
                                        i85 = i21;
                                        int iZzn = zzcv.zzn(objZzx2, this.zzv(i25), bArr, i24, i2, (i21 << 3) | 4, zzcuVar);
                                        this.zzF(obj3, i25, objZzx2);
                                        i3 = i3;
                                        zzcuVar4 = zzcuVar;
                                        unsafe10 = unsafe10;
                                        i82 = i25;
                                        i80 = i2;
                                        iZzi = iZzn;
                                        i86 = i12;
                                        i83 = i20;
                                        i81 = 0;
                                        i84 |= i22;
                                    } else {
                                        i26 = i24;
                                        i14 = i81;
                                        i27 = i25;
                                        i4 = i3;
                                        i15 = i21;
                                        unsafe2 = unsafe10;
                                        i11 = i84;
                                        i9 = i26;
                                        i10 = i20;
                                        i13 = i27;
                                    }
                                    break;
                            }
                        } else {
                            i12 = i86;
                            i14 = 0;
                            i41 = i2;
                            i11 = i84;
                            i42 = i8;
                            zzcu zzcuVar5 = zzcuVar4;
                            i43 = iZzk;
                            zzcuVar2 = zzcuVar5;
                            unsafe4 = unsafe10;
                            if (iZzr == 27) {
                                i47 = i21;
                                i48 = i42;
                                if (iZzr <= 49) {
                                    unsafe5 = unsafe4;
                                    j2 = i19;
                                    unsafe6 = zzb;
                                    zzeoVarZzd2 = (zzeo) unsafe6.getObject(obj3, j);
                                    if (zzeoVarZzd2.zzc()) {
                                        int size2 = zzeoVarZzd2.size();
                                        zzeoVarZzd2 = zzeoVarZzd2.zzd(size2 != 0 ? size2 + size2 : 10);
                                        unsafe6.putObject(obj3, j, zzeoVarZzd2);
                                    }
                                    zzeoVar = zzeoVarZzd2;
                                    switch (iZzr) {
                                        case 18:
                                        case 35:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i47 = i47;
                                            i49 = i20;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                int i96 = zzcv.zza;
                                                zzdpVar2 = (zzdp) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i51 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i51) {
                                                    zzdpVar2.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, iZzi)));
                                                    iZzi += 8;
                                                }
                                                if (iZzi != i51) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else if (i18 == 1) {
                                                iZzi = i43 + 8;
                                                int i97 = zzcv.zza;
                                                zzdpVar = (zzdp) zzeoVar;
                                                zzdpVar.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, i43)));
                                                while (iZzi < i41) {
                                                    iZzj = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        zzdpVar.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, iZzj)));
                                                        iZzi = iZzj + 8;
                                                    }
                                                }
                                            } else {
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe11 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe11;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 19:
                                        case 36:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i47 = i47;
                                            i49 = i20;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                int i98 = zzcv.zza;
                                                zzdzVar2 = (zzdz) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i52 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i52) {
                                                    zzdzVar2.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, iZzi)));
                                                    iZzi += 4;
                                                }
                                                if (iZzi != i52) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else if (i18 == 5) {
                                                iZzi = i43 + 4;
                                                int i99 = zzcv.zza;
                                                zzdzVar = (zzdz) zzeoVar;
                                                zzdzVar.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, i43)));
                                                while (iZzi < i41) {
                                                    iZzj2 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        zzdzVar.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, iZzj2)));
                                                        iZzi = iZzj2 + 4;
                                                    }
                                                }
                                            } else {
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe12 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe12;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i47 = i47;
                                            i49 = i20;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                int i100 = zzcv.zza;
                                                zzfbVar2 = (zzfb) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i53 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i53) {
                                                    iZzi = zzcv.zzm(bArr2, iZzi, zzcuVar2);
                                                    zzfbVar2.zzf(zzcuVar2.zzb);
                                                }
                                                if (iZzi != i53) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            } else if (i18 == 0) {
                                                int i101 = zzcv.zza;
                                                zzfbVar = (zzfb) zzeoVar;
                                                iZzi = zzcv.zzm(bArr2, i43, zzcuVar2);
                                                zzfbVar.zzf(zzcuVar2.zzb);
                                                while (iZzi < i41) {
                                                    iZzj3 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        iZzi = zzcv.zzm(bArr2, iZzj3, zzcuVar2);
                                                        zzfbVar.zzf(zzcuVar2.zzb);
                                                    }
                                                }
                                            } else {
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe13 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe13;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            zzcuVar2 = zzcuVar2;
                                            i54 = i47;
                                            i49 = i20;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                iZzi = zzcv.zzg(bArr2, i43, zzeoVar, zzcuVar2);
                                                i47 = i54;
                                                i41 = i41;
                                                i50 = i48;
                                            } else if (i18 == 0) {
                                                i50 = i48;
                                                i47 = i54;
                                                i41 = i41;
                                                iZzi = zzcv.zzl(i49, bArr, i43, i2, zzeoVar, zzcuVar);
                                            } else {
                                                i47 = i54;
                                                i41 = i41;
                                                i50 = i48;
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe14 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe14;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            zzcuVar2 = zzcuVar2;
                                            i54 = i47;
                                            i49 = i20;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                if (i18 == 1) {
                                                    iZzi = i43 + 8;
                                                    int i102 = zzcv.zza;
                                                    zzfbVar3 = (zzfb) zzeoVar;
                                                    zzfbVar3.zzf(zzcv.zzq(bArr2, i43));
                                                    while (iZzi < i41) {
                                                        iZzj4 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                        if (i49 == zzcuVar2.zza) {
                                                            zzfbVar3.zzf(zzcv.zzq(bArr2, iZzj4));
                                                            iZzi = iZzj4 + 8;
                                                        }
                                                    }
                                                }
                                                i47 = i54;
                                                i41 = i41;
                                                i50 = i48;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe15 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe15;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                int i103 = zzcv.zza;
                                                zzfbVar4 = (zzfb) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i55 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i55) {
                                                    zzfbVar4.zzf(zzcv.zzq(bArr2, iZzi));
                                                    iZzi += 8;
                                                }
                                                if (iZzi != i55) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe16 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe16;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            zzcuVar2 = zzcuVar2;
                                            i54 = i47;
                                            i49 = i20;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                if (i18 == 5) {
                                                    iZzi = i43 + 4;
                                                    int i104 = zzcv.zza;
                                                    zzeiVar = (zzei) zzeoVar;
                                                    zzeiVar.zzg(zzcv.zzc(bArr2, i43));
                                                    while (iZzi < i41) {
                                                        iZzj5 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                        if (i49 == zzcuVar2.zza) {
                                                            zzeiVar.zzg(zzcv.zzc(bArr2, iZzj5));
                                                            iZzi = iZzj5 + 4;
                                                        }
                                                    }
                                                }
                                                i47 = i54;
                                                i41 = i41;
                                                i50 = i48;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe17 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe17;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                int i105 = zzcv.zza;
                                                zzeiVar2 = (zzei) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i56 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i56) {
                                                    zzeiVar2.zzg(zzcv.zzc(bArr2, iZzi));
                                                    iZzi += 4;
                                                }
                                                if (iZzi != i56) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe18 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe18;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            zzcuVar2 = zzcuVar2;
                                            i54 = i47;
                                            i49 = i20;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                if (i18 == 0) {
                                                    int i106 = zzcv.zza;
                                                    zzcwVar = (zzcw) zzeoVar;
                                                    iZzi = zzcv.zzm(bArr2, i43, zzcuVar2);
                                                    if (zzcuVar2.zzb != 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    zzcwVar.zze(z2);
                                                    while (iZzi < i41) {
                                                        iZzj6 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                        if (i49 == zzcuVar2.zza) {
                                                            iZzi = zzcv.zzm(bArr2, iZzj6, zzcuVar2);
                                                            if (zzcuVar2.zzb != 0) {
                                                                z3 = true;
                                                            } else {
                                                                z3 = false;
                                                            }
                                                            zzcwVar.zze(z3);
                                                        }
                                                    }
                                                }
                                                i47 = i54;
                                                i41 = i41;
                                                i50 = i48;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe19 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe19;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                int i107 = zzcv.zza;
                                                zzcwVar2 = (zzcw) zzeoVar;
                                                iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i57 = zzcuVar2.zza + iZzi;
                                                while (iZzi < i57) {
                                                    iZzi = zzcv.zzm(bArr2, iZzi, zzcuVar2);
                                                    if (zzcuVar2.zzb != 0) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    zzcwVar2.zze(z4);
                                                }
                                                if (iZzi != i57) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe110 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe110;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 26:
                                            i49 = i20;
                                            i48 = i48;
                                            unsafe5 = unsafe5;
                                            if (i18 == 2) {
                                                i50 = i48;
                                                i47 = i47;
                                                zzcuVar2 = zzcuVar2;
                                                i41 = i41;
                                                iZzi = i43;
                                            } else if ((j2 & 536870912) == 0) {
                                                iZzj9 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i62 = zzcuVar2.zza;
                                                if (i62 >= 0) {
                                                    throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i62 == 0) {
                                                    obj2 = "";
                                                    zzeoVar.add(obj2);
                                                } else {
                                                    obj2 = "";
                                                    zzeoVar.add(new String(bArr2, iZzj9, i62, zzep.zza));
                                                    iZzj9 += i62;
                                                }
                                                while (iZzj9 < i41) {
                                                    iZzj10 = zzcv.zzj(bArr2, iZzj9, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        iZzj9 = zzcv.zzj(bArr2, iZzj10, zzcuVar2);
                                                        i63 = zzcuVar2.zza;
                                                        if (i63 >= 0) {
                                                            throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i63 == 0) {
                                                            zzeoVar.add(obj2);
                                                        } else {
                                                            zzeoVar.add(new String(bArr2, iZzj9, i63, zzep.zza));
                                                            iZzj9 += i63;
                                                        }
                                                    } else {
                                                        i50 = i48;
                                                        iZzi = iZzj9;
                                                        i47 = i47;
                                                        zzcuVar2 = zzcuVar2;
                                                        i41 = i41;
                                                    }
                                                }
                                                i50 = i48;
                                                iZzi = iZzj9;
                                                i47 = i47;
                                                zzcuVar2 = zzcuVar2;
                                                i41 = i41;
                                            } else {
                                                iZzj7 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i58 = zzcuVar2.zza;
                                                if (i58 >= 0) {
                                                    throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i58 == 0) {
                                                    zzeoVar.add("");
                                                } else {
                                                    i59 = iZzj7 + i58;
                                                    if (zzhe.zzg(bArr2, iZzj7, i59)) {
                                                        throw new zzer(str);
                                                    }
                                                    zzeoVar.add(new String(bArr2, iZzj7, i58, zzep.zza));
                                                    iZzj7 = i59;
                                                }
                                                while (iZzj7 < i41) {
                                                    iZzj8 = zzcv.zzj(bArr2, iZzj7, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        iZzj7 = zzcv.zzj(bArr2, iZzj8, zzcuVar2);
                                                        i60 = zzcuVar2.zza;
                                                        if (i60 >= 0) {
                                                            throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i60 == 0) {
                                                            zzeoVar.add("");
                                                        } else {
                                                            i61 = iZzj7 + i60;
                                                            if (zzhe.zzg(bArr2, iZzj7, i61)) {
                                                                throw new zzer(str);
                                                            }
                                                            zzeoVar.add(new String(bArr2, iZzj7, i60, zzep.zza));
                                                            iZzj7 = i61;
                                                        }
                                                    } else {
                                                        iZzi = iZzj7;
                                                        i47 = i47;
                                                        zzcuVar2 = zzcuVar2;
                                                        i41 = i41;
                                                        i50 = i48;
                                                    }
                                                }
                                                iZzi = iZzj7;
                                                i47 = i47;
                                                zzcuVar2 = zzcuVar2;
                                                i41 = i41;
                                                i50 = i48;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe111 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe111;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 27:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i64 = i20;
                                            i48 = i48;
                                            if (i18 == 2) {
                                                this = this;
                                                i49 = i64;
                                                int iZzf = zzcv.zzf(this.zzv(i48), i64, bArr, i43, i2, zzeoVar, zzcuVar);
                                                i50 = i48;
                                                unsafe5 = unsafe5;
                                                i47 = i47;
                                                i41 = i41;
                                                iZzi = iZzf;
                                                zzcuVar2 = zzcuVar2;
                                            } else {
                                                this = this;
                                                i49 = i64;
                                                unsafe5 = unsafe5;
                                                zzcu zzcuVar6 = zzcuVar2;
                                                i41 = i41;
                                                zzcuVar2 = zzcuVar6;
                                                int i108 = i48;
                                                i47 = i47;
                                                i50 = i108;
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe112 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe112;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 28:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i64 = i20;
                                            i48 = i48;
                                            if (i18 == 2) {
                                                iZzj11 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i65 = zzcuVar2.zza;
                                                if (i65 >= 0) {
                                                    throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                }
                                                if (i65 <= bArr2.length - iZzj11) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                if (i65 == 0) {
                                                    zzeoVar.add(zzdf.zzb);
                                                } else {
                                                    zzeoVar.add(zzdf.zzr(bArr2, iZzj11, i65));
                                                    iZzj11 += i65;
                                                }
                                                while (iZzj11 < i41) {
                                                    iZzj12 = zzcv.zzj(bArr2, iZzj11, zzcuVar2);
                                                    if (i64 == zzcuVar2.zza) {
                                                        iZzi = iZzj11;
                                                        i49 = i64;
                                                        zzcu zzcuVar7 = zzcuVar2;
                                                        i41 = i41;
                                                        zzcuVar2 = zzcuVar7;
                                                        int i109 = i48;
                                                        i47 = i47;
                                                        i50 = i109;
                                                        if (iZzi != i43) {
                                                            i43 = i43;
                                                            i3 = i3;
                                                            i83 = i49;
                                                            zzcuVar4 = zzcuVar2;
                                                            i82 = i50;
                                                            i85 = i47;
                                                            i86 = i12;
                                                            i81 = 0;
                                                            i84 = i11;
                                                            obj3 = obj;
                                                            Unsafe unsafe113 = unsafe5;
                                                            i80 = i41;
                                                            unsafe10 = unsafe113;
                                                        } else {
                                                            i43 = i43;
                                                            i4 = i3;
                                                            i9 = iZzi;
                                                            zzcuVar4 = zzcuVar2;
                                                            i13 = i50;
                                                            i15 = i47;
                                                            unsafe2 = unsafe5;
                                                            i10 = i49;
                                                            obj3 = obj;
                                                        }
                                                        break;
                                                    } else {
                                                        iZzj11 = zzcv.zzj(bArr2, iZzj12, zzcuVar2);
                                                        i66 = zzcuVar2.zza;
                                                        if (i66 >= 0) {
                                                            throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                        }
                                                        if (i66 <= bArr2.length - iZzj11) {
                                                            throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                        }
                                                        if (i66 == 0) {
                                                            zzeoVar.add(zzdf.zzb);
                                                        } else {
                                                            zzeoVar.add(zzdf.zzr(bArr2, iZzj11, i66));
                                                            iZzj11 += i66;
                                                        }
                                                    }
                                                }
                                                iZzi = iZzj11;
                                                i49 = i64;
                                                zzcu zzcuVar8 = zzcuVar2;
                                                i41 = i41;
                                                zzcuVar2 = zzcuVar8;
                                                int i1010 = i48;
                                                i47 = i47;
                                                i50 = i1010;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe114 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe114;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            }
                                            this = this;
                                            i49 = i64;
                                            unsafe5 = unsafe5;
                                            zzcu zzcuVar9 = zzcuVar2;
                                            i41 = i41;
                                            zzcuVar2 = zzcuVar9;
                                            int i1011 = i48;
                                            i47 = i47;
                                            i50 = i1011;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe115 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe115;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 30:
                                        case 44:
                                            i67 = i20;
                                            if (i18 == 2) {
                                                iZzl = zzcv.zzg(bArr2, i43, zzeoVar, zzcuVar2);
                                            } else if (i18 == 0) {
                                                this = this;
                                                i49 = i67;
                                                i50 = i48;
                                                unsafe5 = unsafe5;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe116 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe116;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                iZzl = zzcv.zzl(i67, bArr, i43, i2, zzeoVar, zzcuVar);
                                            }
                                            zzelVarZzu = this.zzu(i48);
                                            zzgsVar2 = this.zzl;
                                            int i110 = zzgg.zza;
                                            if (zzelVarZzu != null) {
                                                i68 = iZzl;
                                            } else if (zzeoVar instanceof RandomAccess) {
                                                size = zzeoVar.size();
                                                i68 = iZzl;
                                                objZzn2 = null;
                                                i70 = 0;
                                                for (i69 = 0; i69 < size; i69++) {
                                                    iIntValue2 = ((Integer) zzeoVar.get(i69)).intValue();
                                                    if (zzelVarZzu.zza(iIntValue2)) {
                                                        if (i69 != i70) {
                                                            zzeoVar.set(i70, Integer.valueOf(iIntValue2));
                                                        }
                                                        i70++;
                                                    } else {
                                                        objZzn2 = zzgg.zzn(obj3, i47, iIntValue2, objZzn2, zzgsVar2);
                                                    }
                                                }
                                                if (i70 != size) {
                                                    zzeoVar.subList(i70, size).clear();
                                                }
                                            } else {
                                                i68 = iZzl;
                                                it = zzeoVar.iterator();
                                                objZzn = null;
                                                while (it.hasNext()) {
                                                    iIntValue = ((Integer) it.next()).intValue();
                                                    if (!zzelVarZzu.zza(iIntValue)) {
                                                        objZzn = zzgg.zzn(obj3, i47, iIntValue, objZzn, zzgsVar2);
                                                        it.remove();
                                                    }
                                                }
                                            }
                                            iZzi = i68;
                                            i49 = i67;
                                            zzcu zzcuVar10 = zzcuVar2;
                                            i41 = i41;
                                            zzcuVar2 = zzcuVar10;
                                            int i1012 = i48;
                                            i47 = i47;
                                            i50 = i1012;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe117 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe117;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            i67 = i20;
                                            if (i18 == 2) {
                                                if (i18 == 0) {
                                                    int i111 = zzcv.zza;
                                                    zzeiVar3 = (zzei) zzeoVar;
                                                    iZzj13 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                    zzeiVar3.zzg(zzdj.zzb(zzcuVar2.zza));
                                                    while (iZzj13 < i41) {
                                                        iZzj14 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                        if (i67 == zzcuVar2.zza) {
                                                            iZzj13 = zzcv.zzj(bArr2, iZzj14, zzcuVar2);
                                                            zzeiVar3.zzg(zzdj.zzb(zzcuVar2.zza));
                                                        }
                                                    }
                                                }
                                                i49 = i67;
                                                i50 = i48;
                                                unsafe5 = unsafe5;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe118 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe118;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                int i112 = zzcv.zza;
                                                zzeiVar4 = (zzei) zzeoVar;
                                                iZzj13 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i71 = zzcuVar2.zza + iZzj13;
                                                while (iZzj13 < i71) {
                                                    iZzj13 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                    zzeiVar4.zzg(zzdj.zzb(zzcuVar2.zza));
                                                }
                                                if (iZzj13 != i71) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                            }
                                            iZzi = iZzj13;
                                            i49 = i67;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe119 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe119;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            if (i18 == 2) {
                                                int i113 = zzcv.zza;
                                                zzfbVar6 = (zzfb) zzeoVar;
                                                iZzj16 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                i72 = zzcuVar2.zza + iZzj16;
                                                while (iZzj16 < i72) {
                                                    iZzj16 = zzcv.zzm(bArr2, iZzj16, zzcuVar2);
                                                    zzfbVar6.zzf(zzdj.zzc(zzcuVar2.zzb));
                                                }
                                                if (iZzj16 == i72) {
                                                    throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                }
                                                iZzi = iZzj16;
                                                i49 = i20;
                                            } else if (i18 == 0) {
                                                i49 = i20;
                                                i50 = i48;
                                                unsafe5 = unsafe5;
                                                iZzi = i43;
                                                if (iZzi != i43) {
                                                    i43 = i43;
                                                    i3 = i3;
                                                    i83 = i49;
                                                    zzcuVar4 = zzcuVar2;
                                                    i82 = i50;
                                                    i85 = i47;
                                                    i86 = i12;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    obj3 = obj;
                                                    Unsafe unsafe1110 = unsafe5;
                                                    i80 = i41;
                                                    unsafe10 = unsafe1110;
                                                } else {
                                                    i43 = i43;
                                                    i4 = i3;
                                                    i9 = iZzi;
                                                    zzcuVar4 = zzcuVar2;
                                                    i13 = i50;
                                                    i15 = i47;
                                                    unsafe2 = unsafe5;
                                                    i10 = i49;
                                                    obj3 = obj;
                                                }
                                            } else {
                                                int i114 = zzcv.zza;
                                                zzfbVar5 = (zzfb) zzeoVar;
                                                iZzj13 = zzcv.zzm(bArr2, i43, zzcuVar2);
                                                zzfbVar5.zzf(zzdj.zzc(zzcuVar2.zzb));
                                                while (true) {
                                                    if (iZzj13 < i41) {
                                                        iZzj15 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                        i67 = i20;
                                                        if (i67 == zzcuVar2.zza) {
                                                            iZzj13 = zzcv.zzm(bArr2, iZzj15, zzcuVar2);
                                                            zzfbVar5.zzf(zzdj.zzc(zzcuVar2.zzb));
                                                            i20 = i67;
                                                        }
                                                    } else {
                                                        i67 = i20;
                                                    }
                                                }
                                                iZzi = iZzj13;
                                                i49 = i67;
                                            }
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe1111 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe1111;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                        default:
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i47 = i47;
                                            i49 = i20;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            if (i18 == 3) {
                                                i73 = (i49 & (-8)) | 4;
                                                zzgeVarZzv = this.zzv(i50);
                                                iZzi = zzcv.zzd(zzgeVarZzv, bArr, i43, i2, i73, zzcuVar);
                                                zzeoVar.add(zzcuVar2.zzc);
                                                while (iZzi < i41) {
                                                    iZzj17 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        iZzi = zzcv.zzd(zzgeVarZzv, bArr, iZzj17, i2, i73, zzcuVar);
                                                        zzeoVar.add(zzcuVar2.zzc);
                                                    }
                                                }
                                            } else {
                                                iZzi = i43;
                                            }
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe1112 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe1112;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                            break;
                                    }
                                } else {
                                    i44 = i48;
                                    i46 = i47;
                                    if (iZzr == 50) {
                                        obj3 = obj;
                                        unsafe8 = zzb;
                                        unsafe2 = unsafe4;
                                        j3 = iArr[i44 + 2] & 1048575;
                                        switch (iZzr) {
                                            case 51:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 1) {
                                                    iZzm = i74 + 8;
                                                    unsafe8.putObject(obj3, j, Double.valueOf(Double.longBitsToDouble(zzcv.zzq(bArr2, i74))));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 52:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 5) {
                                                    iZzm = i74 + 4;
                                                    unsafe8.putObject(obj3, j, Float.valueOf(Float.intBitsToFloat(zzcv.zzc(bArr2, i74))));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 0) {
                                                    iZzm = zzcv.zzm(bArr2, i74, zzcuVar4);
                                                    unsafe8.putObject(obj3, j, Long.valueOf(zzcuVar4.zzb));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 0) {
                                                    iZzm = zzcv.zzj(bArr2, i74, zzcuVar4);
                                                    unsafe8.putObject(obj3, j, Integer.valueOf(zzcuVar4.zza));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 1) {
                                                    iZzm = i74 + 8;
                                                    unsafe8.putObject(obj3, j, Long.valueOf(zzcv.zzq(bArr2, i74)));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 5) {
                                                    iZzm = i74 + 4;
                                                    unsafe8.putObject(obj3, j, Integer.valueOf(zzcv.zzc(bArr2, i74)));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 58:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 0) {
                                                    iZzm = zzcv.zzm(bArr2, i74, zzcuVar4);
                                                    if (zzcuVar4.zzb != 0) {
                                                        z5 = true;
                                                    } else {
                                                        z5 = false;
                                                    }
                                                    unsafe8.putObject(obj3, j, Boolean.valueOf(z5));
                                                    unsafe8.putInt(obj3, j3, i15);
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 59:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                if (i18 == 2) {
                                                    iZzj18 = zzcv.zzj(bArr2, i74, zzcuVar4);
                                                    i75 = zzcuVar4.zza;
                                                    if (i75 == 0) {
                                                        unsafe8.putObject(obj3, j, "");
                                                    } else {
                                                        i76 = iZzj18 + i75;
                                                        if ((i19 & 536870912) == 0 && !zzhe.zzg(bArr2, iZzj18, i76)) {
                                                            throw new zzer(str);
                                                        }
                                                        unsafe8.putObject(obj3, j, new String(bArr2, iZzj18, i75, zzep.zza));
                                                        iZzj18 = i76;
                                                    }
                                                    unsafe8.putInt(obj3, j3, i15);
                                                    iZzm = iZzj18;
                                                } else {
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 60:
                                                zzcuVar3 = zzcuVar;
                                                i74 = i43;
                                                i77 = i44;
                                                if (i18 == 2) {
                                                    Object objZzy = this.zzy(obj3, i46, i77);
                                                    i10 = i20;
                                                    int iZzo = zzcv.zzo(objZzy, this.zzv(i77), bArr, i74, i2, zzcuVar);
                                                    this.zzG(obj3, i46, i77, objZzy);
                                                    iZzm = iZzo;
                                                    zzcuVar4 = zzcuVar3;
                                                    i13 = i77;
                                                    i15 = i46;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i10 = i20;
                                                    i13 = i77;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    iZzm = i74;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 61:
                                                zzcuVar3 = zzcuVar;
                                                i78 = i20;
                                                unsafe9 = unsafe2;
                                                i74 = i43;
                                                i77 = i44;
                                                if (i18 == 2) {
                                                    iZza = zzcv.zza(bArr2, i74, zzcuVar3);
                                                    unsafe8.putObject(obj3, j, zzcuVar3.zzc);
                                                    unsafe8.putInt(obj3, j3, i46);
                                                    iZzm = iZza;
                                                    i13 = i77;
                                                    unsafe2 = unsafe9;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    i10 = i78;
                                                    if (iZzm != i74) {
                                                        unsafe2 = unsafe2;
                                                        i3 = i3;
                                                        i85 = i15;
                                                        i83 = i10;
                                                        i86 = i12;
                                                        i82 = i13;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        unsafe10 = unsafe2;
                                                        i80 = i2;
                                                        zzcuVar4 = zzcuVar4;
                                                        iZzi = iZzm;
                                                        this = this;
                                                    } else {
                                                        unsafe2 = unsafe2;
                                                        i9 = iZzm;
                                                        i4 = i3;
                                                    }
                                                } else {
                                                    i13 = i77;
                                                    unsafe2 = unsafe9;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    i10 = i78;
                                                    iZzm = i74;
                                                    if (iZzm != i74) {
                                                        unsafe2 = unsafe2;
                                                        i3 = i3;
                                                        i85 = i15;
                                                        i83 = i10;
                                                        i86 = i12;
                                                        i82 = i13;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        unsafe10 = unsafe2;
                                                        i80 = i2;
                                                        zzcuVar4 = zzcuVar4;
                                                        iZzi = iZzm;
                                                        this = this;
                                                    } else {
                                                        unsafe2 = unsafe2;
                                                        i9 = iZzm;
                                                        i4 = i3;
                                                    }
                                                }
                                                break;
                                            case 63:
                                                zzcuVar3 = zzcuVar;
                                                unsafe9 = unsafe2;
                                                i74 = i43;
                                                i77 = i44;
                                                if (i18 == 0) {
                                                    iZza = zzcv.zzj(bArr2, i74, zzcuVar3);
                                                    i79 = zzcuVar3.zza;
                                                    zzelVarZzu2 = this.zzu(i77);
                                                    if (zzelVarZzu2 != null || zzelVarZzu2.zza(i79)) {
                                                        i78 = i20;
                                                        unsafe8.putObject(obj3, j, Integer.valueOf(i79));
                                                        unsafe8.putInt(obj3, j3, i46);
                                                    } else {
                                                        i78 = i20;
                                                        zzd(obj).zzj(i78, Long.valueOf(i79));
                                                    }
                                                    iZzm = iZza;
                                                    i13 = i77;
                                                    unsafe2 = unsafe9;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    i10 = i78;
                                                    if (iZzm != i74) {
                                                        unsafe2 = unsafe2;
                                                        i3 = i3;
                                                        i85 = i15;
                                                        i83 = i10;
                                                        i86 = i12;
                                                        i82 = i13;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        unsafe10 = unsafe2;
                                                        i80 = i2;
                                                        zzcuVar4 = zzcuVar4;
                                                        iZzi = iZzm;
                                                        this = this;
                                                    } else {
                                                        unsafe2 = unsafe2;
                                                        i9 = iZzm;
                                                        i4 = i3;
                                                    }
                                                }
                                                unsafe2 = unsafe9;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                iZzm = i74;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 66:
                                                zzcuVar3 = zzcuVar;
                                                unsafe9 = unsafe2;
                                                i74 = i43;
                                                i77 = i44;
                                                if (i18 == 0) {
                                                    int iZzj19 = zzcv.zzj(bArr2, i74, zzcuVar3);
                                                    unsafe8.putObject(obj3, j, Integer.valueOf(zzdj.zzb(zzcuVar3.zza)));
                                                    unsafe8.putInt(obj3, j3, i46);
                                                    iZzm = iZzj19;
                                                    unsafe2 = unsafe9;
                                                    i10 = i20;
                                                    i13 = i77;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    if (iZzm != i74) {
                                                        unsafe2 = unsafe2;
                                                        i3 = i3;
                                                        i85 = i15;
                                                        i83 = i10;
                                                        i86 = i12;
                                                        i82 = i13;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        unsafe10 = unsafe2;
                                                        i80 = i2;
                                                        zzcuVar4 = zzcuVar4;
                                                        iZzi = iZzm;
                                                        this = this;
                                                    } else {
                                                        unsafe2 = unsafe2;
                                                        i9 = iZzm;
                                                        i4 = i3;
                                                    }
                                                }
                                                unsafe2 = unsafe9;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                iZzm = i74;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 67:
                                                zzcuVar3 = zzcuVar;
                                                unsafe9 = unsafe2;
                                                i74 = i43;
                                                i77 = i44;
                                                if (i18 == 0) {
                                                    int iZzm4 = zzcv.zzm(bArr2, i74, zzcuVar3);
                                                    unsafe8.putObject(obj3, j, Long.valueOf(zzdj.zzc(zzcuVar3.zzb)));
                                                    unsafe8.putInt(obj3, j3, i46);
                                                    iZzm = iZzm4;
                                                    unsafe2 = unsafe9;
                                                    i10 = i20;
                                                    i13 = i77;
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar3;
                                                    if (iZzm != i74) {
                                                        unsafe2 = unsafe2;
                                                        i3 = i3;
                                                        i85 = i15;
                                                        i83 = i10;
                                                        i86 = i12;
                                                        i82 = i13;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        unsafe10 = unsafe2;
                                                        i80 = i2;
                                                        zzcuVar4 = zzcuVar4;
                                                        iZzi = iZzm;
                                                        this = this;
                                                    } else {
                                                        unsafe2 = unsafe2;
                                                        i9 = iZzm;
                                                        i4 = i3;
                                                    }
                                                }
                                                unsafe2 = unsafe9;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                iZzm = i74;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                            case 68:
                                                if (i18 == 3) {
                                                    Object objZzy2 = this.zzy(obj3, i46, i44);
                                                    int iZzn2 = zzcv.zzn(objZzy2, this.zzv(i44), bArr, i43, i2, (i20 & (-8)) | 4, zzcuVar);
                                                    this.zzG(obj3, i46, i44, objZzy2);
                                                    i15 = i46;
                                                    zzcuVar4 = zzcuVar;
                                                    i74 = i43;
                                                    iZzm = iZzn2;
                                                    i10 = i20;
                                                    i13 = i44;
                                                }
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                    break;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                    break;
                                                }
                                            default:
                                                i10 = i20;
                                                i13 = i44;
                                                i74 = i43;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                iZzm = i74;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                                break;
                                        }
                                    } else {
                                        if (i18 == 2) {
                                            unsafe7 = zzb;
                                            Object objZzw = this.zzw(i44);
                                            object = unsafe7.getObject(obj, j);
                                            if (!((zzfg) object).zze()) {
                                                zzfg zzfgVarZzb = zzfg.zza().zzb();
                                                zzfh.zza(zzfgVarZzb, object);
                                                unsafe7.putObject(obj, j, zzfgVarZzb);
                                            }
                                            throw null;
                                        }
                                        i45 = i20;
                                        obj3 = obj;
                                        i4 = i3;
                                        i9 = i43;
                                        i13 = i44;
                                        unsafe2 = unsafe4;
                                        i15 = i46;
                                        i10 = i45;
                                        zzcuVar4 = zzcuVar2;
                                    }
                                }
                            } else if (i18 == 2) {
                                zzeoVarZzd = (zzeo) unsafe4.getObject(obj3, j);
                                if (!zzeoVarZzd.zzc()) {
                                    int size3 = zzeoVarZzd.size();
                                    zzeoVarZzd = zzeoVarZzd.zzd(size3 != 0 ? size3 + size3 : 10);
                                    unsafe4.putObject(obj3, j, zzeoVarZzd);
                                }
                                zzeo zzeoVar2 = zzeoVarZzd;
                                i85 = i21;
                                int iZzf2 = zzcv.zzf(this.zzv(i42), i20, bArr, i43, i2, zzeoVar2, zzcuVar);
                                i3 = i3;
                                zzcuVar4 = zzcuVar2;
                                unsafe10 = unsafe4;
                                iZzi = iZzf2;
                                i82 = i42;
                                i80 = i41;
                                i86 = i12;
                                i83 = i20;
                                i81 = 0;
                                i84 = i11;
                            } else {
                                i44 = i42;
                                i45 = i20;
                                i46 = i21;
                                i4 = i3;
                                i9 = i43;
                                i13 = i44;
                                unsafe2 = unsafe4;
                                i15 = i46;
                                i10 = i45;
                                zzcuVar4 = zzcuVar2;
                            }
                        }
                    } else {
                        i9 = iZzk;
                        i10 = i6;
                        i11 = i84;
                        i12 = i86;
                        i13 = i81;
                        i14 = i13;
                        unsafe2 = unsafe10;
                        zzcuVar4 = zzcuVar4;
                        i4 = i3;
                        i15 = i88;
                    }
                    if (i10 == i4 || i4 == 0) {
                        if (this.zzh) {
                            zzdsVar = zzcuVar4.zzd;
                            int i115 = zzds.zzb;
                            int i116 = zzfu.zza;
                            if (zzdsVar != zzds.zza) {
                                zzfm zzfmVar = this.zzg;
                                zzgsVar = this.zzl;
                                zzds zzdsVar2 = zzcuVar4.zzd;
                                int i117 = zzcv.zza;
                                zzefVarZzb = zzdsVar2.zzb(zzfmVar, i15);
                                if (zzefVarZzb == null) {
                                    iZzi = zzcv.zzi(i10, bArr, i9, i2, zzd(obj), zzcuVar);
                                    i17 = i2;
                                    zzfpVar2 = this;
                                    i16 = i10;
                                    unsafe3 = unsafe2;
                                } else {
                                    zzed zzedVar = (zzed) obj3;
                                    zzedVar.zzc();
                                    i16 = i10;
                                    iZzi = zzcv.zzb(i10, bArr, i9, i2, zzedVar, zzefVarZzb, zzgsVar, zzcuVar);
                                    unsafe3 = unsafe2;
                                    zzfpVar2 = this;
                                    i17 = i2;
                                }
                            } else {
                                i16 = i10;
                                unsafe3 = unsafe2;
                                zzfpVar2 = this;
                                i17 = i2;
                                iZzi = zzcv.zzi(i16, bArr, i9, i2, zzd(obj), zzcuVar);
                            }
                        } else {
                            i16 = i10;
                            unsafe3 = unsafe2;
                            zzfpVar2 = this;
                            i17 = i2;
                            iZzi = zzcv.zzi(i16, bArr, i9, i2, zzd(obj), zzcuVar);
                        }
                        bArr2 = bArr;
                        zzcuVar4 = zzcuVar;
                        i3 = i4;
                        i80 = i17;
                        unsafe10 = unsafe3;
                        this = zzfpVar2;
                        i85 = i15;
                        i86 = i12;
                        i82 = i13;
                        i81 = i14;
                        i84 = i11;
                        i83 = i16;
                    } else {
                        zzfpVar = this;
                        i5 = i2;
                        iZzi = i9;
                        i83 = i10;
                        i86 = i12;
                        i84 = i11;
                        unsafe = unsafe2;
                    }
                }
                i8 = iZzq;
                i7 = -1;
                if (i8 == i7) {
                    i18 = i6 & 7;
                    iArr = this.zzc;
                    i19 = iArr[i8 + 1];
                    i20 = i6;
                    iZzr = zzr(i19);
                    j = i19 & 1048575;
                    i21 = i88;
                    str = "Protocol message had invalid UTF-8.";
                    if (iZzr <= 17) {
                        int i810 = iArr[i8 + 2];
                        i22 = 1 << (i810 >>> 20);
                        i23 = i810 & 1048575;
                        if (i23 != i86) {
                            if (i86 != 1048575) {
                                unsafe10.putInt(obj3, i86, i84);
                            }
                            if (i23 == 1048575) {
                                i84 = 0;
                            } else {
                                i84 = unsafe10.getInt(obj3, i23);
                            }
                            i12 = i23;
                        } else {
                            i12 = i86;
                        }
                        switch (iZzr) {
                            case 0:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 1) {
                                    iZzi = i24 + 8;
                                    i84 |= i22;
                                    zzgz.zzo(obj3, j, Double.longBitsToDouble(zzcv.zzq(bArr2, i24)));
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 1:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 5) {
                                    iZzi = i24 + 4;
                                    i84 |= i22;
                                    zzgz.zzp(obj3, j, Float.intBitsToFloat(zzcv.zzc(bArr2, i24)));
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 2:
                            case 3:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 0) {
                                    int i910 = i84 | i22;
                                    int iZzm5 = zzcv.zzm(bArr2, i24, zzcuVar4);
                                    unsafe10.putLong(obj, j, zzcuVar4.zzb);
                                    i84 = i910;
                                    iZzi = iZzm5;
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 4:
                            case 11:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 0) {
                                    i84 |= i22;
                                    iZzi = zzcv.zzj(bArr2, i24, zzcuVar4);
                                    unsafe10.putInt(obj3, j, zzcuVar4.zza);
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 5:
                            case 14:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 1) {
                                    unsafe10.putLong(obj, j, zzcv.zzq(bArr2, i24));
                                    iZzi = i24 + 8;
                                    i84 = i22 | i84;
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 6:
                            case 13:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 5) {
                                    iZzi = i24 + 4;
                                    i84 |= i22;
                                    unsafe10.putInt(obj3, j, zzcv.zzc(bArr2, i24));
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 7:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 0) {
                                    i84 |= i22;
                                    iZzi = zzcv.zzm(bArr2, i24, zzcuVar4);
                                    if (zzcuVar4.zzb != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    zzgz.zzm(obj3, j, z);
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 8:
                                i28 = iZzk;
                                i25 = i8;
                                i29 = i20;
                                if (i18 == 2) {
                                    if ((i19 & 536870912) != 0) {
                                        iZzi = zzcv.zzj(bArr2, i28, zzcuVar4);
                                        i30 = zzcuVar4.zza;
                                        if (i30 >= 0) {
                                            throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        i31 = i84 | i22;
                                        if (i30 == 0) {
                                            zzcuVar4.zzc = "";
                                            i34 = i31;
                                            i20 = i29;
                                            i81 = 0;
                                        } else {
                                            length = bArr2.length;
                                            int i911 = zzhe.zza;
                                            if ((iZzi | i30 | ((length - iZzi) - i30)) >= 0) {
                                                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzi), Integer.valueOf(i30)));
                                            }
                                            i32 = iZzi + i30;
                                            cArr = new char[i30];
                                            i33 = 0;
                                            while (iZzi < i32) {
                                                b3 = bArr2[iZzi];
                                                if (zzha.zzd(b3)) {
                                                    iZzi++;
                                                    cArr[i33] = (char) b3;
                                                    i33++;
                                                } else {
                                                    while (iZzi < i32) {
                                                        i35 = iZzi + 1;
                                                        b = bArr2[iZzi];
                                                        if (zzha.zzd(b)) {
                                                            cArr[i33] = (char) b;
                                                            i33++;
                                                            iZzi = i35;
                                                            while (iZzi < i32) {
                                                                b2 = bArr2[iZzi];
                                                                if (zzha.zzd(b2)) {
                                                                }
                                                                iZzi++;
                                                                cArr[i33] = (char) b2;
                                                                i33++;
                                                                break;
                                                            }
                                                        } else {
                                                            i36 = i31;
                                                            if (b < -32) {
                                                                i37 = i29;
                                                                str2 = str;
                                                                if (b < -16) {
                                                                    if (i35 < i32 - 1) {
                                                                        throw new zzer(str2);
                                                                    }
                                                                    zzha.zzb(b, bArr2[i35], bArr2[iZzi + 2], cArr, i33);
                                                                    str = str2;
                                                                    i33++;
                                                                    i31 = i36;
                                                                    i29 = i37;
                                                                    iZzi += 3;
                                                                } else {
                                                                    if (i35 < i32 - 2) {
                                                                        throw new zzer(str2);
                                                                    }
                                                                    byte b9 = bArr2[i35];
                                                                    int i912 = iZzi + 3;
                                                                    byte b10 = bArr2[iZzi + 2];
                                                                    iZzi += 4;
                                                                    zzha.zza(b, b9, b10, bArr2[i912], cArr, i33);
                                                                    i33 += 2;
                                                                    str = str2;
                                                                    i31 = i36;
                                                                    i29 = i37;
                                                                }
                                                            } else {
                                                                if (i35 < i32) {
                                                                    throw new zzer(str);
                                                                }
                                                                iZzi += 2;
                                                                zzha.zzc(b, bArr2[i35], cArr, i33);
                                                                i33++;
                                                                i31 = i36;
                                                            }
                                                        }
                                                    }
                                                    i34 = i31;
                                                    i20 = i29;
                                                    i81 = 0;
                                                    zzcuVar4.zzc = new String(cArr, 0, i33);
                                                    iZzi = i32;
                                                }
                                            }
                                            while (iZzi < i32) {
                                                i35 = iZzi + 1;
                                                b = bArr2[iZzi];
                                                if (zzha.zzd(b)) {
                                                    cArr[i33] = (char) b;
                                                    i33++;
                                                    iZzi = i35;
                                                    while (iZzi < i32) {
                                                        b2 = bArr2[iZzi];
                                                        if (zzha.zzd(b2)) {
                                                        }
                                                        iZzi++;
                                                        cArr[i33] = (char) b2;
                                                        i33++;
                                                        break;
                                                    }
                                                } else {
                                                    i36 = i31;
                                                    if (b < -32) {
                                                        i37 = i29;
                                                        str2 = str;
                                                        if (b < -16) {
                                                            if (i35 < i32 - 1) {
                                                                throw new zzer(str2);
                                                            }
                                                            zzha.zzb(b, bArr2[i35], bArr2[iZzi + 2], cArr, i33);
                                                            str = str2;
                                                            i33++;
                                                            i31 = i36;
                                                            i29 = i37;
                                                            iZzi += 3;
                                                        } else {
                                                            if (i35 < i32 - 2) {
                                                                throw new zzer(str2);
                                                            }
                                                            byte b11 = bArr2[i35];
                                                            int i913 = iZzi + 3;
                                                            byte b12 = bArr2[iZzi + 2];
                                                            iZzi += 4;
                                                            zzha.zza(b, b11, b12, bArr2[i913], cArr, i33);
                                                            i33 += 2;
                                                            str = str2;
                                                            i31 = i36;
                                                            i29 = i37;
                                                        }
                                                    } else {
                                                        if (i35 < i32) {
                                                            throw new zzer(str);
                                                        }
                                                        iZzi += 2;
                                                        zzha.zzc(b, bArr2[i35], cArr, i33);
                                                        i33++;
                                                        i31 = i36;
                                                    }
                                                }
                                            }
                                            i34 = i31;
                                            i20 = i29;
                                            i81 = 0;
                                            zzcuVar4.zzc = new String(cArr, 0, i33);
                                            iZzi = i32;
                                        }
                                        i84 = i34;
                                    } else {
                                        i20 = i29;
                                        i81 = 0;
                                        i84 |= i22;
                                        iZzi = zzcv.zzh(bArr2, i28, zzcuVar4);
                                    }
                                    unsafe10.putObject(obj3, j, zzcuVar4.zzc);
                                    i82 = i25;
                                    i86 = i12;
                                    i83 = i20;
                                    i85 = i21;
                                    i80 = i2;
                                } else {
                                    i26 = i28;
                                    i20 = i29;
                                    i27 = i25;
                                    i14 = 0;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 9:
                                i38 = i8;
                                i39 = i20;
                                if (i18 == 2) {
                                    int i914 = i84 | i22;
                                    Object objZzx3 = this.zzx(obj3, i38);
                                    iZzi = zzcv.zzo(objZzx3, this.zzv(i38), bArr, iZzk, i2, zzcuVar);
                                    this.zzF(obj3, i38, objZzx3);
                                    i84 = i914;
                                    i83 = i39;
                                    i82 = i38;
                                    i86 = i12;
                                    i85 = i21;
                                    i81 = 0;
                                    i80 = i2;
                                    i3 = i3;
                                } else {
                                    i26 = iZzk;
                                    i84 = i84;
                                    unsafe10 = unsafe10;
                                    zzcuVar4 = zzcuVar4;
                                    i20 = i39;
                                    i27 = i38;
                                    i21 = i21;
                                    i14 = 0;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 10:
                                i38 = i8;
                                i39 = i20;
                                if (i18 == 2) {
                                    i84 |= i22;
                                    iZzi = zzcv.zza(bArr2, iZzk, zzcuVar4);
                                    unsafe10.putObject(obj3, j, zzcuVar4.zzc);
                                    i83 = i39;
                                    i82 = i38;
                                    i86 = i12;
                                    i85 = i21;
                                    i81 = 0;
                                    i80 = i2;
                                    i3 = i3;
                                } else {
                                    i26 = iZzk;
                                    i84 = i84;
                                    unsafe10 = unsafe10;
                                    zzcuVar4 = zzcuVar4;
                                    i20 = i39;
                                    i27 = i38;
                                    i21 = i21;
                                    i14 = 0;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 12:
                                i38 = i8;
                                i39 = i20;
                                if (i18 == 0) {
                                    iZzi = zzcv.zzj(bArr2, iZzk, zzcuVar4);
                                    i40 = zzcuVar4.zza;
                                    zzel zzelVarZzu4 = this.zzu(i38);
                                    if ((i19 & Integer.MIN_VALUE) != 0) {
                                        i84 |= i22;
                                        unsafe10.putInt(obj3, j, i40);
                                    } else {
                                        i84 |= i22;
                                        unsafe10.putInt(obj3, j, i40);
                                    }
                                    i83 = i39;
                                    i82 = i38;
                                    i86 = i12;
                                    i85 = i21;
                                    i81 = 0;
                                    i80 = i2;
                                    i3 = i3;
                                } else {
                                    i26 = iZzk;
                                    i84 = i84;
                                    unsafe10 = unsafe10;
                                    zzcuVar4 = zzcuVar4;
                                    i20 = i39;
                                    i27 = i38;
                                    i21 = i21;
                                    i14 = 0;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 15:
                                i38 = i8;
                                i39 = i20;
                                if (i18 == 0) {
                                    i84 |= i22;
                                    iZzi = zzcv.zzj(bArr2, iZzk, zzcuVar4);
                                    unsafe10.putInt(obj3, j, zzdj.zzb(zzcuVar4.zza));
                                    i83 = i39;
                                    i82 = i38;
                                    i86 = i12;
                                    i85 = i21;
                                    i81 = 0;
                                    i80 = i2;
                                    i3 = i3;
                                } else {
                                    i26 = iZzk;
                                    i84 = i84;
                                    unsafe10 = unsafe10;
                                    zzcuVar4 = zzcuVar4;
                                    i20 = i39;
                                    i27 = i38;
                                    i21 = i21;
                                    i14 = 0;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            case 16:
                                if (i18 == 0) {
                                    int i915 = i84 | i22;
                                    int iZzm6 = zzcv.zzm(bArr2, iZzk, zzcuVar4);
                                    i38 = i8;
                                    i39 = i20;
                                    unsafe10.putLong(obj, j, zzdj.zzc(zzcuVar4.zzb));
                                    i84 = i915;
                                    iZzi = iZzm6;
                                    i83 = i39;
                                    i82 = i38;
                                    i86 = i12;
                                    i85 = i21;
                                    i81 = 0;
                                    i80 = i2;
                                    i3 = i3;
                                } else {
                                    i26 = iZzk;
                                    i84 = i84;
                                    unsafe10 = unsafe10;
                                    zzcuVar4 = zzcuVar4;
                                    i21 = i21;
                                    i14 = 0;
                                    i27 = i8;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                            default:
                                i24 = iZzk;
                                i25 = i8;
                                i81 = 0;
                                if (i18 == 3) {
                                    Object objZzx4 = this.zzx(obj3, i25);
                                    i85 = i21;
                                    int iZzn3 = zzcv.zzn(objZzx4, this.zzv(i25), bArr, i24, i2, (i21 << 3) | 4, zzcuVar);
                                    this.zzF(obj3, i25, objZzx4);
                                    i3 = i3;
                                    zzcuVar4 = zzcuVar;
                                    unsafe10 = unsafe10;
                                    i82 = i25;
                                    i80 = i2;
                                    iZzi = iZzn3;
                                    i86 = i12;
                                    i83 = i20;
                                    i81 = 0;
                                    i84 |= i22;
                                } else {
                                    i26 = i24;
                                    i14 = i81;
                                    i27 = i25;
                                    i4 = i3;
                                    i15 = i21;
                                    unsafe2 = unsafe10;
                                    i11 = i84;
                                    i9 = i26;
                                    i10 = i20;
                                    i13 = i27;
                                }
                                break;
                        }
                    } else {
                        i12 = i86;
                        i14 = 0;
                        i41 = i2;
                        i11 = i84;
                        i42 = i8;
                        zzcu zzcuVar11 = zzcuVar4;
                        i43 = iZzk;
                        zzcuVar2 = zzcuVar11;
                        unsafe4 = unsafe10;
                        if (iZzr == 27) {
                            i47 = i21;
                            i48 = i42;
                            if (iZzr <= 49) {
                                unsafe5 = unsafe4;
                                j2 = i19;
                                unsafe6 = zzb;
                                zzeoVarZzd2 = (zzeo) unsafe6.getObject(obj3, j);
                                if (zzeoVarZzd2.zzc()) {
                                    int size4 = zzeoVarZzd2.size();
                                    zzeoVarZzd2 = zzeoVarZzd2.zzd(size4 != 0 ? size4 + size4 : 10);
                                    unsafe6.putObject(obj3, j, zzeoVarZzd2);
                                }
                                zzeoVar = zzeoVarZzd2;
                                switch (iZzr) {
                                    case 18:
                                    case 35:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i47 = i47;
                                        i49 = i20;
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            int i916 = zzcv.zza;
                                            zzdpVar2 = (zzdp) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i51 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i51) {
                                                zzdpVar2.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, iZzi)));
                                                iZzi += 8;
                                            }
                                            if (iZzi != i51) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i18 == 1) {
                                            iZzi = i43 + 8;
                                            int i917 = zzcv.zza;
                                            zzdpVar = (zzdp) zzeoVar;
                                            zzdpVar.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, i43)));
                                            while (iZzi < i41) {
                                                iZzj = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    zzdpVar.zzf(Double.longBitsToDouble(zzcv.zzq(bArr2, iZzj)));
                                                    iZzi = iZzj + 8;
                                                }
                                            }
                                        } else {
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe1113 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe1113;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i47 = i47;
                                        i49 = i20;
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            int i918 = zzcv.zza;
                                            zzdzVar2 = (zzdz) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i52 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i52) {
                                                zzdzVar2.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, iZzi)));
                                                iZzi += 4;
                                            }
                                            if (iZzi != i52) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i18 == 5) {
                                            iZzi = i43 + 4;
                                            int i919 = zzcv.zza;
                                            zzdzVar = (zzdz) zzeoVar;
                                            zzdzVar.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, i43)));
                                            while (iZzi < i41) {
                                                iZzj2 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    zzdzVar.zzh(Float.intBitsToFloat(zzcv.zzc(bArr2, iZzj2)));
                                                    iZzi = iZzj2 + 4;
                                                }
                                            }
                                        } else {
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe1114 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe1114;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i47 = i47;
                                        i49 = i20;
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            int i1013 = zzcv.zza;
                                            zzfbVar2 = (zzfb) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i53 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i53) {
                                                iZzi = zzcv.zzm(bArr2, iZzi, zzcuVar2);
                                                zzfbVar2.zzf(zzcuVar2.zzb);
                                            }
                                            if (iZzi != i53) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        } else if (i18 == 0) {
                                            int i1014 = zzcv.zza;
                                            zzfbVar = (zzfb) zzeoVar;
                                            iZzi = zzcv.zzm(bArr2, i43, zzcuVar2);
                                            zzfbVar.zzf(zzcuVar2.zzb);
                                            while (iZzi < i41) {
                                                iZzj3 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    iZzi = zzcv.zzm(bArr2, iZzj3, zzcuVar2);
                                                    zzfbVar.zzf(zzcuVar2.zzb);
                                                }
                                            }
                                        } else {
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe1115 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe1115;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        zzcuVar2 = zzcuVar2;
                                        i54 = i47;
                                        i49 = i20;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            iZzi = zzcv.zzg(bArr2, i43, zzeoVar, zzcuVar2);
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                        } else if (i18 == 0) {
                                            i50 = i48;
                                            i47 = i54;
                                            i41 = i41;
                                            iZzi = zzcv.zzl(i49, bArr, i43, i2, zzeoVar, zzcuVar);
                                        } else {
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe1116 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe1116;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        zzcuVar2 = zzcuVar2;
                                        i54 = i47;
                                        i49 = i20;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            if (i18 == 1) {
                                                iZzi = i43 + 8;
                                                int i1015 = zzcv.zza;
                                                zzfbVar3 = (zzfb) zzeoVar;
                                                zzfbVar3.zzf(zzcv.zzq(bArr2, i43));
                                                while (iZzi < i41) {
                                                    iZzj4 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        zzfbVar3.zzf(zzcv.zzq(bArr2, iZzj4));
                                                        iZzi = iZzj4 + 8;
                                                    }
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe1117 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe1117;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            int i1016 = zzcv.zza;
                                            zzfbVar4 = (zzfb) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i55 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i55) {
                                                zzfbVar4.zzf(zzcv.zzq(bArr2, iZzi));
                                                iZzi += 8;
                                            }
                                            if (iZzi != i55) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i47 = i54;
                                        i41 = i41;
                                        i50 = i48;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe1118 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe1118;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        zzcuVar2 = zzcuVar2;
                                        i54 = i47;
                                        i49 = i20;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            if (i18 == 5) {
                                                iZzi = i43 + 4;
                                                int i1017 = zzcv.zza;
                                                zzeiVar = (zzei) zzeoVar;
                                                zzeiVar.zzg(zzcv.zzc(bArr2, i43));
                                                while (iZzi < i41) {
                                                    iZzj5 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        zzeiVar.zzg(zzcv.zzc(bArr2, iZzj5));
                                                        iZzi = iZzj5 + 4;
                                                    }
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe1119 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe1119;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            int i1018 = zzcv.zza;
                                            zzeiVar2 = (zzei) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i56 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i56) {
                                                zzeiVar2.zzg(zzcv.zzc(bArr2, iZzi));
                                                iZzi += 4;
                                            }
                                            if (iZzi != i56) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i47 = i54;
                                        i41 = i41;
                                        i50 = i48;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11110 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11110;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        zzcuVar2 = zzcuVar2;
                                        i54 = i47;
                                        i49 = i20;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            if (i18 == 0) {
                                                int i1019 = zzcv.zza;
                                                zzcwVar = (zzcw) zzeoVar;
                                                iZzi = zzcv.zzm(bArr2, i43, zzcuVar2);
                                                if (zzcuVar2.zzb != 0) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                zzcwVar.zze(z2);
                                                while (iZzi < i41) {
                                                    iZzj6 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                    if (i49 == zzcuVar2.zza) {
                                                        iZzi = zzcv.zzm(bArr2, iZzj6, zzcuVar2);
                                                        if (zzcuVar2.zzb != 0) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        zzcwVar.zze(z3);
                                                    }
                                                }
                                            }
                                            i47 = i54;
                                            i41 = i41;
                                            i50 = i48;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe11111 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe11111;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            int i1020 = zzcv.zza;
                                            zzcwVar2 = (zzcw) zzeoVar;
                                            iZzi = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i57 = zzcuVar2.zza + iZzi;
                                            while (iZzi < i57) {
                                                iZzi = zzcv.zzm(bArr2, iZzi, zzcuVar2);
                                                if (zzcuVar2.zzb != 0) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                zzcwVar2.zze(z4);
                                            }
                                            if (iZzi != i57) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        i47 = i54;
                                        i41 = i41;
                                        i50 = i48;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11112 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11112;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 26:
                                        i49 = i20;
                                        i48 = i48;
                                        unsafe5 = unsafe5;
                                        if (i18 == 2) {
                                            i50 = i48;
                                            i47 = i47;
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            iZzi = i43;
                                        } else if ((j2 & 536870912) == 0) {
                                            iZzj9 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i62 = zzcuVar2.zza;
                                            if (i62 >= 0) {
                                                throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i62 == 0) {
                                                obj2 = "";
                                                zzeoVar.add(obj2);
                                            } else {
                                                obj2 = "";
                                                zzeoVar.add(new String(bArr2, iZzj9, i62, zzep.zza));
                                                iZzj9 += i62;
                                            }
                                            while (iZzj9 < i41) {
                                                iZzj10 = zzcv.zzj(bArr2, iZzj9, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    iZzj9 = zzcv.zzj(bArr2, iZzj10, zzcuVar2);
                                                    i63 = zzcuVar2.zza;
                                                    if (i63 >= 0) {
                                                        throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i63 == 0) {
                                                        zzeoVar.add(obj2);
                                                    } else {
                                                        zzeoVar.add(new String(bArr2, iZzj9, i63, zzep.zza));
                                                        iZzj9 += i63;
                                                    }
                                                } else {
                                                    i50 = i48;
                                                    iZzi = iZzj9;
                                                    i47 = i47;
                                                    zzcuVar2 = zzcuVar2;
                                                    i41 = i41;
                                                }
                                            }
                                            i50 = i48;
                                            iZzi = iZzj9;
                                            i47 = i47;
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                        } else {
                                            iZzj7 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i58 = zzcuVar2.zza;
                                            if (i58 >= 0) {
                                                throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i58 == 0) {
                                                zzeoVar.add("");
                                            } else {
                                                i59 = iZzj7 + i58;
                                                if (zzhe.zzg(bArr2, iZzj7, i59)) {
                                                    throw new zzer(str);
                                                }
                                                zzeoVar.add(new String(bArr2, iZzj7, i58, zzep.zza));
                                                iZzj7 = i59;
                                            }
                                            while (iZzj7 < i41) {
                                                iZzj8 = zzcv.zzj(bArr2, iZzj7, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    iZzj7 = zzcv.zzj(bArr2, iZzj8, zzcuVar2);
                                                    i60 = zzcuVar2.zza;
                                                    if (i60 >= 0) {
                                                        throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i60 == 0) {
                                                        zzeoVar.add("");
                                                    } else {
                                                        i61 = iZzj7 + i60;
                                                        if (zzhe.zzg(bArr2, iZzj7, i61)) {
                                                            throw new zzer(str);
                                                        }
                                                        zzeoVar.add(new String(bArr2, iZzj7, i60, zzep.zza));
                                                        iZzj7 = i61;
                                                    }
                                                } else {
                                                    iZzi = iZzj7;
                                                    i47 = i47;
                                                    zzcuVar2 = zzcuVar2;
                                                    i41 = i41;
                                                    i50 = i48;
                                                }
                                            }
                                            iZzi = iZzj7;
                                            i47 = i47;
                                            zzcuVar2 = zzcuVar2;
                                            i41 = i41;
                                            i50 = i48;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11113 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11113;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 27:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i64 = i20;
                                        i48 = i48;
                                        if (i18 == 2) {
                                            this = this;
                                            i49 = i64;
                                            int iZzf3 = zzcv.zzf(this.zzv(i48), i64, bArr, i43, i2, zzeoVar, zzcuVar);
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            i47 = i47;
                                            i41 = i41;
                                            iZzi = iZzf3;
                                            zzcuVar2 = zzcuVar2;
                                        } else {
                                            this = this;
                                            i49 = i64;
                                            unsafe5 = unsafe5;
                                            zzcu zzcuVar12 = zzcuVar2;
                                            i41 = i41;
                                            zzcuVar2 = zzcuVar12;
                                            int i10110 = i48;
                                            i47 = i47;
                                            i50 = i10110;
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11114 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11114;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 28:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i64 = i20;
                                        i48 = i48;
                                        if (i18 == 2) {
                                            iZzj11 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i65 = zzcuVar2.zza;
                                            if (i65 >= 0) {
                                                throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i65 <= bArr2.length - iZzj11) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i65 == 0) {
                                                zzeoVar.add(zzdf.zzb);
                                            } else {
                                                zzeoVar.add(zzdf.zzr(bArr2, iZzj11, i65));
                                                iZzj11 += i65;
                                            }
                                            while (iZzj11 < i41) {
                                                iZzj12 = zzcv.zzj(bArr2, iZzj11, zzcuVar2);
                                                if (i64 == zzcuVar2.zza) {
                                                    iZzi = iZzj11;
                                                    i49 = i64;
                                                    zzcu zzcuVar13 = zzcuVar2;
                                                    i41 = i41;
                                                    zzcuVar2 = zzcuVar13;
                                                    int i10111 = i48;
                                                    i47 = i47;
                                                    i50 = i10111;
                                                    if (iZzi != i43) {
                                                        i43 = i43;
                                                        i3 = i3;
                                                        i83 = i49;
                                                        zzcuVar4 = zzcuVar2;
                                                        i82 = i50;
                                                        i85 = i47;
                                                        i86 = i12;
                                                        i81 = 0;
                                                        i84 = i11;
                                                        obj3 = obj;
                                                        Unsafe unsafe11115 = unsafe5;
                                                        i80 = i41;
                                                        unsafe10 = unsafe11115;
                                                    } else {
                                                        i43 = i43;
                                                        i4 = i3;
                                                        i9 = iZzi;
                                                        zzcuVar4 = zzcuVar2;
                                                        i13 = i50;
                                                        i15 = i47;
                                                        unsafe2 = unsafe5;
                                                        i10 = i49;
                                                        obj3 = obj;
                                                    }
                                                    break;
                                                } else {
                                                    iZzj11 = zzcv.zzj(bArr2, iZzj12, zzcuVar2);
                                                    i66 = zzcuVar2.zza;
                                                    if (i66 >= 0) {
                                                        throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i66 <= bArr2.length - iZzj11) {
                                                        throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i66 == 0) {
                                                        zzeoVar.add(zzdf.zzb);
                                                    } else {
                                                        zzeoVar.add(zzdf.zzr(bArr2, iZzj11, i66));
                                                        iZzj11 += i66;
                                                    }
                                                }
                                            }
                                            iZzi = iZzj11;
                                            i49 = i64;
                                            zzcu zzcuVar14 = zzcuVar2;
                                            i41 = i41;
                                            zzcuVar2 = zzcuVar14;
                                            int i10112 = i48;
                                            i47 = i47;
                                            i50 = i10112;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe11116 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe11116;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        }
                                        this = this;
                                        i49 = i64;
                                        unsafe5 = unsafe5;
                                        zzcu zzcuVar15 = zzcuVar2;
                                        i41 = i41;
                                        zzcuVar2 = zzcuVar15;
                                        int i10113 = i48;
                                        i47 = i47;
                                        i50 = i10113;
                                        iZzi = i43;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11117 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11117;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i67 = i20;
                                        if (i18 == 2) {
                                            iZzl = zzcv.zzg(bArr2, i43, zzeoVar, zzcuVar2);
                                        } else if (i18 == 0) {
                                            this = this;
                                            i49 = i67;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe11118 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe11118;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            iZzl = zzcv.zzl(i67, bArr, i43, i2, zzeoVar, zzcuVar);
                                        }
                                        zzelVarZzu = this.zzu(i48);
                                        zzgsVar2 = this.zzl;
                                        int i118 = zzgg.zza;
                                        if (zzelVarZzu != null) {
                                            i68 = iZzl;
                                        } else if (zzeoVar instanceof RandomAccess) {
                                            size = zzeoVar.size();
                                            i68 = iZzl;
                                            objZzn2 = null;
                                            i70 = 0;
                                            while (i69 < size) {
                                                iIntValue2 = ((Integer) zzeoVar.get(i69)).intValue();
                                                if (zzelVarZzu.zza(iIntValue2)) {
                                                    if (i69 != i70) {
                                                        zzeoVar.set(i70, Integer.valueOf(iIntValue2));
                                                    }
                                                    i70++;
                                                } else {
                                                    objZzn2 = zzgg.zzn(obj3, i47, iIntValue2, objZzn2, zzgsVar2);
                                                }
                                            }
                                            if (i70 != size) {
                                                zzeoVar.subList(i70, size).clear();
                                            }
                                        } else {
                                            i68 = iZzl;
                                            it = zzeoVar.iterator();
                                            objZzn = null;
                                            while (it.hasNext()) {
                                                iIntValue = ((Integer) it.next()).intValue();
                                                if (!zzelVarZzu.zza(iIntValue)) {
                                                    objZzn = zzgg.zzn(obj3, i47, iIntValue, objZzn, zzgsVar2);
                                                    it.remove();
                                                }
                                            }
                                        }
                                        iZzi = i68;
                                        i49 = i67;
                                        zzcu zzcuVar16 = zzcuVar2;
                                        i41 = i41;
                                        zzcuVar2 = zzcuVar16;
                                        int i10114 = i48;
                                        i47 = i47;
                                        i50 = i10114;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe11119 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe11119;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i67 = i20;
                                        if (i18 == 2) {
                                            if (i18 == 0) {
                                                int i119 = zzcv.zza;
                                                zzeiVar3 = (zzei) zzeoVar;
                                                iZzj13 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                                zzeiVar3.zzg(zzdj.zzb(zzcuVar2.zza));
                                                while (iZzj13 < i41) {
                                                    iZzj14 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                    if (i67 == zzcuVar2.zza) {
                                                        iZzj13 = zzcv.zzj(bArr2, iZzj14, zzcuVar2);
                                                        zzeiVar3.zzg(zzdj.zzb(zzcuVar2.zza));
                                                    }
                                                }
                                            }
                                            i49 = i67;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe111110 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe111110;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            int i1110 = zzcv.zza;
                                            zzeiVar4 = (zzei) zzeoVar;
                                            iZzj13 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i71 = zzcuVar2.zza + iZzj13;
                                            while (iZzj13 < i71) {
                                                iZzj13 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                zzeiVar4.zzg(zzdj.zzb(zzcuVar2.zza));
                                            }
                                            if (iZzj13 != i71) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                        }
                                        iZzi = iZzj13;
                                        i49 = i67;
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe111111 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe111111;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        if (i18 == 2) {
                                            int i1111 = zzcv.zza;
                                            zzfbVar6 = (zzfb) zzeoVar;
                                            iZzj16 = zzcv.zzj(bArr2, i43, zzcuVar2);
                                            i72 = zzcuVar2.zza + iZzj16;
                                            while (iZzj16 < i72) {
                                                iZzj16 = zzcv.zzm(bArr2, iZzj16, zzcuVar2);
                                                zzfbVar6.zzf(zzdj.zzc(zzcuVar2.zzb));
                                            }
                                            if (iZzj16 == i72) {
                                                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            iZzi = iZzj16;
                                            i49 = i20;
                                        } else if (i18 == 0) {
                                            i49 = i20;
                                            i50 = i48;
                                            unsafe5 = unsafe5;
                                            iZzi = i43;
                                            if (iZzi != i43) {
                                                i43 = i43;
                                                i3 = i3;
                                                i83 = i49;
                                                zzcuVar4 = zzcuVar2;
                                                i82 = i50;
                                                i85 = i47;
                                                i86 = i12;
                                                i81 = 0;
                                                i84 = i11;
                                                obj3 = obj;
                                                Unsafe unsafe111112 = unsafe5;
                                                i80 = i41;
                                                unsafe10 = unsafe111112;
                                            } else {
                                                i43 = i43;
                                                i4 = i3;
                                                i9 = iZzi;
                                                zzcuVar4 = zzcuVar2;
                                                i13 = i50;
                                                i15 = i47;
                                                unsafe2 = unsafe5;
                                                i10 = i49;
                                                obj3 = obj;
                                            }
                                        } else {
                                            int i1112 = zzcv.zza;
                                            zzfbVar5 = (zzfb) zzeoVar;
                                            iZzj13 = zzcv.zzm(bArr2, i43, zzcuVar2);
                                            zzfbVar5.zzf(zzdj.zzc(zzcuVar2.zzb));
                                            while (true) {
                                                if (iZzj13 < i41) {
                                                    iZzj15 = zzcv.zzj(bArr2, iZzj13, zzcuVar2);
                                                    i67 = i20;
                                                    if (i67 == zzcuVar2.zza) {
                                                        iZzj13 = zzcv.zzm(bArr2, iZzj15, zzcuVar2);
                                                        zzfbVar5.zzf(zzdj.zzc(zzcuVar2.zzb));
                                                        i20 = i67;
                                                    }
                                                } else {
                                                    i67 = i20;
                                                }
                                            }
                                            iZzi = iZzj13;
                                            i49 = i67;
                                        }
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe111113 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe111113;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                    default:
                                        zzcuVar2 = zzcuVar2;
                                        i41 = i41;
                                        i47 = i47;
                                        i49 = i20;
                                        i50 = i48;
                                        unsafe5 = unsafe5;
                                        if (i18 == 3) {
                                            i73 = (i49 & (-8)) | 4;
                                            zzgeVarZzv = this.zzv(i50);
                                            iZzi = zzcv.zzd(zzgeVarZzv, bArr, i43, i2, i73, zzcuVar);
                                            zzeoVar.add(zzcuVar2.zzc);
                                            while (iZzi < i41) {
                                                iZzj17 = zzcv.zzj(bArr2, iZzi, zzcuVar2);
                                                if (i49 == zzcuVar2.zza) {
                                                    iZzi = zzcv.zzd(zzgeVarZzv, bArr, iZzj17, i2, i73, zzcuVar);
                                                    zzeoVar.add(zzcuVar2.zzc);
                                                }
                                            }
                                        } else {
                                            iZzi = i43;
                                        }
                                        if (iZzi != i43) {
                                            i43 = i43;
                                            i3 = i3;
                                            i83 = i49;
                                            zzcuVar4 = zzcuVar2;
                                            i82 = i50;
                                            i85 = i47;
                                            i86 = i12;
                                            i81 = 0;
                                            i84 = i11;
                                            obj3 = obj;
                                            Unsafe unsafe111114 = unsafe5;
                                            i80 = i41;
                                            unsafe10 = unsafe111114;
                                        } else {
                                            i43 = i43;
                                            i4 = i3;
                                            i9 = iZzi;
                                            zzcuVar4 = zzcuVar2;
                                            i13 = i50;
                                            i15 = i47;
                                            unsafe2 = unsafe5;
                                            i10 = i49;
                                            obj3 = obj;
                                        }
                                        break;
                                }
                            } else {
                                i44 = i48;
                                i46 = i47;
                                if (iZzr == 50) {
                                    obj3 = obj;
                                    unsafe8 = zzb;
                                    unsafe2 = unsafe4;
                                    j3 = iArr[i44 + 2] & 1048575;
                                    switch (iZzr) {
                                        case 51:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 1) {
                                                iZzm = i74 + 8;
                                                unsafe8.putObject(obj3, j, Double.valueOf(Double.longBitsToDouble(zzcv.zzq(bArr2, i74))));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 52:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 5) {
                                                iZzm = i74 + 4;
                                                unsafe8.putObject(obj3, j, Float.valueOf(Float.intBitsToFloat(zzcv.zzc(bArr2, i74))));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 0) {
                                                iZzm = zzcv.zzm(bArr2, i74, zzcuVar4);
                                                unsafe8.putObject(obj3, j, Long.valueOf(zzcuVar4.zzb));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 0) {
                                                iZzm = zzcv.zzj(bArr2, i74, zzcuVar4);
                                                unsafe8.putObject(obj3, j, Integer.valueOf(zzcuVar4.zza));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 1) {
                                                iZzm = i74 + 8;
                                                unsafe8.putObject(obj3, j, Long.valueOf(zzcv.zzq(bArr2, i74)));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 5) {
                                                iZzm = i74 + 4;
                                                unsafe8.putObject(obj3, j, Integer.valueOf(zzcv.zzc(bArr2, i74)));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 58:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 0) {
                                                iZzm = zzcv.zzm(bArr2, i74, zzcuVar4);
                                                if (zzcuVar4.zzb != 0) {
                                                    z5 = true;
                                                } else {
                                                    z5 = false;
                                                }
                                                unsafe8.putObject(obj3, j, Boolean.valueOf(z5));
                                                unsafe8.putInt(obj3, j3, i15);
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 59:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            if (i18 == 2) {
                                                iZzj18 = zzcv.zzj(bArr2, i74, zzcuVar4);
                                                i75 = zzcuVar4.zza;
                                                if (i75 == 0) {
                                                    unsafe8.putObject(obj3, j, "");
                                                } else {
                                                    i76 = iZzj18 + i75;
                                                    if ((i19 & 536870912) == 0) {
                                                    }
                                                    unsafe8.putObject(obj3, j, new String(bArr2, iZzj18, i75, zzep.zza));
                                                    iZzj18 = i76;
                                                }
                                                unsafe8.putInt(obj3, j3, i15);
                                                iZzm = iZzj18;
                                            } else {
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 60:
                                            zzcuVar3 = zzcuVar;
                                            i74 = i43;
                                            i77 = i44;
                                            if (i18 == 2) {
                                                Object objZzy3 = this.zzy(obj3, i46, i77);
                                                i10 = i20;
                                                int iZzo2 = zzcv.zzo(objZzy3, this.zzv(i77), bArr, i74, i2, zzcuVar);
                                                this.zzG(obj3, i46, i77, objZzy3);
                                                iZzm = iZzo2;
                                                zzcuVar4 = zzcuVar3;
                                                i13 = i77;
                                                i15 = i46;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                iZzm = i74;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 61:
                                            zzcuVar3 = zzcuVar;
                                            i78 = i20;
                                            unsafe9 = unsafe2;
                                            i74 = i43;
                                            i77 = i44;
                                            if (i18 == 2) {
                                                iZza = zzcv.zza(bArr2, i74, zzcuVar3);
                                                unsafe8.putObject(obj3, j, zzcuVar3.zzc);
                                                unsafe8.putInt(obj3, j3, i46);
                                                iZzm = iZza;
                                                i13 = i77;
                                                unsafe2 = unsafe9;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                i10 = i78;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                            } else {
                                                i13 = i77;
                                                unsafe2 = unsafe9;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                i10 = i78;
                                                iZzm = i74;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                            }
                                            break;
                                        case 63:
                                            zzcuVar3 = zzcuVar;
                                            unsafe9 = unsafe2;
                                            i74 = i43;
                                            i77 = i44;
                                            if (i18 == 0) {
                                                iZza = zzcv.zzj(bArr2, i74, zzcuVar3);
                                                i79 = zzcuVar3.zza;
                                                zzelVarZzu2 = this.zzu(i77);
                                                if (zzelVarZzu2 != null) {
                                                    i78 = i20;
                                                    unsafe8.putObject(obj3, j, Integer.valueOf(i79));
                                                    unsafe8.putInt(obj3, j3, i46);
                                                } else {
                                                    i78 = i20;
                                                    unsafe8.putObject(obj3, j, Integer.valueOf(i79));
                                                    unsafe8.putInt(obj3, j3, i46);
                                                }
                                                iZzm = iZza;
                                                i13 = i77;
                                                unsafe2 = unsafe9;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                i10 = i78;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                            }
                                            unsafe2 = unsafe9;
                                            i10 = i20;
                                            i13 = i77;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar3;
                                            iZzm = i74;
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 66:
                                            zzcuVar3 = zzcuVar;
                                            unsafe9 = unsafe2;
                                            i74 = i43;
                                            i77 = i44;
                                            if (i18 == 0) {
                                                int iZzj110 = zzcv.zzj(bArr2, i74, zzcuVar3);
                                                unsafe8.putObject(obj3, j, Integer.valueOf(zzdj.zzb(zzcuVar3.zza)));
                                                unsafe8.putInt(obj3, j3, i46);
                                                iZzm = iZzj110;
                                                unsafe2 = unsafe9;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                            }
                                            unsafe2 = unsafe9;
                                            i10 = i20;
                                            i13 = i77;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar3;
                                            iZzm = i74;
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 67:
                                            zzcuVar3 = zzcuVar;
                                            unsafe9 = unsafe2;
                                            i74 = i43;
                                            i77 = i44;
                                            if (i18 == 0) {
                                                int iZzm7 = zzcv.zzm(bArr2, i74, zzcuVar3);
                                                unsafe8.putObject(obj3, j, Long.valueOf(zzdj.zzc(zzcuVar3.zzb)));
                                                unsafe8.putInt(obj3, j3, i46);
                                                iZzm = iZzm7;
                                                unsafe2 = unsafe9;
                                                i10 = i20;
                                                i13 = i77;
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar3;
                                                if (iZzm != i74) {
                                                    unsafe2 = unsafe2;
                                                    i3 = i3;
                                                    i85 = i15;
                                                    i83 = i10;
                                                    i86 = i12;
                                                    i82 = i13;
                                                    i81 = 0;
                                                    i84 = i11;
                                                    unsafe10 = unsafe2;
                                                    i80 = i2;
                                                    zzcuVar4 = zzcuVar4;
                                                    iZzi = iZzm;
                                                    this = this;
                                                } else {
                                                    unsafe2 = unsafe2;
                                                    i9 = iZzm;
                                                    i4 = i3;
                                                }
                                            }
                                            unsafe2 = unsafe9;
                                            i10 = i20;
                                            i13 = i77;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar3;
                                            iZzm = i74;
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                        case 68:
                                            if (i18 == 3) {
                                                Object objZzy4 = this.zzy(obj3, i46, i44);
                                                int iZzn4 = zzcv.zzn(objZzy4, this.zzv(i44), bArr, i43, i2, (i20 & (-8)) | 4, zzcuVar);
                                                this.zzG(obj3, i46, i44, objZzy4);
                                                i15 = i46;
                                                zzcuVar4 = zzcuVar;
                                                i74 = i43;
                                                iZzm = iZzn4;
                                                i10 = i20;
                                                i13 = i44;
                                            }
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                                break;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                                break;
                                            }
                                        default:
                                            i10 = i20;
                                            i13 = i44;
                                            i74 = i43;
                                            i15 = i46;
                                            zzcuVar4 = zzcuVar;
                                            iZzm = i74;
                                            if (iZzm != i74) {
                                                unsafe2 = unsafe2;
                                                i3 = i3;
                                                i85 = i15;
                                                i83 = i10;
                                                i86 = i12;
                                                i82 = i13;
                                                i81 = 0;
                                                i84 = i11;
                                                unsafe10 = unsafe2;
                                                i80 = i2;
                                                zzcuVar4 = zzcuVar4;
                                                iZzi = iZzm;
                                                this = this;
                                            } else {
                                                unsafe2 = unsafe2;
                                                i9 = iZzm;
                                                i4 = i3;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i18 == 2) {
                                        unsafe7 = zzb;
                                        Object objZzw2 = this.zzw(i44);
                                        object = unsafe7.getObject(obj, j);
                                        if (!((zzfg) object).zze()) {
                                            zzfg zzfgVarZzb2 = zzfg.zza().zzb();
                                            zzfh.zza(zzfgVarZzb2, object);
                                            unsafe7.putObject(obj, j, zzfgVarZzb2);
                                        }
                                        throw null;
                                    }
                                    i45 = i20;
                                    obj3 = obj;
                                    i4 = i3;
                                    i9 = i43;
                                    i13 = i44;
                                    unsafe2 = unsafe4;
                                    i15 = i46;
                                    i10 = i45;
                                    zzcuVar4 = zzcuVar2;
                                }
                            }
                        } else if (i18 == 2) {
                            zzeoVarZzd = (zzeo) unsafe4.getObject(obj3, j);
                            if (!zzeoVarZzd.zzc()) {
                                int size5 = zzeoVarZzd.size();
                                zzeoVarZzd = zzeoVarZzd.zzd(size5 != 0 ? size5 + size5 : 10);
                                unsafe4.putObject(obj3, j, zzeoVarZzd);
                            }
                            zzeo zzeoVar3 = zzeoVarZzd;
                            i85 = i21;
                            int iZzf4 = zzcv.zzf(this.zzv(i42), i20, bArr, i43, i2, zzeoVar3, zzcuVar);
                            i3 = i3;
                            zzcuVar4 = zzcuVar2;
                            unsafe10 = unsafe4;
                            iZzi = iZzf4;
                            i82 = i42;
                            i80 = i41;
                            i86 = i12;
                            i83 = i20;
                            i81 = 0;
                            i84 = i11;
                        } else {
                            i44 = i42;
                            i45 = i20;
                            i46 = i21;
                            i4 = i3;
                            i9 = i43;
                            i13 = i44;
                            unsafe2 = unsafe4;
                            i15 = i46;
                            i10 = i45;
                            zzcuVar4 = zzcuVar2;
                        }
                    }
                } else {
                    i9 = iZzk;
                    i10 = i6;
                    i11 = i84;
                    i12 = i86;
                    i13 = i81;
                    i14 = i13;
                    unsafe2 = unsafe10;
                    zzcuVar4 = zzcuVar4;
                    i4 = i3;
                    i15 = i88;
                }
                if (i10 == i4) {
                }
                if (this.zzh) {
                    zzdsVar = zzcuVar4.zzd;
                    int i1113 = zzds.zzb;
                    int i1114 = zzfu.zza;
                    if (zzdsVar != zzds.zza) {
                        zzfm zzfmVar2 = this.zzg;
                        zzgsVar = this.zzl;
                        zzds zzdsVar3 = zzcuVar4.zzd;
                        int i1115 = zzcv.zza;
                        zzefVarZzb = zzdsVar3.zzb(zzfmVar2, i15);
                        if (zzefVarZzb == null) {
                            iZzi = zzcv.zzi(i10, bArr, i9, i2, zzd(obj), zzcuVar);
                            i17 = i2;
                            zzfpVar2 = this;
                            i16 = i10;
                            unsafe3 = unsafe2;
                        } else {
                            zzed zzedVar2 = (zzed) obj3;
                            zzedVar2.zzc();
                            i16 = i10;
                            iZzi = zzcv.zzb(i10, bArr, i9, i2, zzedVar2, zzefVarZzb, zzgsVar, zzcuVar);
                            unsafe3 = unsafe2;
                            zzfpVar2 = this;
                            i17 = i2;
                        }
                    } else {
                        i16 = i10;
                        unsafe3 = unsafe2;
                        zzfpVar2 = this;
                        i17 = i2;
                        iZzi = zzcv.zzi(i16, bArr, i9, i2, zzd(obj), zzcuVar);
                    }
                } else {
                    i16 = i10;
                    unsafe3 = unsafe2;
                    zzfpVar2 = this;
                    i17 = i2;
                    iZzi = zzcv.zzi(i16, bArr, i9, i2, zzd(obj), zzcuVar);
                }
                bArr2 = bArr;
                zzcuVar4 = zzcuVar;
                i3 = i4;
                i80 = i17;
                unsafe10 = unsafe3;
                this = zzfpVar2;
                i85 = i15;
                i86 = i12;
                i82 = i13;
                i81 = i14;
                i84 = i11;
                i83 = i16;
            } else {
                zzfpVar = this;
                unsafe = unsafe10;
                i4 = i3;
                i5 = i80;
            }
        }
        if (i86 != 1048575) {
            unsafe.putInt(obj3, i86, i84);
        }
        for (int i120 = zzfpVar.zzj; i120 < zzfpVar.zzk; i120++) {
            int[] iArr2 = zzfpVar.zzi;
            int[] iArr3 = zzfpVar.zzc;
            int i121 = iArr2[i120];
            int i122 = iArr3[i121];
            Object objZzf = zzgz.zzf(obj3, zzfpVar.zzs(i121) & 1048575);
            if (objZzf != null && zzfpVar.zzu(i121) != null) {
                throw null;
            }
        }
        if (i4 == 0) {
            if (iZzi != i5) {
                throw new zzer("Failed to parse the message.");
            }
        } else if (iZzi > i5 || i83 != i4) {
            throw new zzer("Failed to parse the message.");
        }
        return iZzi;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final Object zze() {
        return ((zzeh) this.zzg).zzK();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0071  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x0084 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzeh) {
                zzeh zzehVar = (zzeh) obj;
                zzehVar.zzW(Integer.MAX_VALUE);
                zzehVar.zza = 0;
                zzehVar.zzU();
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
                                ((zzeo) zzgz.zzf(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzfg) object).zzc();
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
            this.zzl.zza(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
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
                        zzgz.zzo(obj, j, zzgz.zza(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i)) {
                        zzgz.zzp(obj, j, zzgz.zzb(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i)) {
                        zzgz.zzr(obj, j, zzgz.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i)) {
                        zzgz.zzr(obj, j, zzgz.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i)) {
                        zzgz.zzr(obj, j, zzgz.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i)) {
                        zzgz.zzm(obj, j, zzgz.zzw(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i)) {
                        zzgz.zzs(obj, j, zzgz.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i);
                    break;
                case 10:
                    if (zzI(obj2, i)) {
                        zzgz.zzs(obj, j, zzgz.zzf(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i)) {
                        zzgz.zzr(obj, j, zzgz.zzd(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i)) {
                        zzgz.zzq(obj, j, zzgz.zzc(obj2, j));
                        zzD(obj, i);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i)) {
                        zzgz.zzr(obj, j, zzgz.zzd(obj2, j));
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
                    zzeo zzeoVarZzd = (zzeo) zzgz.zzf(obj, j);
                    zzeo zzeoVar = (zzeo) zzgz.zzf(obj2, j);
                    int size = zzeoVarZzd.size();
                    int size2 = zzeoVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzeoVarZzd.zzc()) {
                            zzeoVarZzd = zzeoVarZzd.zzd(size2 + size);
                        }
                        zzeoVarZzd.addAll(zzeoVar);
                    }
                    if (size > 0) {
                        zzeoVar = zzeoVarZzd;
                    }
                    zzgz.zzs(obj, j, zzeoVar);
                    break;
                case 50:
                    int i4 = zzgg.zza;
                    zzgz.zzs(obj, j, zzfh.zza(zzgz.zzf(obj, j), zzgz.zzf(obj2, j)));
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
                        zzgz.zzs(obj, j, zzgz.zzf(obj2, j));
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
                        zzgz.zzs(obj, j, zzgz.zzf(obj2, j));
                        zzE(obj, i3, i);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i);
                    break;
            }
        }
        zzgg.zzp(this.zzl, obj, obj2);
        if (this.zzh) {
            zzgg.zzo(this.zzm, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzcu zzcuVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzcuVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final void zzi(Object obj, zzhh zzhhVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i;
        Map.Entry entry2;
        int i2;
        boolean z;
        boolean z2;
        if (this.zzh) {
            zzdx zzdxVar = ((zzed) obj).zzb;
            if (zzdxVar.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzf = zzdxVar.zzf();
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
            while (entry2 != null && ((zzee) entry2.getKey()).zza <= i6) {
                this.zzm.zzb(zzhhVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzs & 1048575;
            switch (iZzr) {
                case 0:
                    it = it;
                    iArr = iArr;
                    if (zzJ(obj, i5, i9, i, i2)) {
                        zzhhVar.zzf(i6, zzgz.zza(obj, j));
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
                        zzhhVar.zzo(i6, zzgz.zzb(obj, j));
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
                        zzhhVar.zzt(i6, unsafe.getLong(obj, j));
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
                        zzhhVar.zzK(i6, unsafe.getLong(obj, j));
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
                        zzhhVar.zzr(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzm(i6, unsafe.getLong(obj, j));
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
                        zzhhVar.zzk(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzb(i6, zzgz.zzw(obj, j));
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
                        zzO(i6, unsafe.getObject(obj, j), zzhhVar);
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
                        zzhhVar.zzv(i6, unsafe.getObject(obj, j), zzv(i5));
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
                        zzhhVar.zzd(i6, (zzdf) unsafe.getObject(obj, j));
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
                        zzhhVar.zzI(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzi(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzx(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzz(i6, unsafe.getLong(obj, j));
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
                        zzhhVar.zzB(i6, unsafe.getInt(obj, j));
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
                        zzhhVar.zzD(i6, unsafe.getLong(obj, j));
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
                        zzhhVar.zzq(i6, unsafe.getObject(obj, j), zzv(i5));
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
                    zzgg.zzr(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzq(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    int i11 = zzgg.zza;
                    if (list != null && !list.isEmpty()) {
                        zzhhVar.zzH(i10, list);
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
                    zzge zzgeVarZzv = zzv(i5);
                    int i13 = zzgg.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i14 = 0; i14 < list2.size(); i14++) {
                            ((zzdo) zzhhVar).zzv(i12, list2.get(i14), zzgeVarZzv);
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
                    int i16 = zzgg.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzhhVar.zze(i15, list3);
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
                    zzgg.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzs(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzy(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzB(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, false);
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
                    zzgg.zzr(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 36:
                    zzgg.zzv(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 37:
                    zzgg.zzx(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 38:
                    zzgg.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 39:
                    zzgg.zzw(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 40:
                    zzgg.zzu(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 41:
                    zzgg.zzt(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 42:
                    zzgg.zzq(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 43:
                    zzgg.zzC(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 44:
                    zzgg.zzs(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 45:
                    zzgg.zzy(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 46:
                    zzgg.zzz(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 47:
                    zzgg.zzA(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
                    i5 += 3;
                    i3 = i9;
                    entry = entry2;
                    it = it;
                    iArr = iArr;
                    i4 = i;
                    break;
                case 48:
                    zzgg.zzB(this.zzc[i5], (List) unsafe.getObject(obj, j), zzhhVar, true);
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
                    zzge zzgeVarZzv2 = zzv(i5);
                    int i18 = zzgg.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i19 = 0; i19 < list4.size(); i19++) {
                            ((zzdo) zzhhVar).zzq(i17, list4.get(i19), zzgeVarZzv2);
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
                        zzhhVar.zzf(i6, zzm(obj, j));
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
                        zzhhVar.zzo(i6, zzn(obj, j));
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
                        zzhhVar.zzt(i6, zzt(obj, j));
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
                        zzhhVar.zzK(i6, zzt(obj, j));
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
                        zzhhVar.zzr(i6, zzo(obj, j));
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
                        zzhhVar.zzm(i6, zzt(obj, j));
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
                        zzhhVar.zzk(i6, zzo(obj, j));
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
                        zzhhVar.zzb(i6, zzN(obj, j));
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
                        zzO(i6, unsafe.getObject(obj, j), zzhhVar);
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
                        zzhhVar.zzv(i6, unsafe.getObject(obj, j), zzv(i5));
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
                        zzhhVar.zzd(i6, (zzdf) unsafe.getObject(obj, j));
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
                        zzhhVar.zzI(i6, zzo(obj, j));
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
                        zzhhVar.zzi(i6, zzo(obj, j));
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
                        zzhhVar.zzx(i6, zzo(obj, j));
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
                        zzhhVar.zzz(i6, zzt(obj, j));
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
                        zzhhVar.zzB(i6, zzo(obj, j));
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
                        zzhhVar.zzD(i6, zzt(obj, j));
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
                        zzhhVar.zzq(i6, unsafe.getObject(obj, j), zzv(i5));
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
            this.zzm.zzb(zzhhVar, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        ((zzeh) obj).zzc.zzl(zzhhVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzE;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzs = zzs(i);
            long j = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i) || Double.doubleToLongBits(zzgz.zza(obj, j)) != Double.doubleToLongBits(zzgz.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i) || Float.floatToIntBits(zzgz.zzb(obj, j)) != Float.floatToIntBits(zzgz.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i) || zzgz.zzd(obj, j) != zzgz.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i) || zzgz.zzd(obj, j) != zzgz.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i) || zzgz.zzd(obj, j) != zzgz.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i) || zzgz.zzw(obj, j) != zzgz.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i) || !zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i) || !zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i) || !zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i) || zzgz.zzd(obj, j) != zzgz.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i) || zzgz.zzc(obj, j) != zzgz.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i) || zzgz.zzd(obj, j) != zzgz.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i) || !zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j))) {
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
                    zZzE = zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j));
                    break;
                case 50:
                    zZzE = zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j));
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
                    if (zzgz.zzc(obj, jZzp) != zzgz.zzc(obj2, jZzp) || !zzgg.zzE(zzgz.zzf(obj, j), zzgz.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzE) {
                return false;
            }
        }
        if (!((zzeh) obj).zzc.equals(((zzeh) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzed) obj).zzb.equals(((zzed) obj2).zzb);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzge
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        List list;
        zzge zzgeVarZzv;
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
                list = (List) zzgz.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgeVarZzv = zzv(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzgeVarZzv.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzM(obj, i8, i7) && !zzK(obj, iZzs, zzv(i7))) {
                    return false;
                }
            } else if (iZzr == 49) {
                list = (List) zzgz.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    zzgeVarZzv = zzv(i7);
                    while (i3 < list.size()) {
                        if (!zzgeVarZzv.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzr == 50 && !((zzfg) zzgz.zzf(obj, iZzs & 1048575)).isEmpty()) {
                throw null;
            }
            i5++;
            i6 = i;
            i4 = i2;
        }
        return !this.zzh || ((zzed) obj).zzb.zzk();
    }
}
