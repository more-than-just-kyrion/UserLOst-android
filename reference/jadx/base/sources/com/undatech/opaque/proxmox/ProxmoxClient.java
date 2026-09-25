package com.undatech.opaque.proxmox;

import android.os.Handler;
import com.google.common.net.HttpHeaders;
import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.Connection;
import com.undatech.opaque.proxmox.pojo.PveRealm;
import com.undatech.opaque.proxmox.pojo.PveResource;
import com.undatech.opaque.proxmox.pojo.SpiceDisplay;
import com.undatech.opaque.proxmox.pojo.VmStatus;
import com.undatech.opaque.proxmox.pojo.VncDisplay;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.security.auth.login.LoginException;
import org.apache.http.HttpException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ProxmoxClient extends RestClient {
    private static final String TAG = "RestClient";
    private String baseUrl;
    private String csrfToken;
    private String ticket;

    public ProxmoxClient(String str, Connection connection, Handler handler) {
        super(connection, handler);
        this.baseUrl = String.format("%s%s", str, "/api2/json");
    }

    public HashMap<String, PveRealm> getAvailableRealms() throws HttpException, JSONException, IOException {
        resetState(this.baseUrl + "/access/domains");
        execute(RestClient.RequestMethod.GET);
        if (getResponseCode() == 200) {
            return PveRealm.getRealmsFromJsonArray(new JSONObject(getResponse()).getJSONArray("data"));
        }
        throw new HttpException(getErrorMessage());
    }

    public void login(String str, String str2, String str3, String str4) throws LoginException, HttpException, JSONException, IOException {
        resetState(this.baseUrl + "/access/ticket");
        addParam("username", str);
        addParam(Constants.testpassword, str3);
        addParam("realm", str2);
        if (str4 != null) {
            addParam("otp", str4);
        }
        execute(RestClient.RequestMethod.POST);
        if (getResponseCode() == 200) {
            JSONObject jSONObject = new JSONObject(getResponse()).getJSONObject("data");
            this.ticket = jSONObject.getString("ticket");
            this.csrfToken = jSONObject.getString("CSRFPreventionToken");
        } else {
            if (getResponseCode() == 401) {
                throw new LoginException(getErrorMessage());
            }
            throw new HttpException(getErrorMessage());
        }
    }

    private JSONObject request(String str, RestClient.RequestMethod requestMethod, Map<String, String> map) throws LoginException, HttpException, JSONException, IOException {
        resetState(this.baseUrl + str);
        addHeader(HttpHeaders.COOKIE, "PVEAuthCookie=" + this.ticket);
        if (!requestMethod.equals(RestClient.RequestMethod.GET)) {
            addHeader("CSRFPreventionToken", this.csrfToken);
        }
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                addParam(entry.getKey(), entry.getValue());
            }
        }
        execute(requestMethod);
        if (isSuccessfulCode(getResponseCode())) {
            return new JSONObject(getResponse());
        }
        if (getResponseCode() == 401) {
            throw new LoginException(getErrorMessage());
        }
        throw new HttpException(getErrorMessage());
    }

    boolean isSuccessfulCode(int i) {
        return i / 100 == 2;
    }

    public VncDisplay vncNode(String str) throws LoginException, HttpException, JSONException, IOException {
        return new VncDisplay(request("/nodes/" + str + "/vncshell", RestClient.RequestMethod.POST, null).getJSONObject("data"));
    }

    public SpiceDisplay spiceNode(String str) throws LoginException, HttpException, JSONException, IOException {
        return new SpiceDisplay(request("/nodes/" + str + "/spiceshell", RestClient.RequestMethod.POST, null).getJSONObject("data"));
    }

    public VncDisplay vncVm(String str, String str2, int i) throws LoginException, HttpException, JSONException, IOException {
        return new VncDisplay(request("/nodes/" + str + "/" + str2 + "/" + i + "/vncproxy", RestClient.RequestMethod.POST, null).getJSONObject("data"));
    }

    public SpiceDisplay spiceVm(String str, String str2, int i) throws LoginException, HttpException, JSONException, IOException {
        return new SpiceDisplay(request("/nodes/" + str + "/" + str2 + "/" + i + "/spiceproxy", RestClient.RequestMethod.POST, null).getJSONObject("data"));
    }

    public String startVm(String str, String str2, int i) throws LoginException, HttpException, JSONException, IOException {
        return request("/nodes/" + str + "/" + str2 + "/" + i + "/status/start", RestClient.RequestMethod.POST, null).getString("data");
    }

    public VmStatus getCurrentStatus(String str, String str2, int i) throws LoginException, HttpException, JSONException, IOException {
        return new VmStatus(request("/nodes/" + str + "/" + str2 + "/" + i + "/status/current", RestClient.RequestMethod.GET, null).getJSONObject("data"));
    }

    public Map<String, PveResource> getResources() throws LoginException, HttpException, JSONException, IOException {
        JSONArray jSONArray = request("/cluster/resources", RestClient.RequestMethod.GET, null).getJSONArray("data");
        HashMap map = new HashMap();
        for (int i = 0; i < jSONArray.length(); i++) {
            PveResource pveResource = new PveResource(jSONArray.getJSONObject(i));
            if (pveResource.getName() != null && pveResource.getNode() != null && pveResource.getType() != null && pveResource.getVmid() != null) {
                map.put(pveResource.getVmid(), pveResource);
            }
        }
        return map;
    }
}
