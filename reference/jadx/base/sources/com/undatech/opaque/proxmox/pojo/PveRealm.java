package com.undatech.opaque.proxmox.pojo;

import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PveRealm {
    private static final String TAG = "PveRealm";
    private String comment;
    private String realm;
    private String tfa;
    private String type;

    public static HashMap<String, PveRealm> getRealmsFromJsonArray(JSONArray jSONArray) throws JSONException {
        HashMap<String, PveRealm> map = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            PveRealm pveRealm = new PveRealm(jSONArray.getJSONObject(i));
            map.put(pveRealm.getRealm(), pveRealm);
        }
        return map;
    }

    public PveRealm(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.isNull(PubkeyDatabase.FIELD_PUBKEY_TYPE)) {
            this.type = jSONObject.getString(PubkeyDatabase.FIELD_PUBKEY_TYPE);
        }
        if (!jSONObject.isNull("realm")) {
            this.realm = jSONObject.getString("realm");
        }
        if (!jSONObject.isNull("tfa")) {
            this.tfa = jSONObject.getString("tfa");
        }
        if (jSONObject.isNull("comment")) {
            return;
        }
        this.comment = jSONObject.getString("comment");
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getRealm() {
        return this.realm;
    }

    public void setRealm(String str) {
        this.realm = str;
    }

    public String getTfa() {
        return this.tfa;
    }

    public void setTfa(String str) {
        this.tfa = str;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String str) {
        this.comment = str;
    }
}
