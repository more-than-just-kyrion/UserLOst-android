package com.termux.terminal;

import java.util.Arrays;
import org.apache.http.message.TokenParser;

/* JADX INFO: loaded from: classes2.dex */
public final class TerminalRow {
    private static final float SPARE_CAPACITY_FACTOR = 1.5f;
    private final int mColumns;
    boolean mHasNonOneWidthOrSurrogateChars;
    boolean mLineWrap;
    private short mSpaceUsed;
    final long[] mStyle;
    public char[] mText;

    public TerminalRow(int i, long j) {
        this.mColumns = i;
        this.mText = new char[(int) (i * SPARE_CAPACITY_FACTOR)];
        this.mStyle = new long[i];
        clear(j);
    }

    public void copyInterval(TerminalRow terminalRow, int i, int i2, int i3) {
        int codePoint;
        this.mHasNonOneWidthOrSurrogateChars |= terminalRow.mHasNonOneWidthOrSurrogateChars;
        int iFindStartOfColumn = terminalRow.findStartOfColumn(i);
        int iFindStartOfColumn2 = terminalRow.findStartOfColumn(i2);
        boolean z = i > 0 && terminalRow.wideDisplayCharacterStartingAt(i + (-1));
        char[] cArrCopyOf = terminalRow.mText;
        if (this == terminalRow) {
            cArrCopyOf = Arrays.copyOf(cArrCopyOf, cArrCopyOf.length);
        }
        int i4 = 0;
        while (iFindStartOfColumn < iFindStartOfColumn2) {
            char c = cArrCopyOf[iFindStartOfColumn];
            if (Character.isHighSurrogate(c)) {
                codePoint = c;
                iFindStartOfColumn++;
                codePoint = Character.toCodePoint(c, cArrCopyOf[iFindStartOfColumn]);
            }
            if (z) {
                codePoint = 32;
                z = false;
            }
            int iWidth = WcWidth.width(codePoint);
            if (iWidth > 0) {
                i3 += i4;
                i += i4;
                i4 = iWidth;
            }
            setChar(i3, codePoint, terminalRow.getStyle(i));
            iFindStartOfColumn++;
        }
    }

    public int getSpaceUsed() {
        return this.mSpaceUsed;
    }

    public int findStartOfColumn(int i) {
        if (i == this.mColumns) {
            return getSpaceUsed();
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            char c = this.mText[i2];
            boolean zIsHighSurrogate = Character.isHighSurrogate(c);
            int i5 = c;
            if (zIsHighSurrogate) {
                int codePoint = Character.toCodePoint(c, this.mText[i4]);
                i4 = i2 + 2;
                i5 = codePoint;
            }
            int iWidth = WcWidth.width(i5);
            if (iWidth > 0) {
                i3 += iWidth;
                if (i3 == i) {
                    while (i4 < this.mSpaceUsed) {
                        if (Character.isHighSurrogate(this.mText[i4])) {
                            char[] cArr = this.mText;
                            if (WcWidth.width(Character.toCodePoint(cArr[i4], cArr[i4 + 1])) > 0) {
                                break;
                            }
                            i4 += 2;
                        } else {
                            if (WcWidth.width(this.mText[i4]) > 0) {
                                break;
                            }
                            i4++;
                        }
                    }
                    return i4;
                }
                if (i3 > i) {
                    return i2;
                }
            }
            i2 = i4;
        }
    }

