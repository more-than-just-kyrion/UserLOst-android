package com.undatech.opaque;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public interface Connection {
    String getAddress();

    String getAutoXCommand();

    boolean getAutoXEnabled();

    int getAutoXHeight();

    String getAutoXRandFileNm();

    int getAutoXResType();

    String getAutoXSessionProg();

    int getAutoXSessionType();

    int getAutoXType();

    boolean getAutoXUnixAuth();

    boolean getAutoXUnixpw();

    int getAutoXWidth();

    String getCaCert();

    String getCaCertPath();

    String getCertSubject();

    String getColorModel();

    int getConnectionType();

    String getConnectionTypeString();

    boolean getConsoleMode();

    boolean getDesktopBackground();

    boolean getDesktopComposition();

    boolean getEnableGfx();

    boolean getEnableGfxH264();

    boolean getEnableRecording();

    boolean getEnableSound();

    int getExtraKeysToggleType();

    String getFilename();

    boolean getFollowMouse();

    boolean getFollowPan();

    boolean getFontSmoothing();

    long getForceFull();

    String getHostname();

    String getId();

    String getIdHash();

    int getIdHashAlgorithm();

    String getInputMode();

    boolean getKeepPassword();

    boolean getKeepSshPassword();

    String getLabel();

    long getLastMetaKeyId();

    String getLayoutMap();

    boolean getMenuAnimation();

    long getMetaListId();

    String getNickname();

    String getOtpCode();

    String getOvirtCaData();

    String getOvirtCaFile();

    String getPassword();

    int getPort();

    int getPrefEncoding();

    int getRdpColor();

    String getRdpDomain();

    int getRdpHeight();

    int getRdpResType();

    int getRdpWidth();

    boolean getRedirectSdCard();

    boolean getRemoteFx();

    int getRemoteSoundType();

    String getRepeaterId();

    boolean getRotateDpad();

    String getRuntimeId();

    ImageView.ScaleType getScaleMode();

    String getScreenshotFilename();

    String getSshHostKey();

    String getSshPassPhrase();

    String getSshPassword();

    int getSshPort();

    String getSshPrivKey();

    String getSshPubKey();

    String getSshRemoteCommand();

    int getSshRemoteCommandOS();

    int getSshRemoteCommandTimeout();

    int getSshRemoteCommandType();

    String getSshServer();

    String getSshUser();

    int getTlsPort();

    boolean getUseDpadAsArrows();

    boolean getUseLastPositionToolbar();

    boolean getUseLastPositionToolbarMoved();

    int getUseLastPositionToolbarX();

    int getUseLastPositionToolbarY();

    int getUseLocalCursor();

    boolean getUseRepeater();

    boolean getUseSshPubKey();

    boolean getUseSshRemoteCommand();

    String getUserName();

    boolean getViewOnly();

    boolean getVisualStyles();

    String getVmname();

    boolean getWindowContents();

    String getX509KeySignature();

    boolean isAudioPlaybackEnabled();

    boolean isReadyForConnection();

    boolean isReadyToBeSaved();

    boolean isRequestingNewDisplayResolution();

    boolean isRotationEnabled();

    boolean isSslStrict();

    boolean isUsbEnabled();

    boolean isUsingCustomOvirtCa();

    void load(Context context);

    void parseFromUri(Uri uri);

    void populateFromContentValues(ContentValues contentValues);

    void save(Context context);

    void saveAndWriteRecent(boolean z, Context context);

    String saveCaToFile(Context context, String str);

    void setAddress(String str);

    void setAudioPlaybackEnabled(boolean z);

    void setAutoXCommand(String str);

    void setAutoXEnabled(boolean z);

    void setAutoXHeight(int i);

    void setAutoXRandFileNm(String str);

    void setAutoXResType(int i);

    void setAutoXSessionProg(String str);

    void setAutoXSessionType(int i);

    void setAutoXType(int i);

    void setAutoXUnixAuth(boolean z);

    void setAutoXUnixpw(boolean z);

    void setAutoXWidth(int i);

    void setCaCert(String str);

    void setCaCertPath(String str);

    void setCertSubject(String str);

    void setColorModel(String str);

    void setConnectionType(int i);

    void setConnectionTypeString(String str);

    void setConsoleMode(boolean z);

    void setDesktopBackground(boolean z);

    void setDesktopComposition(boolean z);

    void setEnableGfx(boolean z);

    void setEnableGfxH264(boolean z);

    void setEnableRecording(boolean z);

    void setEnableSound(boolean z);

    void setExtraKeysToggleType(int i);

    void setFilename(String str);

    void setFollowMouse(boolean z);

    void setFollowPan(boolean z);

    void setFontSmoothing(boolean z);

    void setForceFull(long j);

    void setHostname(String str);

    void setIdHash(String str);

    void setIdHashAlgorithm(int i);

    void setInputMode(String str);

    void setKeepPassword(boolean z);

    void setKeepSshPassword(boolean z);

    void setLastMetaKeyId(long j);

    void setLayoutMap(String str);

    void setMenuAnimation(boolean z);

    void setMetaListId(long j);

    void setNickname(String str);

    void setOtpCode(String str);

    void setOvirtCaData(String str);

    void setOvirtCaFile(String str);

    void setPassword(String str);

    void setPort(int i);

    void setPrefEncoding(int i);

    void setRdpColor(int i);

    void setRdpDomain(String str);

    void setRdpHeight(int i);

    void setRdpResType(int i);

    void setRdpWidth(int i);

    void setRedirectSdCard(boolean z);

    void setRemoteFx(boolean z);

    void setRemoteSoundType(int i);

    void setRepeaterId(String str);

    void setRequestingNewDisplayResolution(boolean z);

    void setRotateDpad(boolean z);

    void setRotationEnabled(boolean z);

    void setRuntimeId(String str);

    void setScaleMode(ImageView.ScaleType scaleType);

    void setScreenshotFilename(String str);

    void setSshHostKey(String str);

    void setSshPassPhrase(String str);

    void setSshPassword(String str);

    void setSshPort(int i);

    void setSshPrivKey(String str);

    void setSshPubKey(String str);

    void setSshRemoteCommand(String str);

    void setSshRemoteCommandOS(int i);

    void setSshRemoteCommandTimeout(int i);

    void setSshRemoteCommandType(int i);

    void setSshServer(String str);

    void setSshUser(String str);

    void setSslStrict(boolean z);

    void setTlsPort(int i);

    void setUsbEnabled(boolean z);

    void setUseDpadAsArrows(boolean z);

    void setUseLastPositionToolbar(boolean z);

    void setUseLastPositionToolbarMoved(boolean z);

    void setUseLastPositionToolbarX(int i);

    void setUseLastPositionToolbarY(int i);

    void setUseLocalCursor(int i);

    void setUseRepeater(boolean z);

    void setUseSshPubKey(boolean z);

    void setUseSshRemoteCommand(boolean z);

    void setUserName(String str);

    void setUsingCustomOvirtCa(boolean z);

    void setViewOnly(boolean z);

    void setVisualStyles(boolean z);

    void setVmname(String str);

    void setWindowContents(boolean z);

    void setX509KeySignature(String str);
}
