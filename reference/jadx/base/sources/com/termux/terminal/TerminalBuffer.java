package com.termux.terminal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TerminalBuffer {
    int mColumns;
    TerminalRow[] mLines;
    int mScreenRows;
    int mTotalRows;
    private int mActiveTranscriptRows = 0;
    private int mScreenFirstRow = 0;

    public TerminalBuffer(int i, int i2, int i3) {
        this.mColumns = i;
        this.mTotalRows = i2;
        this.mScreenRows = i3;
        this.mLines = new TerminalRow[i2];
        blockSet(0, 0, i, i3, 32, TextStyle.NORMAL);
    }

    public String getTranscriptText() {
        return getSelectedText(0, -getActiveTranscriptRows(), this.mColumns, this.mScreenRows).trim();
    }

    public String getTranscriptTextWithoutJoinedLines() {
        return getSelectedText(0, -getActiveTranscriptRows(), this.mColumns, this.mScreenRows, false).trim();
    }

    public String getTranscriptTextWithFullLinesJoined() {
        return getSelectedText(0, -getActiveTranscriptRows(), this.mColumns, this.mScreenRows, true, true).trim();
    }

    public String getSelectedText(int i, int i2, int i3, int i4) {
        return getSelectedText(i, i2, i3, i4, true);
    }

    public String getSelectedText(int i, int i2, int i3, int i4, boolean z) {
        return getSelectedText(i, i2, i3, i4, true, false);
    }

    public String getSelectedText(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        int i5;
        int i6;
        StringBuilder sb = new StringBuilder();
        int i7 = this.mColumns;
        int i8 = i2 < (-getActiveTranscriptRows()) ? -getActiveTranscriptRows() : i2;
        int i9 = this.mScreenRows;
        int i10 = i4 >= i9 ? i9 - 1 : i4;
        int i11 = i8;
        while (i11 <= i10) {
            int i12 = i11 == i8 ? i : 0;
            if (i11 != i10 || (i5 = i3 + 1) > i7) {
                i5 = i7;
            }
            TerminalRow terminalRow = this.mLines[externalToInternalRow(i11)];
            int iFindStartOfColumn = terminalRow.findStartOfColumn(i12);
            int iFindStartOfColumn2 = i5 < this.mColumns ? terminalRow.findStartOfColumn(i5) : terminalRow.getSpaceUsed();
            if (iFindStartOfColumn2 == iFindStartOfColumn) {
                iFindStartOfColumn2 = terminalRow.findStartOfColumn(i5 + 1);
            }
            char[] cArr = terminalRow.mText;
            boolean lineWrap = getLineWrap(i11);
            if (lineWrap && i5 == i7) {
                i6 = iFindStartOfColumn2 - 1;
            } else {
                i6 = -1;
                for (int i13 = iFindStartOfColumn; i13 < iFindStartOfColumn2; i13++) {
                    if (cArr[i13] != ' ') {
                        i6 = i13;
                    }
                }
            }
            if (i6 != -1) {
                sb.append(cArr, iFindStartOfColumn, (i6 - iFindStartOfColumn) + 1);
            }
            boolean z3 = i6 == iFindStartOfColumn2 + (-1);
            if ((!z || !lineWrap) && ((!z2 || !z3) && i11 < i10 && i11 < this.mScreenRows - 1)) {
                sb.append('\n');
            }
            i11++;
        }
        return sb.toString();
    }

    public int getActiveTranscriptRows() {
        return this.mActiveTranscriptRows;
    }

    public int getActiveRows() {
        return this.mActiveTranscriptRows + this.mScreenRows;
    }

    public int externalToInternalRow(int i) {
        if (i < (-this.mActiveTranscriptRows) || i > this.mScreenRows) {
            throw new IllegalArgumentException("extRow=" + i + ", mScreenRows=" + this.mScreenRows + ", mActiveTranscriptRows=" + this.mActiveTranscriptRows);
        }
        int i2 = this.mScreenFirstRow + i;
        int i3 = this.mTotalRows;
        return i2 < 0 ? i3 + i2 : i2 % i3;
    }

    public void setLineWrap(int i) {
        this.mLines[externalToInternalRow(i)].mLineWrap = true;
    }

    public boolean getLineWrap(int i) {
        return this.mLines[externalToInternalRow(i)].mLineWrap;
    }

    public void clearLineWrap(int i) {
        this.mLines[externalToInternalRow(i)].mLineWrap = false;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x018e  */
    /* JADX WARN: Code duplicated, block: B:105:0x019a  */
    /* JADX WARN: Code duplicated, block: B:108:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:111:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:130:0x020f  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x014a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0156  */
    /* JADX WARN: Code duplicated, block: B:91:0x0169  */
    /* JADX WARN: Code duplicated, block: B:94:0x0173  */
    /* JADX WARN: Code duplicated, block: B:96:0x017c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x017e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0185  */
    public void resize(int i, int i2, int i3, int[] iArr, long j, boolean z) {
        int i4;
        char c;
        TerminalRow[] terminalRowArr;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int spaceUsed;
        int i11;
        boolean z2;
        long j2;
        int i12;
        int i13;
        int i14;
        boolean z3;
        int i15;
        long style;
        char c2;
        int codePoint;
        int iWidth;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iMax;
        int i21 = 0;
        if (i == this.mColumns && i2 <= this.mTotalRows) {
            int i22 = this.mScreenRows;
            int i23 = i22 - i2;
            if (i23 > 0 && i23 < i22) {
                for (int i24 = i22 - 1; i24 > 0 && iArr[1] < i24; i24--) {
                    TerminalRow terminalRow = this.mLines[externalToInternalRow(i24)];
                    if ((terminalRow == null || terminalRow.isBlank()) && (i23 = i23 - 1) == 0) {
                        break;
                    }
                }
            } else if (i23 < 0 && i23 != (iMax = Math.max(i23, -this.mActiveTranscriptRows))) {
                for (int i25 = 0; i25 < iMax - i23; i25++) {
                    allocateFullLineIfNecessary(((this.mScreenFirstRow + this.mScreenRows) + i25) % this.mTotalRows).clear(j);
                }
                i23 = iMax;
            }
            int i26 = this.mScreenFirstRow + i23;
            this.mScreenFirstRow = i26;
            int i27 = this.mTotalRows;
            this.mScreenFirstRow = i26 < 0 ? i26 + i27 : i26 % i27;
            this.mTotalRows = i3;
            this.mActiveTranscriptRows = z ? 0 : Math.max(0, this.mActiveTranscriptRows + i23);
            iArr[1] = iArr[1] - i23;
            this.mScreenRows = i2;
            c = 1;
            i4 = 0;
        } else {
            TerminalRow[] terminalRowArr2 = this.mLines;
            this.mLines = new TerminalRow[i3];
            for (int i28 = 0; i28 < i3; i28++) {
                this.mLines[i28] = new TerminalRow(i, j);
            }
            int i29 = this.mActiveTranscriptRows;
            int i30 = this.mScreenFirstRow;
            int i31 = this.mScreenRows;
            int i32 = this.mTotalRows;
            this.mTotalRows = i3;
            this.mScreenRows = i2;
            this.mScreenFirstRow = 0;
            this.mActiveTranscriptRows = 0;
            this.mColumns = i;
            int i33 = iArr[1];
            int i34 = iArr[0];
            int i35 = -1;
            int i36 = -i29;
            int i37 = -1;
            boolean z4 = false;
            int i38 = 0;
            int i39 = 0;
            int i40 = 0;
            while (i36 < i31) {
                int i41 = i30 + i36;
                TerminalRow terminalRow2 = terminalRowArr2[i41 < 0 ? i32 + i41 : i41 % i32];
                int i42 = i36 == i33 ? 1 : i21;
                if (terminalRow2 == null || ((z4 || i42 == 0) && terminalRow2.isBlank())) {
                    terminalRowArr = terminalRowArr2;
                    i5 = i30;
                    i6 = i34;
                    i7 = i36;
                    i38++;
                    z4 = z4;
                } else {
                    boolean z5 = z4;
                    if (i38 > 0) {
                        int i43 = i21;
                        int i44 = i39;
                        while (i43 < i38) {
                            int i45 = i34;
                            int i46 = this.mScreenRows;
                            int i47 = i36;
                            if (i44 == i46 - 1) {
                                scrollDownOneLine(0, i46, j);
                            } else {
                                i44++;
                            }
                            i43++;
                            i34 = i45;
                            i36 = i47;
                            i40 = 0;
                        }
                        i8 = i34;
                        i9 = i36;
                        i39 = i44;
                        i10 = 0;
                    } else {
                        i8 = i34;
                        i9 = i36;
                        i10 = i38;
                    }
                    if (i42 != 0 || terminalRow2.mLineWrap) {
                        spaceUsed = terminalRow2.getSpaceUsed();
                        if (i42 != 0) {
                            i11 = spaceUsed;
                            z2 = true;
                        }
                        j2 = 0;
                        i38 = i10;
                        i12 = i40;
                        i13 = 0;
                        i14 = 0;
                        z3 = z5;
                        int i48 = i39;
                        int i49 = i35;
                        i15 = i48;
                        while (true) {
                            if (i13 < i11) {
                                terminalRowArr = terminalRowArr2;
                                i5 = i30;
                                i6 = i8;
                                i7 = i9;
                                z4 = z3;
                                i40 = i12;
                                break;
                            }
                            style = j2;
                            c2 = terminalRow2.mText[i13];
                            if (Character.isHighSurrogate(c2)) {
                                codePoint = c2;
                                i13++;
                                codePoint = Character.toCodePoint(c2, terminalRow2.mText[i13]);
                            }
                            codePoint = c2;
                            int i50 = codePoint;
                            int i51 = i13;
                            iWidth = WcWidth.width(i50 == true ? 1 : 0);
                            if (iWidth > 0) {
                                style = terminalRow2.getStyle(i14);
                            }
                            if (i12 + iWidth > this.mColumns) {
                                setLineWrap(i15);
                                i20 = this.mScreenRows;
                                if (i15 == i20 - 1) {
                                    if (z3) {
                                        i37--;
                                    }
                                    scrollDownOneLine(0, i20, j);
                                } else {
                                    i15++;
                                }
                                i18 = i37;
                                i16 = i15;
                                i17 = 0;
                            } else {
                                i16 = i15;
                                i17 = i12;
                                i18 = i37;
                            }
                            if (iWidth <= 0 || i17 <= 0) {
                                i19 = 0;
                            } else {
                                i19 = 1;
                            }
                            int i52 = i11;
                            terminalRowArr = terminalRowArr2;
                            i5 = i30;
                            i6 = i8;
                            i7 = i9;
                            setChar(i17 - i19, i16, i50 == true ? 1 : 0, style);
                            if (iWidth > 0) {
                                if (i33 == i7 || i6 != i14) {
                                    i37 = i18;
                                } else {
                                    i37 = i16;
                                    i49 = i17;
                                    z3 = true;
                                }
                                i14 += iWidth;
                                i17 += iWidth;
                                if (z2 && z3) {
                                    z4 = z3;
                                    i15 = i16;
                                    i40 = i17;
                                    break;
                                }
                            } else {
                                i37 = i18;
                            }
                            i12 = i17;
                            i13 = i51 + 1;
                            i8 = i6;
                            i9 = i7;
                            j2 = style;
                            i15 = i16;
                            terminalRowArr2 = terminalRowArr;
                            i30 = i5;
                            i11 = i52;
                        }
                        if (i7 == i31 - 1 && !terminalRow2.mLineWrap) {
                            int i53 = this.mScreenRows;
                            if (i15 == i53 - 1) {
                                if (z4) {
                                    i37--;
                                }
                                scrollDownOneLine(0, i53, j);
                            } else {
                                i15++;
                            }
                            i40 = 0;
                        }
                        int i54 = i49;
                        i39 = i15;
                        i35 = i54;
                    } else {
                        spaceUsed = 0;
                        for (int i55 = 0; i55 < terminalRow2.getSpaceUsed(); i55++) {
                            if (terminalRow2.mText[i55] != ' ') {
                                spaceUsed = i55 + 1;
                            }
                        }
                    }
                    i11 = spaceUsed;
                    z2 = false;
                    j2 = 0;
                    i38 = i10;
                    i12 = i40;
                    i13 = 0;
                    i14 = 0;
                    z3 = z5;
                    int i410 = i39;
                    int i411 = i35;
                    i15 = i410;
                    while (true) {
                        if (i13 < i11) {
                            terminalRowArr = terminalRowArr2;
                            i5 = i30;
                            i6 = i8;
                            i7 = i9;
                            z4 = z3;
                            i40 = i12;
                            break;
                        }
                        style = j2;
                        c2 = terminalRow2.mText[i13];
                        if (Character.isHighSurrogate(c2)) {
                            codePoint = c2;
                            i13++;
                            codePoint = Character.toCodePoint(c2, terminalRow2.mText[i13]);
                        }
                        codePoint = c2;
                        int i56 = codePoint;
                        int i57 = i13;
                        iWidth = WcWidth.width(i56 == true ? 1 : 0);
                        if (iWidth > 0) {
                            style = terminalRow2.getStyle(i14);
                        }
                        if (i12 + iWidth > this.mColumns) {
                            setLineWrap(i15);
                            i20 = this.mScreenRows;
                            if (i15 == i20 - 1) {
                                if (z3) {
                                    i37--;
                                }
                                scrollDownOneLine(0, i20, j);
                            } else {
                                i15++;
                            }
                            i18 = i37;
                            i16 = i15;
                            i17 = 0;
                        } else {
                            i16 = i15;
                            i17 = i12;
                            i18 = i37;
                        }
                        if (iWidth <= 0) {
                            i19 = 0;
                        } else {
                            i19 = 0;
                        }
                        int i58 = i11;
                        terminalRowArr = terminalRowArr2;
                        i5 = i30;
                        i6 = i8;
                        i7 = i9;
                        setChar(i17 - i19, i16, i56 == true ? 1 : 0, style);
                        if (iWidth > 0) {
                            if (i33 == i7) {
                                i37 = i18;
                            } else {
                                i37 = i18;
                            }
                            i14 += iWidth;
                            i17 += iWidth;
                            if (z2) {
                                continue;
                            }
                        } else {
                            i37 = i18;
                        }
                        i12 = i17;
                        i13 = i57 + 1;
                        i8 = i6;
                        i9 = i7;
                        j2 = style;
                        i15 = i16;
                        terminalRowArr2 = terminalRowArr;
                        i30 = i5;
                        i11 = i58;
                    }
                    if (i7 == i31 - 1) {
                    }
                    int i59 = i411;
                    i39 = i15;
                    i35 = i59;
                }
                i36 = i7 + 1;
                i34 = i6;
                terminalRowArr2 = terminalRowArr;
                i30 = i5;
                i21 = 0;
            }
            i4 = i21;
            iArr[i4] = i35;
            c = 1;
            iArr[1] = i37;
        }
        if (iArr[i4] < 0 || iArr[c] < 0) {
            iArr[c] = i4;
            iArr[i4] = i4;
        }
    }

    private void blockCopyLinesDown(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        int i3 = this.mTotalRows;
        int i4 = i2 - 1;
        TerminalRow terminalRow = this.mLines[((i + i4) + 1) % i3];
        while (i4 >= 0) {
            TerminalRow[] terminalRowArr = this.mLines;
            int i5 = i + i4;
            terminalRowArr[(i5 + 1) % i3] = terminalRowArr[i5 % i3];
            i4--;
        }
        this.mLines[i % i3] = terminalRow;
    }

    public void scrollDownOneLine(int i, int i2, long j) {
        int i3 = i2 - 1;
        if (i > i3 || i < 0 || i2 > this.mScreenRows) {
            throw new IllegalArgumentException("topMargin=" + i + ", bottomMargin=" + i2 + ", mScreenRows=" + this.mScreenRows);
        }
        blockCopyLinesDown(this.mScreenFirstRow, i);
        blockCopyLinesDown(externalToInternalRow(i2), this.mScreenRows - i2);
        int i4 = this.mScreenFirstRow + 1;
        int i5 = this.mTotalRows;
        this.mScreenFirstRow = i4 % i5;
        int i6 = this.mActiveTranscriptRows;
        if (i6 < i5 - this.mScreenRows) {
            this.mActiveTranscriptRows = i6 + 1;
        }
        int iExternalToInternalRow = externalToInternalRow(i3);
        TerminalRow[] terminalRowArr = this.mLines;
        TerminalRow terminalRow = terminalRowArr[iExternalToInternalRow];
        if (terminalRow == null) {
            terminalRowArr[iExternalToInternalRow] = new TerminalRow(this.mColumns, j);
        } else {
            terminalRow.clear(j);
        }
    }

    public void blockCopy(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        if (i3 == 0) {
            return;
        }
        if (i >= 0 && (i7 = i + i3) <= (i8 = this.mColumns) && i2 >= 0) {
            int i9 = i2 + i4;
            int i10 = this.mScreenRows;
            if (i9 <= i10 && i5 >= 0 && i3 + i5 <= i8 && i6 >= 0 && i6 + i4 <= i10) {
                boolean z = i2 > i6;
                for (int i11 = 0; i11 < i4; i11++) {
                    int i12 = z ? i11 : i4 - (i11 + 1);
                    allocateFullLineIfNecessary(externalToInternalRow(i12 + i6)).copyInterval(allocateFullLineIfNecessary(externalToInternalRow(i2 + i12)), i, i7, i5);
                }
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    public void blockSet(int i, int i2, int i3, int i4, int i5, long j) {
        if (i < 0 || i + i3 > this.mColumns || i2 < 0 || i2 + i4 > this.mScreenRows) {
            throw new IllegalArgumentException("Illegal arguments! blockSet(" + i + ", " + i2 + ", " + i3 + ", " + i4 + ", " + i5 + ", " + this.mColumns + ", " + this.mScreenRows + ")");
        }
        for (int i6 = 0; i6 < i4; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                setChar(i + i7, i2 + i6, i5, j);
            }
        }
    }

    public TerminalRow allocateFullLineIfNecessary(int i) {
        TerminalRow[] terminalRowArr = this.mLines;
        TerminalRow terminalRow = terminalRowArr[i];
        if (terminalRow != null) {
            return terminalRow;
        }
        TerminalRow terminalRow2 = new TerminalRow(this.mColumns, 0L);
        terminalRowArr[i] = terminalRow2;
        return terminalRow2;
    }

    public void setChar(int i, int i2, int i3, long j) {
        if (i2 >= this.mScreenRows || i >= this.mColumns) {
            throw new IllegalArgumentException("row=" + i2 + ", column=" + i + ", mScreenRows=" + this.mScreenRows + ", mColumns=" + this.mColumns);
        }
        allocateFullLineIfNecessary(externalToInternalRow(i2)).setChar(i, i3, j);
    }

    public long getStyleAt(int i, int i2) {
        return allocateFullLineIfNecessary(externalToInternalRow(i)).getStyle(i2);
    }

    public void setOrClearEffect(int i, boolean z, boolean z2, boolean z3, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i4;
        while (i8 < i6) {
            TerminalRow terminalRow = this.mLines[externalToInternalRow(i8)];
            int i9 = (z3 || i8 + 1 == i6) ? i7 : i3;
            for (int i10 = (z3 || i8 == i4) ? i5 : i2; i10 < i9; i10++) {
                long style = terminalRow.getStyle(i10);
                int iDecodeForeColor = TextStyle.decodeForeColor(style);
                int iDecodeBackColor = TextStyle.decodeBackColor(style);
                int iDecodeEffect = TextStyle.decodeEffect(style);
                terminalRow.mStyle[i10] = TextStyle.encode(iDecodeForeColor, iDecodeBackColor, z2 ? ((~iDecodeEffect) & i) | ((~i) & iDecodeEffect) : z ? iDecodeEffect | i : iDecodeEffect & (~i));
            }
            i8++;
        }
    }

    public void clearTranscript() {
        int i = this.mScreenFirstRow;
        int i2 = this.mActiveTranscriptRows;
        if (i < i2) {
            TerminalRow[] terminalRowArr = this.mLines;
            int i3 = this.mTotalRows;
            Arrays.fill(terminalRowArr, (i + i3) - i2, i3, (Object) null);
            Arrays.fill(this.mLines, 0, this.mScreenFirstRow, (Object) null);
        } else {
            Arrays.fill(this.mLines, i - i2, i, (Object) null);
        }
        this.mActiveTranscriptRows = 0;
    }
}
