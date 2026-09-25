.class public interface abstract Lcom/undatech/opaque/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAutoXCommand()Ljava/lang/String;
.end method

.method public abstract getAutoXEnabled()Z
.end method

.method public abstract getAutoXHeight()I
.end method

.method public abstract getAutoXRandFileNm()Ljava/lang/String;
.end method

.method public abstract getAutoXResType()I
.end method

.method public abstract getAutoXSessionProg()Ljava/lang/String;
.end method

.method public abstract getAutoXSessionType()I
.end method

.method public abstract getAutoXType()I
.end method

.method public abstract getAutoXUnixAuth()Z
.end method

.method public abstract getAutoXUnixpw()Z
.end method

.method public abstract getAutoXWidth()I
.end method

.method public abstract getCaCert()Ljava/lang/String;
.end method

.method public abstract getCaCertPath()Ljava/lang/String;
.end method

.method public abstract getCertSubject()Ljava/lang/String;
.end method

.method public abstract getColorModel()Ljava/lang/String;
.end method

.method public abstract getConnectionType()I
.end method

.method public abstract getConnectionTypeString()Ljava/lang/String;
.end method

.method public abstract getConsoleMode()Z
.end method

.method public abstract getDesktopBackground()Z
.end method

.method public abstract getDesktopComposition()Z
.end method

.method public abstract getEnableGfx()Z
.end method

.method public abstract getEnableGfxH264()Z
.end method

.method public abstract getEnableRecording()Z
.end method

.method public abstract getEnableSound()Z
.end method

.method public abstract getExtraKeysToggleType()I
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getFollowMouse()Z
.end method

.method public abstract getFollowPan()Z
.end method

.method public abstract getFontSmoothing()Z
.end method

.method public abstract getForceFull()J
.end method

.method public abstract getHostname()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdHash()Ljava/lang/String;
.end method

.method public abstract getIdHashAlgorithm()I
.end method

.method public abstract getInputMode()Ljava/lang/String;
.end method

.method public abstract getKeepPassword()Z
.end method

.method public abstract getKeepSshPassword()Z
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLastMetaKeyId()J
.end method

.method public abstract getLayoutMap()Ljava/lang/String;
.end method

.method public abstract getMenuAnimation()Z
.end method

.method public abstract getMetaListId()J
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getOtpCode()Ljava/lang/String;
.end method

.method public abstract getOvirtCaData()Ljava/lang/String;
.end method

.method public abstract getOvirtCaFile()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPrefEncoding()I
.end method

.method public abstract getRdpColor()I
.end method

.method public abstract getRdpDomain()Ljava/lang/String;
.end method

.method public abstract getRdpHeight()I
.end method

.method public abstract getRdpResType()I
.end method

.method public abstract getRdpWidth()I
.end method

.method public abstract getRedirectSdCard()Z
.end method

.method public abstract getRemoteFx()Z
.end method

.method public abstract getRemoteSoundType()I
.end method

.method public abstract getRepeaterId()Ljava/lang/String;
.end method

.method public abstract getRotateDpad()Z
.end method

.method public abstract getRuntimeId()Ljava/lang/String;
.end method

.method public abstract getScaleMode()Landroid/widget/ImageView$ScaleType;
.end method

.method public abstract getScreenshotFilename()Ljava/lang/String;
.end method

.method public abstract getSshHostKey()Ljava/lang/String;
.end method

.method public abstract getSshPassPhrase()Ljava/lang/String;
.end method

.method public abstract getSshPassword()Ljava/lang/String;
.end method

.method public abstract getSshPort()I
.end method

.method public abstract getSshPrivKey()Ljava/lang/String;
.end method

.method public abstract getSshPubKey()Ljava/lang/String;
.end method

.method public abstract getSshRemoteCommand()Ljava/lang/String;
.end method

.method public abstract getSshRemoteCommandOS()I
.end method

.method public abstract getSshRemoteCommandTimeout()I
.end method

.method public abstract getSshRemoteCommandType()I
.end method

.method public abstract getSshServer()Ljava/lang/String;
.end method

