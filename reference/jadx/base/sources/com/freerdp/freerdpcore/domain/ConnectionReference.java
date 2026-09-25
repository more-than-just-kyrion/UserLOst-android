package com.freerdp.freerdpcore.domain;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionReference {
    public static final String PATH_FILE = "FILE/";
    public static final String PATH_HOSTNAME = "HOST/";
    public static final String PATH_MANUAL_BOOKMARK_ID = "MBMID/";
    public static final String PATH_PLACEHOLDER = "PLCHLD/";

    public static String getManualBookmarkReference(long j) {
        return PATH_MANUAL_BOOKMARK_ID + j;
    }

    public static String getHostnameReference(String str) {
        return PATH_HOSTNAME + str;
    }

    public static String getPlaceholderReference(String str) {
        return PATH_PLACEHOLDER + str;
    }

    public static String getFileReference(String str) {
        return PATH_FILE + str;
    }

    public static boolean isBookmarkReference(String str) {
        return str.startsWith(PATH_MANUAL_BOOKMARK_ID);
    }

    public static boolean isManualBookmarkReference(String str) {
        return str.startsWith(PATH_MANUAL_BOOKMARK_ID);
    }

    public static boolean isHostnameReference(String str) {
        return str.startsWith(PATH_HOSTNAME);
    }

    public static boolean isPlaceholderReference(String str) {
        return str.startsWith(PATH_PLACEHOLDER);
    }

    public static boolean isFileReference(String str) {
        return str.startsWith(PATH_FILE);
    }

    public static long getManualBookmarkId(String str) {
        return Integer.parseInt(str.substring(PATH_MANUAL_BOOKMARK_ID.length()));
    }

    public static String getHostname(String str) {
        return str.substring(PATH_HOSTNAME.length());
    }

    public static String getPlaceholder(String str) {
        return str.substring(PATH_PLACEHOLDER.length());
    }

    public static String getFile(String str) {
        return str.substring(PATH_FILE.length());
    }
}
