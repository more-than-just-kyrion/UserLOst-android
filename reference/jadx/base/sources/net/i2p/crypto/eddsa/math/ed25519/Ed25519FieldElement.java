package net.i2p.crypto.eddsa.math.ed25519;

import java.util.Arrays;
import net.i2p.crypto.eddsa.Utils;
import net.i2p.crypto.eddsa.math.Field;
import net.i2p.crypto.eddsa.math.FieldElement;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519FieldElement extends FieldElement {
    private static final byte[] ZERO = new byte[32];
    final int[] t;

    public Ed25519FieldElement(Field field, int[] iArr) {
        super(field);
        if (iArr.length != 10) {
            throw new IllegalArgumentException("Invalid radix-2^51 representation");
        }
        this.t = iArr;
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public boolean isNonZero() {
        return Utils.equal(toByteArray(), ZERO) == 0;
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement add(FieldElement fieldElement) {
        int[] iArr = ((Ed25519FieldElement) fieldElement).t;
        int[] iArr2 = new int[10];
        for (int i = 0; i < 10; i++) {
            iArr2[i] = this.t[i] + iArr[i];
        }
        return new Ed25519FieldElement(this.f, iArr2);
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement subtract(FieldElement fieldElement) {
        int[] iArr = ((Ed25519FieldElement) fieldElement).t;
        int[] iArr2 = new int[10];
        for (int i = 0; i < 10; i++) {
            iArr2[i] = this.t[i] - iArr[i];
        }
        return new Ed25519FieldElement(this.f, iArr2);
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement negate() {
        int[] iArr = new int[10];
        for (int i = 0; i < 10; i++) {
            iArr[i] = -this.t[i];
        }
        return new Ed25519FieldElement(this.f, iArr);
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement multiply(FieldElement fieldElement) {
        int[] iArr = ((Ed25519FieldElement) fieldElement).t;
        int i = iArr[1];
        int i2 = iArr[2];
        int i3 = iArr[3];
        int i4 = i3 * 19;
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = i10 * 19;
        int[] iArr2 = this.t;
        int i12 = iArr2[1];
        int i13 = iArr2[3];
        int i14 = i13 * 2;
        int i15 = iArr2[5];
        int i16 = i15 * 2;
        int i17 = iArr2[7];
        int i18 = i17 * 2;
        int i19 = iArr2[9];
        int i20 = i19 * 2;
        int i21 = iArr2[0];
        int i22 = iArr[0];
        long j = ((long) i21) * ((long) i22);
        long j2 = ((long) i21) * ((long) i);
        long j3 = ((long) i21) * ((long) i2);
        long j4 = ((long) i21) * ((long) i3);
        long j5 = ((long) i21) * ((long) i5);
        long j6 = ((long) i21) * ((long) i6);
        long j7 = ((long) i21) * ((long) i7);
        long j8 = ((long) i21) * ((long) i8);
        long j9 = ((long) i21) * ((long) i9);
        long j10 = ((long) i21) * ((long) i10);
        long j11 = ((long) i12) * ((long) i22);
        long j12 = i12 * 2;
        long j13 = ((long) i) * j12;
        long j14 = ((long) i12) * ((long) i2);
        long j15 = ((long) i3) * j12;
        long j16 = ((long) i12) * ((long) i5);
        long j17 = ((long) i6) * j12;
        long j18 = ((long) i12) * ((long) i7);
        long j19 = ((long) i8) * j12;
        long j20 = ((long) i12) * ((long) i9);
        long j21 = i11;
        long j22 = j12 * j21;
        int i23 = iArr2[2];
        long j23 = ((long) i23) * ((long) i22);
        long j24 = ((long) i23) * ((long) i);
        long j25 = ((long) i23) * ((long) i2);
        long j26 = ((long) i23) * ((long) i3);
        long j27 = ((long) i23) * ((long) i5);
        long j28 = ((long) i23) * ((long) i6);
        long j29 = ((long) i23) * ((long) i7);
        long j30 = ((long) i23) * ((long) i8);
        long j31 = i9 * 19;
        long j32 = ((long) i23) * j31;
        long j33 = ((long) i23) * j21;
        long j34 = ((long) i13) * ((long) i22);
        long j35 = i14;
        long j36 = ((long) i) * j35;
        long j37 = ((long) i13) * ((long) i2);
        long j38 = ((long) i3) * j35;
        long j39 = ((long) i13) * ((long) i5);
        long j40 = ((long) i6) * j35;
        long j41 = ((long) i13) * ((long) i7);
        long j42 = i8 * 19;
        long j43 = j35 * j42;
        long j44 = ((long) i13) * j31;
        long j45 = j35 * j21;
        int i24 = iArr2[4];
        long j46 = ((long) i24) * ((long) i22);
        long j47 = ((long) i24) * ((long) i);
        long j48 = ((long) i24) * ((long) i2);
        long j49 = ((long) i24) * ((long) i3);
        long j50 = ((long) i24) * ((long) i5);
        long j51 = ((long) i24) * ((long) i6);
        long j52 = i7 * 19;
        long j53 = ((long) i24) * j52;
        long j54 = ((long) i24) * j42;
        long j55 = ((long) i24) * j31;
        long j56 = ((long) i24) * j21;
        long j57 = ((long) i15) * ((long) i22);
        long j58 = i16;
        long j59 = ((long) i) * j58;
        long j60 = ((long) i15) * ((long) i2);
        long j61 = ((long) i3) * j58;
        long j62 = ((long) i15) * ((long) i5);
        long j63 = i6 * 19;
        long j64 = j58 * j63;
        long j65 = ((long) i15) * j52;
        long j66 = j58 * j42;
        long j67 = ((long) i15) * j31;
        long j68 = j58 * j21;
        int i25 = iArr2[6];
        long j69 = ((long) i25) * ((long) i22);
        long j70 = ((long) i25) * ((long) i);
        long j71 = ((long) i25) * ((long) i2);
        long j72 = ((long) i25) * ((long) i3);
        long j73 = i5 * 19;
        long j74 = ((long) i25) * j73;
        long j75 = ((long) i25) * j63;
        long j76 = ((long) i25) * j52;
        long j77 = ((long) i25) * j42;
        long j78 = ((long) i25) * j31;
        long j79 = ((long) i25) * j21;
        long j80 = ((long) i17) * ((long) i22);
        long j81 = i18;
        long j82 = ((long) i) * j81;
        long j83 = i4;
        long j84 = j81 * j83;
        long j85 = j81 * j63;
        long j86 = j81 * j42;
        long j87 = j81 * j21;
        int i26 = iArr2[8];
        long j88 = ((long) i26) * ((long) i22);
        long j89 = ((long) i26) * ((long) i);
        long j90 = i2 * 19;
        long j91 = ((long) i26) * j90;
        long j92 = ((long) i26) * j83;
        long j93 = ((long) i26) * j63;
        long j94 = ((long) i26) * j42;
        long j95 = ((long) i26) * j21;
        long j96 = ((long) i19) * ((long) i22);
        long j97 = i20;
        long j98 = ((long) (i * 19)) * j97;
        long j99 = ((long) i19) * j90;
        long j100 = j83 * j97;
        long j101 = ((long) i19) * j73;
        long j102 = j63 * j97;
        long j103 = j97 * j42;
        long j104 = ((long) i19) * j31;
        long j105 = j97 * j21;
        long j106 = j + j22 + j32 + j43 + j53 + j64 + j74 + j84 + j91 + j98;
        long j107 = j2 + j11 + j33 + j44 + j54 + j65 + j75 + (((long) i17) * j73) + j92 + j99;
        long j108 = j3 + j13 + j23 + j45 + j55 + j66 + j76 + j85 + (((long) i26) * j73) + j100;
        long j109 = j4 + j14 + j24 + j34 + j56 + j67 + j77 + (((long) i17) * j52) + j93 + j101;
        long j110 = j5 + j15 + j25 + j36 + j46 + j68 + j78 + j86 + (((long) i26) * j52) + j102;
        long j111 = j6 + j16 + j26 + j37 + j47 + j57 + j79 + (((long) i17) * j31) + j94 + (((long) i19) * j52);
        long j112 = j7 + j17 + j27 + j38 + j48 + j59 + j69 + j87 + (((long) i26) * j31) + j103;
        long j113 = j8 + j18 + j28 + j39 + j49 + j60 + j70 + j80 + j95 + j104;
        long j114 = j9 + j19 + j29 + j40 + j50 + j61 + j71 + j82 + j88 + j105;
        long j115 = j10 + j20 + j30 + j41 + j51 + j62 + j72 + (((long) i17) * ((long) i2)) + j89 + j96;
        long j116 = (j106 + 33554432) >> 26;
        long j117 = j107 + j116;
        long j118 = j106 - (j116 << 26);
        long j119 = (j110 + 33554432) >> 26;
        long j120 = j111 + j119;
        long j121 = (j117 + 16777216) >> 25;
        long j122 = j108 + j121;
        long j123 = j117 - (j121 << 25);
        long j124 = (j120 + 16777216) >> 25;
        long j125 = j112 + j124;
        long j126 = j120 - (j124 << 25);
        long j127 = (j122 + 33554432) >> 26;
        long j128 = j109 + j127;
        long j129 = j122 - (j127 << 26);
        long j130 = (j125 + 33554432) >> 26;
        long j131 = j113 + j130;
        long j132 = j125 - (j130 << 26);
        long j133 = (j128 + 16777216) >> 25;
        long j134 = (j110 - (j119 << 26)) + j133;
        long j135 = j128 - (j133 << 25);
        long j136 = (j131 + 16777216) >> 25;
        long j137 = j114 + j136;
        long j138 = j131 - (j136 << 25);
        long j139 = (j134 + 33554432) >> 26;
        long j140 = j126 + j139;
        long j141 = j134 - (j139 << 26);
        long j142 = (j137 + 33554432) >> 26;
        long j143 = j115 + j142;
        long j144 = j137 - (j142 << 26);
        long j145 = (j143 + 16777216) >> 25;
        long j146 = j118 + (19 * j145);
        long j147 = j143 - (j145 << 25);
        long j148 = (j146 + 33554432) >> 26;
        return new Ed25519FieldElement(this.f, new int[]{(int) (j146 - (j148 << 26)), (int) (j123 + j148), (int) j129, (int) j135, (int) j141, (int) j140, (int) j132, (int) j138, (int) j144, (int) j147});
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement square() {
        int[] iArr = this.t;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = i3 * 2;
        int i12 = i5 * 2;
        int i13 = i7 * 2;
        int i14 = i7 * 19;
        int i15 = i9 * 19;
        long j = i;
        long j2 = j * j;
        long j3 = i * 2;
        long j4 = i2;
        long j5 = j3 * j4;
        long j6 = i3;
        long j7 = j3 * j6;
        long j8 = i4;
        long j9 = j3 * j8;
        long j10 = i5;
        long j11 = j3 * j10;
        long j12 = i6;
        long j13 = j3 * j12;
        long j14 = i7;
        long j15 = j3 * j14;
        long j16 = i8;
        long j17 = j3 * j16;
        long j18 = i9;
        long j19 = j3 * j18;
        long j20 = i10;
        long j21 = j3 * j20;
        long j22 = i2 * 2;
        long j23 = j4 * j22;
        long j24 = j22 * j6;
        long j25 = i4 * 2;
        long j26 = j22 * j25;
        long j27 = j22 * j10;
        long j28 = i6 * 2;
        long j29 = j22 * j28;
        long j30 = j22 * j14;
        long j31 = i8 * 2;
        long j32 = j22 * j31;
        long j33 = j22 * j18;
        long j34 = i10 * 38;
        long j35 = j22 * j34;
        long j36 = j6 * j6;
        long j37 = i11;
        long j38 = j37 * j8;
        long j39 = j37 * j10;
        long j40 = j37 * j12;
        long j41 = j37 * j14;
        long j42 = j37 * j16;
        long j43 = i15;
        long j44 = j37 * j43;
        long j45 = j6 * j34;
        long j46 = j8 * j25;
        long j47 = j25 * j10;
        long j48 = j25 * j28;
        long j49 = j25 * j14;
        long j50 = i8 * 38;
        long j51 = j25 * j50;
        long j52 = j25 * j43;
        long j53 = j25 * j34;
        long j54 = j10 * j10;
        long j55 = i12;
        long j56 = j55 * j12;
        long j57 = i14;
        long j58 = j55 * j57;
        long j59 = j10 * j50;
        long j60 = j10 * j34;
        long j61 = j28 * j57;
        long j62 = j28 * j50;
        long j63 = j28 * j43;
        long j64 = j28 * j34;
        long j65 = j57 * j14;
        long j66 = j14 * j50;
        long j67 = j2 + j35 + j44 + j51 + j58 + (((long) (i6 * 38)) * j12);
        long j68 = j5 + j45 + j52 + j59 + j61;
        long j69 = j11 + j26 + j36 + j64 + (((long) i13) * j43) + (j50 * j16);
        long j70 = j19 + j32 + j41 + j48 + j54 + (j34 * j20);
        long j71 = (j67 + 33554432) >> 26;
        long j72 = j68 + j71;
        long j73 = j67 - (j71 << 26);
        long j74 = (j69 + 33554432) >> 26;
        long j75 = j13 + j27 + j38 + (j14 * j34) + (j31 * j43) + j74;
        long j76 = (j72 + 16777216) >> 25;
        long j77 = j7 + j23 + j53 + (j55 * j43) + j62 + j65 + j76;
        long j78 = j72 - (j76 << 25);
        long j79 = (j75 + 16777216) >> 25;
        long j80 = j15 + j29 + j39 + j46 + (j31 * j34) + (j43 * j18) + j79;
        long j81 = j75 - (j79 << 25);
        long j82 = (j77 + 33554432) >> 26;
        long j83 = j9 + j24 + j60 + j63 + j66 + j82;
        long j84 = (j80 + 33554432) >> 26;
        long j85 = j17 + j30 + j40 + j47 + (j18 * j34) + j84;
        long j86 = (j83 + 16777216) >> 25;
        long j87 = (j69 - (j74 << 26)) + j86;
        long j88 = (j85 + 16777216) >> 25;
        long j89 = j70 + j88;
        long j90 = j85 - (j88 << 25);
        long j91 = (j87 + 33554432) >> 26;
        long j92 = (j89 + 33554432) >> 26;
        long j93 = j21 + j33 + j42 + j49 + j56 + j92;
        long j94 = j89 - (j92 << 26);
        long j95 = (j93 + 16777216) >> 25;
        long j96 = j73 + (19 * j95);
        long j97 = (j96 + 33554432) >> 26;
        return new Ed25519FieldElement(this.f, new int[]{(int) (j96 - (j97 << 26)), (int) (j78 + j97), (int) (j77 - (j82 << 26)), (int) (j83 - (j86 << 25)), (int) (j87 - (j91 << 26)), (int) (j81 + j91), (int) (j80 - (j84 << 26)), (int) j90, (int) j94, (int) (j93 - (j95 << 25))});
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement squareAndDouble() {
        int[] iArr = this.t;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = i3 * 2;
        int i12 = i5 * 2;
        int i13 = i7 * 2;
        int i14 = i7 * 19;
        int i15 = i9 * 19;
        long j = i;
        long j2 = j * j;
        long j3 = i * 2;
        long j4 = i2;
        long j5 = j3 * j4;
        long j6 = i3;
        long j7 = j3 * j6;
        long j8 = i4;
        long j9 = j3 * j8;
        long j10 = i5;
        long j11 = j3 * j10;
        long j12 = i6;
        long j13 = j3 * j12;
        long j14 = i7;
        long j15 = j3 * j14;
        long j16 = i8;
        long j17 = j3 * j16;
        long j18 = i9;
        long j19 = j3 * j18;
        long j20 = i10;
        long j21 = j3 * j20;
        long j22 = i2 * 2;
        long j23 = j4 * j22;
        long j24 = j22 * j6;
        long j25 = i4 * 2;
        long j26 = j22 * j25;
        long j27 = j22 * j10;
        long j28 = i6 * 2;
        long j29 = j22 * j28;
        long j30 = j22 * j14;
        long j31 = i8 * 2;
        long j32 = j22 * j31;
        long j33 = j22 * j18;
        long j34 = i10 * 38;
        long j35 = j22 * j34;
        long j36 = j6 * j6;
        long j37 = i11;
        long j38 = j37 * j8;
        long j39 = j37 * j10;
        long j40 = j37 * j12;
        long j41 = j37 * j14;
        long j42 = j37 * j16;
        long j43 = i15;
        long j44 = j37 * j43;
        long j45 = j6 * j34;
        long j46 = j8 * j25;
        long j47 = j25 * j10;
        long j48 = j25 * j28;
        long j49 = j25 * j14;
        long j50 = i8 * 38;
        long j51 = j25 * j50;
        long j52 = j25 * j43;
        long j53 = j25 * j34;
        long j54 = j10 * j10;
        long j55 = i12;
        long j56 = j55 * j12;
        long j57 = i14;
        long j58 = j55 * j57;
        long j59 = j10 * j50;
        long j60 = j10 * j34;
        long j61 = j28 * j57;
        long j62 = j28 * j50;
        long j63 = j28 * j43;
        long j64 = j28 * j34;
        long j65 = j57 * j14;
        long j66 = j2 + j35 + j44 + j51 + j58 + (((long) (i6 * 38)) * j12);
        long j67 = j5 + j45 + j52 + j59 + j61;
        long j68 = j7 + j23 + j53 + (j55 * j43) + j62 + j65;
        long j69 = j9 + j24 + j60 + j63 + (j14 * j50);
        long j70 = j11 + j26 + j36 + j64 + (((long) i13) * j43) + (j50 * j16);
        long j71 = j13 + j27 + j38 + (j14 * j34) + (j31 * j43);
        long j72 = j15 + j29 + j39 + j46 + (j31 * j34) + (j43 * j18);
        long j73 = j17 + j30 + j40 + j47 + (j18 * j34);
        long j74 = j19 + j32 + j41 + j48 + j54 + (j34 * j20);
        long j75 = j21 + j33 + j42 + j49 + j56;
        long j76 = j66 + j66;
        long j77 = j70 + j70;
        long j78 = (j76 + 33554432) >> 26;
        long j79 = j67 + j67 + j78;
        long j80 = j76 - (j78 << 26);
        long j81 = (j77 + 33554432) >> 26;
        long j82 = j71 + j71 + j81;
        long j83 = (j79 + 16777216) >> 25;
        long j84 = j68 + j68 + j83;
        long j85 = j79 - (j83 << 25);
        long j86 = (j82 + 16777216) >> 25;
        long j87 = j72 + j72 + j86;
        long j88 = j82 - (j86 << 25);
        long j89 = (j84 + 33554432) >> 26;
        long j90 = j69 + j69 + j89;
        long j91 = (j87 + 33554432) >> 26;
        long j92 = j73 + j73 + j91;
        long j93 = (j90 + 16777216) >> 25;
        long j94 = (j77 - (j81 << 26)) + j93;
        long j95 = (j92 + 16777216) >> 25;
        long j96 = j74 + j74 + j95;
        long j97 = j92 - (j95 << 25);
        long j98 = (j94 + 33554432) >> 26;
        long j99 = (j96 + 33554432) >> 26;
        long j100 = j75 + j75 + j99;
        long j101 = j96 - (j99 << 26);
        long j102 = (j100 + 16777216) >> 25;
        long j103 = j80 + (19 * j102);
        long j104 = (j103 + 33554432) >> 26;
        return new Ed25519FieldElement(this.f, new int[]{(int) (j103 - (j104 << 26)), (int) (j85 + j104), (int) (j84 - (j89 << 26)), (int) (j90 - (j93 << 25)), (int) (j94 - (j98 << 26)), (int) (j88 + j98), (int) (j87 - (j91 << 26)), (int) j97, (int) j101, (int) (j100 - (j102 << 25))});
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement invert() {
        FieldElement fieldElementSquare = square();
        FieldElement fieldElementMultiply = multiply(fieldElementSquare.square().square());
        FieldElement fieldElementMultiply2 = fieldElementSquare.multiply(fieldElementMultiply);
        FieldElement fieldElementMultiply3 = fieldElementMultiply.multiply(fieldElementMultiply2.square());
        FieldElement fieldElementSquare2 = fieldElementMultiply3.square();
        for (int i = 1; i < 5; i++) {
            fieldElementSquare2 = fieldElementSquare2.square();
        }
        FieldElement fieldElementMultiply4 = fieldElementSquare2.multiply(fieldElementMultiply3);
        FieldElement fieldElementSquare3 = fieldElementMultiply4.square();
        for (int i2 = 1; i2 < 10; i2++) {
            fieldElementSquare3 = fieldElementSquare3.square();
        }
        FieldElement fieldElementMultiply5 = fieldElementSquare3.multiply(fieldElementMultiply4);
        FieldElement fieldElementSquare4 = fieldElementMultiply5.square();
        for (int i3 = 1; i3 < 20; i3++) {
            fieldElementSquare4 = fieldElementSquare4.square();
        }
        FieldElement fieldElementSquare5 = fieldElementSquare4.multiply(fieldElementMultiply5).square();
        for (int i4 = 1; i4 < 10; i4++) {
            fieldElementSquare5 = fieldElementSquare5.square();
        }
        FieldElement fieldElementMultiply6 = fieldElementSquare5.multiply(fieldElementMultiply4);
        FieldElement fieldElementSquare6 = fieldElementMultiply6.square();
        for (int i5 = 1; i5 < 50; i5++) {
            fieldElementSquare6 = fieldElementSquare6.square();
        }
        FieldElement fieldElementMultiply7 = fieldElementSquare6.multiply(fieldElementMultiply6);
        FieldElement fieldElementSquare7 = fieldElementMultiply7.square();
        for (int i6 = 1; i6 < 100; i6++) {
            fieldElementSquare7 = fieldElementSquare7.square();
        }
        FieldElement fieldElementSquare8 = fieldElementSquare7.multiply(fieldElementMultiply7).square();
        for (int i7 = 1; i7 < 50; i7++) {
            fieldElementSquare8 = fieldElementSquare8.square();
        }
        FieldElement fieldElementSquare9 = fieldElementSquare8.multiply(fieldElementMultiply6).square();
        for (int i8 = 1; i8 < 5; i8++) {
            fieldElementSquare9 = fieldElementSquare9.square();
        }
        return fieldElementSquare9.multiply(fieldElementMultiply2);
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement pow22523() {
        FieldElement fieldElementSquare = square();
        FieldElement fieldElementMultiply = multiply(fieldElementSquare.square().square());
        FieldElement fieldElementMultiply2 = fieldElementMultiply.multiply(fieldElementSquare.multiply(fieldElementMultiply).square());
        FieldElement fieldElementSquare2 = fieldElementMultiply2.square();
        for (int i = 1; i < 5; i++) {
            fieldElementSquare2 = fieldElementSquare2.square();
        }
        FieldElement fieldElementMultiply3 = fieldElementSquare2.multiply(fieldElementMultiply2);
        FieldElement fieldElementSquare3 = fieldElementMultiply3.square();
        for (int i2 = 1; i2 < 10; i2++) {
            fieldElementSquare3 = fieldElementSquare3.square();
        }
        FieldElement fieldElementMultiply4 = fieldElementSquare3.multiply(fieldElementMultiply3);
        FieldElement fieldElementSquare4 = fieldElementMultiply4.square();
        for (int i3 = 1; i3 < 20; i3++) {
            fieldElementSquare4 = fieldElementSquare4.square();
        }
        FieldElement fieldElementSquare5 = fieldElementSquare4.multiply(fieldElementMultiply4).square();
        for (int i4 = 1; i4 < 10; i4++) {
            fieldElementSquare5 = fieldElementSquare5.square();
        }
        FieldElement fieldElementMultiply5 = fieldElementSquare5.multiply(fieldElementMultiply3);
        FieldElement fieldElementSquare6 = fieldElementMultiply5.square();
        for (int i5 = 1; i5 < 50; i5++) {
            fieldElementSquare6 = fieldElementSquare6.square();
        }
        FieldElement fieldElementMultiply6 = fieldElementSquare6.multiply(fieldElementMultiply5);
        FieldElement fieldElementSquare7 = fieldElementMultiply6.square();
        for (int i6 = 1; i6 < 100; i6++) {
            fieldElementSquare7 = fieldElementSquare7.square();
        }
        FieldElement fieldElementSquare8 = fieldElementSquare7.multiply(fieldElementMultiply6).square();
        for (int i7 = 1; i7 < 50; i7++) {
            fieldElementSquare8 = fieldElementSquare8.square();
        }
        return multiply(fieldElementSquare8.multiply(fieldElementMultiply5).square().square());
    }

    @Override // net.i2p.crypto.eddsa.math.FieldElement
    public FieldElement cmov(FieldElement fieldElement, int i) {
        Ed25519FieldElement ed25519FieldElement = (Ed25519FieldElement) fieldElement;
        int i2 = -i;
        int[] iArr = new int[10];
        for (int i3 = 0; i3 < 10; i3++) {
            int[] iArr2 = this.t;
            int i4 = iArr2[i3];
            iArr[i3] = i4;
            iArr[i3] = ((iArr2[i3] ^ ed25519FieldElement.t[i3]) & i2) ^ i4;
        }
        return new Ed25519FieldElement(this.f, iArr);
    }

    public int hashCode() {
        return Arrays.hashCode(this.t);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Ed25519FieldElement) && 1 == Utils.equal(toByteArray(), ((Ed25519FieldElement) obj).toByteArray());
    }

    public String toString() {
        return "[Ed25519FieldElement val=" + Utils.bytesToHex(toByteArray()) + "]";
    }
}
