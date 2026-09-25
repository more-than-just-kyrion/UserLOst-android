package com.trilead.ssh2.util;

/* JADX INFO: loaded from: classes2.dex */
public class Tokenizer {
    public static String[] parseTokens(String str, char c) {
        if (str.length() == 0) {
            return new String[0];
        }
        int i = 1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == c) {
                i++;
            }
        }
        String[] strArr = new String[i];
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (i3 >= str.length()) {
                strArr[i4] = "";
            } else {
                int iIndexOf = str.indexOf(c, i3);
                if (iIndexOf == -1) {
                    iIndexOf = str.length();
                }
                strArr[i4] = str.substring(i3, iIndexOf);
                i3 = iIndexOf + 1;
            }
        }
        return strArr;
    }
}
