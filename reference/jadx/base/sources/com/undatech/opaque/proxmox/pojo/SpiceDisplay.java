package com.undatech.opaque.proxmox.pojo;

import com.iiordanov.bVNC.Constants;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class SpiceDisplay {
    private String ca;
    private int deleteThisFile;
    private String host;
    private String hostSubject;
    private String password;
    private String proxy;
    private String releaseCursor;
    private String secureAttention;
    private String title;
    private int tlsPort;
    private String toggleFullscreen;
    private String type;

    public SpiceDisplay(JSONObject jSONObject) throws JSONException {
        this.password = jSONObject.getString(Constants.testpassword);
        this.tlsPort = jSONObject.getInt("tls-port");
        this.host = jSONObject.getString("host");
        this.title = jSONObject.getString(MessageBundle.TITLE_ENTRY);
        this.ca = jSONObject.getString("ca");
        this.hostSubject = jSONObject.getString("host-subject");
        this.proxy = jSONObject.getString("proxy");
        this.deleteThisFile = jSONObject.getInt("delete-this-file");
        this.secureAttention = jSONObject.getString("secure-attention");
        this.type = jSONObject.getString(PubkeyDatabase.FIELD_PUBKEY_TYPE);
        this.toggleFullscreen = jSONObject.getString("toggle-fullscreen");
        this.releaseCursor = jSONObject.getString("release-cursor");
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public int getTlsPort() {
        return this.tlsPort;
    }

    public void setTlsPort(int i) {
        this.tlsPort = i;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getCa() {
        return this.ca;
    }

    public void setCa(String str) {
        this.ca = str;
    }

    public String getProxy() {
        return this.proxy;
    }

    public void setProxy(String str) {
        this.proxy = str;
    }

    public String getHostSubject() {
        return this.hostSubject;
    }

    public void setHostSubject(String str) {
        this.hostSubject = str;
    }

    public int getDeleteThisFile() {
        return this.deleteThisFile;
    }

    public void setDeleteThisFile(int i) {
        this.deleteThisFile = i;
    }

    public String getSecureAttention() {
        return this.secureAttention;
    }

    public void setSecureAttention(String str) {
        this.secureAttention = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getToggleFullscreen() {
        return this.toggleFullscreen;
    }

    public void setToggleFullscreen(String str) {
        this.toggleFullscreen = str;
    }

    public String getReleaseCursor() {
        return this.releaseCursor;
    }

    public void setReleaseCursor(String str) {
        this.releaseCursor = str;
    }

    public void outputToFile(String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        fileOutputStream.write("[virt-viewer]\n".getBytes());
        fileOutputStream.write(("tls-port=" + Integer.toString(this.tlsPort) + StringUtils.LF).getBytes());
        fileOutputStream.write(("ca=" + this.ca + StringUtils.LF).getBytes());
        fileOutputStream.write(("host=" + this.host + StringUtils.LF).getBytes());
        fileOutputStream.write(("host-subject=" + this.hostSubject + StringUtils.LF).getBytes());
        fileOutputStream.write(("password=" + this.password + StringUtils.LF).getBytes());
        if (str2 != null) {
            fileOutputStream.write(("proxy=" + this.proxy.replaceAll("//.*:", "//" + str2 + ":") + StringUtils.LF).getBytes());
        } else {
            fileOutputStream.write(("proxy=" + this.proxy + StringUtils.LF).getBytes());
        }
        fileOutputStream.write(("title=" + this.title + StringUtils.LF).getBytes());
        fileOutputStream.write(("delete-this-file=" + Integer.toString(this.deleteThisFile) + StringUtils.LF).getBytes());
        fileOutputStream.write(("release-cursor=" + this.releaseCursor + StringUtils.LF).getBytes());
        fileOutputStream.write(("secure-attention=" + this.secureAttention + StringUtils.LF).getBytes());
        fileOutputStream.write(("toggle-fullscreen=" + this.toggleFullscreen + StringUtils.LF).getBytes());
        fileOutputStream.write(("type=" + this.type + StringUtils.LF).getBytes());
        fileOutputStream.close();
    }
}
