package com.undatech.opaque.proxmox.pojo;

import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PveResource {
    private String id;
    private String name;
    private String node;
    private String type;
    private String vmid;

    public static class Types {
        public static String LXC = "lxc";
        public static String NODE = "node";
        public static String OPENVZ = "openvz";
        public static String QEMU = "qemu";
        public static String STORAGE = "storage";
    }

    public PveResource(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.isNull("node")) {
            this.node = jSONObject.getString("node");
        }
        if (!jSONObject.isNull(PubkeyDatabase.FIELD_PUBKEY_TYPE)) {
            this.type = jSONObject.getString(PubkeyDatabase.FIELD_PUBKEY_TYPE);
        }
        if (!jSONObject.isNull("id")) {
            this.id = jSONObject.getString("id");
        }
        if (!jSONObject.isNull("vmid")) {
            this.vmid = jSONObject.getString("vmid");
        }
        if (jSONObject.isNull("name")) {
            return;
        }
        this.name = jSONObject.getString("name");
    }

    public String getNode() {
        return this.node;
    }

    public void setNode(String str) {
        this.node = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getVmid() {
        return this.vmid;
    }

    public void setVmid(String str) {
        this.vmid = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }
}
