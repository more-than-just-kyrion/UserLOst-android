package com.iiordanov.bVNC;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.ClipboardManager;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import com.iiordanov.bVNC.dialogs.GetTextFragment;
import com.iiordanov.bVNC.exceptions.AnonCipherUnsupportedException;
import com.iiordanov.bVNC.input.InputHandlerTouchpad;
import com.iiordanov.bVNC.input.RemoteCanvasHandler;
import com.iiordanov.bVNC.input.RemoteKeyboard;
import com.iiordanov.bVNC.input.RemotePointer;
import com.iiordanov.bVNC.input.RemoteRdpKeyboard;
import com.iiordanov.bVNC.input.RemoteRdpPointer;
import com.iiordanov.bVNC.input.RemoteSpiceKeyboard;
import com.iiordanov.bVNC.input.RemoteSpicePointer;
import com.iiordanov.bVNC.input.RemoteVncKeyboard;
import com.iiordanov.bVNC.input.RemoteVncPointer;
import com.undatech.opaque.Connection;
import com.undatech.opaque.MessageDialogs;
import com.undatech.opaque.OpaqueHandler;
import com.undatech.opaque.RdpCommunicator;
import com.undatech.opaque.RemoteClientLibConstants;
import com.undatech.opaque.RfbConnectable;
import com.undatech.opaque.SpiceCommunicator;
import com.undatech.opaque.Viewable;
import com.undatech.opaque.proxmox.ProxmoxClient;
import com.undatech.opaque.proxmox.pojo.PveResource;
import com.undatech.opaque.proxmox.pojo.SpiceDisplay;
import com.undatech.opaque.proxmox.pojo.VmStatus;
import com.undatech.opaque.util.FileUtils;
import com.undatech.remoteClientUi.R;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import javax.security.auth.login.LoginException;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteCanvas extends AppCompatImageView implements Viewable, GetTextFragment.OnFragmentDismissedListener {
    private static final String TAG = "RemoteCanvas";
    int absoluteXPosition;
    int absoluteYPosition;
    public AbstractScaling canvasZoomer;
    private int capacity;
    ClipboardManager clipboard;
    ClipboardMonitor clipboardMonitor;
    Timer clipboardMonitorTimer;
    boolean compact;
    public Connection connection;
    public boolean cursorBeingMoved;
    Database database;
    Decoder decoder;
    private Runnable desktopInfo;
    float displayDensity;
    int displayHeight;
    int displayWidth;
    private Runnable drawableSetter;
    public Handler handler;
    public Runnable hideKeyboardAndExtraKeys;
    Runnable invalidateCanvasRunnable;
    boolean isOpaque;
    boolean isRdp;
    boolean isSpice;
    boolean isVnc;
    RemoteKeyboard keyboard;
    long lastDraw;
    public boolean maintainConnection;
    public AbstractBitmapData myDrawable;
    public ProgressDialog pd;
    RemotePointer pointer;
    private RdpCommunicator rdpcomm;
    public RfbProto rfb;
    public RfbConnectable rfbconn;
    CharSequence screenMessage;
    public boolean serverJustCutText;
    public Runnable setModes;
    float shiftX;
    float shiftY;
    Runnable showDialogMessage;
    private Runnable showMessage;
    public boolean spiceUpdateReceived;
    public SpiceCommunicator spicecomm;
    public SSHConnection sshConnection;
    boolean sshTunneled;
    boolean useFull;
    boolean userPanned;
    int visibleHeight;
    Map<String, String> vmNameToId;
    String vvFileName;

    public int getBottomMargin(double d) {
        return (int) (300.0d / d);
    }

    public int getTopMargin(double d) {
        return (int) (110.0d / d);
    }

    public RemoteCanvas(Context context, AttributeSet attributeSet) {
        DisplayCutout cutout;
        super(context, attributeSet);
        this.cursorBeingMoved = false;
        this.sshConnection = null;
        this.rfbconn = null;
        this.rfb = null;
        this.rdpcomm = null;
        this.spicecomm = null;
        this.vmNameToId = new HashMap();
        this.maintainConnection = true;
        this.decoder = null;
        this.useFull = false;
        this.compact = false;
        this.serverJustCutText = false;
        this.absoluteXPosition = 0;
        this.absoluteYPosition = 0;
        this.shiftX = 0.0f;
        this.shiftY = 0.0f;
        this.visibleHeight = -1;
        this.displayWidth = 0;
        this.displayHeight = 0;
        this.displayDensity = 0.0f;
        this.isVnc = false;
        this.isRdp = false;
        this.isSpice = false;
        this.isOpaque = false;
        this.spiceUpdateReceived = false;
        this.sshTunneled = false;
        this.userPanned = false;
        this.showDialogMessage = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.11
            @Override // java.lang.Runnable
            public void run() {
                Utils.showErrorMessage(RemoteCanvas.this.getContext(), String.valueOf(RemoteCanvas.this.screenMessage));
            }
        };
        this.drawableSetter = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.13
            @Override // java.lang.Runnable
            public void run() {
                Log.d(RemoteCanvas.TAG, "drawableSetter.run");
                if (RemoteCanvas.this.myDrawable != null) {
                    Log.d(RemoteCanvas.TAG, "drawableSetter myDrawable not null");
                    try {
                        RemoteCanvas.this.myDrawable.setImageDrawable(RemoteCanvas.this);
                        return;
                    } catch (NullPointerException unused) {
                        Log.e(RemoteCanvas.TAG, "drawableSetter myDrawable or this is null");
                        return;
                    }
                }
                Log.e(RemoteCanvas.TAG, "drawableSetter myDrawable is null");
            }
        };
        this.showMessage = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.14
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(RemoteCanvas.this.getContext(), RemoteCanvas.this.screenMessage, 0).show();
            }
        };
        this.desktopInfo = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.15
            @Override // java.lang.Runnable
            public void run() {
                RemoteCanvas.this.showConnectionInfo();
            }
        };
        this.invalidateCanvasRunnable = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.16
            @Override // java.lang.Runnable
            public void run() {
                RemoteCanvas.this.postInvalidate();
            }
        };
        this.clipboard = (ClipboardManager) getContext().getSystemService("clipboard");
        this.isVnc = Utils.isVnc(getContext().getPackageName());
        this.isRdp = Utils.isRdp(getContext().getPackageName());
        this.isSpice = Utils.isSpice(getContext().getPackageName());
        this.isOpaque = Utils.isOpaque(getContext().getPackageName());
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        this.displayHeight = displayMetrics.heightPixels;
        this.displayWidth = displayMetrics.widthPixels;
        this.displayDensity = displayMetrics.density;
        if (Build.VERSION.SDK_INT >= 29 && (cutout = defaultDisplay.getCutout()) != null) {
            this.displayHeight -= cutout.getSafeInsetBottom() + cutout.getSafeInsetTop();
            this.displayWidth -= cutout.getSafeInsetLeft() + cutout.getSafeInsetRight();
        }
        ProgressDialog progressDialogShow = ProgressDialog.show(getContext(), getContext().getString(R.string.info_progress_dialog_connecting), getContext().getString(R.string.info_progress_dialog_establishing), true, true, new DialogInterface.OnCancelListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                RemoteCanvas.this.closeConnection();
                RemoteCanvas.this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Utils.showFatalErrorMessage(RemoteCanvas.this.getContext(), RemoteCanvas.this.getContext().getString(R.string.info_progress_dialog_aborted));
                    }
                });
            }
        });
        this.pd = progressDialogShow;
        progressDialogShow.setCanceledOnTouchOutside(false);
    }

    void init(Connection connection, Handler handler, Runnable runnable, Runnable runnable2, String str) {
        this.connection = connection;
        this.handler = handler;
        this.setModes = runnable;
        this.hideKeyboardAndExtraKeys = runnable2;
        this.vvFileName = str;
        checkNetworkConnectivity();
        initializeClipboardMonitor();
        SpiceCommunicator spiceCommunicator = new SpiceCommunicator(getContext(), handler, this, connection.isRequestingNewDisplayResolution() || connection.getRdpResType() == 2, connection.isUsbEnabled(), App.debugLog);
        this.spicecomm = spiceCommunicator;
        this.rfbconn = spiceCommunicator;
        this.pointer = new RemoteSpicePointer(this.spicecomm, this, handler);
        try {
            this.keyboard = new RemoteSpiceKeyboard(getResources(), this.spicecomm, this, handler, connection.getLayoutMap(), App.debugLog);
        } catch (Throwable th) {
            handleUncaughtException(th);
        }
        this.maintainConnection = true;
        if (str == null) {
            if (this.connection.getConnectionTypeString().equals(getResources().getString(R.string.connection_type_pve))) {
                startPve();
                return;
            }
            Connection connection2 = this.connection;
            connection2.setAddress(Utils.getHostFromUriString(connection2.getAddress()));
            startOvirt();
            return;
        }
        startFromVvFile(str);
    }

    private void checkNetworkConnectivity() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
            return;
        }
        disconnectAndShowMessage(R.string.error_not_connected_to_network, R.string.error_dialog_title);
    }

    public void disconnectAndShowMessage(final int i, final int i2) {
        closeConnection();
        this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.2
            @Override // java.lang.Runnable
            public void run() {
                MessageDialogs.displayMessageAndFinish(RemoteCanvas.this.getContext(), i, i2);
            }
        });
    }

    public void disconnectAndShowMessage(final int i, final int i2, final String str) {
        closeConnection();
        this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.3
            @Override // java.lang.Runnable
            public void run() {
                MessageDialogs.displayMessageAndFinish(RemoteCanvas.this.getContext(), i, i2, str);
            }
        });
    }

    public void disconnectWithoutMessage() {
        closeConnection();
        this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.4
            @Override // java.lang.Runnable
            public void run() {
                MessageDialogs.justFinish(RemoteCanvas.this.getContext());
            }
        });
    }

    private void initializeClipboardMonitor() {
        this.clipboardMonitor = new ClipboardMonitor(getContext(), this);
        Timer timer = new Timer();
        this.clipboardMonitorTimer = timer;
        timer.schedule(this.clipboardMonitor, 0L, 500L);
    }

    public void reinitializeCanvas() {
        Log.i(TAG, "Reinitializing remote canvas");
        initializeCanvas(this.connection, this.setModes, this.hideKeyboardAndExtraKeys);
        this.handler.post(this.hideKeyboardAndExtraKeys);
    }

    public void reinitializeOpaque() {
        Log.i(TAG, "Reinitializing remote canvas opaque");
        init(this.connection, this.handler, this.setModes, this.hideKeyboardAndExtraKeys, this.vvFileName);
        this.handler.post(this.hideKeyboardAndExtraKeys);
    }

    public RemotePointer initializeCanvas(Connection connection, Runnable runnable, Runnable runnable2) {
        this.maintainConnection = true;
        this.setModes = runnable;
        this.hideKeyboardAndExtraKeys = runnable2;
        this.connection = connection;
        this.sshTunneled = connection.getConnectionType() == 1;
        this.handler = new RemoteCanvasHandler(getContext(), this, this.connection);
        try {
            if (this.isSpice) {
                initializeSpiceConnection();
            } else if (this.isRdp) {
                initializeRdpConnection();
            } else {
                initializeVncConnection();
            }
        } catch (Throwable th) {
            handleUncaughtException(th);
        }
        new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvas.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    if (RemoteCanvas.this.sshTunneled && RemoteCanvas.this.connection.getSshHostKey().equals("") && Utils.isNullOrEmptry(RemoteCanvas.this.connection.getIdHash())) {
                        RemoteCanvas.this.handler.sendEmptyMessage(2);
                        synchronized (RemoteCanvas.this) {
                            while (RemoteCanvas.this.connection.getSshHostKey().equals("")) {
                                try {
                                    RemoteCanvas.this.wait();
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                    if (RemoteCanvas.this.isSpice) {
                        RemoteCanvas.this.startSpiceConnection();
                    } else if (RemoteCanvas.this.isRdp) {
                        RemoteCanvas.this.startRdpConnection();
                    } else {
                        RemoteCanvas.this.startVncConnection();
                    }
                } catch (Throwable th2) {
                    RemoteCanvas.this.handleUncaughtException(th2);
                }
            }
        }.start();
        this.clipboardMonitor = new ClipboardMonitor(getContext(), this);
        Timer timer = new Timer();
        this.clipboardMonitorTimer = timer;
        try {
            timer.schedule(this.clipboardMonitor, 0L, 500L);
        } catch (NullPointerException unused) {
        }
        return this.pointer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUncaughtException(Throwable th) {
        if (this.maintainConnection) {
            Log.e(TAG, th.toString());
            th.printStackTrace();
            if (this.pd.isShowing()) {
                this.pd.dismiss();
            }
            if (th instanceof OutOfMemoryError) {
                disposeDrawable();
                showFatalMessageAndQuit(getContext().getString(R.string.error_out_of_memory));
                return;
            }
            String string = getContext().getString(R.string.error_connection_failed);
            if (th.getMessage() != null) {
                if (th.getMessage().indexOf("SSH") < 0 && (th.getMessage().indexOf("authentication") > -1 || th.getMessage().indexOf("Unknown security result") > -1 || th.getMessage().indexOf("password check failed") > -1)) {
                    string = getContext().getString(R.string.error_vnc_authentication);
                }
                string = string + "<br>" + th.getLocalizedMessage();
            }
            showFatalMessageAndQuit(string);
        }
    }

    @Override // com.undatech.opaque.Viewable
    public int getDesiredWidth() {
        int width = getWidth();
        if (!this.connection.isRequestingNewDisplayResolution() && this.connection.getRdpResType() == 2) {
            width = this.connection.getRdpWidth();
        }
        Log.d(TAG, "Width requested: " + width);
        return width;
    }

    @Override // com.undatech.opaque.Viewable
    public int getDesiredHeight() {
        int height = getHeight();
        if (!this.connection.isRequestingNewDisplayResolution() && this.connection.getRdpResType() == 2) {
            height = this.connection.getRdpHeight();
        }
        Log.d(TAG, "Height requested: " + height);
        return height;
    }

    private void initializeSpiceConnection() throws Exception {
        SpiceCommunicator spiceCommunicator = new SpiceCommunicator(getContext(), this.handler, this, true, true, App.debugLog);
        this.spicecomm = spiceCommunicator;
        this.rfbconn = spiceCommunicator;
        this.pointer = new RemoteSpicePointer(this.rfbconn, this, this.handler);
        this.keyboard = new RemoteSpiceKeyboard(getResources(), this.spicecomm, this, this.handler, this.connection.getLayoutMap(), App.debugLog);
        this.spicecomm.setHandler(this.handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSpiceConnection() throws Exception {
        String address = getAddress();
        int port = this.connection.getPort();
        if (port > 0) {
            port = getPort(port);
        }
        int tlsPort = this.connection.getTlsPort();
        if (tlsPort > 0) {
            tlsPort = getPort(tlsPort);
        }
        this.spicecomm.connectSpice(address, Integer.toString(port), Integer.toString(tlsPort), this.connection.getPassword(), this.connection.getCaCertPath(), null, this.connection.getCertSubject(), this.connection.getEnableSound());
    }

    private void initializeRdpConnection() throws Exception {
        Log.i(TAG, "initializeRdpConnection: Initializing RDP connection.");
        RdpCommunicator rdpCommunicator = new RdpCommunicator(getContext(), this.handler, this, this.connection.getUserName(), this.connection.getRdpDomain(), this.connection.getPassword(), App.debugLog);
        this.rdpcomm = rdpCommunicator;
        this.rfbconn = rdpCommunicator;
        this.pointer = new RemoteRdpPointer(this.rfbconn, this, this.handler);
        this.keyboard = new RemoteRdpKeyboard(this.rfbconn, this, this.handler, App.debugLog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRdpConnection() throws Exception {
        Log.i(TAG, "startRdpConnection: Starting RDP connection.");
        String address = getAddress();
        int port = getPort(this.connection.getPort());
        waitUntilInflated();
        this.rdpcomm.setConnectionParameters(address, port, this.connection.getNickname(), getRemoteWidth(getWidth(), getHeight()), getRemoteHeight(getWidth(), getHeight()), this.connection.getDesktopBackground(), this.connection.getFontSmoothing(), this.connection.getDesktopComposition(), this.connection.getWindowContents(), this.connection.getMenuAnimation(), this.connection.getVisualStyles(), this.connection.getRedirectSdCard(), this.connection.getConsoleMode(), this.connection.getRemoteSoundType(), this.connection.getEnableRecording(), this.connection.getRemoteFx(), this.connection.getEnableGfx(), this.connection.getEnableGfxH264());
        this.rdpcomm.connect();
        this.pd.dismiss();
    }

    private void initializeVncConnection() throws Exception {
        Log.i(TAG, "Initializing connection to: " + this.connection.getAddress() + ", port: " + this.connection.getPort());
        boolean z = this.connection.getConnectionType() == 5;
        this.decoder = new Decoder(this, this.connection.getUseLocalCursor() == 1);
        RfbProto rfbProto = new RfbProto(this.decoder, this, this.connection.getPrefEncoding(), this.connection.getViewOnly(), z, this.connection.getIdHashAlgorithm(), this.connection.getIdHash(), this.connection.getX509KeySignature());
        this.rfb = rfbProto;
        this.rfbconn = rfbProto;
        this.pointer = new RemoteVncPointer(this.rfbconn, this, this.handler);
        this.keyboard = new RemoteVncKeyboard(this.rfbconn, this, this.handler, Utils.querySharedPreferenceBoolean(getContext(), Constants.rAltAsIsoL3ShiftTag), App.debugLog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVncConnection() throws Exception {
        try {
            String address = getAddress();
            int port = getPort(this.connection.getPort());
            Log.i(TAG, "Establishing VNC session to: " + address + ", port: " + port);
            this.rfb.initializeAndAuthenticate(address, port, this.connection.getUserName(), this.connection.getPassword(), this.connection.getUseRepeater(), this.connection.getRepeaterId(), this.connection.getConnectionType(), this.connection.getX509KeySignature());
        } catch (RfbProto.RfbPasswordAuthenticationException unused) {
            Log.e(TAG, "Authentication failed, will prompt user for password");
            this.handler.sendEmptyMessage(14);
            return;
        } catch (RfbProto.RfbUsernameRequiredException unused2) {
            Log.e(TAG, "Username required, will prompt user for username and password");
            this.handler.sendEmptyMessage(14);
            return;
        } catch (AnonCipherUnsupportedException unused3) {
            showFatalMessageAndQuit(getContext().getString(R.string.error_anon_dh_unsupported));
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(getContext().getString(R.string.error_vnc_unable_to_connect) + Utils.messageAndStackTraceAsString(e));
        }
        this.rfb.writeClientInit();
        this.rfb.readServerInit();
        if (this.connection.getRdpResType() != 0) {
            waitUntilInflated();
            this.rfb.setPreferredFramebufferSize(getVncRemoteWidth(getWidth(), getHeight()), getVncRemoteHeight(getWidth(), getHeight()));
        }
        reallocateDrawable(this.displayWidth, this.displayHeight);
        this.decoder.setPixelFormat(this.rfb);
        this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.6
            @Override // java.lang.Runnable
            public void run() {
                RemoteCanvas.this.pd.setMessage(RemoteCanvas.this.getContext().getString(R.string.info_progress_dialog_downloading));
            }
        });
        sendUnixAuth();
        this.handler.post(this.drawableSetter);
        if (this.pd.isShowing()) {
            this.pd.dismiss();
        }
        try {
            this.rfb.processProtocol();
        } catch (RfbProto.RfbUltraVncColorMapException unused4) {
            Log.e(TAG, "UltraVnc supports only 24bpp. Switching color mode and reconnecting.");
            this.connection.setColorModel(COLORMODEL.C24bit.nameString());
            this.connection.save(getContext());
            this.handler.sendEmptyMessage(16);
        }
    }

    void startOvirt() {
        if (!this.pd.isShowing()) {
            this.pd.show();
        }
        new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvas.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String path;
                try {
                    if (RemoteCanvas.this.connection.getPassword().equals("")) {
                        Log.i(RemoteCanvas.TAG, "Displaying a dialog to obtain user's password.");
                        RemoteCanvas.this.handler.sendEmptyMessage(10);
                        synchronized (RemoteCanvas.this.spicecomm) {
                            RemoteCanvas.this.spicecomm.wait();
                        }
                    }
                    if (RemoteCanvas.this.connection.isUsingCustomOvirtCa()) {
                        path = RemoteCanvas.this.connection.getOvirtCaFile();
                    } else {
                        path = new File(RemoteCanvas.this.getContext().getFilesDir(), "ssl/certs/ca-certificates.crt").getPath();
                    }
                    if (RemoteCanvas.this.connection.getVmname().equals("")) {
                        int iFetchOvirtVmNames = RemoteCanvas.this.spicecomm.fetchOvirtVmNames(RemoteCanvas.this.connection.getHostname(), RemoteCanvas.this.connection.getUserName(), RemoteCanvas.this.connection.getPassword(), path, RemoteCanvas.this.connection.isSslStrict());
                        ArrayList<String> vmNames = RemoteCanvas.this.spicecomm.getVmNames();
                        if (iFetchOvirtVmNames == 0 && !vmNames.isEmpty()) {
                            if (vmNames.size() == 1) {
                                RemoteCanvas.this.connection.setVmname(vmNames.get(0));
                                RemoteCanvas.this.connection.save(RemoteCanvas.this.getContext());
                            } else {
                                while (RemoteCanvas.this.connection.getVmname().equals("")) {
                                    Log.i(RemoteCanvas.TAG, "Displaying a dialog with VMs to the user.");
                                    for (String str : vmNames) {
                                        RemoteCanvas.this.vmNameToId.put(str, str);
                                    }
                                    RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageStringList(44, "vms", vmNames));
                                    synchronized (RemoteCanvas.this.spicecomm) {
                                        RemoteCanvas.this.spicecomm.wait();
                                    }
                                }
                            }
                        }
                        return;
                    }
                    RemoteCanvas.this.spicecomm.setHandler(RemoteCanvas.this.handler);
                    RemoteCanvas.this.spicecomm.connectOvirt(RemoteCanvas.this.connection.getHostname(), RemoteCanvas.this.connection.getVmname(), RemoteCanvas.this.connection.getUserName(), RemoteCanvas.this.connection.getPassword(), path, RemoteCanvas.this.connection.isAudioPlaybackEnabled(), RemoteCanvas.this.connection.isSslStrict());
                    try {
                        synchronized (RemoteCanvas.this.spicecomm) {
                            try {
                                RemoteCanvas.this.spicecomm.wait(35000L);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (InterruptedException unused) {
                    }
                    if (RemoteCanvas.this.spiceUpdateReceived || !RemoteCanvas.this.maintainConnection) {
                        return;
                    }
                    RemoteCanvas.this.handler.sendEmptyMessage(30);
                } catch (Throwable th2) {
                    RemoteCanvas.this.handleUncaughtException(th2);
                }
            }
        }.start();
    }

    String retrieveVvFileFromPve(final String str, final ProxmoxClient proxmoxClient, final String str2, final String str3, final String str4) {
        Log.i(TAG, String.format("Trying to connect to PVE host: " + str, new Object[0]));
        final String str5 = getContext().getFilesDir() + "/tempfile.vv";
        FileUtils.deleteFile(str5);
        new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvas.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    VmStatus currentStatus = proxmoxClient.getCurrentStatus(str3, str4, Integer.parseInt(str2));
                    if (currentStatus.getStatus().equals(VmStatus.STOPPED)) {
                        proxmoxClient.startVm(str3, str4, Integer.parseInt(str2));
                        while (!currentStatus.getStatus().equals(VmStatus.RUNNING)) {
                            currentStatus = proxmoxClient.getCurrentStatus(str3, str4, Integer.parseInt(str2));
                            SystemClock.sleep(500L);
                        }
                    }
                    SpiceDisplay spiceDisplaySpiceVm = proxmoxClient.spiceVm(str3, str4, Integer.parseInt(str2));
                    if (spiceDisplaySpiceVm != null) {
                        spiceDisplaySpiceVm.outputToFile(str5, str);
                    } else {
                        Log.e(RemoteCanvas.TAG, "PVE returned null data for display.");
                        RemoteCanvas.this.handler.sendEmptyMessage(40);
                    }
                } catch (IOException e) {
                    Log.e(RemoteCanvas.TAG, "IO Error communicating with PVE API: " + e.getMessage());
                    RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageString(38, "error", e.getMessage()));
                    e.printStackTrace();
                } catch (NumberFormatException unused) {
                    Log.e(RemoteCanvas.TAG, "Error converting PVE ID to integer.");
                    RemoteCanvas.this.handler.sendEmptyMessage(36);
                } catch (LoginException unused2) {
                    Log.e(RemoteCanvas.TAG, "Failed to login to PVE.");
                    RemoteCanvas.this.handler.sendEmptyMessage(33);
                } catch (HttpException e2) {
                    Log.e(RemoteCanvas.TAG, "PVE API returned error code: " + e2.getMessage());
                    RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageString(37, "error", e2.getMessage()));
                } catch (JSONException unused3) {
                    Log.e(RemoteCanvas.TAG, "Failed to parse json from PVE.");
                    RemoteCanvas.this.handler.sendEmptyMessage(35);
                }
                synchronized (str5) {
                    str5.notify();
                }
            }
        }.start();
        synchronized (str5) {
            try {
                str5.wait();
            } catch (InterruptedException e) {
                this.handler.sendEmptyMessage(39);
                e.printStackTrace();
            }
        }
        File file = new File(str5);
        if (!file.exists() || file.length() == 0) {
            return null;
        }
        return str5;
    }

    void startFromVvFile(final String str) {
        new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvas.9
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    RemoteCanvas.this.spicecomm.startSessionFromVvFile(str, RemoteCanvas.this.connection.isAudioPlaybackEnabled());
                } catch (Throwable th) {
                    RemoteCanvas.this.handleUncaughtException(th);
                }
            }
        }.start();
    }

    void startPve() {
        if (!this.pd.isShowing()) {
            this.pd.show();
        }
        new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvas.10
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String type;
                String str;
                String strRetrieveVvFileFromPve;
                try {
                    if (RemoteCanvas.this.connection.getPassword().equals("")) {
                        Log.i(RemoteCanvas.TAG, "Displaying a dialog to obtain user's password.");
                        RemoteCanvas.this.handler.sendEmptyMessage(10);
                        synchronized (RemoteCanvas.this.spicecomm) {
                            RemoteCanvas.this.spicecomm.wait();
                        }
                    }
                    String userName = RemoteCanvas.this.connection.getUserName();
                    String strSubstring = RemoteClientLibConstants.PVE_DEFAULT_REALM;
                    int iIndexOf = RemoteCanvas.this.connection.getUserName().indexOf(64);
                    if (iIndexOf != -1) {
                        strSubstring = userName.substring(iIndexOf + 1);
                        userName = userName.substring(0, iIndexOf);
                    }
                    String hostname = RemoteCanvas.this.connection.getHostname();
                    if (!hostname.startsWith("http://") && !hostname.startsWith("https://")) {
                        hostname = String.format("%s%s", "https://", hostname);
                    }
                    Uri uri = Uri.parse(hostname);
                    String scheme = uri.getScheme();
                    String host = uri.getHost();
                    int port = uri.getPort();
                    if (port < 0) {
                        port = 8006;
                    }
                    ProxmoxClient proxmoxClient = new ProxmoxClient(String.format("%s://%s:%d", scheme, host, Integer.valueOf(port)), RemoteCanvas.this.connection, RemoteCanvas.this.handler);
                    if (proxmoxClient.getAvailableRealms().get(strSubstring).getTfa() != null) {
                        Log.i(RemoteCanvas.TAG, "Displaying a dialog to obtain OTP/TFA.");
                        RemoteCanvas.this.handler.sendEmptyMessage(42);
                        synchronized (RemoteCanvas.this.spicecomm) {
                            RemoteCanvas.this.spicecomm.wait();
                        }
                    }
                    proxmoxClient.login(userName, strSubstring, RemoteCanvas.this.connection.getPassword(), RemoteCanvas.this.connection.getOtpCode());
                    Map<String, PveResource> resources = proxmoxClient.getResources();
                    if (resources.isEmpty()) {
                        Log.e(RemoteCanvas.TAG, "No available VMs found for user in PVE cluster");
                        RemoteCanvas.this.disconnectAndShowMessage(R.string.error_no_vm_found_for_user, R.string.error_dialog_title);
                        return;
                    }
                    if (RemoteCanvas.this.connection.getVmname().matches("/")) {
                        RemoteCanvas.this.connection.setVmname(RemoteCanvas.this.connection.getVmname().replaceAll(".*/", ""));
                        RemoteCanvas.this.connection.save(RemoteCanvas.this.getContext());
                    }
                    if (resources.size() == 1) {
                        Log.e(RemoteCanvas.TAG, "A single VM was found, so picking it.");
                        PveResource pveResource = resources.get((String) resources.keySet().toArray()[0]);
                        String node = pveResource.getNode();
                        String type2 = pveResource.getType();
                        RemoteCanvas.this.connection.setVmname(pveResource.getVmid());
                        RemoteCanvas.this.connection.save(RemoteCanvas.this.getContext());
                        str = node;
                        type = type2;
                    } else {
                        while (RemoteCanvas.this.connection.getVmname().isEmpty()) {
                            Log.i(RemoteCanvas.TAG, "PVE: Displaying a dialog with VMs to the user.");
                            for (String str2 : resources.keySet()) {
                                RemoteCanvas.this.vmNameToId.put(resources.get(str2).getName() + " (" + str2 + ")", str2);
                            }
                            RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageStringList(44, "vms", new ArrayList(RemoteCanvas.this.vmNameToId.keySet())));
                            synchronized (RemoteCanvas.this.spicecomm) {
                                RemoteCanvas.this.spicecomm.wait();
                            }
                        }
                        if (resources.get(RemoteCanvas.this.connection.getVmname()) != null) {
                            String node2 = resources.get(RemoteCanvas.this.connection.getVmname()).getNode();
                            type = resources.get(RemoteCanvas.this.connection.getVmname()).getType();
                            str = node2;
                        } else {
                            Log.e(RemoteCanvas.TAG, "No VM with the following ID was found: " + RemoteCanvas.this.connection.getVmname());
                            RemoteCanvas.this.disconnectAndShowMessage(R.string.error_no_such_vm_found_for_user, R.string.error_dialog_title);
                            return;
                        }
                    }
                    String vmname = RemoteCanvas.this.connection.getVmname();
                    if (vmname.isEmpty() || (strRetrieveVvFileFromPve = RemoteCanvas.this.retrieveVvFileFromPve(host, proxmoxClient, vmname, str, type)) == null) {
                        return;
                    }
                    RemoteCanvas.this.startFromVvFile(strRetrieveVvFileFromPve);
                } catch (IOException e) {
                    Log.e(RemoteCanvas.TAG, "IO Error communicating with PVE API: " + e.getMessage());
                    RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageString(38, "error", e.getMessage()));
                    e.printStackTrace();
                } catch (LoginException unused) {
                    Log.e(RemoteCanvas.TAG, "Failed to login to PVE.");
                    RemoteCanvas.this.handler.sendEmptyMessage(33);
                } catch (HttpException e2) {
                    Log.e(RemoteCanvas.TAG, "PVE API returned error code: " + e2.getMessage());
                    RemoteCanvas.this.handler.sendMessage(OpaqueHandler.getMessageString(37, "error", e2.getMessage()));
                } catch (JSONException unused2) {
                    Log.e(RemoteCanvas.TAG, "Failed to parse json from PVE.");
                    RemoteCanvas.this.handler.sendEmptyMessage(35);
                } catch (Throwable th) {
                    RemoteCanvas.this.handleUncaughtException(th);
                }
            }
        }.start();
    }

    void sendUnixAuth() {
        if (this.sshTunneled && this.connection.getAutoXUnixAuth()) {
            this.keyboard.keyEvent(0, new KeyEvent(SystemClock.uptimeMillis(), this.connection.getSshUser(), 0, 0));
            this.keyboard.keyEvent(66, new KeyEvent(0, 66));
            this.keyboard.keyEvent(66, new KeyEvent(1, 66));
            this.keyboard.keyEvent(0, new KeyEvent(SystemClock.uptimeMillis(), this.connection.getSshPassword(), 0, 0));
            this.keyboard.keyEvent(66, new KeyEvent(0, 66));
            this.keyboard.keyEvent(66, new KeyEvent(1, 66));
        }
    }

    private int getRemoteWidth(int i, int i2) {
        int rdpWidth = this.connection.getRdpWidth();
        int rdpHeight = this.connection.getRdpHeight();
        if (this.connection.getRdpResType() != 2 || rdpWidth < 2 || rdpHeight < 2) {
            if (this.connection.getRdpResType() == 1) {
                rdpWidth = Math.min(i, i2);
            } else {
                rdpWidth = Math.max(i, i2);
            }
        }
        return rdpWidth % 2 == 1 ? rdpWidth - 1 : rdpWidth;
    }

    private int getRemoteHeight(int i, int i2) {
        int rdpWidth = this.connection.getRdpWidth();
        int rdpHeight = this.connection.getRdpHeight();
        if (this.connection.getRdpResType() != 2 || rdpWidth < 2 || rdpHeight < 2) {
            if (this.connection.getRdpResType() == 1) {
                rdpHeight = Math.max(i, i2);
            } else {
                rdpHeight = Math.min(i, i2);
            }
        }
        return rdpHeight % 2 == 1 ? rdpHeight - 1 : rdpHeight;
    }

    private int getVncRemoteWidth(int i, int i2) {
        int rdpWidth = this.connection.getRdpWidth();
        int rdpHeight = this.connection.getRdpHeight();
        if (this.connection.getRdpResType() == 4 && rdpWidth >= 2 && rdpHeight >= 2) {
            i = rdpWidth;
        } else if (this.connection.getRdpResType() != 1) {
            if (this.connection.getRdpResType() == 3) {
                i = Math.min(i, i2);
            } else {
                i = this.connection.getRdpResType() == 2 ? Math.max(i, i2) : 0;
            }
        }
        return i % 2 == 1 ? i - 1 : i;
    }

    private int getVncRemoteHeight(int i, int i2) {
        int rdpWidth = this.connection.getRdpWidth();
        int rdpHeight = this.connection.getRdpHeight();
        if (this.connection.getRdpResType() == 4 && rdpWidth >= 2 && rdpHeight >= 2) {
            i2 = rdpHeight;
        } else if (this.connection.getRdpResType() != 1) {
            if (this.connection.getRdpResType() == 3) {
                i2 = Math.max(i, i2);
            } else {
                i2 = this.connection.getRdpResType() == 2 ? Math.min(i, i2) : 0;
            }
        }
        return i2 % 2 == 1 ? i2 - 1 : i2;
    }

    void showMessage(String str) {
        Log.d(TAG, "showMessage");
        this.screenMessage = str;
        this.handler.removeCallbacks(this.showDialogMessage);
        this.handler.post(this.showDialogMessage);
    }

    public void showFatalMessageAndQuit(final String str) {
        closeConnection();
        this.handler.post(new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvas.12
            @Override // java.lang.Runnable
            public void run() {
                Utils.showFatalErrorMessage(RemoteCanvas.this.getContext(), str);
            }
        });
    }

    int getPort(int i) throws Exception {
        if (!this.sshTunneled) {
            return (!this.isVnc || i > 20) ? i : i + Constants.DEFAULT_VNC_PORT;
        }
        SSHConnection sSHConnection = new SSHConnection(this.connection, getContext(), this.handler);
        this.sshConnection = sSHConnection;
        int iInitializeSSHTunnel = sSHConnection.initializeSSHTunnel();
        if (iInitializeSSHTunnel > 0) {
            i = iInitializeSSHTunnel;
        }
        return this.sshConnection.createLocalPortForward(i);
    }

    String getAddress() {
        if (this.sshTunneled) {
            return new String("127.0.0.1");
        }
        return this.connection.getAddress();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r13v0, types: [int] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5, types: [com.undatech.opaque.RfbConnectable] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:27:0x00f8
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.undatech.opaque.Viewable
    public void reallocateDrawable(int r12, int r13) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iiordanov.bVNC.RemoteCanvas.reallocateDrawable(int, int):void");
    }

    private void disposeDrawable() {
        AbstractBitmapData abstractBitmapData = this.myDrawable;
        if (abstractBitmapData != null) {
            abstractBitmapData.dispose();
        }
        this.myDrawable = null;
        System.gc();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    public void updateFBSize() {
        Decoder decoder;
        try {
            this.myDrawable.frameBufferSizeChanged();
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
                disposeDrawable();
                if (this.compact) {
                    this.compact = false;
                    try {
                        this.myDrawable = new FullBufferBitmapData(this.rfbconn, this, this.capacity);
                    } catch (Throwable unused) {
                        disposeDrawable();
                        this.useFull = false;
                        this.myDrawable = new LargeBitmapData(this.rfbconn, this, getWidth(), getHeight(), this.capacity);
                        decoder = this.decoder;
                        if (decoder != null) {
                            decoder.setBitmapData(this.myDrawable);
                        }
                        this.handler.post(this.drawableSetter);
                        this.handler.post(this.setModes);
                        this.myDrawable.syncScroll();
                    }
                } else {
                    disposeDrawable();
                    this.useFull = false;
                    this.myDrawable = new LargeBitmapData(this.rfbconn, this, getWidth(), getHeight(), this.capacity);
                }
                decoder = this.decoder;
                if (decoder != null) {
                    decoder.setBitmapData(this.myDrawable);
                }
            }
        }
        this.handler.post(this.drawableSetter);
        this.handler.post(this.setModes);
        this.myDrawable.syncScroll();
    }

    public void displayShortToastMessage(CharSequence charSequence) {
        this.screenMessage = charSequence;
        this.handler.removeCallbacks(this.showMessage);
        this.handler.post(this.showMessage);
    }

    public void displayShortToastMessage(int i) {
        this.screenMessage = getResources().getText(i);
        this.handler.removeCallbacks(this.showMessage);
        this.handler.post(this.showMessage);
    }

    public void doneWaiting() {
        this.myDrawable.doneWaiting();
    }

    public void syncScroll() {
        this.myDrawable.syncScroll();
    }

    public void writeFramebufferUpdateRequest(int i, int i2, int i3, int i4, boolean z) throws IOException {
        this.myDrawable.prepareFullUpdateRequest(z);
        this.rfbconn.writeFramebufferUpdateRequest(i, i2, i3, i4, z);
    }

    public void writeFullUpdateRequest(boolean z) {
        this.myDrawable.prepareFullUpdateRequest(z);
        this.rfbconn.writeFramebufferUpdateRequest(this.myDrawable.getXoffset(), this.myDrawable.getYoffset(), this.myDrawable.bmWidth(), this.myDrawable.bmHeight(), z);
    }

    public void setClipboardText(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        this.clipboard.setText(str);
    }

    public void closeConnection() {
        this.maintainConnection = false;
        RemoteKeyboard remoteKeyboard = this.keyboard;
        if (remoteKeyboard != null) {
            remoteKeyboard.clearMetaState();
            this.keyboard.keyEvent(0, new KeyEvent(1, 0));
        }
        RfbConnectable rfbConnectable = this.rfbconn;
        if (rfbConnectable != null) {
            rfbConnectable.close();
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        SSHConnection sSHConnection = this.sshConnection;
        if (sSHConnection != null) {
            sSHConnection.terminateSSHTunnel();
            this.sshConnection = null;
        }
        Log.d(TAG, "Saving screenshot to " + getContext().getFilesDir() + "/" + this.connection.getScreenshotFilename());
        Utils.writeScreenshotToFile(getContext(), this.myDrawable, getContext().getFilesDir() + "/" + this.connection.getScreenshotFilename(), 720, 600);
        disposeDrawable();
        onDestroy();
    }

    public void onDestroy() {
        Log.v(TAG, "Cleaning up resources");
        removeCallbacksAndMessages();
        Timer timer = this.clipboardMonitorTimer;
        if (timer != null) {
            timer.cancel();
            this.clipboardMonitorTimer = null;
        }
        this.clipboardMonitor = null;
        this.clipboard = null;
        this.setModes = null;
        this.decoder = null;
        this.canvasZoomer = null;
        this.drawableSetter = null;
        this.screenMessage = null;
        this.desktopInfo = null;
        disposeDrawable();
    }

    public void removeCallbacksAndMessages() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void computeShiftFromFullToView() {
        this.shiftX = (this.rfbconn.framebufferWidth() - getWidth()) / 2;
        this.shiftY = (this.rfbconn.framebufferHeight() - getHeight()) / 2;
    }

    void resetScroll() {
        float zoomFactor = getZoomFactor();
        scrollTo((int) ((this.absoluteXPosition - this.shiftX) * zoomFactor), (int) ((this.absoluteYPosition - this.shiftY) * zoomFactor));
    }

    public void movePanToMakePointerVisible() {
        int i;
        boolean z;
        RfbConnectable rfbConnectable = this.rfbconn;
        if (rfbConnectable == null) {
            return;
        }
        boolean z2 = true;
        int i2 = 0;
        boolean z3 = rfbConnectable.framebufferWidth() >= getVisibleDesktopWidth();
        boolean z4 = this.rfbconn.framebufferHeight() >= getVisibleDesktopHeight();
        AbstractScaling abstractScaling = this.canvasZoomer;
        if (abstractScaling == null || abstractScaling.isAbleToPan()) {
            int x = this.pointer.getX();
            int y = this.pointer.getY();
            int visibleDesktopWidth = getVisibleDesktopWidth();
            int visibleDesktopHeight = getVisibleDesktopHeight();
            int imageWidth = getImageWidth();
            int imageHeight = getImageHeight();
            int i3 = this.absoluteXPosition;
            int i4 = this.absoluteYPosition;
            int i5 = visibleDesktopWidth - 50;
            if (x - i3 >= i5) {
                i = x - i5;
                if (i + visibleDesktopWidth > imageWidth) {
                    i = imageWidth - visibleDesktopWidth;
                }
            } else if (x < i3 + 50) {
                i = x - 50;
                if (i < 0) {
                    i = 0;
                }
            } else {
                i = i3;
            }
            if (!z3 || i == i3) {
                z = false;
            } else {
                this.absoluteXPosition = i;
                z = true;
            }
            int i6 = visibleDesktopHeight - 50;
            if (y - i4 >= i6) {
                i2 = y - i6;
                if (i2 + visibleDesktopHeight > imageHeight) {
                    i2 = imageHeight - visibleDesktopHeight;
                }
            } else if (y < i4 + 50) {
                int i7 = y - 50;
                if (i7 >= 0) {
                    i2 = i7;
                }
            } else {
                i2 = i4;
            }
            if (!z4 || i2 == i4) {
                z2 = z;
            } else {
                this.absoluteYPosition = i2;
            }
            if (z2) {
                resetScroll();
            }
        }
    }

    public boolean relativePan(float f, float f2) {
        Log.d(TAG, "relativePan: " + f + ", " + f2);
        AbstractScaling abstractScaling = this.canvasZoomer;
        if (abstractScaling != null && !abstractScaling.isAbleToPan()) {
            return false;
        }
        double zoomFactor = getZoomFactor();
        double d = f;
        double imageWidth = d / zoomFactor;
        double d2 = f2;
        double imageHeight = d2 / zoomFactor;
        int bottomMargin = getBottomMargin(zoomFactor);
        int topMargin = this.userPanned ? getTopMargin(zoomFactor) : 0;
        this.userPanned = (d == 0.0d && d2 == 0.0d) ? false : true;
        int i = this.absoluteXPosition;
        if (((double) i) + imageWidth < 0.0d) {
            imageWidth = -i;
        }
        int i2 = this.absoluteYPosition;
        if (((double) i2) + imageHeight < 0 - topMargin) {
            imageHeight = (-i2) - topMargin;
        }
        if (((double) (i + getVisibleDesktopWidth())) + imageWidth > getImageWidth()) {
            imageWidth = (getImageWidth() - getVisibleDesktopWidth()) - this.absoluteXPosition;
        }
        if (((double) (this.absoluteYPosition + getVisibleDesktopHeight())) + imageHeight > getImageHeight() + bottomMargin) {
            imageHeight = ((getImageHeight() - getVisibleDesktopHeight()) - this.absoluteYPosition) + bottomMargin;
        }
        this.absoluteXPosition = (int) (((double) this.absoluteXPosition) + imageWidth);
        this.absoluteYPosition = (int) (((double) this.absoluteYPosition) + imageHeight);
        if (imageWidth == 0.0d && imageHeight == 0.0d) {
            return false;
        }
        resetScroll();
        return true;
    }

    public void absolutePan(int i, int i2) {
        if (this.canvasZoomer != null) {
            int visibleDesktopWidth = getVisibleDesktopWidth();
            int visibleDesktopHeight = getVisibleDesktopHeight();
            int imageWidth = getImageWidth();
            int imageHeight = getImageHeight();
            if (i + visibleDesktopWidth > imageWidth) {
                i = imageWidth - visibleDesktopWidth;
            }
            if (i2 + visibleDesktopHeight > imageHeight) {
                i2 = imageHeight - visibleDesktopHeight;
            }
            if (i < 0) {
                i = 0;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            this.absoluteXPosition = i;
            this.absoluteYPosition = i2;
            resetScroll();
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractBitmapData abstractBitmapData = this.myDrawable;
        if (abstractBitmapData != null) {
            abstractBitmapData.scrollChanged(this.absoluteXPosition, this.absoluteYPosition);
        }
    }

    @Override // com.undatech.opaque.Viewable
    public Bitmap getBitmap() {
        AbstractBitmapData abstractBitmapData = this.myDrawable;
        if (abstractBitmapData != null) {
            return abstractBitmapData.mbitmap;
        }
        return null;
    }

    @Override // com.undatech.opaque.Viewable
    public void reDraw(int i, int i2, int i3, int i4) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastDraw > 16.6666d) {
            float zoomFactor = getZoomFactor();
            float f = i - this.shiftX;
            float f2 = i2 - this.shiftY;
            postInvalidate((int) ((f - 1.0f) * zoomFactor), (int) ((f2 - 1.0f) * zoomFactor), (int) ((f + i3 + 1.0f) * zoomFactor), (int) ((f2 + i4 + 1.0f) * zoomFactor));
            this.lastDraw = jCurrentTimeMillis;
            return;
        }
        this.handler.removeCallbacks(this.invalidateCanvasRunnable);
        this.handler.postDelayed(this.invalidateCanvasRunnable, 100L);
    }

    public void reDraw(float f, float f2, float f3, float f4) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastDraw > 16.6666d) {
            float zoomFactor = getZoomFactor();
            float f5 = f - this.shiftX;
            float f6 = f2 - this.shiftY;
            postInvalidate((int) ((f5 - 1.0f) * zoomFactor), (int) ((f6 - 1.0f) * zoomFactor), (int) ((f5 + f3 + 1.0f) * zoomFactor), (int) ((f6 + f4 + 1.0f) * zoomFactor));
            this.lastDraw = jCurrentTimeMillis;
            return;
        }
        this.handler.removeCallbacks(this.invalidateCanvasRunnable);
        this.handler.postDelayed(this.invalidateCanvasRunnable, 100L);
    }

    public void showConnectionInfo() {
        String strDesktopName;
        RfbConnectable rfbConnectable = this.rfbconn;
        if (rfbConnectable == null) {
            return;
        }
        int iIndexOf = rfbConnectable.desktopName().indexOf("(");
        if (iIndexOf > 0) {
            strDesktopName = this.rfbconn.desktopName().substring(0, iIndexOf).trim() + StringUtils.LF + this.rfbconn.desktopName().substring(iIndexOf).trim();
        } else {
            strDesktopName = this.rfbconn.desktopName();
        }
        String str = strDesktopName + StringUtils.LF + this.rfbconn.framebufferWidth() + "x" + this.rfbconn.framebufferHeight();
        String encoding = this.rfbconn.getEncoding();
        Decoder decoder = this.decoder;
        if (decoder != null && decoder.getColorModel() != null) {
            if (encoding != null && !encoding.equals("")) {
                str = str + ", " + this.rfbconn.getEncoding() + getContext().getString(R.string.info_encoding) + this.decoder.getColorModel().toString();
            }
            str = str + ", " + this.decoder.getColorModel().toString();
        }
        Toast.makeText(getContext(), str, 0).show();
    }

    public void invalidateMousePosition() {
        AbstractBitmapData abstractBitmapData = this.myDrawable;
        if (abstractBitmapData != null) {
            abstractBitmapData.moveCursorRect(this.pointer.getX(), this.pointer.getY());
            RectF cursorRect = this.myDrawable.getCursorRect();
            reDraw(cursorRect.left, cursorRect.top, cursorRect.width(), cursorRect.height());
        }
    }

    @Override // com.undatech.opaque.Viewable
    public void setMousePointerPosition(int i, int i2) {
        softCursorMove(i, i2);
    }

    @Override // com.undatech.opaque.Viewable
    public void mouseMode(boolean z) {
        if (z && !this.connection.getInputMode().equals(InputHandlerTouchpad.ID)) {
            showMessage(getContext().getString(R.string.info_set_touchpad_input_mode));
        } else {
            this.pointer.setRelativeEvents(z);
        }
    }

    synchronized void softCursorMove(int i, int i2) {
        if (this.myDrawable.isNotInitSoftCursor() && this.connection.getUseLocalCursor() != 2) {
            initializeSoftCursor();
        }
        if (!this.cursorBeingMoved || this.pointer.isRelativeEvents()) {
            this.pointer.setX(i);
            this.pointer.setY(i2);
            RectF rectF = new RectF(this.myDrawable.getCursorRect());
            this.myDrawable.moveCursorRect(i, i2);
            RectF cursorRect = this.myDrawable.getCursorRect();
            reDraw(cursorRect.left, cursorRect.top, cursorRect.width(), cursorRect.height());
            reDraw(rectF.left, rectF.top, rectF.width(), rectF.height());
        }
    }

    void initializeSoftCursor() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.cursor);
        int width = bitmapDecodeResource.getWidth();
        int height = bitmapDecodeResource.getHeight();
        int[] iArr = new int[width * height];
        bitmapDecodeResource.getPixels(iArr, 0, width, 0, 0, width, height);
        this.myDrawable.setCursorRect(this.pointer.getX(), this.pointer.getY(), width, height, 0, 0);
        this.myDrawable.setSoftCursor(iArr);
        bitmapDecodeResource.recycle();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        Log.d(TAG, "onCreateInputConnection called");
        BaseInputConnection baseInputConnection = new BaseInputConnection(this, false);
        editorInfo.actionLabel = null;
        editorInfo.inputType = 0;
        Log.d(TAG, "currentIme: " + Settings.Secure.getString(getContext().getContentResolver(), "default_input_method"));
        editorInfo.imeOptions |= 33554432;
        return baseInputConnection;
    }

    public RemotePointer getPointer() {
        return this.pointer;
    }

    public RemoteKeyboard getKeyboard() {
        return this.keyboard;
    }

    public float getZoomFactor() {
        AbstractScaling abstractScaling = this.canvasZoomer;
        if (abstractScaling == null) {
            return 1.0f;
        }
        return abstractScaling.getZoomFactor();
    }

    public int getVisibleDesktopWidth() {
        return (int) ((((double) getWidth()) / ((double) getZoomFactor())) + 0.5d);
    }

    public void setVisibleDesktopHeight(int i) {
        this.visibleHeight = i;
    }

    public int getVisibleDesktopHeight() {
        double height;
        float zoomFactor;
        int i = this.visibleHeight;
        if (i > 0) {
            height = i;
            zoomFactor = getZoomFactor();
        } else {
            height = getHeight();
            zoomFactor = getZoomFactor();
        }
        return (int) ((height / ((double) zoomFactor)) + 0.5d);
    }

    public int getImageWidth() {
        return this.rfbconn.framebufferWidth();
    }

    public int getImageHeight() {
        return this.rfbconn.framebufferHeight();
    }

    public int getCenteredXOffset() {
        return (this.rfbconn.framebufferWidth() - getWidth()) / 2;
    }

    public int getCenteredYOffset() {
        return (this.rfbconn.framebufferHeight() - getHeight()) / 2;
    }

    public float getMinimumScale() {
        AbstractBitmapData abstractBitmapData = this.myDrawable;
        if (abstractBitmapData != null) {
            return abstractBitmapData.getMinimumScale();
        }
        return 1.0f;
    }

    public float getDisplayDensity() {
        return this.displayDensity;
    }

    public boolean isColorModel(COLORMODEL colormodel) {
        Decoder decoder;
        return this.isVnc && (decoder = this.decoder) != null && decoder.getColorModel() != null && this.decoder.getColorModel().equals(colormodel);
    }

    public void setColorModel(COLORMODEL colormodel) {
        Decoder decoder;
        if (!this.isVnc || (decoder = this.decoder) == null) {
            return;
        }
        decoder.setColorModel(colormodel);
    }

    public boolean getMouseFollowPan() {
        return this.connection.getFollowPan();
    }

    public int getAbsX() {
        return this.absoluteXPosition;
    }

    public int getAbsY() {
        return this.absoluteYPosition;
    }

    @Override // com.undatech.opaque.Viewable
    public void waitUntilInflated() {
        synchronized (this) {
            while (true) {
                if (getWidth() == 0 || getHeight() == 0) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        synchronized (this) {
            notify();
        }
    }

    public void validateX509Cert(final X509Certificate x509Certificate) {
        Log.d(TAG, "Displaying dialog to validate X509 Cert");
        int idHashAlgorithm = this.connection.getIdHashAlgorithm();
        try {
            byte[] encoded = x509Certificate.getEncoded();
            boolean zIsSignatureEqual = SecureTunnel.isSignatureEqual(idHashAlgorithm, this.connection.getIdHash(), encoded);
            String str = "";
            boolean z = true;
            if (this.connection.getX509KeySignature().equals("")) {
                if (this.connection.getIdHash() == null || this.connection.getIdHash().equals("")) {
                    z = false;
                } else if (zIsSignatureEqual) {
                    Log.i(TAG, "Certificate validated from URI data.");
                    saveAndAcceptCert(x509Certificate);
                    return;
                }
            } else if (this.connection.getX509KeySignature().equals(Base64.encodeToString(encoded, 0))) {
                Log.i(TAG, "Certificate validated from saved key.");
                saveAndAcceptCert(x509Certificate);
                return;
            } else if (this.sshTunneled) {
                Log.i(TAG, "X509 connection tunneled over SSH, so we have no place to save the cert fingerprint.");
                z = false;
            }
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.17
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Log.i(RemoteCanvas.TAG, "Certificate rejected by user.");
                    RemoteCanvas.this.closeConnection();
                    MessageDialogs.justFinish(RemoteCanvas.this.getContext());
                }
            };
            DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.18
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Log.i(RemoteCanvas.TAG, "Certificate accepted by user.");
                    RemoteCanvas.this.saveAndAcceptCert(x509Certificate);
                }
            };
            if (z) {
                try {
                    str = getContext().getString(R.string.warning_cert_does_not_match) + "\n\n";
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                    showFatalMessageAndQuit(getContext().getString(R.string.error_x509_could_not_generate_signature));
                    return;
                } catch (CertificateEncodingException e2) {
                    e2.printStackTrace();
                    showFatalMessageAndQuit(getContext().getString(R.string.error_x509_could_not_generate_encoding));
                    return;
                }
            }
            Utils.showYesNoPrompt(getContext(), getContext().getString(R.string.info_continue_connecting) + this.connection.getAddress() + "?", str + String.format(Locale.US, getContext().getString(R.string.info_cert_tunnel), SecureTunnel.computeSignatureByAlgorithm(idHashAlgorithm, x509Certificate.getEncoded()), x509Certificate.getSubjectX500Principal().getName(), x509Certificate.getIssuerX500Principal().getName(), x509Certificate.getNotBefore(), x509Certificate.getNotAfter()).replace(",", StringUtils.LF), onClickListener2, onClickListener);
        } catch (Exception e3) {
            e3.printStackTrace();
            showFatalMessageAndQuit(getContext().getString(R.string.error_x509_could_not_generate_signature));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAndAcceptCert(X509Certificate x509Certificate) {
        String strEncodeToString;
        Log.d(TAG, "Saving X509 cert fingerprint.");
        try {
            strEncodeToString = Base64.encodeToString(x509Certificate.getEncoded(), 0);
        } catch (CertificateEncodingException e) {
            e.printStackTrace();
            showFatalMessageAndQuit(getContext().getString(R.string.error_x509_could_not_generate_encoding));
            strEncodeToString = null;
        }
        this.connection.setX509KeySignature(strEncodeToString);
        this.connection.save(getContext());
        this.rfb.setCertificateAccepted(true);
        synchronized (this.rfb) {
            this.rfb.notifyAll();
        }
    }

    public void validateRdpCert(String str, String str2, String str3) {
        Utils.showYesNoPrompt(getContext(), getContext().getString(R.string.info_continue_connecting) + this.connection.getAddress() + "?", getContext().getString(R.string.info_cert_signatures) + StringUtils.LF + getContext().getString(R.string.cert_subject) + ":     " + str + StringUtils.LF + getContext().getString(R.string.cert_issuer) + ":      " + str2 + StringUtils.LF + getContext().getString(R.string.cert_fingerprint) + ": " + str3 + getContext().getString(R.string.info_cert_signatures_identical), new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RemoteCanvas.this.rfbconn.setCertificateAccepted(true);
                synchronized (RemoteCanvas.this.rfbconn) {
                    RemoteCanvas.this.rfbconn.notifyAll();
                }
            }
        }, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.19
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RemoteCanvas.this.closeConnection();
                MessageDialogs.justFinish(RemoteCanvas.this.getContext());
            }
        });
    }

    public String retrievevvFileName() {
        return this.vvFileName;
    }

    public void initializeSshHostKey() {
        Log.d(TAG, "Attempting to initialize SSH HostKey.");
        displayShortToastMessage(getContext().getString(R.string.info_ssh_initializing_hostkey));
        SSHConnection sSHConnection = new SSHConnection(this.connection, getContext(), this.handler);
        this.sshConnection = sSHConnection;
        if (!sSHConnection.connect()) {
            showFatalMessageAndQuit(getContext().getString(R.string.error_ssh_unable_to_connect));
            return;
        }
        Utils.showYesNoPrompt(getContext(), getContext().getString(R.string.info_continue_connecting) + this.connection.getSshServer() + "?", getContext().getString(R.string.info_ssh_key_fingerprint) + this.sshConnection.getHostKeySignature() + getContext().getString(R.string.info_ssh_key_fingerprint_identical), new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RemoteCanvas.this.connection.setIdHash(RemoteCanvas.this.sshConnection.getIdHash());
                RemoteCanvas.this.connection.setSshHostKey(RemoteCanvas.this.sshConnection.getServerHostKey());
                RemoteCanvas.this.connection.save(RemoteCanvas.this.getContext());
                RemoteCanvas.this.sshConnection.terminateSSHTunnel();
                RemoteCanvas.this.sshConnection = null;
                synchronized (RemoteCanvas.this) {
                    RemoteCanvas.this.notify();
                }
            }
        }, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvas.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RemoteCanvas.this.sshConnection.terminateSSHTunnel();
                RemoteCanvas.this.pd.dismiss();
                MessageDialogs.justFinish(RemoteCanvas.this.getContext());
            }
        });
    }

    @Override // com.iiordanov.bVNC.dialogs.GetTextFragment.OnFragmentDismissedListener
    public void onTextObtained(String str, String[] strArr, boolean z, boolean z2) {
        if (z) {
            this.handler.sendEmptyMessage(17);
            return;
        }
        str.hashCode();
        switch (str) {
            case "DIALOG_ID_GET_RDP_CREDENTIALS":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_VNC_PASSWORD.");
                this.connection.setUserName(strArr[0]);
                this.connection.setRdpDomain(strArr[1]);
                this.connection.setPassword(strArr[2]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                this.handler.sendEmptyMessage(16);
                return;
            case "DIALOG_ID_GET_SPICE_PASSWORD":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_SPICE_PASSWORD.");
                this.connection.setPassword(strArr[0]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                this.handler.sendEmptyMessage(16);
                return;
            case "DIALOG_ID_GET_VNC_CREDENTIALS":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_VNC_USERNAME.");
                this.connection.setUserName(strArr[0]);
                this.connection.setPassword(strArr[1]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                this.handler.sendEmptyMessage(16);
                return;
            case "DIALOG_ID_GET_VNC_PASSWORD":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_VNC_PASSWORD.");
                this.connection.setPassword(strArr[0]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                this.handler.sendEmptyMessage(16);
                return;
            case "DIALOG_ID_GET_OPAQUE_PASSWORD":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_OPAQUE_PASSWORD");
                this.connection.setPassword(strArr[0]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                synchronized (this.spicecomm) {
                    this.spicecomm.notify();
                    break;
                }
                return;
            case "DIALOG_ID_GET_OPAQUE_CREDENTIALS":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_OPAQUE_CREDENTIALS");
                this.connection.setUserName(strArr[0]);
                this.connection.setPassword(strArr[1]);
                this.connection.setKeepPassword(z2);
                this.connection.save(getContext());
                this.handler.sendEmptyMessage(16);
                return;
            case "DIALOG_ID_GET_OPAQUE_OTP_CODE":
                Log.i(TAG, "Text obtained from DIALOG_ID_GET_OPAQUE_OTP_CODE");
                this.connection.setOtpCode(strArr[0]);
                synchronized (this.spicecomm) {
                    this.spicecomm.notify();
                    break;
                }
                return;
            default:
                Log.e(TAG, "Unknown dialog type.");
                return;
        }
    }
}
