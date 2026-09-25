package com.iiordanov.bVNC;

import android.util.Log;
import com.iiordanov.bVNC.exceptions.AnonCipherUnsupportedException;
import java.net.Socket;
import java.util.ArrayList;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes2.dex */
public class TLSTunnel extends TLSTunnelBase {
    private static final String TAG = "TLSTunnel";

    public TLSTunnel(Socket socket) {
        super(socket);
    }

    @Override // com.iiordanov.bVNC.TLSTunnelBase
    protected void setParam(SSLSocket sSLSocket) throws AnonCipherUnsupportedException {
        ArrayList arrayList = new ArrayList();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        for (int i = 0; i < supportedCipherSuites.length; i++) {
            if (supportedCipherSuites[i].matches(".*DH_anon.*")) {
                arrayList.add(supportedCipherSuites[i]);
                Log.i(TAG, "Adding cipher: " + supportedCipherSuites[i]);
            }
        }
        if (arrayList.isEmpty()) {
            throw new AnonCipherUnsupportedException();
        }
        sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[0]));
    }
}
