package tech.ula.library.utils;

import android.content.Context;
import android.util.Log;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PulseAudioServer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/ula/library/utils/PulseAudioServer;", "", "()V", "ACL", "", "TAG", "started", "", "ensureRunning", "", "context", "Landroid/content/Context;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PulseAudioServer {
    private static final String ACL = "127.0.0.1;10.0.0.0/8;172.16.0.0/12;192.168.0.0/16";
    public static final PulseAudioServer INSTANCE = new PulseAudioServer();
    private static final String TAG = "PulseAudioServer";
    private static volatile boolean started;

    private PulseAudioServer() {
    }

    public final void ensureRunning(Context context) {
        Object objM341constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        if (started) {
            return;
        }
        String nativeLibraryDir = context.getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        String absolutePath = new UlaFiles(context, nativeLibraryDir, null, 4, null).getSupportDir().getAbsolutePath();
        ProcessBuilder processBuilder = new ProcessBuilder((List<String>) CollectionsKt.listOf((Object[]) new String[]{absolutePath + "/pulseaudio", "--log-level=4", "--log-target=stderr", "--start", "--load=module-sles-sink", "--load=module-sles-source", "--load=module-null-sink sink_name=virtspk sink_properties=device.description=Virtual_Speaker", "--load=module-native-protocol-tcp auth-ip-acl=127.0.0.1;10.0.0.0/8;172.16.0.0/12;192.168.0.0/16 auth-anonymous=1", "--exit-idle-time=-1"}));
        Map<String, String> mapEnvironment = processBuilder.environment();
        mapEnvironment.put("LD_LIBRARY_PATH", absolutePath);
        mapEnvironment.put("PULSE_SCRIPT", absolutePath + "/default.pa");
        mapEnvironment.put("PULSE_CONFIG", absolutePath + "/daemon.conf");
        mapEnvironment.put("PULSE_DLPATH", absolutePath + "/");
        mapEnvironment.put("XDG_DATA_HOME", absolutePath + "/");
        mapEnvironment.put("XDG_CONFIG_HOME", absolutePath + "/");
        mapEnvironment.put("XDG_STATE_HOME", absolutePath + "/");
        mapEnvironment.put("TMPDIR", absolutePath + "/");
        try {
            Result.Companion companion = Result.INSTANCE;
            PulseAudioServer pulseAudioServer = this;
            objM341constructorimpl = Result.m341constructorimpl(Integer.valueOf(processBuilder.start().waitFor()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM341constructorimpl = Result.m341constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM344exceptionOrNullimpl = Result.m344exceptionOrNullimpl(objM341constructorimpl);
        if (thM344exceptionOrNullimpl != null) {
            Log.w(TAG, "failed to start pulseaudio", thM344exceptionOrNullimpl);
        }
        started = true;
    }
}
