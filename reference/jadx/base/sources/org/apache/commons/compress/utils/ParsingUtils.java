package org.apache.commons.compress.utils;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class ParsingUtils {
    public static int parseIntValue(String str) throws IOException {
        return parseIntValue(str, 10);
    }

    public static int parseIntValue(String str, int i) throws IOException {
        try {
            return Integer.parseInt(str, i);
        } catch (NumberFormatException unused) {
            throw new IOException("Unable to parse int from string value: " + str);
        }
    }

    public static long parseLongValue(String str) throws IOException {
        return parseLongValue(str, 10);
    }

    public static long parseLongValue(String str, int i) throws IOException {
        try {
            return Long.parseLong(str, i);
        } catch (NumberFormatException unused) {
            throw new IOException("Unable to parse long from string value: " + str);
        }
    }

    private ParsingUtils() {
    }
}
