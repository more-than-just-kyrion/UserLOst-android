package com.undatech.opaque.proxmox.pojo;

import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class VmStatus {
    public static String RUNNING = "running";
    public static String STOPPED = "stopped";
    private String status;

    public VmStatus(JSONObject jSONObject) throws JSONException {
        this.status = jSONObject.getString(NotificationCompat.CATEGORY_STATUS);
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }
}
