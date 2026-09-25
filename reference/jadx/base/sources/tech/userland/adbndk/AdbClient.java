package tech.userland.adbndk;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class AdbClient {
    private static native String nativeConnect(String str);

    private static native boolean nativeInit(String str);

    private static native String nativePair(String str, String str2);

    private static native String nativeRunCommand(String[] strArr);

    private static native String[] nativeRunCommandChecked(String[] strArr);

    private static native void nativeShutdown();

    static {
        System.loadLibrary("adbndk");
    }

    private AdbClient() {
    }

    public static boolean init(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return nativeInit(str);
    }

    public static String runCommand(String... strArr) {
        return nativeRunCommand(strArr);
    }

    public static final class CommandResult {
        public final int exitCode;
        public final String output;

        CommandResult(int i, String str) {
            this.exitCode = i;
            this.output = str;
        }

        public boolean isSuccess() {
            return this.exitCode == 0;
        }
    }

    public static CommandResult runCommandChecked(String... strArr) {
        int i;
        String[] strArrNativeRunCommandChecked = nativeRunCommandChecked(strArr);
        try {
            i = Integer.parseInt(strArrNativeRunCommandChecked[0]);
        } catch (NumberFormatException unused) {
            i = -1;
        }
        return new CommandResult(i, strArrNativeRunCommandChecked[1]);
    }

    public static String pair(String str, String str2) {
        return nativePair(str, str2);
    }

    public static String connect(String str) {
        return nativeConnect(str);
    }

    public static void shutdown() {
        nativeShutdown();
    }
}