.method public abstract getSshUser()Ljava/lang/String;
.end method

.method public abstract getTlsPort()I
.end method

.method public abstract getUseDpadAsArrows()Z
.end method

.method public abstract getUseLastPositionToolbar()Z
.end method

.method public abstract getUseLastPositionToolbarMoved()Z
.end method

.method public abstract getUseLastPositionToolbarX()I
.end method

.method public abstract getUseLastPositionToolbarY()I
.end method

.method public abstract getUseLocalCursor()I
.end method

.method public abstract getUseRepeater()Z
.end method

.method public abstract getUseSshPubKey()Z
.end method

.method public abstract getUseSshRemoteCommand()Z
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getViewOnly()Z
.end method

.method public abstract getVisualStyles()Z
.end method

.method public abstract getVmname()Ljava/lang/String;
.end method

.method public abstract getWindowContents()Z
.end method

.method public abstract getX509KeySignature()Ljava/lang/String;
.end method

.method public abstract isAudioPlaybackEnabled()Z
.end method

.method public abstract isReadyForConnection()Z
.end method

.method public abstract isReadyToBeSaved()Z
.end method

.method public abstract isRequestingNewDisplayResolution()Z
.end method

.method public abstract isRotationEnabled()Z
.end method

.method public abstract isSslStrict()Z
.end method

.method public abstract isUsbEnabled()Z
.end method

.method public abstract isUsingCustomOvirtCa()Z
.end method

.method public abstract load(Landroid/content/Context;)V
.end method

.method public abstract parseFromUri(Landroid/net/Uri;)V
.end method

.method public abstract populateFromContentValues(Landroid/content/ContentValues;)V
.end method

.method public abstract save(Landroid/content/Context;)V
.end method

.method public abstract saveAndWriteRecent(ZLandroid/content/Context;)V
.end method

.method public abstract saveCaToFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setAddress(Ljava/lang/String;)V
.end method

.method public abstract setAudioPlaybackEnabled(Z)V
.end method

.method public abstract setAutoXCommand(Ljava/lang/String;)V
.end method

.method public abstract setAutoXEnabled(Z)V
.end method

.method public abstract setAutoXHeight(I)V
.end method

.method public abstract setAutoXRandFileNm(Ljava/lang/String;)V
.end method

.method public abstract setAutoXResType(I)V
.end method

.method public abstract setAutoXSessionProg(Ljava/lang/String;)V
.end method

.method public abstract setAutoXSessionType(I)V
.end method

.method public abstract setAutoXType(I)V
.end method

.method public abstract setAutoXUnixAuth(Z)V
.end method

.method public abstract setAutoXUnixpw(Z)V
.end method

.method public abstract setAutoXWidth(I)V
.end method

.method public abstract setCaCert(Ljava/lang/String;)V
.end method

.method public abstract setCaCertPath(Ljava/lang/String;)V
.end method

.method public abstract setCertSubject(Ljava/lang/String;)V
.end method

.method public abstract setColorModel(Ljava/lang/String;)V
.end method

.method public abstract setConnectionType(I)V
.end method

.method public abstract setConnectionTypeString(Ljava/lang/String;)V
.end method

.method public abstract setConsoleMode(Z)V
.end method

.method public abstract setDesktopBackground(Z)V
.end method

.method public abstract setDesktopComposition(Z)V
.end method

.method public abstract setEnableGfx(Z)V
.end method

.method public abstract setEnableGfxH264(Z)V
.end method

.method public abstract setEnableRecording(Z)V
.end method

.method public abstract setEnableSound(Z)V
.end method

.method public abstract setExtraKeysToggleType(I)V
.end method

.method public abstract setFilename(Ljava/lang/String;)V
.end method

.method public abstract setFollowMouse(Z)V
.end method

.method public abstract setFollowPan(Z)V
.end method

.method public abstract setFontSmoothing(Z)V
.end method

.method public abstract setForceFull(J)V
.end method

.method public abstract setHostname(Ljava/lang/String;)V
.end method

.method public abstract setIdHash(Ljava/lang/String;)V
.end method

