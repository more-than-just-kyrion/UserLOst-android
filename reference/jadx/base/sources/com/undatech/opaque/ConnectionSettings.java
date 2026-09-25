package com.undatech.opaque;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import com.iiordanov.bVNC.Constants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Iterator;
import java.util.UUID;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionSettings implements Connection, Serializable {
    private static final String TAG = "ConnectionSettings";
    private static final long serialVersionUID = 1;
    private String filename;
    private int useLastPositionToolbarX;
    private int useLastPositionToolbarY;
    private String id = "";
    private String connectionType = "";
    private String hostname = "";
    private String vmname = "";
    private String user = "";
    private String password = "";
    private boolean keepPassword = false;
    private String otpCode = "";
    private String inputMethod = "DirectSwipePan";
    private boolean rotationEnabled = true;
    private boolean requestingNewDisplayResolution = true;
    private boolean audioPlaybackEnabled = false;
    private boolean usingCustomOvirtCa = false;
    private boolean sslStrict = true;
    private boolean usbEnabled = true;
    private String ovirtCaFile = "";
    private String ovirtCaData = "";
    private String layoutMap = "";
    private String scaleMode = "";
    private String screenshotFilename = UUID.randomUUID().toString() + ".png";
    private String x509KeySignature = "";
    private int extraKeysToggleType = 1;
    private int rdpWidth = 0;
    private int rdpHeight = 0;
    private int rdpResType = 2;
    private boolean useLastPositionToolbar = true;
    private boolean useLastPositionToolbarMoved = false;

    @Override // com.undatech.opaque.Connection
    public String getAutoXCommand() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getAutoXEnabled() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public int getAutoXHeight() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getAutoXRandFileNm() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getAutoXResType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getAutoXSessionProg() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getAutoXSessionType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public int getAutoXType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getAutoXUnixAuth() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getAutoXUnixpw() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public int getAutoXWidth() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getCaCert() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getCaCertPath() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getCertSubject() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getColorModel() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getConnectionType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getConsoleMode() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getDesktopBackground() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getDesktopComposition() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getEnableGfx() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getEnableGfxH264() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getEnableRecording() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getEnableSound() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getFollowMouse() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getFollowPan() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getFontSmoothing() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public long getForceFull() {
        return 0L;
    }

    @Override // com.undatech.opaque.Connection
    public String getIdHash() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getIdHashAlgorithm() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getKeepSshPassword() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public long getLastMetaKeyId() {
        return 0L;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getMenuAnimation() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public long getMetaListId() {
        return 0L;
    }

    @Override // com.undatech.opaque.Connection
    public String getNickname() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getPort() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public int getPrefEncoding() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public int getRdpColor() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getRdpDomain() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getRedirectSdCard() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getRemoteFx() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public int getRemoteSoundType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getRepeaterId() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getRotateDpad() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshHostKey() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshPassPhrase() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshPassword() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getSshPort() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshPrivKey() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshPubKey() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshRemoteCommand() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getSshRemoteCommandOS() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public int getSshRemoteCommandTimeout() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public int getSshRemoteCommandType() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshServer() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public String getSshUser() {
        return null;
    }

    @Override // com.undatech.opaque.Connection
    public int getTlsPort() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseDpadAsArrows() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public int getUseLocalCursor() {
        return 0;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseRepeater() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseSshPubKey() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseSshRemoteCommand() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getViewOnly() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getVisualStyles() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getWindowContents() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isReadyForConnection() {
        return true;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isReadyToBeSaved() {
        return false;
    }

    @Override // com.undatech.opaque.Connection
    public void parseFromUri(Uri uri) {
    }

    @Override // com.undatech.opaque.Connection
    public void populateFromContentValues(ContentValues contentValues) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXCommand(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXEnabled(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXHeight(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXRandFileNm(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXResType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXSessionProg(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXSessionType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXUnixAuth(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXUnixpw(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setAutoXWidth(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setCaCert(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setCaCertPath(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setCertSubject(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setColorModel(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setConnectionType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setConsoleMode(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setDesktopBackground(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setDesktopComposition(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setEnableGfx(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setEnableGfxH264(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setEnableRecording(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setEnableSound(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setFollowMouse(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setFollowPan(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setFontSmoothing(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setForceFull(long j) {
    }

    @Override // com.undatech.opaque.Connection
    public void setIdHash(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setIdHashAlgorithm(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setKeepSshPassword(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setLastMetaKeyId(long j) {
    }

    @Override // com.undatech.opaque.Connection
    public void setMenuAnimation(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setMetaListId(long j) {
    }

    @Override // com.undatech.opaque.Connection
    public void setNickname(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setPort(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setPrefEncoding(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRdpColor(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRdpDomain(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRedirectSdCard(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRemoteFx(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRemoteSoundType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRepeaterId(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setRotateDpad(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshHostKey(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshPassPhrase(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshPassword(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshPort(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshPrivKey(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshPubKey(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshRemoteCommand(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshRemoteCommandOS(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshRemoteCommandTimeout(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshRemoteCommandType(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshServer(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setSshUser(String str) {
    }

    @Override // com.undatech.opaque.Connection
    public void setTlsPort(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUseDpadAsArrows(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLocalCursor(int i) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUseRepeater(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUseSshPubKey(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setUseSshRemoteCommand(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setViewOnly(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setVisualStyles(boolean z) {
    }

    @Override // com.undatech.opaque.Connection
    public void setWindowContents(boolean z) {
    }

    public ConnectionSettings(String str) {
        this.filename = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getLabel() {
        String address = getAddress();
        if (!"".equals(getUserName())) {
            address = getUserName() + StringUtils.LF + address;
        }
        String vmname = getVmname();
        return !"".equals(vmname) ? vmname + StringUtils.LF + address : address;
    }

    @Override // com.undatech.opaque.Connection
    public String getId() {
        return getRuntimeId();
    }

    @Override // com.undatech.opaque.Connection
    public String getRuntimeId() {
        return this.id;
    }

    @Override // com.undatech.opaque.Connection
    public void setRuntimeId(String str) {
        this.id = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getConnectionTypeString() {
        return this.connectionType;
    }

    @Override // com.undatech.opaque.Connection
    public void setConnectionTypeString(String str) {
        this.connectionType = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getInputMode() {
        return getInputMethod();
    }

    @Override // com.undatech.opaque.Connection
    public void setInputMode(String str) {
        setInputMethod(str);
    }

    public String getInputMethod() {
        return this.inputMethod;
    }

    public void setInputMethod(String str) {
        this.inputMethod = str;
    }

    @Override // com.undatech.opaque.Connection
    public int getExtraKeysToggleType() {
        return this.extraKeysToggleType;
    }

    @Override // com.undatech.opaque.Connection
    public void setExtraKeysToggleType(int i) {
        this.extraKeysToggleType = i;
    }

    @Override // com.undatech.opaque.Connection
    public String getHostname() {
        return this.hostname;
    }

    @Override // com.undatech.opaque.Connection
    public void setHostname(String str) {
        this.hostname = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getVmname() {
        return this.vmname.trim();
    }

    @Override // com.undatech.opaque.Connection
    public void setVmname(String str) {
        this.vmname = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getUserName() {
        return getUser();
    }

    @Override // com.undatech.opaque.Connection
    public void setUserName(String str) {
        setUser(str);
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String str) {
        this.user = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getPassword() {
        return this.password;
    }

    @Override // com.undatech.opaque.Connection
    public void setPassword(String str) {
        this.password = str;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getKeepPassword() {
        return this.keepPassword;
    }

    @Override // com.undatech.opaque.Connection
    public void setKeepPassword(boolean z) {
        this.keepPassword = z;
    }

    @Override // com.undatech.opaque.Connection
    public String getOtpCode() {
        return this.otpCode;
    }

    @Override // com.undatech.opaque.Connection
    public void setOtpCode(String str) {
        this.otpCode = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getFilename() {
        return this.filename;
    }

    @Override // com.undatech.opaque.Connection
    public void setFilename(String str) {
        this.filename = str;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isRotationEnabled() {
        return this.rotationEnabled;
    }

    @Override // com.undatech.opaque.Connection
    public void setRotationEnabled(boolean z) {
        this.rotationEnabled = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isRequestingNewDisplayResolution() {
        return this.requestingNewDisplayResolution;
    }

    @Override // com.undatech.opaque.Connection
    public void setRequestingNewDisplayResolution(boolean z) {
        this.requestingNewDisplayResolution = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isAudioPlaybackEnabled() {
        return this.audioPlaybackEnabled;
    }

    @Override // com.undatech.opaque.Connection
    public void setAudioPlaybackEnabled(boolean z) {
        this.audioPlaybackEnabled = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isUsingCustomOvirtCa() {
        return this.usingCustomOvirtCa;
    }

    @Override // com.undatech.opaque.Connection
    public void setUsingCustomOvirtCa(boolean z) {
        this.usingCustomOvirtCa = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isSslStrict() {
        return this.sslStrict;
    }

    @Override // com.undatech.opaque.Connection
    public void setSslStrict(boolean z) {
        this.sslStrict = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean isUsbEnabled() {
        return this.usbEnabled;
    }

    @Override // com.undatech.opaque.Connection
    public void setUsbEnabled(boolean z) {
        this.usbEnabled = z;
    }

    @Override // com.undatech.opaque.Connection
    public String getOvirtCaFile() {
        return this.ovirtCaFile;
    }

    @Override // com.undatech.opaque.Connection
    public void setOvirtCaFile(String str) {
        this.ovirtCaFile = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getOvirtCaData() {
        return this.ovirtCaData;
    }

    @Override // com.undatech.opaque.Connection
    public void setOvirtCaData(String str) {
        this.ovirtCaData = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getLayoutMap() {
        return this.layoutMap;
    }

    @Override // com.undatech.opaque.Connection
    public void setLayoutMap(String str) {
        this.layoutMap = str;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseLastPositionToolbar() {
        return this.useLastPositionToolbar;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbar(boolean z) {
        this.useLastPositionToolbar = z;
    }

    @Override // com.undatech.opaque.Connection
    public int getUseLastPositionToolbarX() {
        return this.useLastPositionToolbarX;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarX(int i) {
        this.useLastPositionToolbarX = i;
    }

    @Override // com.undatech.opaque.Connection
    public int getUseLastPositionToolbarY() {
        return this.useLastPositionToolbarY;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarY(int i) {
        this.useLastPositionToolbarY = i;
    }

    @Override // com.undatech.opaque.Connection
    public void setUseLastPositionToolbarMoved(boolean z) {
        this.useLastPositionToolbarMoved = z;
    }

    @Override // com.undatech.opaque.Connection
    public boolean getUseLastPositionToolbarMoved() {
        return this.useLastPositionToolbarMoved;
    }

    @Override // com.undatech.opaque.Connection
    public void saveAndWriteRecent(boolean z, Context context) {
        save(context);
    }

    @Override // com.undatech.opaque.Connection
    public void save(Context context) {
        saveToSharedPreferences(context);
    }

    public void saveToSharedPreferences(Context context) {
        Log.d(TAG, "Saving settings to file: " + this.filename);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(this.filename, 0).edit();
        editorEdit.putString("connectionType", this.connectionType);
        editorEdit.putString("hostname", this.hostname);
        editorEdit.putString("vmname", this.vmname);
        editorEdit.putString("user", this.user);
        if (this.keepPassword) {
            editorEdit.putString(Constants.testpassword, this.password);
        } else {
            editorEdit.putString(Constants.testpassword, "");
        }
        editorEdit.putBoolean("keepPassword", this.keepPassword);
        editorEdit.putInt("extraKeysToggleType", this.extraKeysToggleType);
        editorEdit.putString("inputMethod", this.inputMethod);
        editorEdit.putBoolean("rotationEnabled", this.rotationEnabled);
        editorEdit.putBoolean("requestingNewDisplayResolution", this.requestingNewDisplayResolution);
        editorEdit.putBoolean("audioEnabled", this.audioPlaybackEnabled);
        editorEdit.putBoolean("usingCustomCa", this.usingCustomOvirtCa);
        editorEdit.putBoolean("sslStrict", this.sslStrict);
        editorEdit.putBoolean("usbEnabled", this.usbEnabled);
        editorEdit.putString("ovirtCaData", this.ovirtCaData);
        editorEdit.putString("layoutMap", this.layoutMap);
        editorEdit.putString("scaleMode", this.scaleMode);
        editorEdit.putString("x509KeySignature", this.x509KeySignature);
        editorEdit.putString("screenshotFilename", this.screenshotFilename);
        editorEdit.putInt("rdpWidth", this.rdpWidth);
        editorEdit.putInt("rdpHeight", this.rdpHeight);
        editorEdit.putInt("rdpResType", this.rdpResType);
        editorEdit.putBoolean("useLastPositionToolbar", this.useLastPositionToolbar);
        editorEdit.putInt("useLastPositionToolbarX", this.useLastPositionToolbarX);
        editorEdit.putInt("useLastPositionToolbarY", this.useLastPositionToolbarY);
        if (this.useLastPositionToolbar) {
            editorEdit.putBoolean("useLastPositionToolbarMoved", this.useLastPositionToolbarMoved);
        } else {
            editorEdit.putBoolean("useLastPositionToolbarMoved", false);
        }
        editorEdit.apply();
        this.ovirtCaFile = saveCaToFile(context, this.ovirtCaData);
    }

    @Override // com.undatech.opaque.Connection
    public void load(Context context) {
        loadFromSharedPreferences(context);
    }

    @Override // com.undatech.opaque.Connection
    public String getAddress() {
        return getHostname();
    }

    @Override // com.undatech.opaque.Connection
    public void setAddress(String str) {
        setHostname(str);
    }

    @Override // com.undatech.opaque.Connection
    public ImageView.ScaleType getScaleMode() {
        return ImageView.ScaleType.valueOf(this.scaleMode);
    }

    @Override // com.undatech.opaque.Connection
    public void setScaleMode(ImageView.ScaleType scaleType) {
        this.scaleMode = scaleType.toString();
    }

    @Override // com.undatech.opaque.Connection
    public int getRdpResType() {
        return this.rdpResType;
    }

    @Override // com.undatech.opaque.Connection
    public void setRdpResType(int i) {
        this.rdpResType = i;
    }

    public void loadFromSharedPreferences(Context context) {
        Log.d(TAG, "Loading settings from file: " + this.filename);
        SharedPreferences sharedPreferences = context.getSharedPreferences(this.filename, 0);
        this.connectionType = sharedPreferences.getString("connectionType", "").trim();
        this.hostname = sharedPreferences.getString("hostname", "").trim();
        this.vmname = sharedPreferences.getString("vmname", "").trim();
        this.user = sharedPreferences.getString("user", "").trim();
        this.password = sharedPreferences.getString(Constants.testpassword, "");
        this.keepPassword = sharedPreferences.getBoolean("keepPassword", false);
        if (!sharedPreferences.contains("keepPassword") && !this.password.isEmpty()) {
            this.keepPassword = true;
        }
        this.x509KeySignature = sharedPreferences.getString("x509KeySignature", "").trim();
        this.screenshotFilename = sharedPreferences.getString("screenshotFilename", UUID.randomUUID().toString() + ".png").trim();
        loadAdvancedSettings(context, this.filename);
    }

    public void loadAdvancedSettings(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        this.extraKeysToggleType = sharedPreferences.getInt("extraKeysToggleType", 1);
        this.inputMethod = sharedPreferences.getString("inputMethod", "DirectSwipePan").trim();
        this.audioPlaybackEnabled = sharedPreferences.getBoolean("audioEnabled", false);
        this.rotationEnabled = sharedPreferences.getBoolean("rotationEnabled", true);
        this.requestingNewDisplayResolution = sharedPreferences.getBoolean("requestingNewDisplayResolution", true);
        this.usingCustomOvirtCa = sharedPreferences.getBoolean("usingCustomCa", false);
        this.sslStrict = sharedPreferences.getBoolean("sslStrict", true);
        this.usbEnabled = sharedPreferences.getBoolean("usbEnabled", true);
        this.ovirtCaData = sharedPreferences.getString("ovirtCaData", "").trim();
        this.layoutMap = sharedPreferences.getString("layoutMap", "English (US)").trim();
        this.scaleMode = sharedPreferences.getString("scaleMode", ImageView.ScaleType.MATRIX.toString()).trim();
        this.rdpWidth = sharedPreferences.getInt("rdpWidth", 0);
        this.rdpHeight = sharedPreferences.getInt("rdpHeight", 0);
        this.rdpResType = sharedPreferences.getInt("rdpResType", 2);
        this.useLastPositionToolbar = sharedPreferences.getBoolean("useLastPositionToolbar", true);
        this.useLastPositionToolbarX = sharedPreferences.getInt("useLastPositionToolbarX", 0);
        this.useLastPositionToolbarY = sharedPreferences.getInt("useLastPositionToolbarY", 0);
        this.useLastPositionToolbarMoved = sharedPreferences.getBoolean("useLastPositionToolbarMoved", false);
        this.ovirtCaFile = saveCaToFile(context, this.ovirtCaData);
    }

    @Override // com.undatech.opaque.Connection
    public String saveCaToFile(Context context, String str) {
        if (str.equals("")) {
            return "";
        }
        try {
            String str2 = context.getFilesDir() + "/ca" + Integer.toString(str.hashCode()) + ".crt";
            if (!new File(str2).exists()) {
                Log.d(TAG, "Writing out CA to file: " + str2);
                PrintWriter printWriter = new PrintWriter(str2);
                printWriter.println(str);
                printWriter.close();
            } else {
                Log.d(TAG, "File already exists: " + str2);
            }
            return str2;
        } catch (FileNotFoundException unused) {
            return "";
        }
    }

    @Override // com.undatech.opaque.Connection
    public int getRdpWidth() {
        return this.rdpWidth;
    }

    @Override // com.undatech.opaque.Connection
    public void setRdpWidth(int i) {
        this.rdpWidth = i;
    }

    @Override // com.undatech.opaque.Connection
    public int getRdpHeight() {
        return this.rdpHeight;
    }

    @Override // com.undatech.opaque.Connection
    public void setRdpHeight(int i) {
        this.rdpHeight = i;
    }

    @Override // com.undatech.opaque.Connection
    public String getScreenshotFilename() {
        return this.screenshotFilename;
    }

    @Override // com.undatech.opaque.Connection
    public void setScreenshotFilename(String str) {
        this.screenshotFilename = str;
    }

    @Override // com.undatech.opaque.Connection
    public String getX509KeySignature() {
        return this.x509KeySignature;
    }

    @Override // com.undatech.opaque.Connection
    public void setX509KeySignature(String str) {
        this.x509KeySignature = str;
    }

    public static String exportPrefsToFile(Context context, String str, String str2) throws JSONException, IOException {
        Log.d(TAG, "Exporting settings to file: " + str2);
        String[] strArrSplit = (str + " defaultSettings").split(" ");
        JSONObject jSONObject = new JSONObject();
        for (String str3 : strArrSplit) {
            JSONObject jSONObject2 = new JSONObject(context.getSharedPreferences(str3, 0).getAll());
            jSONObject2.put(Constants.testpassword, "");
            jSONObject.put(str3, jSONObject2);
        }
        File file = new File(str2);
        PrintWriter printWriter = new PrintWriter(new FileWriter(file));
        printWriter.print(jSONObject.toString());
        printWriter.close();
        return file.getPath();
    }

    public static String importPrefsFromFile(Context context, String str) throws JSONException, IOException {
        Log.d(TAG, "Importing settings from file: " + str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File(str))));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        bufferedReader.close();
        JSONObject jSONObject = new JSONObject(sb.toString());
        Iterator<String> itKeys = jSONObject.keys();
        String str2 = "";
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(next, 0).edit();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            Iterator<String> itKeys2 = jSONObject2.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                Object obj = jSONObject2.get(next2);
                if (obj instanceof String) {
                    editorEdit.putString(next2, (String) obj);
                } else if (obj instanceof Integer) {
                    editorEdit.putInt(next2, ((Integer) obj).intValue());
                } else if (obj instanceof Boolean) {
                    editorEdit.putBoolean(next2, ((Boolean) obj).booleanValue());
                } else if (obj instanceof Float) {
                    editorEdit.putFloat(next2, ((Float) obj).floatValue());
                } else if (obj instanceof Long) {
                    editorEdit.putLong(next2, ((Long) obj).longValue());
                }
            }
            if (!next.equals(RemoteClientLibConstants.DEFAULT_SETTINGS_FILE)) {
                str2 = str2 + " " + next;
            }
            editorEdit.apply();
        }
        return str2.trim();
    }

    public static void importSettingsFromJsonToSharedPrefs(String str, Context context) {
        try {
            String strImportPrefsFromFile = importPrefsFromFile(context, str);
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.generalSettingsTag, 0).edit();
            editorEdit.putString("connections", strImportPrefsFromFile);
            editorEdit.apply();
        } catch (IOException e) {
            Log.e(TAG, "IO Exception while importing settings " + e.getLocalizedMessage());
            e.printStackTrace();
        } catch (JSONException e2) {
            Log.e(TAG, "JSON Exception while importing settings " + e2.getLocalizedMessage());
            e2.printStackTrace();
        }
    }

    public static void exportSettingsFromSharedPrefsToJson(String str, Context context) {
        try {
            exportPrefsToFile(context, context.getSharedPreferences(Constants.generalSettingsTag, 0).getString("connections", null), str);
        } catch (IOException e) {
            Log.e(TAG, "IO Exception while exporting settings " + e.getLocalizedMessage());
            e.printStackTrace();
        } catch (JSONException e2) {
            Log.e(TAG, "JSON Exception while exporting settings " + e2.getLocalizedMessage());
            e2.printStackTrace();
        }
    }
}
