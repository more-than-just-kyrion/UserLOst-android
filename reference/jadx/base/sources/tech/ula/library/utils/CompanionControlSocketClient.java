package tech.ula.library.utils;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* JADX INFO: compiled from: CompanionControlSocketClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003J\u001a\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/ula/library/utils/CompanionControlSocketClient;", "", "port", "", "(I)V", "isReachable", "", "timeoutMs", "request", "Lorg/json/JSONObject;", "cmd", "", "params", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompanionControlSocketClient {
    private final int port;

    public CompanionControlSocketClient(int i) {
        this.port = i;
    }

    public static /* synthetic */ boolean isReachable$default(CompanionControlSocketClient companionControlSocketClient, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 300;
        }
        return companionControlSocketClient.isReachable(i);
    }

    public final boolean isReachable(int timeoutMs) {
        try {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress("127.0.0.1", this.port), timeoutMs);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(socket, null);
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(socket, th);
                    throw th2;
                }
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public static /* synthetic */ JSONObject request$default(CompanionControlSocketClient companionControlSocketClient, String str, JSONObject jSONObject, int i, Object obj) {
        if ((i & 2) != 0) {
            jSONObject = new JSONObject();
        }
        return companionControlSocketClient.request(str, jSONObject);
    }

    public final JSONObject request(String cmd, JSONObject params) {
        Intrinsics.checkNotNullParameter(cmd, "cmd");
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            Socket socket = new Socket();
            try {
                Socket socket2 = socket;
                socket2.connect(new InetSocketAddress("127.0.0.1", this.port));
                socket2.setSoTimeout(0);
                DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
                String string = params.put("cmd", cmd).toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                byte[] bytes = string.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                dataOutputStream.writeInt(bytes.length);
                dataOutputStream.write(bytes);
                dataOutputStream.flush();
                DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr);
                JSONObject jSONObject = new JSONObject(new String(bArr, Charsets.UTF_8));
                if (!jSONObject.optBoolean("ok", false)) {
                    jSONObject = null;
                }
                CloseableKt.closeFinally(socket, null);
                return jSONObject;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(socket, th);
                    throw th2;
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
