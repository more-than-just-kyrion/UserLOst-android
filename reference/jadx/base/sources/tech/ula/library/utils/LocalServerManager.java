package tech.ula.library.utils;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: LocalServerManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\n\u0010\u001a\u001a\u00020\f*\u00020\u001bJ\f\u0010\u001c\u001a\u00020\u0003*\u00020\u0010H\u0002J\f\u0010\u001d\u001a\u00020\u0003*\u00020\u0010H\u0002J\f\u0010\u001e\u001a\u00020\f*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Ltech/ula/library/utils/LocalServerManager;", "", "applicationFilesDirPath", "", "busyboxExecutor", "Ltech/ula/library/utils/BusyboxExecutor;", "sharedPreferences", "Landroid/content/SharedPreferences;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ljava/lang/String;Ltech/ula/library/utils/BusyboxExecutor;Landroid/content/SharedPreferences;Ltech/ula/library/utils/Logger;)V", "vncDisplayNumber", "", "deletePidFile", "", "session", "Ltech/ula/library/model/entities/Session;", "getProperty", "name", "isServerRunning", "", "setDisplayNumberAndStartTwm", "startSSHServer", "startServer", "startVNCServer", "stopService", "pid", "Ljava/lang/Process;", "pidFilePath", "pidRelativeFilePath", "serverPid", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalServerManager {
    private final String applicationFilesDirPath;
    private final BusyboxExecutor busyboxExecutor;
    private final Logger logger;
    private final SharedPreferences sharedPreferences;
    private final long vncDisplayNumber;

    public LocalServerManager(String applicationFilesDirPath, BusyboxExecutor busyboxExecutor, SharedPreferences sharedPreferences, Logger logger) {
        Intrinsics.checkNotNullParameter(applicationFilesDirPath, "applicationFilesDirPath");
        Intrinsics.checkNotNullParameter(busyboxExecutor, "busyboxExecutor");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.applicationFilesDirPath = applicationFilesDirPath;
        this.busyboxExecutor = busyboxExecutor;
        this.sharedPreferences = sharedPreferences;
        this.logger = logger;
        this.vncDisplayNumber = Long.parseLong(BuildConfig.VNC_DISPLAY);
    }

    public /* synthetic */ LocalServerManager(String str, BusyboxExecutor busyboxExecutor, SharedPreferences sharedPreferences, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, busyboxExecutor, sharedPreferences, (i & 8) != 0 ? new SentryLogger() : sentryLogger);
    }

    public final long pid(Process process) {
        Intrinsics.checkNotNullParameter(process, "<this>");
        return Long.parseLong(StringsKt.trim((CharSequence) StringsKt.substringBefore$default(StringsKt.substringBefore$default(StringsKt.substringAfter$default(process.toString(), "pid=", (String) null, 2, (Object) null), ",", (String) null, 2, (Object) null), "]", (String) null, 2, (Object) null)).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final String getProperty(String name) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        InputStream inputStream = Runtime.getRuntime().exec("getprop " + name).getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
        Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
        TextStreamsKt.forEachLine(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192), new Function1<String, Unit>() { // from class: tech.ula.library.utils.LocalServerManager.getProperty.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.String] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Ref.ObjectRef<String> objectRef2 = objectRef;
                objectRef2.element = ((Object) objectRef2.element) + it;
            }
        });
        return (String) objectRef.element;
    }

    public final long startServer(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        ServiceType serviceType = session.getServiceType();
        if (Intrinsics.areEqual(serviceType, ServiceType.Ssh.INSTANCE)) {
            return startSSHServer(session);
        }
        if (Intrinsics.areEqual(serviceType, ServiceType.Vnc.INSTANCE)) {
            return startVNCServer(session);
        }
        if (Intrinsics.areEqual(serviceType, ServiceType.Xsdl.INSTANCE)) {
            return setDisplayNumberAndStartTwm(session);
        }
        return 0L;
    }

    public final void stopService(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        ExecutionResult executionResultExecuteScript$default = BusyboxExecutor.executeScript$default(this.busyboxExecutor, "support/killProcTree.sh " + session.getPid() + " " + serverPid(session), null, 2, null);
        if (executionResultExecuteScript$default instanceof FailedExecution) {
            this.logger.addBreadcrumb(new UlaBreadcrumb("LocalServerManager", BreadcrumbType.RuntimeError.INSTANCE, "func: stopService err: " + ((FailedExecution) executionResultExecuteScript$default).getReason()));
        }
    }

    public final boolean isServerRunning(Session session) {
        Intrinsics.checkNotNullParameter(session, "session");
        String str = "support/isServerInProcTree.sh " + serverPid(session);
        boolean z = true;
        if (Intrinsics.areEqual(session.getServiceType(), ServiceType.Xsdl.INSTANCE)) {
            return true;
        }
        ExecutionResult executionResultExecuteScript$default = BusyboxExecutor.executeScript$default(this.busyboxExecutor, str, null, 2, null);
        if (!(executionResultExecuteScript$default instanceof SuccessfulExecution)) {
            z = false;
            if (executionResultExecuteScript$default instanceof FailedExecution) {
                this.logger.addBreadcrumb(new UlaBreadcrumb("LocalServerManager", BreadcrumbType.RuntimeError.INSTANCE, "func: isServerRunning err: " + ((FailedExecution) executionResultExecuteScript$default).getReason()));
            }
        }
        return z;
    }

    private final void deletePidFile(Session session) {
        File file = new File(pidFilePath(session));
        if (file.exists()) {
            file.delete();
        }
    }

    private final long startSSHServer(Session session) {
        String strValueOf = String.valueOf(session.getFilesystemId());
        deletePidFile(session);
        HashMap map = new HashMap();
        if (session.getSoundSupport() || session.getMicSupport()) {
            map.put("SOUND_SUPPORT", "1");
        }
        ExecutionResult executionResultExecuteProotCommand$default = BusyboxExecutor.executeProotCommand$default(this.busyboxExecutor, "/support/common/startSSHServer.sh", strValueOf, false, map, null, null, 48, null);
        if (executionResultExecuteProotCommand$default instanceof OngoingExecution) {
            return pid(((OngoingExecution) executionResultExecuteProotCommand$default).getProcess());
        }
        if (executionResultExecuteProotCommand$default instanceof FailedExecution) {
            this.logger.addBreadcrumb(new UlaBreadcrumb("LocalServerManager", BreadcrumbType.RuntimeError.INSTANCE, "func: startSshServer err: " + ((FailedExecution) executionResultExecuteProotCommand$default).getReason()));
        }
        return -1L;
    }

    private final long startVNCServer(Session session) {
        String strValueOf = String.valueOf(session.getFilesystemId());
        deletePidFile(session);
        HashMap map = new HashMap();
        HashMap map2 = map;
        map2.put("HAS_CAMERA", String.valueOf(this.sharedPreferences.getInt("camera_supported", 0)));
        map2.put("HAS_MICROPHONE", String.valueOf(this.sharedPreferences.getInt("microphone_supported", 0)));
        map2.put("INITIAL_USERNAME", session.getUsername());
        map2.put("INITIAL_VNC_PASSWORD", session.getVncPassword());
        map2.put("DIMENSIONS", session.getGeometry());
        map2.put("VERSION_CODE", BuildConfig.VERSION_CODE);
        map2.put("VERSION_NAME", BuildConfig.VERSION_NAME);
        map2.put("VNC_DISPLAY", BuildConfig.VNC_DISPLAY);
        map2.put("INTENTS_DIR", "/Intents/");
        if (session.getSoundSupport() || session.getMicSupport()) {
            map2.put("SOUND_SUPPORT", "1");
        }
        if (this.sharedPreferences.contains("env")) {
            Gson gson = new Gson();
            String string = this.sharedPreferences.getString("env", "");
            Type type = new TypeToken<HashMap<String, String>>() { // from class: tech.ula.library.utils.LocalServerManager$startVNCServer$type$1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            Object objFromJson = gson.fromJson(string, type);
            Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
            map.putAll((HashMap) objFromJson);
        }
        if (this.sharedPreferences.getBoolean("pref_custom_hostname_enabled", false)) {
            String string2 = this.sharedPreferences.getString("pref_hostname", BuildConfig.DEFAULT_HOSTNAME);
            Intrinsics.checkNotNull(string2);
            map2.put("HOSTNAME", string2);
        } else if (this.sharedPreferences.contains("unique_id")) {
            String string3 = this.sharedPreferences.getString("unique_id", "localhost");
            Intrinsics.checkNotNull(string3);
            map2.put("HOSTNAME", string3);
        } else {
            map2.put("HOSTNAME", BuildConfig.DEFAULT_HOSTNAME);
        }
        map2.put("HOSTS", "127.0.0.1 localhost\n127.0.0.1 " + map.get("HOSTNAME"));
        if (this.sharedPreferences.getBoolean("pref_custom_dns_enabled", false)) {
            String string4 = this.sharedPreferences.getString("pref_dns", "search Home\nnameserver 8.8.8.8\nnameserver 8.8.4.4");
            Intrinsics.checkNotNull(string4);
            map2.put("RESOLV", string4);
        } else {
            map2.put("RESOLV", "");
            if (this.sharedPreferences.contains("search_domains")) {
                map2.put("RESOLV", map.get("RESOLV") + "search " + this.sharedPreferences.getString("search_domains", "Home"));
            } else {
                map2.put("RESOLV", map.get("RESOLV") + BuildConfig.DEFAULT_DNS_DOMAINS);
            }
            if (this.sharedPreferences.contains("current_dns0")) {
                Object obj = map.get("RESOLV");
                String string5 = this.sharedPreferences.getString("current_dns0", "8.8.8.8");
                Intrinsics.checkNotNull(string5);
                map2.put("RESOLV", obj + "\nnameserver " + StringsKt.removePrefix(string5, (CharSequence) "/"));
                if (this.sharedPreferences.contains("current_dns1")) {
                    Object obj2 = map.get("RESOLV");
                    String string6 = this.sharedPreferences.getString("current_dns1", "8.8.4.4");
                    Intrinsics.checkNotNull(string6);
                    map2.put("RESOLV", obj2 + "\nnameserver " + StringsKt.removePrefix(string6, (CharSequence) "/"));
                }
            } else {
                map2.put("RESOLV", map.get("RESOLV") + "\nnameserver 8.8.8.8\nnameserver 8.8.4.4");
            }
        }
        ExecutionResult executionResultExecuteProotCommand$default = BusyboxExecutor.executeProotCommand$default(this.busyboxExecutor, "/support/common/startVNCServer.sh", strValueOf, false, map, null, null, 48, null);
        if (executionResultExecuteProotCommand$default instanceof OngoingExecution) {
            return pid(((OngoingExecution) executionResultExecuteProotCommand$default).getProcess());
        }
        if (executionResultExecuteProotCommand$default instanceof FailedExecution) {
            this.logger.addBreadcrumb(new UlaBreadcrumb("LocalServerManager", BreadcrumbType.RuntimeError.INSTANCE, "func: startVncServer err: " + ((FailedExecution) executionResultExecuteProotCommand$default).getReason()));
        }
        return -1L;
    }

    private final long setDisplayNumberAndStartTwm(Session session) {
        String strValueOf = String.valueOf(session.getFilesystemId());
        deletePidFile(session);
        HashMap map = new HashMap();
        HashMap map2 = map;
        map2.put("INITIAL_USERNAME", session.getUsername());
        map2.put("DISPLAY", ":4721");
        map2.put("PULSE_SERVER", "127.0.0.1:4721");
        ExecutionResult executionResultExecuteProotCommand$default = BusyboxExecutor.executeProotCommand$default(this.busyboxExecutor, "/support/startXSDLServer.sh", strValueOf, false, map, null, null, 48, null);
        if (executionResultExecuteProotCommand$default instanceof OngoingExecution) {
            return pid(((OngoingExecution) executionResultExecuteProotCommand$default).getProcess());
        }
        if (executionResultExecuteProotCommand$default instanceof FailedExecution) {
            this.logger.addBreadcrumb(new UlaBreadcrumb("LocalServerManager", BreadcrumbType.RuntimeError.INSTANCE, "func: setDisplayNumberAndStartTwm err: " + ((FailedExecution) executionResultExecuteProotCommand$default).getReason()));
        }
        return -1L;
    }

    private final String pidRelativeFilePath(Session session) {
        ServiceType serviceType = session.getServiceType();
        if (Intrinsics.areEqual(serviceType, ServiceType.Ssh.INSTANCE)) {
            return "/run/dropbear.pid";
        }
        if (!Intrinsics.areEqual(serviceType, ServiceType.Vnc.INSTANCE)) {
            return Intrinsics.areEqual(serviceType, ServiceType.Xsdl.INSTANCE) ? "/tmp/xsdl.pidfile" : "error";
        }
        return "/home/" + session.getUsername() + "/.vnc/localhost:" + this.vncDisplayNumber + ".pid";
    }

    private final String pidFilePath(Session session) {
        return this.applicationFilesDirPath + "/" + session.getFilesystemId() + pidRelativeFilePath(session);
    }

    private final long serverPid(Session session) {
        File file = new File(pidFilePath(session));
        if (!file.exists()) {
            return -1L;
        }
        try {
            return Long.parseLong(StringsKt.trim((CharSequence) FilesKt.readText$default(file, null, 1, null)).toString());
        } catch (Exception unused) {
            return -1L;
        }
    }
}
