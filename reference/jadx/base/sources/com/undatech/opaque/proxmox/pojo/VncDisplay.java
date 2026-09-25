package com.undatech.opaque.proxmox.pojo;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class VncDisplay {
    private String cert;
    private int port;
    private String ticket;
    private String upid;
    private String user;

    public VncDisplay(JSONObject jSONObject) throws JSONException {
        this.cert = jSONObject.getString("cert");
        this.port = jSONObject.getInt("port");
        this.ticket = jSONObject.getString("ticket");
        this.upid = jSONObject.getString("upid");
        this.user = jSONObject.getString("user");
    }

    public String getCert() {
        return this.cert;
    }

    public int getPort() {
        return this.port;
    }

    public String getTicket() {
        return this.ticket;
    }

    public String getUpid() {
        return this.upid;
    }

    public String getUser() {
        return this.user;
    }
}