.method public abstract setIdHashAlgorithm(I)V
.end method

.method public abstract setInputMode(Ljava/lang/String;)V
.end method

.method public abstract setKeepPassword(Z)V
.end method

.method public abstract setKeepSshPassword(Z)V
.end method

.method public abstract setLastMetaKeyId(J)V
.end method

.method public abstract setLayoutMap(Ljava/lang/String;)V
.end method

.method public abstract setMenuAnimation(Z)V
.end method

.method public abstract setMetaListId(J)V
.end method

.method public abstract setNickname(Ljava/lang/String;)V
.end method

.method public abstract setOtpCode(Ljava/lang/String;)V
.end method

.method public abstract setOvirtCaData(Ljava/lang/String;)V
.end method

.method public abstract setOvirtCaFile(Ljava/lang/String;)V
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method

.method public abstract setPort(I)V
.end method

.method public abstract setPrefEncoding(I)V
.end method

.method public abstract setRdpColor(I)V
.end method

.method public abstract setRdpDomain(Ljava/lang/String;)V
.end method

.method public abstract setRdpHeight(I)V
.end method

.method public abstract setRdpResType(I)V
.end method

.method public abstract setRdpWidth(I)V
.end method

.method public abstract setRedirectSdCard(Z)V
.end method

.method public abstract setRemoteFx(Z)V
.end method

.method public abstract setRemoteSoundType(I)V
.end method

.method public abstract setRepeaterId(Ljava/lang/String;)V
.end method

.method public abstract setRequestingNewDisplayResolution(Z)V
.end method

.method public abstract setRotateDpad(Z)V
.end method

.method public abstract setRotationEnabled(Z)V
.end method

.method public abstract setRuntimeId(Ljava/lang/String;)V
.end method

.method public abstract setScaleMode(Landroid/widget/ImageView$ScaleType;)V
.end method

.method public abstract setScreenshotFilename(Ljava/lang/String;)V
.end method

.method public abstract setSshHostKey(Ljava/lang/String;)V
.end method

.method public abstract setSshPassPhrase(Ljava/lang/String;)V
.end method

.method public abstract setSshPassword(Ljava/lang/String;)V
.end method

.method public abstract setSshPort(I)V
.end method

.method public abstract setSshPrivKey(Ljava/lang/String;)V
.end method

.method public abstract setSshPubKey(Ljava/lang/String;)V
.end method

.method public abstract setSshRemoteCommand(Ljava/lang/String;)V
.end method

.method public abstract setSshRemoteCommandOS(I)V
.end method

.method public abstract setSshRemoteCommandTimeout(I)V
.end method

.method public abstract setSshRemoteCommandType(I)V
.end method

.method public abstract setSshServer(Ljava/lang/String;)V
.end method

.method public abstract setSshUser(Ljava/lang/String;)V
.end method

.method public abstract setSslStrict(Z)V
.end method

.method public abstract setTlsPort(I)V
.end method

.method public abstract setUsbEnabled(Z)V
.end method

.method public abstract setUseDpadAsArrows(Z)V
.end method

.method public abstract setUseLastPositionToolbar(Z)V
.end method

.method public abstract setUseLastPositionToolbarMoved(Z)V
.end method

.method public abstract setUseLastPositionToolbarX(I)V
.end method

.method public abstract setUseLastPositionToolbarY(I)V
.end method

.method public abstract setUseLocalCursor(I)V
.end method

.method public abstract setUseRepeater(Z)V
.end method

.method public abstract setUseSshPubKey(Z)V
.end method

.method public abstract setUseSshRemoteCommand(Z)V
.end method

.method public abstract setUserName(Ljava/lang/String;)V
.end method

.method public abstract setUsingCustomOvirtCa(Z)V
.end method

.method public abstract setViewOnly(Z)V
.end method

.method public abstract setVisualStyles(Z)V
.end method

.method public abstract setVmname(Ljava/lang/String;)V
.end method

.method public abstract setWindowContents(Z)V
.end method

.method public abstract setX509KeySignature(Ljava/lang/String;)V
.end method
