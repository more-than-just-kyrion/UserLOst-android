package io.sentry.util;

import java.io.Closeable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    private Util() {
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private static Map<String, String> parseCsv(String str, String str2) {
        if (isNullOrEmpty(str)) {
            return Collections.emptyMap();
        }
        String[] strArrSplit = str.split(",");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str3 : strArrSplit) {
            String[] strArrSplit2 = str3.split(":");
            if (strArrSplit2.length != 2) {
                throw new IllegalArgumentException("Invalid " + str2 + " entry: " + str3);
            }
            linkedHashMap.put(strArrSplit2[0], strArrSplit2[1]);
        }
        return linkedHashMap;
    }

    public static Map<String, String> parseTags(String str) {
        return parseCsv(str, "tags");
    }

    public static Map<String, String> parseExtra(String str) {
        return parseCsv(str, "extras");
    }

    @Deprecated
    public static Set<String> parseExtraTags(String str) {
        return parseMdcTags(str);
    }

    public static Set<String> parseMdcTags(String str) {
        if (isNullOrEmpty(str)) {
            return Collections.emptySet();
        }
        return new HashSet(Arrays.asList(str.split(",")));
    }

    public static Integer parseInteger(String str, Integer num) {
        return isNullOrEmpty(str) ? num : Integer.valueOf(Integer.parseInt(str));
    }

    public static Long parseLong(String str, Long l) {
        return isNullOrEmpty(str) ? l : Long.valueOf(Long.parseLong(str));
    }

    public static Double parseDouble(String str, Double d) {
        return isNullOrEmpty(str) ? d : Double.valueOf(Double.parseDouble(str));
    }

    public static String trimString(String str, int i) {
        if (str == null) {
            return null;
        }
        return str.length() > i ? str.substring(0, i - 3) + "..." : str;
    }

    public static boolean safelyRemoveShutdownHook(Thread thread) {
        try {
            return Runtime.getRuntime().removeShutdownHook(thread);
        } catch (IllegalStateException e) {
            if (e.getMessage().equals("Shutdown in progress")) {
                return false;
            }
            throw e;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }
}