    private boolean wideDisplayCharacterStartingAt(int i) {
        int codePoint;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.mSpaceUsed) {
            int i4 = i2 + 1;
            char c = this.mText[i2];
            if (Character.isHighSurrogate(c)) {
                i2 += 2;
                codePoint = Character.toCodePoint(c, this.mText[i4]);
            } else {
                i2 = i4;
                codePoint = c;
            }
            int iWidth = WcWidth.width(codePoint);
            if (iWidth > 0) {
                if (i3 == i && iWidth == 2) {
                    return true;
                }
                i3 += iWidth;
                if (i3 > i) {
                    break;
                }
            }
        }
        return false;
    }

    public void clear(long j) {
        Arrays.fill(this.mText, TokenParser.SP);
        Arrays.fill(this.mStyle, j);
        this.mSpaceUsed = (short) this.mColumns;
        this.mHasNonOneWidthOrSurrogateChars = false;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0067  */
    /* JADX WARN: Code duplicated, block: B:34:0x006c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Code duplicated, block: B:40:0x007d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0085  */
    /* JADX WARN: Code duplicated, block: B:43:0x0095  */
    /* JADX WARN: Code duplicated, block: B:44:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x009b  */
    /* JADX WARN: Code duplicated, block: B:49:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e5  */
    public void setChar(int i, int i2, long j) {
        int i3;
        char[] cArr;
        int iWidth;
        int i4;
        int iFindStartOfColumn;
        int i5;
        int iCharCount;
        int i6;
        int i7;
        int i8;
        int i9;
        short s;
        short s2;
        int i10;
        this.mStyle[i] = j;
        int iWidth2 = WcWidth.width(i2);
        if (!this.mHasNonOneWidthOrSurrogateChars) {
            if (i2 >= 65536 || iWidth2 != 1) {
                this.mHasNonOneWidthOrSurrogateChars = true;
            } else {
                this.mText[i] = (char) i2;
                return;
            }
        }
        boolean z = iWidth2 <= 0;
        boolean z2 = i > 0 && wideDisplayCharacterStartingAt(i + (-1));
        if (!z) {
            if (z2) {
                setChar(i - 1, 32, j);
            }
            if (iWidth2 == 2 && wideDisplayCharacterStartingAt(i + 1)) {
                setChar(i + 1, 32, j);
            }
        } else {
            if (z2) {
                i3 = i - 1;
            }
            cArr = this.mText;
            int iFindStartOfColumn2 = findStartOfColumn(i3);
            iWidth = WcWidth.width(cArr, iFindStartOfColumn2);
            i4 = i3 + iWidth;
            if (i4 < this.mColumns) {
                iFindStartOfColumn = findStartOfColumn(i4);
            } else {
                iFindStartOfColumn = this.mSpaceUsed;
            }
            i5 = iFindStartOfColumn - iFindStartOfColumn2;
            iCharCount = Character.charCount(i2);
            if (z) {
                iCharCount += i5;
            }
            i6 = iFindStartOfColumn2 + i5;
            i7 = iFindStartOfColumn2 + iCharCount;
            i8 = iCharCount - i5;
            if (i8 > 0) {
                s2 = this.mSpaceUsed;
                i10 = s2 - i6;
                if (s2 + i8 > cArr.length) {
                    char[] cArr2 = new char[cArr.length + this.mColumns];
                    System.arraycopy(cArr, 0, cArr2, 0, i6);
                    System.arraycopy(cArr, i6, cArr2, i7, i10);
                    this.mText = cArr2;
                    cArr = cArr2;
                } else {
                    System.arraycopy(cArr, i6, cArr, i7, i10);
                }
            } else if (i8 < 0) {
                System.arraycopy(cArr, i6, cArr, i7, this.mSpaceUsed - i6);
            }
            this.mSpaceUsed = (short) (this.mSpaceUsed + i8);
            if (!z) {
                i5 = 0;
            }
            Character.toChars(i2, cArr, iFindStartOfColumn2 + i5);
            if (iWidth == 2) {
                i9 = 1;
            } else {
                if (iWidth2 == 1) {
                    s = this.mSpaceUsed;
                    if (s + 1 > cArr.length) {
                        char[] cArr3 = new char[cArr.length + this.mColumns];
                        System.arraycopy(cArr, 0, cArr3, 0, i7);
                        System.arraycopy(cArr, i7, cArr3, i7 + 1, this.mSpaceUsed - i7);
                        this.mText = cArr3;
                        cArr = cArr3;
                    } else {
                        System.arraycopy(cArr, i7, cArr, i7 + 1, s - i7);
                    }
                    cArr[i7] = TokenParser.SP;
                    this.mSpaceUsed = (short) (this.mSpaceUsed + 1);
                    return;
                }
                i9 = 1;
            }
            if (iWidth == i9 || iWidth2 != 2) {
            }
            int i11 = this.mColumns;
            if (i3 == i11 - 1) {
                throw new IllegalArgumentException("Cannot put wide character in last column");
            }
            if (i3 == i11 - 2) {
                this.mSpaceUsed = (short) i7;
                return;
            }
            int i12 = (Character.isHighSurrogate(this.mText[i7]) ? 2 : i9) + i7;
            System.arraycopy(cArr, i12, cArr, i7, this.mSpaceUsed - i12);
            this.mSpaceUsed = (short) (this.mSpaceUsed - (i12 - i7));
            return;
        }
        i3 = i;
        cArr = this.mText;
        int iFindStartOfColumn3 = findStartOfColumn(i3);
        iWidth = WcWidth.width(cArr, iFindStartOfColumn3);
        i4 = i3 + iWidth;
        if (i4 < this.mColumns) {
            iFindStartOfColumn = findStartOfColumn(i4);
        } else {
            iFindStartOfColumn = this.mSpaceUsed;
        }
        i5 = iFindStartOfColumn - iFindStartOfColumn3;
        iCharCount = Character.charCount(i2);
        if (z) {
            iCharCount += i5;
        }
        i6 = iFindStartOfColumn3 + i5;
        i7 = iFindStartOfColumn3 + iCharCount;
        i8 = iCharCount - i5;
        if (i8 > 0) {
            s2 = this.mSpaceUsed;
            i10 = s2 - i6;
            if (s2 + i8 > cArr.length) {
                char[] cArr4 = new char[cArr.length + this.mColumns];
                System.arraycopy(cArr, 0, cArr4, 0, i6);
                System.arraycopy(cArr, i6, cArr4, i7, i10);
                this.mText = cArr4;
                cArr = cArr4;
            } else {
                System.arraycopy(cArr, i6, cArr, i7, i10);
            }
        } else if (i8 < 0) {
            System.arraycopy(cArr, i6, cArr, i7, this.mSpaceUsed - i6);
        }
        this.mSpaceUsed = (short) (this.mSpaceUsed + i8);
        if (!z) {
            i5 = 0;
        }
        Character.toChars(i2, cArr, iFindStartOfColumn3 + i5);
        if (iWidth == 2) {
            i9 = 1;
        } else {
            if (iWidth2 == 1) {
                s = this.mSpaceUsed;
                if (s + 1 > cArr.length) {
                    char[] cArr5 = new char[cArr.length + this.mColumns];
                    System.arraycopy(cArr, 0, cArr5, 0, i7);
                    System.arraycopy(cArr, i7, cArr5, i7 + 1, this.mSpaceUsed - i7);
                    this.mText = cArr5;
                    cArr = cArr5;
                } else {
                    System.arraycopy(cArr, i7, cArr, i7 + 1, s - i7);
                }
                cArr[i7] = TokenParser.SP;
                this.mSpaceUsed = (short) (this.mSpaceUsed + 1);
                return;
            }
            i9 = 1;
        }
        if (iWidth == i9) {
        }
    }

    boolean isBlank() {
        int spaceUsed = getSpaceUsed();
        for (int i = 0; i < spaceUsed; i++) {
            if (this.mText[i] != ' ') {
                return false;
            }
        }
        return true;
    }

    public final long getStyle(int i) {
        return this.mStyle[i];
    }
}
