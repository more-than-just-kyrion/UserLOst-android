package com.iiordanov.bVNC;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.Vibrator;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import com.iiordanov.android.bc.BCFactory;
import com.iiordanov.bVNC.dialogs.EnterTextDialog;
import com.iiordanov.bVNC.dialogs.MetaKeyDialog;
import com.iiordanov.bVNC.input.AbstractMetaKeyBean;
import com.iiordanov.bVNC.input.InputHandler;
import com.iiordanov.bVNC.input.InputHandlerDirectDragPan;
import com.iiordanov.bVNC.input.InputHandlerDirectSwipePan;
import com.iiordanov.bVNC.input.InputHandlerSingleHanded;
import com.iiordanov.bVNC.input.InputHandlerTouchpad;
import com.iiordanov.bVNC.input.MetaKeyBean;
import com.iiordanov.bVNC.input.Panner;
import com.iiordanov.bVNC.input.RemoteCanvasHandler;
import com.iiordanov.bVNC.input.RemoteKeyboard;
import com.undatech.opaque.Connection;
import com.undatech.opaque.ConnectionSettings;
import com.undatech.opaque.MessageDialogs;
import com.undatech.opaque.OpaqueHandler;
import com.undatech.opaque.RemoteClientLibConstants;
import com.undatech.opaque.dialogs.SelectTextElementFragment;
import com.undatech.opaque.util.FileUtils;
import com.undatech.opaque.util.OnTouchViewMover;
import com.undatech.opaque.util.RemoteToolbar;
import com.undatech.remoteClientUi.R;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import net.sqlcipher.Cursor;
import org.apache.http.HttpHost;
import tech.ula.customlibrary.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteCanvasActivity extends AppCompatActivity implements View.OnKeyListener, SelectTextElementFragment.OnFragmentDismissedListener {
    private static final String TAG = "RemoteCanvasActivity";
    private static WeakReference<Context> context;
    public static final Map<Integer, String> inputModeMap;
    private RemoteCanvas canvas;
    private Connection connection;
    Handler handler;
    boolean hardKeyboardExtended;
    InputHandler inputHandler;
    private InputHandler[] inputModeHandlers;
    private MenuItem[] inputModeMenuItems;
    ImageButton keyAlt;
    boolean keyAltToggled;
    ImageButton keyCtrl;
    boolean keyCtrlToggled;
    ImageButton keyDown;
    ImageButton keyEsc;
    ImageButton keyLeft;
    ImageButton keyRight;
    ImageButton keyShift;
    boolean keyShiftToggled;
    ImageButton keySuper;
    boolean keySuperToggled;
    ImageButton keyTab;
    ImageButton keyUp;
    private MetaKeyBean lastSentKey;
    LinearLayout layoutArrowKeys;
    RelativeLayout layoutKeys;
    private Vibrator myVibrator;
    Panner panner;
    View rootView;
    private MenuItem[] scalingModeMenuItems;
    volatile boolean softKeyboardUp;
    RemoteToolbar toolbar;
    public static final int[] inputModeIds = {R.id.itemInputTouchpad, R.id.itemInputTouchPanZoomMouse, R.id.itemInputDragPanZoomMouse, R.id.itemInputSingleHanded};
    private static final int[] scalingModeIds = {R.id.itemZoomable, R.id.itemFitToScreen, R.id.itemOneToOne};
    boolean extraKeysHidden = false;
    private Runnable immersiveEnabler = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!Utils.querySharedPreferenceBoolean(RemoteCanvasActivity.this, Constants.disableImmersiveTag) && Constants.SDK_INT >= 19) {
                    RemoteCanvasActivity.this.canvas.setSystemUiVisibility(5894);
                }
            } catch (Exception unused) {
            }
        }
    };
    private Runnable immersiveDisabler = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Constants.SDK_INT >= 19) {
                    RemoteCanvasActivity.this.canvas.setSystemUiVisibility(1792);
                }
            } catch (Exception unused) {
            }
        }
    };
    private Runnable rotationCorrector = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.23
        @Override // java.lang.Runnable
        public void run() {
            try {
                RemoteCanvasActivity.this.correctAfterRotation();
            } catch (Exception unused) {
            }
        }
    };
    final long hideToolbarDelay = 2500;
    ToolbarHiderRunnable toolbarHider = new ToolbarHiderRunnable();

    static {
        HashMap map = new HashMap();
        map.put(Integer.valueOf(R.id.itemInputTouchpad), InputHandlerTouchpad.ID);
        map.put(Integer.valueOf(R.id.itemInputDragPanZoomMouse), InputHandlerDirectDragPan.ID);
        map.put(Integer.valueOf(R.id.itemInputTouchPanZoomMouse), InputHandlerDirectSwipePan.ID);
        map.put(Integer.valueOf(R.id.itemInputSingleHanded), InputHandlerSingleHanded.ID);
        inputModeMap = Collections.unmodifiableMap(map);
    }

    private void enableImmersive() {
        this.handler.removeCallbacks(this.immersiveEnabler);
        this.handler.postDelayed(this.immersiveEnabler, 200L);
    }

    private void disableImmersive() {
        this.handler.removeCallbacks(this.immersiveDisabler);
        this.handler.postDelayed(this.immersiveDisabler, 200L);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            enableImmersive();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.d(TAG, "OnCreate called");
        requestWindowFeature(1);
        super.onCreate(bundle);
        context = new WeakReference<>(this);
        getWindow().setFlags(1024, 1024);
        Utils.showMenu(this);
        setContentView(R.layout.canvas);
        this.canvas = (RemoteCanvas) findViewById(R.id.canvas);
        if (Build.VERSION.SDK_INT >= 26) {
            this.canvas.setDefaultFocusHighlightEnabled(false);
        }
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        this.myVibrator = (Vibrator) getSystemService("vibrator");
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.3
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                try {
                    RemoteCanvasActivity.this.correctAfterRotation();
                } catch (Exception unused) {
                }
            }
        });
        Runnable runnable = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    RemoteCanvasActivity.this.setModes();
                } catch (NullPointerException unused) {
                }
            }
        };
        Runnable runnable2 = new Runnable() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    RemoteCanvasActivity.this.hideKeyboardAndExtraKeys();
                } catch (NullPointerException unused) {
                }
            }
        };
        if (Utils.isOpaque(getPackageName())) {
            initializeOpaque(runnable, runnable2);
        } else {
            initialize(runnable, runnable2);
        }
        Connection connection = this.connection;
        if (connection != null && connection.isReadyForConnection()) {
            continueConnecting();
        }
        Log.d(TAG, "OnCreate complete");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056  */
    /* JADX WARN: Code duplicated, block: B:19:0x0060  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0079  */
    /* JADX WARN: Code duplicated, block: B:25:0x008d  */
    /* JADX WARN: Code duplicated, block: B:28:0x009a  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:54:0x0181  */
    /* JADX WARN: Code duplicated, block: B:57:0x0190  */
    void initialize(Runnable runnable, Runnable runnable2) {
        String address;
        Class cls;
        this.handler = new RemoteCanvasHandler(this);
        if (Utils.querySharedPreferenceBoolean(this, Constants.keepScreenOnTag)) {
            getWindow().addFlags(128);
        }
        if (Utils.querySharedPreferenceBoolean(this, Constants.forceLandscapeTag)) {
            setRequestedOrientation(6);
        }
        Intent intent = getIntent();
        this.connection = null;
        Uri data = intent.getData();
        Bundle extras = intent.getExtras();
        if (data != null) {
            String scheme = data.getScheme();
            if (scheme.equals("rdp") || scheme.equals("spice") || scheme.equals(BuildConfig.DEFAULT_LAUNCH_TYPE)) {
                Log.d(TAG, "Initializing classic connection from Intent.");
                if (isMasterPasswordEnabled()) {
                    Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_intents_not_supported));
                    return;
                }
                this.connection = ConnectionBean.createLoadFromUri(data, this);
                if (!data.getHost().startsWith(Utils.getConnectionString(this))) {
                    this.connection.parseFromUri(data);
                }
                if (this.connection.isReadyToBeSaved()) {
                    this.connection.saveAndWriteRecent(false, this);
                }
                if (!this.connection.isReadyForConnection()) {
                    Toast.makeText(this, getString(R.string.error_uri_noinfo_nosave), 1).show();
                    if (!this.connection.isReadyToBeSaved()) {
                        Log.i(TAG, "Exiting - Insufficent information to connect and connection was not saved.");
                    } else {
                        Log.i(TAG, "Insufficent information to connect, showing connection dialog.");
                        cls = bVNC.class;
                        if (Utils.isRdp(getPackageName())) {
                            cls = aRDP.class;
                        } else if (Utils.isSpice(getPackageName())) {
                            cls = aSPICE.class;
                        }
                        startActivity(new Intent(this, (Class<?>) cls));
                    }
                    MessageDialogs.justFinish(this);
                    return;
                }
            } else if (!Utils.isNullOrEmptry(intent.getType())) {
                Log.d(TAG, "Initializing classic connection from Intent.");
                if (isMasterPasswordEnabled()) {
                    Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_intents_not_supported));
                    return;
                }
                this.connection = ConnectionBean.createLoadFromUri(data, this);
                if (!data.getHost().startsWith(Utils.getConnectionString(this))) {
                    this.connection.parseFromUri(data);
                }
                if (this.connection.isReadyToBeSaved()) {
                    this.connection.saveAndWriteRecent(false, this);
                }
                if (!this.connection.isReadyForConnection()) {
                    Toast.makeText(this, getString(R.string.error_uri_noinfo_nosave), 1).show();
                    if (!this.connection.isReadyToBeSaved()) {
                        Log.i(TAG, "Exiting - Insufficent information to connect and connection was not saved.");
                    } else {
                        Log.i(TAG, "Insufficent information to connect, showing connection dialog.");
                        cls = bVNC.class;
                        if (Utils.isRdp(getPackageName())) {
                            cls = aRDP.class;
                        } else if (Utils.isSpice(getPackageName())) {
                            cls = aSPICE.class;
                        }
                        startActivity(new Intent(this, (Class<?>) cls));
                    }
                    MessageDialogs.justFinish(this);
                    return;
                }
            } else {
                Log.d(TAG, "Initializing classic connection from Serializeable.");
                this.connection = new ConnectionBean(this);
                if (extras != null) {
                    Log.d(TAG, "Initializing classic connection from Serializeable, loading values.");
                    this.connection.populateFromContentValues((ContentValues) extras.getParcelable(Utils.getConnectionString(this)));
                    this.connection.load(this);
                }
                Log.d(TAG, "Initializing classic connection from Serializeable, toolbar X coor " + this.connection.getUseLastPositionToolbarX());
                Log.d(TAG, "Initializing classic connection from Serializeable, toolbar Y coor " + this.connection.getUseLastPositionToolbarY());
                address = this.connection.getAddress();
                if (!Utils.isValidIpv6Address(address) && address.indexOf(58) > -1) {
                    try {
                        this.connection.setPort(Integer.parseInt(address.substring(address.indexOf(58) + 1)));
                        this.connection.setAddress(address.substring(0, address.indexOf(58)));
                    } catch (Exception unused) {
                    }
                }
                if (this.connection.getPort() == 0) {
                    this.connection.setPort(Constants.DEFAULT_PROTOCOL_PORT);
                }
                if (this.connection.getSshPort() == 0) {
                    this.connection.setSshPort(22);
                }
            }
        } else if (!Utils.isNullOrEmptry(intent.getType())) {
            Log.d(TAG, "Initializing classic connection from Intent.");
            if (isMasterPasswordEnabled()) {
                Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_intents_not_supported));
                return;
            }
            this.connection = ConnectionBean.createLoadFromUri(data, this);
            if (!data.getHost().startsWith(Utils.getConnectionString(this))) {
                this.connection.parseFromUri(data);
            }
            if (this.connection.isReadyToBeSaved()) {
                this.connection.saveAndWriteRecent(false, this);
            }
            if (!this.connection.isReadyForConnection()) {
                Toast.makeText(this, getString(R.string.error_uri_noinfo_nosave), 1).show();
                if (!this.connection.isReadyToBeSaved()) {
                    Log.i(TAG, "Exiting - Insufficent information to connect and connection was not saved.");
                } else {
                    Log.i(TAG, "Insufficent information to connect, showing connection dialog.");
                    cls = bVNC.class;
                    if (Utils.isRdp(getPackageName())) {
                        cls = aRDP.class;
                    } else if (Utils.isSpice(getPackageName())) {
                        cls = aSPICE.class;
                    }
                    startActivity(new Intent(this, (Class<?>) cls));
                }
                MessageDialogs.justFinish(this);
                return;
            }
        } else {
            Log.d(TAG, "Initializing classic connection from Serializeable.");
            this.connection = new ConnectionBean(this);
            if (extras != null) {
                Log.d(TAG, "Initializing classic connection from Serializeable, loading values.");
                this.connection.populateFromContentValues((ContentValues) extras.getParcelable(Utils.getConnectionString(this)));
                this.connection.load(this);
            }
            Log.d(TAG, "Initializing classic connection from Serializeable, toolbar X coor " + this.connection.getUseLastPositionToolbarX());
            Log.d(TAG, "Initializing classic connection from Serializeable, toolbar Y coor " + this.connection.getUseLastPositionToolbarY());
            address = this.connection.getAddress();
            if (!Utils.isValidIpv6Address(address)) {
                this.connection.setPort(Integer.parseInt(address.substring(address.indexOf(58) + 1)));
                this.connection.setAddress(address.substring(0, address.indexOf(58)));
            }
            if (this.connection.getPort() == 0) {
                this.connection.setPort(Constants.DEFAULT_PROTOCOL_PORT);
            }
            if (this.connection.getSshPort() == 0) {
                this.connection.setSshPort(22);
            }
        }
        ((RemoteCanvasHandler) this.handler).setConnection(this.connection);
        this.connection.setPrefEncoding(0);
        this.canvas.initializeCanvas(this.connection, runnable, runnable2);
        AbstractScaling.getById(R.id.itemZoomable).setScaleTypeForActivity(this);
        if (extras != null) {
            setInputMode(extras.getInt("input_mode", R.id.itemInputTouchPanZoomMouse));
            if (extras.getBoolean("display_locked", false)) {
                if (extras.getInt("display_orientation", 2) == 2) {
                    setRequestedOrientation(6);
                } else {
                    setRequestedOrientation(7);
                }
            }
        }
    }

    private void initializeOpaque(Runnable runnable, Runnable runnable2) {
        setVolumeControlStream(3);
        Intent intent = getIntent();
        String strRetrieveVvFileFromIntent = retrieveVvFileFromIntent(intent);
        if (strRetrieveVvFileFromIntent == null) {
            Log.d(TAG, "Initializing session from connection settings.");
            this.connection = (ConnectionSettings) intent.getSerializableExtra("com.undatech.opaque.ConnectionSettings");
        } else {
            Log.d(TAG, "Initializing session from vv file: " + strRetrieveVvFileFromIntent);
            if (!new File(strRetrieveVvFileFromIntent).exists()) {
                MessageDialogs.displayMessageAndFinish(this, R.string.vv_file_not_found, R.string.error_dialog_title);
                return;
            } else {
                ConnectionSettings connectionSettings = new ConnectionSettings(RemoteClientLibConstants.DEFAULT_SETTINGS_FILE);
                this.connection = connectionSettings;
                connectionSettings.load(getApplicationContext());
            }
        }
        OpaqueHandler opaqueHandler = new OpaqueHandler(this, this.canvas, this.connection);
        this.handler = opaqueHandler;
        this.canvas.init(this.connection, opaqueHandler, runnable, runnable2, strRetrieveVvFileFromIntent);
    }

    void continueConnecting() {
        Log.d(TAG, "continueConnecting");
        initializeOnScreenKeys();
        this.canvas.setOnKeyListener(this);
        this.canvas.setFocusableInTouchMode(true);
        this.canvas.setDrawingCacheEnabled(false);
        View childAt = ((ViewGroup) findViewById(android.R.id.content)).getChildAt(0);
        this.rootView = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                RemoteCanvasActivity remoteCanvasActivity = RemoteCanvasActivity.this;
                remoteCanvasActivity.relayoutViews(remoteCanvasActivity.rootView);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (Utils.querySharedPreferenceBoolean(this, Constants.leftHandedModeTag)) {
            layoutParams.gravity = 19;
        } else {
            layoutParams.gravity = 21;
        }
        this.panner = new Panner(this, this.canvas.handler);
        RemoteToolbar remoteToolbar = (RemoteToolbar) findViewById(R.id.toolbar);
        this.toolbar = remoteToolbar;
        remoteToolbar.setTitle("");
        this.toolbar.getBackground().setAlpha(64);
        this.toolbar.setLayoutParams(layoutParams);
        setSupportActionBar(this.toolbar);
        showToolbar();
    }

    void relayoutViews(View view) {
        String str;
        Log.d(TAG, "onGlobalLayout: start");
        if (this.canvas == null) {
            Log.d(TAG, "onGlobalLayout: canvas null, returning");
            return;
        }
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        Log.d(TAG, "onGlobalLayout: getWindowVisibleDisplayFrame: " + rect.toString());
        Rect rect2 = new Rect();
        getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
        if (rect.top == 0 || rect2.top > 0) {
            if (this.canvas.myDrawable != null) {
                Log.d(TAG, "onGlobalLayout: Setting VisibleDesktopHeight to: " + (rect.bottom - rect2.top));
                this.canvas.setVisibleDesktopHeight(rect.bottom - rect2.top);
                this.canvas.relativePan(0.0f, 0.0f);
            } else {
                Log.d(TAG, "onGlobalLayout: canvas.myDrawable is null");
            }
        } else {
            Log.d(TAG, "onGlobalLayout: Found r.top to be non-zero");
        }
        int height = view.getHeight();
        int bottom = this.layoutKeys.getBottom();
        int bottom2 = this.toolbar.getBottom();
        int bottom3 = this.layoutKeys.getRootView().getBottom();
        int right = (rect.right - rect2.left) - this.layoutArrowKeys.getRight();
        int i = (rect.bottom - rect2.top) - bottom;
        int i2 = ((rect.bottom - rect2.top) - bottom2) - (rect.bottom / 2);
        int width = rect.right - this.toolbar.getWidth();
        int height2 = ((rect.bottom - rect2.top) - this.toolbar.getHeight()) - (rect.bottom / 2);
        String str2 = " re.top: ";
        String str3 = " rootViewBottom: ";
        StringBuilder sbAppend = new StringBuilder("onGlobalLayout: before: r.bottom: ").append(rect.bottom).append(" rootViewHeight: ").append(height).append(" re.top: ").append(rect2.top).append(" re.bottom: ").append(rect2.bottom).append(" layoutKeysBottom: ").append(bottom).append(" rootViewBottom: ").append(bottom3);
        String str4 = " toolbarBottom: ";
        Log.d(TAG, sbAppend.append(" toolbarBottom: ").append(bottom2).append(" diffLayoutKeysPosition: ").append(i).append(" diffToolbarPosition: ").append(i2).toString());
        String str5 = " layoutKeysBottom: ";
        String str6 = " re.bottom: ";
        if (rect.bottom > ((double) height) * 0.81d) {
            Log.d(TAG, "onGlobalLayout: Less than 19% of screen is covered");
            boolean z = this.softKeyboardUp;
            this.softKeyboardUp = false;
            if (this.layoutKeys != null) {
                Log.d(TAG, "onGlobalLayout: shifting on-screen buttons down by: " + i);
                this.layoutKeys.offsetTopAndBottom(i);
                if (!this.connection.getUseLastPositionToolbar() || !this.connection.getUseLastPositionToolbarMoved()) {
                    str = "onGlobalLayout: shifting arrow keys by: ";
                    this.toolbar.offsetTopAndBottom(i2);
                } else {
                    str = "onGlobalLayout: shifting arrow keys by: ";
                    this.toolbar.makeVisible(this.connection.getUseLastPositionToolbarX(), this.connection.getUseLastPositionToolbarY(), rect.right, rect.bottom, width, height2);
                }
                Log.d(TAG, str + right);
                this.layoutArrowKeys.offsetLeftAndRight(right);
                if (z) {
                    Log.d(TAG, "onGlobalLayout: hiding on-screen buttons");
                    setExtraKeysVisibility(8, false);
                    this.canvas.invalidate();
                }
            } else {
                str4 = " toolbarBottom: ";
                str3 = " rootViewBottom: ";
                str2 = " re.top: ";
                str6 = str6;
                str5 = str5;
            }
        } else {
            str4 = " toolbarBottom: ";
            str3 = " rootViewBottom: ";
            str2 = " re.top: ";
            str6 = str6;
            str5 = str5;
            Log.d(TAG, "onGlobalLayout: More than 19% of screen is covered");
            this.softKeyboardUp = true;
            if (this.layoutKeys != null) {
                Log.d(TAG, "onGlobalLayout: shifting on-screen buttons up by: " + i);
                this.layoutKeys.offsetTopAndBottom(i);
                if (!this.connection.getUseLastPositionToolbar() || !this.connection.getUseLastPositionToolbarMoved()) {
                    this.toolbar.offsetTopAndBottom(i2);
                } else {
                    this.toolbar.makeVisible(this.connection.getUseLastPositionToolbarX(), this.connection.getUseLastPositionToolbarY(), rect.right, rect.bottom, width, height2);
                }
                Log.d(TAG, "onGlobalLayout: shifting arrow keys by: " + right);
                this.layoutArrowKeys.offsetLeftAndRight(right);
                if (this.extraKeysHidden) {
                    Log.d(TAG, "onGlobalLayout: on-screen buttons should be hidden");
                    setExtraKeysVisibility(8, false);
                } else {
                    Log.d(TAG, "onGlobalLayout: on-screen buttons should be showing");
                    setExtraKeysVisibility(0, true);
                }
                this.canvas.invalidate();
            }
        }
        Log.d(TAG, "onGlobalLayout: after: r.bottom: " + rect.bottom + " rootViewHeight: " + height + str2 + rect2.top + str6 + rect2.bottom + str5 + this.layoutKeys.getBottom() + str3 + this.layoutKeys.getRootView().getBottom() + str4 + bottom2 + " diffLayoutKeysPosition: " + i + " diffToolbarPosition: " + i2);
    }

    private String retrieveVvFileFromIntent(Intent intent) {
        int i;
        final Uri data = intent.getData();
        final String path = getFilesDir() + "/tempfile.vv";
        Log.d(TAG, "Got intent: " + intent.toString());
        if (data == null) {
            return null;
        }
        Log.d(TAG, "Got data: " + data.toString());
        final String string = data.toString();
        if (string.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            Log.d(TAG, "Intent is with http scheme.");
            i = R.string.error_failed_to_download_vv_http;
            FileUtils.deleteFile(path);
            new Thread() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.7
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        URL url = new URL(data.toString());
                        new File(path);
                        FileUtils.outputToFile(url.openConnection().getInputStream(), new File(path));
                        synchronized (RemoteCanvasActivity.this) {
                            RemoteCanvasActivity.this.notify();
                        }
                    } catch (IOException unused) {
                        RemoteCanvasActivity.this.handler.sendEmptyMessage(string.startsWith("https") ? 32 : 31);
                    }
                }
            }.start();
            synchronized (this) {
                try {
                    wait(17000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        } else if (string.startsWith("file")) {
            Log.d(TAG, "Intent is with file scheme.");
            i = R.string.error_failed_to_obtain_vv_file;
            path = data.getPath();
        } else if (string.startsWith("content")) {
            Log.d(TAG, "Intent is with content scheme.");
            int i2 = R.string.error_failed_to_obtain_vv_content;
            FileUtils.deleteFile(path);
            try {
                FileUtils.outputToFile(getContentResolver().openInputStream(data), new File(path));
            } catch (IOException e2) {
                Log.e(TAG, "Could not write temp file: IOException.");
                e2.printStackTrace();
                path = null;
            } catch (SecurityException e3) {
                Log.e(TAG, "Could not write temp file: SecurityException.");
                e3.printStackTrace();
                path = null;
            }
            i = i2;
        } else {
            path = null;
            i = 0;
        }
        if ((string.startsWith(HttpHost.DEFAULT_SCHEME_NAME) || string.startsWith("file") || string.startsWith("content")) && path == null) {
            MessageDialogs.displayMessageAndFinish(this, i, R.string.error_dialog_title);
        }
        Log.d(TAG, "Got filename: " + path);
        return path;
    }

    public void extraKeysToggle(MenuItem menuItem) {
        if (this.layoutKeys.getVisibility() == 0) {
            this.extraKeysHidden = true;
            setExtraKeysVisibility(8, false);
        } else {
            this.extraKeysHidden = false;
            setExtraKeysVisibility(0, true);
        }
        setKeyStowDrawableAndVisibility(menuItem);
        relayoutViews(this.rootView);
    }

    private void setKeyStowDrawableAndVisibility(MenuItem menuItem) {
        Drawable drawable;
        if (menuItem == null) {
            return;
        }
        if (this.connection.getExtraKeysToggleType() == 0) {
            menuItem.setVisible(false);
        } else {
            menuItem.setVisible(true);
        }
        if (this.layoutKeys.getVisibility() == 8) {
            drawable = getResources().getDrawable(R.drawable.showkeys);
        } else {
            drawable = getResources().getDrawable(R.drawable.hidekeys);
        }
        menuItem.setIcon(drawable);
    }

    public void sendShortVibration() {
        Vibrator vibrator = this.myVibrator;
        if (vibrator != null) {
            vibrator.vibrate(1L);
        } else {
            Log.i(TAG, "Device cannot vibrate, not sending vibration");
        }
    }

    private void initializeOnScreenKeys() {
        this.layoutKeys = (RelativeLayout) findViewById(R.id.layoutKeys);
        this.layoutArrowKeys = (LinearLayout) findViewById(R.id.layoutArrowKeys);
        ImageButton imageButton = (ImageButton) findViewById(R.id.keyTab);
        this.keyTab = imageButton;
        imageButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    BCFactory.getInstance().getBCHaptic().performLongPressHaptic(RemoteCanvasActivity.this.canvas);
                    RemoteCanvasActivity.this.keyTab.setImageResource(R.drawable.tabon);
                    keyboard.repeatKeyEvent(61, new KeyEvent(motionEvent.getAction(), 61));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyTab.setImageResource(R.drawable.taboff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.keyEsc);
        this.keyEsc = imageButton2;
        imageButton2.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.9
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    BCFactory.getInstance().getBCHaptic().performLongPressHaptic(RemoteCanvasActivity.this.canvas);
                    RemoteCanvasActivity.this.keyEsc.setImageResource(R.drawable.escon);
                    keyboard.repeatKeyEvent(com.undatech.opaque.input.RemoteKeyboard.SCAN_DELETE, new KeyEvent(motionEvent.getAction(), com.undatech.opaque.input.RemoteKeyboard.SCAN_DELETE));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyEsc.setImageResource(R.drawable.escoff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
        ImageButton imageButton3 = (ImageButton) findViewById(R.id.keyCtrl);
        this.keyCtrl = imageButton3;
        imageButton3.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean zOnScreenCtrlToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenCtrlToggle();
                RemoteCanvasActivity.this.keyCtrlToggled = false;
                if (zOnScreenCtrlToggle) {
                    RemoteCanvasActivity.this.keyCtrl.setImageResource(R.drawable.ctrlon);
                } else {
                    RemoteCanvasActivity.this.keyCtrl.setImageResource(R.drawable.ctrloff);
                }
            }
        });
        this.keyCtrl.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.11
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                RemoteCanvasActivity.this.sendShortVibration();
                boolean zOnScreenCtrlToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenCtrlToggle();
                RemoteCanvasActivity.this.keyCtrlToggled = true;
                if (zOnScreenCtrlToggle) {
                    RemoteCanvasActivity.this.keyCtrl.setImageResource(R.drawable.ctrlon);
                } else {
                    RemoteCanvasActivity.this.keyCtrl.setImageResource(R.drawable.ctrloff);
                }
                return true;
            }
        });
        ImageButton imageButton4 = (ImageButton) findViewById(R.id.keySuper);
        this.keySuper = imageButton4;
        imageButton4.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean zOnScreenSuperToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenSuperToggle();
                RemoteCanvasActivity.this.keySuperToggled = false;
                if (zOnScreenSuperToggle) {
                    RemoteCanvasActivity.this.keySuper.setImageResource(R.drawable.superon);
                } else {
                    RemoteCanvasActivity.this.keySuper.setImageResource(R.drawable.superoff);
                }
            }
        });
        this.keySuper.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.13
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                RemoteCanvasActivity.this.sendShortVibration();
                boolean zOnScreenSuperToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenSuperToggle();
                RemoteCanvasActivity.this.keySuperToggled = true;
                if (zOnScreenSuperToggle) {
                    RemoteCanvasActivity.this.keySuper.setImageResource(R.drawable.superon);
                } else {
                    RemoteCanvasActivity.this.keySuper.setImageResource(R.drawable.superoff);
                }
                return true;
            }
        });
        ImageButton imageButton5 = (ImageButton) findViewById(R.id.keyAlt);
        this.keyAlt = imageButton5;
        imageButton5.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean zOnScreenAltToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenAltToggle();
                RemoteCanvasActivity.this.keyAltToggled = false;
                if (zOnScreenAltToggle) {
                    RemoteCanvasActivity.this.keyAlt.setImageResource(R.drawable.alton);
                } else {
                    RemoteCanvasActivity.this.keyAlt.setImageResource(R.drawable.altoff);
                }
            }
        });
        this.keyAlt.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.15
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                RemoteCanvasActivity.this.sendShortVibration();
                boolean zOnScreenAltToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenAltToggle();
                RemoteCanvasActivity.this.keyAltToggled = true;
                if (zOnScreenAltToggle) {
                    RemoteCanvasActivity.this.keyAlt.setImageResource(R.drawable.alton);
                } else {
                    RemoteCanvasActivity.this.keyAlt.setImageResource(R.drawable.altoff);
                }
                return true;
            }
        });
        ImageButton imageButton6 = (ImageButton) findViewById(R.id.keyShift);
        this.keyShift = imageButton6;
        imageButton6.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean zOnScreenShiftToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenShiftToggle();
                RemoteCanvasActivity.this.keyShiftToggled = false;
                if (zOnScreenShiftToggle) {
                    RemoteCanvasActivity.this.keyShift.setImageResource(R.drawable.shifton);
                } else {
                    RemoteCanvasActivity.this.keyShift.setImageResource(R.drawable.shiftoff);
                }
            }
        });
        this.keyShift.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.17
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                RemoteCanvasActivity.this.sendShortVibration();
                boolean zOnScreenShiftToggle = RemoteCanvasActivity.this.canvas.getKeyboard().onScreenShiftToggle();
                RemoteCanvasActivity.this.keyShiftToggled = true;
                if (zOnScreenShiftToggle) {
                    RemoteCanvasActivity.this.keyShift.setImageResource(R.drawable.shifton);
                } else {
                    RemoteCanvasActivity.this.keyShift.setImageResource(R.drawable.shiftoff);
                }
                return true;
            }
        });
        ImageButton imageButton7 = (ImageButton) findViewById(R.id.keyUpArrow);
        this.keyUp = imageButton7;
        imageButton7.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.18
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    RemoteCanvasActivity.this.sendShortVibration();
                    RemoteCanvasActivity.this.keyUp.setImageResource(R.drawable.upon);
                    keyboard.repeatKeyEvent(19, new KeyEvent(motionEvent.getAction(), 19));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyUp.setImageResource(R.drawable.upoff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
        ImageButton imageButton8 = (ImageButton) findViewById(R.id.keyDownArrow);
        this.keyDown = imageButton8;
        imageButton8.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.19
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    RemoteCanvasActivity.this.sendShortVibration();
                    RemoteCanvasActivity.this.keyDown.setImageResource(R.drawable.downon);
                    keyboard.repeatKeyEvent(20, new KeyEvent(motionEvent.getAction(), 20));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyDown.setImageResource(R.drawable.downoff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
        ImageButton imageButton9 = (ImageButton) findViewById(R.id.keyLeftArrow);
        this.keyLeft = imageButton9;
        imageButton9.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.20
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    RemoteCanvasActivity.this.sendShortVibration();
                    RemoteCanvasActivity.this.keyLeft.setImageResource(R.drawable.lefton);
                    keyboard.repeatKeyEvent(21, new KeyEvent(motionEvent.getAction(), 21));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyLeft.setImageResource(R.drawable.leftoff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
        ImageButton imageButton10 = (ImageButton) findViewById(R.id.keyRightArrow);
        this.keyRight = imageButton10;
        imageButton10.setOnTouchListener(new View.OnTouchListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.21
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                RemoteKeyboard keyboard = RemoteCanvasActivity.this.canvas.getKeyboard();
                if (motionEvent.getAction() == 0) {
                    RemoteCanvasActivity.this.sendShortVibration();
                    RemoteCanvasActivity.this.keyRight.setImageResource(R.drawable.righton);
                    keyboard.repeatKeyEvent(22, new KeyEvent(motionEvent.getAction(), 22));
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                RemoteCanvasActivity.this.keyRight.setImageResource(R.drawable.rightoff);
                RemoteCanvasActivity.this.resetOnScreenKeys(0);
                keyboard.stopRepeatingKeyEvent();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetOnScreenKeys(int i) {
        if (i == 59 || i == 60) {
            return;
        }
        if (!this.keyCtrlToggled) {
            this.keyCtrl.setImageResource(R.drawable.ctrloff);
            this.canvas.getKeyboard().onScreenCtrlOff();
        }
        if (!this.keyAltToggled) {
            this.keyAlt.setImageResource(R.drawable.altoff);
            this.canvas.getKeyboard().onScreenAltOff();
        }
        if (!this.keySuperToggled) {
            this.keySuper.setImageResource(R.drawable.superoff);
            this.canvas.getKeyboard().onScreenSuperOff();
        }
        if (this.keyShiftToggled) {
            return;
        }
        this.keyShift.setImageResource(R.drawable.shiftoff);
        this.canvas.getKeyboard().onScreenShiftOff();
    }

    private void setExtraKeysVisibility(int i, boolean z) {
        if (getResources().getConfiguration().hardKeyboardHidden == 1) {
            z = true;
        }
        if (!this.extraKeysHidden && z && this.connection.getExtraKeysToggleType() == 1) {
            this.layoutKeys.setVisibility(0);
            this.layoutKeys.invalidate();
        } else if (i == 8) {
            this.layoutKeys.setVisibility(8);
            this.layoutKeys.invalidate();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.canvas.getWindowToken(), 0);
        } catch (NullPointerException unused) {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.i(TAG, "onResume called.");
        try {
            this.canvas.postInvalidateDelayed(600L);
        } catch (NullPointerException unused) {
        }
    }

    void setModes() {
        Log.d(TAG, "setModes");
        this.inputHandler = getInputHandlerByName(this.connection.getInputMode());
        AbstractScaling.getByScaleType(this.connection.getScaleMode()).setScaleTypeForActivity(this);
        initializeOnScreenKeys();
        try {
            this.canvas.setColorModel(COLORMODEL.valueOf(this.connection.getColorModel()));
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        this.canvas.setOnKeyListener(this);
        this.canvas.setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT >= 26) {
            this.canvas.setFocusedByDefault(true);
        }
        this.canvas.requestFocus();
        this.canvas.setDrawingCacheEnabled(false);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i == R.layout.entertext) {
            return new EnterTextDialog(this);
        }
        if (i == R.id.itemHelpInputMode) {
            return createHelpDialog();
        }
        return new MetaKeyDialog(this);
    }

    private Dialog createHelpDialog() {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setMessage(R.string.input_mode_help_text).setPositiveButton(R.string.close, new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).setView(new ListView(this)).create();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(alertDialogCreate.getWindow().getAttributes());
        layoutParams.width = -1;
        layoutParams.height = -2;
        alertDialogCreate.show();
        alertDialogCreate.getWindow().setAttributes(layoutParams);
        return alertDialogCreate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog) {
        super.onPrepareDialog(i, dialog);
        if (dialog instanceof ConnectionSettable) {
            ((ConnectionSettable) dialog).setConnection(this.connection);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void correctAfterRotation() throws Exception {
        Log.d(TAG, "correctAfterRotation");
        this.canvas.waitUntilInflated();
        float zoomFactor = this.canvas.canvasZoomer.getZoomFactor();
        int i = this.canvas.absoluteXPosition;
        int i2 = this.canvas.absoluteYPosition;
        this.canvas.canvasZoomer.setScaleTypeForActivity(this);
        this.canvas.canvasZoomer.changeZoom(this, zoomFactor / this.canvas.canvasZoomer.getZoomFactor(), 0.0f, 0.0f);
        if (this.canvas.canvasZoomer.getZoomFactor() <= zoomFactor && this.canvas.canvasZoomer.getScaleType() != ImageView.ScaleType.FIT_CENTER) {
            this.canvas.absoluteXPosition = i;
            this.canvas.absoluteYPosition = i2;
            this.canvas.resetScroll();
        }
        if (this.canvas.isVnc && this.connection.getRdpResType() == 1) {
            this.canvas.rfbconn.requestResolution(this.canvas.getWidth(), this.canvas.getHeight());
        } else if (this.canvas.isOpaque && this.connection.isRequestingNewDisplayResolution()) {
            this.canvas.spicecomm.requestResolution(this.canvas.getWidth(), this.canvas.getHeight());
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        enableImmersive();
        try {
            setExtraKeysVisibility(8, false);
            this.handler.postDelayed(this.rotationCorrector, 300L);
        } catch (NullPointerException unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            this.canvas.postInvalidateDelayed(800L);
        } catch (NullPointerException unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        try {
            this.canvas.postInvalidateDelayed(1000L);
        } catch (NullPointerException unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
        showToolbar();
        enableImmersive();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        if (menu != null) {
            Log.i(TAG, "Menu opened, disabling hiding action bar");
            this.handler.removeCallbacks(this.toolbarHider);
            updateScalingMenu();
            updateInputMenu();
            disableImmersive();
        }
        return super.onMenuOpened(i, menu);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        setKeyStowDrawableAndVisibility(menu.findItem(R.id.extraKeysToggle));
        return true;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Log.d(TAG, "OnCreateOptionsMenu called");
        try {
            getMenuInflater().inflate(R.menu.vnccanvasactivitymenu, menu);
            SubMenu subMenu = menu.findItem(R.id.itemInputMode).getSubMenu();
            this.inputModeMenuItems = new MenuItem[inputModeIds.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr = inputModeIds;
                if (i2 >= iArr.length) {
                    break;
                }
                this.inputModeMenuItems[i2] = subMenu.findItem(iArr[i2]);
                i2++;
            }
            updateInputMenu();
            SubMenu subMenu2 = menu.findItem(R.id.itemScaling).getSubMenu();
            this.scalingModeMenuItems = new MenuItem[scalingModeIds.length];
            while (true) {
                int[] iArr2 = scalingModeIds;
                if (i >= iArr2.length) {
                    break;
                }
                this.scalingModeMenuItems[i] = subMenu2.findItem(iArr2[i]);
                i++;
            }
            updateScalingMenu();
            Connection connection = this.connection;
            if (connection != null && connection.getExtraKeysToggleType() == 1) {
                menu.findItem(R.id.itemExtraKeys).setTitle(R.string.extra_keys_disable);
            } else {
                menu.findItem(R.id.itemExtraKeys).setTitle(R.string.extra_keys_enable);
            }
            OnTouchViewMover onTouchViewMover = new OnTouchViewMover(this.toolbar, this.handler, this.toolbarHider, 2500L);
            ImageButton imageButton = new ImageButton(this);
            imageButton.setBackgroundResource(R.drawable.ic_all_out_gray_36dp);
            MenuItem menuItemFindItem = menu.findItem(R.id.moveToolbar);
            menuItemFindItem.setActionView(imageButton);
            menuItemFindItem.getActionView().setOnTouchListener(onTouchViewMover);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        Log.d(TAG, "OnCreateOptionsMenu complete");
        return true;
    }

    void updateScalingMenu() {
        RemoteCanvas remoteCanvas;
        try {
            MenuItem[] menuItemArr = this.scalingModeMenuItems;
            int length = menuItemArr.length;
            for (int i = 0; i < length; i++) {
                MenuItem menuItem = menuItemArr[i];
                if (menuItem.getItemId() == R.id.itemFitToScreen && (remoteCanvas = this.canvas) != null && remoteCanvas.myDrawable != null && (this.canvas.myDrawable.bitmapheight != this.canvas.myDrawable.framebufferheight || this.canvas.myDrawable.bitmapwidth != this.canvas.myDrawable.framebufferwidth)) {
                    menuItem.setEnabled(false);
                } else {
                    menuItem.setEnabled(true);
                }
                if (AbstractScaling.getById(menuItem.getItemId()).scaleType == this.connection.getScaleMode()) {
                    menuItem.setChecked(true);
                }
            }
        } catch (NullPointerException unused) {
        }
    }

    void updateInputMenu() {
        try {
            for (MenuItem menuItem : this.inputModeMenuItems) {
                menuItem.setEnabled(this.canvas.canvasZoomer.isValidInputMode(menuItem.getItemId()));
                if (getInputHandlerById(menuItem.getItemId()) == this.inputHandler) {
                    menuItem.setChecked(true);
                }
            }
        } catch (NullPointerException unused) {
        }
    }

    InputHandler getInputHandlerById(int i) {
        this.myVibrator = (Vibrator) getSystemService("vibrator");
        if (this.inputModeHandlers == null) {
            this.inputModeHandlers = new InputHandler[inputModeIds.length];
        }
        int i2 = 0;
        while (true) {
            int[] iArr = inputModeIds;
            if (i2 >= iArr.length) {
                return null;
            }
            if (iArr[i2] == i) {
                if (this.inputModeHandlers[i2] == null) {
                    if (i == R.id.itemInputTouchPanZoomMouse) {
                        InputHandler[] inputHandlerArr = this.inputModeHandlers;
                        RemoteCanvas remoteCanvas = this.canvas;
                        inputHandlerArr[i2] = new InputHandlerDirectSwipePan(this, remoteCanvas, remoteCanvas.getPointer());
                    } else if (i == R.id.itemInputDragPanZoomMouse) {
                        InputHandler[] inputHandlerArr2 = this.inputModeHandlers;
                        RemoteCanvas remoteCanvas2 = this.canvas;
                        inputHandlerArr2[i2] = new InputHandlerDirectDragPan(this, remoteCanvas2, remoteCanvas2.getPointer());
                    } else if (i == R.id.itemInputTouchpad) {
                        InputHandler[] inputHandlerArr3 = this.inputModeHandlers;
                        RemoteCanvas remoteCanvas3 = this.canvas;
                        inputHandlerArr3[i2] = new InputHandlerTouchpad(this, remoteCanvas3, remoteCanvas3.getPointer());
                    } else if (i == R.id.itemInputSingleHanded) {
                        InputHandler[] inputHandlerArr4 = this.inputModeHandlers;
                        RemoteCanvas remoteCanvas4 = this.canvas;
                        inputHandlerArr4[i2] = new InputHandlerSingleHanded(this, remoteCanvas4, remoteCanvas4.getPointer());
                    } else {
                        throw new IllegalStateException("Unexpected value: " + i);
                    }
                }
                return this.inputModeHandlers[i2];
            }
            i2++;
        }
    }

    void clearInputHandlers() {
        if (this.inputModeHandlers == null) {
            return;
        }
        for (int i = 0; i < inputModeIds.length; i++) {
            this.inputModeHandlers[i] = null;
        }
        this.inputModeHandlers = null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d  */
    /* JADX WARN: Code duplicated, block: B:14:? A[RETURN, SYNTHETIC] */
    InputHandler getInputHandlerByName(String str) {
        InputHandler inputHandlerById;
        for (int i : inputModeIds) {
            inputHandlerById = getInputHandlerById(i);
            if (inputHandlerById.getId().equals(str)) {
                if (inputHandlerById == null) {
                    return getInputHandlerById(R.id.itemInputTouchPanZoomMouse);
                }
                return inputHandlerById;
            }
        }
        inputHandlerById = null;
        if (inputHandlerById == null) {
            return getInputHandlerById(R.id.itemInputTouchPanZoomMouse);
        }
        return inputHandlerById;
    }

    int getModeIdFromHandler(InputHandler inputHandler) {
        for (int i : inputModeIds) {
            if (inputHandler == getInputHandlerById(i)) {
                return i;
            }
        }
        return R.id.itemInputTouchPanZoomMouse;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        RemoteKeyboard keyboard = this.canvas.getKeyboard();
        if (keyboard != null) {
            keyboard.setAfterMenu(true);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.itemInfo) {
            this.canvas.showConnectionInfo();
            return true;
        }
        if (itemId == R.id.itemSpecialKeys) {
            showDialog(R.layout.metakey);
            return true;
        }
        if (itemId == R.id.itemColorMode) {
            selectColorModel();
            return true;
        }
        if (itemId == R.id.itemZoomable || itemId == R.id.itemOneToOne || itemId == R.id.itemFitToScreen) {
            AbstractScaling.getById(menuItem.getItemId()).setScaleTypeForActivity(this);
            menuItem.setChecked(true);
            showPanningState(false);
            return true;
        }
        if (itemId == R.id.itemCenterMouse) {
            this.canvas.getPointer().movePointer(this.canvas.absoluteXPosition + (this.canvas.getVisibleDesktopWidth() / 2), this.canvas.absoluteYPosition + (this.canvas.getVisibleDesktopHeight() / 2));
            return true;
        }
        if (itemId == R.id.itemDisconnect) {
            this.canvas.closeConnection();
            MessageDialogs.justFinish(this);
            return true;
        }
        if (itemId == R.id.itemEnterText) {
            showDialog(R.layout.entertext);
            return true;
        }
        if (itemId == R.id.itemCtrlAltDel) {
            this.canvas.getKeyboard().sendMetaKey(MetaKeyBean.keyCtrlAltDel);
            return true;
        }
        if (itemId == R.id.itemSendKeyAgain) {
            sendSpecialKeyAgain();
            return true;
        }
        if (itemId == R.id.itemExtraKeys) {
            if (this.connection.getExtraKeysToggleType() == 1) {
                this.connection.setExtraKeysToggleType(0);
                menuItem.setTitle(R.string.extra_keys_enable);
                setExtraKeysVisibility(8, false);
            } else {
                this.connection.setExtraKeysToggleType(1);
                menuItem.setTitle(R.string.extra_keys_disable);
                setExtraKeysVisibility(0, false);
                this.extraKeysHidden = false;
            }
            invalidateOptionsMenu();
            this.connection.save(this);
            return true;
        }
        if (itemId == R.id.itemHelpInputMode) {
            showDialog(R.id.itemHelpInputMode);
            return true;
        }
        boolean inputMode = setInputMode(menuItem.getItemId());
        menuItem.setChecked(inputMode);
        return inputMode ? inputMode : super.onOptionsItemSelected(menuItem);
    }

    public boolean setInputMode(int i) {
        InputHandler inputHandlerById = getInputHandlerById(i);
        if (inputHandlerById == null) {
            return false;
        }
        this.inputHandler = inputHandlerById;
        this.connection.setInputMode(inputHandlerById.getId());
        if (inputHandlerById.getId().equals(InputHandlerTouchpad.ID)) {
            this.connection.setFollowMouse(true);
            this.connection.setFollowPan(true);
        } else {
            this.connection.setFollowMouse(false);
            this.connection.setFollowPan(false);
            this.canvas.getPointer().setRelativeEvents(false);
        }
        showPanningState(true);
        this.connection.save(this);
        return true;
    }

    private void sendSpecialKeyAgain() {
        MetaKeyBean metaKeyBean = this.lastSentKey;
        if (metaKeyBean == null || metaKeyBean.get_Id() != this.connection.getLastMetaKeyId()) {
            ArrayList arrayList = new ArrayList();
            Database database = new Database(this);
            Cursor cursorRawQuery = database.getReadableDatabase().rawQuery(MessageFormat.format("SELECT * FROM {0} WHERE {1} = {2}", AbstractMetaKeyBean.GEN_TABLE_NAME, "_id", Long.valueOf(this.connection.getLastMetaKeyId())), MetaKeyDialog.EMPTY_ARGS);
            MetaKeyBean.Gen_populateFromCursor(cursorRawQuery, arrayList, MetaKeyBean.NEW);
            cursorRawQuery.close();
            database.close();
            if (arrayList.size() > 0) {
                this.lastSentKey = (MetaKeyBean) arrayList.get(0);
            } else {
                this.lastSentKey = null;
            }
        }
        if (this.lastSentKey != null) {
            this.canvas.getKeyboard().sendMetaKey(this.lastSentKey);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        RemoteCanvas remoteCanvas = this.canvas;
        if (remoteCanvas != null) {
            remoteCanvas.closeConnection();
        }
        System.gc();
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 82) {
            if (keyEvent.getAction() == 0) {
                return super.onKeyDown(i, keyEvent);
            }
            return super.onKeyUp(i, keyEvent);
        }
        boolean zOnKeyDown = false;
        try {
            if (keyEvent.getAction() == 0 || keyEvent.getAction() == 2) {
                zOnKeyDown = this.inputHandler.onKeyDown(i, keyEvent);
            } else if (keyEvent.getAction() == 1) {
                zOnKeyDown = this.inputHandler.onKeyUp(i, keyEvent);
            }
            resetOnScreenKeys(i);
        } catch (NullPointerException unused) {
        }
        return zOnKeyDown;
    }

    public void showPanningState(boolean z) {
        if (z) {
            final Toast toastMakeText = Toast.makeText(this, this.inputHandler.getDescription(), 1);
            new Timer().schedule(new TimerTask() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.24
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    toastMakeText.show();
                    try {
                        Thread.sleep(2000L);
                    } catch (InterruptedException unused) {
                    }
                    toastMakeText.show();
                }
            }, 2000L);
            toastMakeText.show();
            return;
        }
        Toast.makeText(this, this.inputHandler.getDescription(), 0).show();
    }

    @Override // android.app.Activity
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        try {
            if (this.connection.getUseDpadAsArrows()) {
                return false;
            }
            return this.inputHandler.onTouchEvent(motionEvent);
        } catch (NullPointerException unused) {
            return super.onTrackballEvent(motionEvent);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return this.inputHandler.onTouchEvent(motionEvent);
        } catch (NullPointerException unused) {
            return super.onTouchEvent(motionEvent);
        }
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (Constants.SDK_INT >= 14 && motionEvent.getToolType(0) == 1) {
            z = true;
        }
        int action = motionEvent.getAction();
        if ((action != 9 && action != 10 && action != 7) || motionEvent.getSource() != 4098 || !z) {
            try {
                return this.inputHandler.onTouchEvent(motionEvent);
            } catch (NullPointerException unused) {
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    private void selectColorModel() {
        int length = COLORMODEL.values().length;
        String[] strArr = new String[length];
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            COLORMODEL colormodel = COLORMODEL.values()[i2];
            strArr[i2] = colormodel.toString();
            if (this.canvas.isColorModel(colormodel)) {
                i = i2;
            }
        }
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        ListView listView = new ListView(this);
        listView.setAdapter((ListAdapter) new ArrayAdapter(this, android.R.layout.simple_list_item_checked, strArr));
        listView.setChoiceMode(1);
        listView.setItemChecked(i, true);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.iiordanov.bVNC.RemoteCanvasActivity.25
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                dialog.dismiss();
                COLORMODEL colormodel2 = COLORMODEL.values()[i3];
                RemoteCanvasActivity.this.canvas.setColorModel(colormodel2);
                RemoteCanvasActivity.this.connection.setColorModel(colormodel2.nameString());
                RemoteCanvasActivity.this.connection.save(RemoteCanvasActivity.this);
                Toast.makeText(RemoteCanvasActivity.this, RemoteCanvasActivity.this.getString(R.string.info_update_color_model_to) + colormodel2.toString(), 0).show();
            }
        });
        dialog.setContentView(listView);
        dialog.show();
    }

    public void showToolbar() {
        getSupportActionBar().show();
        this.handler.removeCallbacks(this.toolbarHider);
        this.handler.postAtTime(this.toolbarHider, SystemClock.uptimeMillis() + 2500);
    }

    @Override // com.undatech.opaque.dialogs.SelectTextElementFragment.OnFragmentDismissedListener
    public void onTextSelected(String str) {
        Log.i(TAG, "onTextSelected called with selectedString: " + str);
        this.canvas.pd.show();
        this.connection.setVmname(this.canvas.vmNameToId.get(str));
        this.connection.save(this);
        synchronized (this.canvas.spicecomm) {
            this.canvas.spicecomm.notify();
        }
    }

    private class ToolbarHiderRunnable implements Runnable {
        private ToolbarHiderRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBar supportActionBar = RemoteCanvasActivity.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.hide();
            }
        }
    }

    public void toggleKeyboard(MenuItem menuItem) {
        if (this.softKeyboardUp) {
            hideKeyboard();
        } else {
            showKeyboard();
        }
    }

    public void showKeyboard() {
        Log.i(TAG, "Showing keyboard and hiding action bar");
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        this.canvas.requestFocus();
        inputMethodManager.showSoftInput(this.canvas, 0);
        this.softKeyboardUp = true;
        ((ActionBar) Objects.requireNonNull(getSupportActionBar())).hide();
    }

    public void hideKeyboard() {
        Log.i(TAG, "Hiding keyboard and hiding action bar");
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        this.canvas.requestFocus();
        inputMethodManager.hideSoftInputFromWindow(this.canvas.getWindowToken(), 0);
        this.softKeyboardUp = false;
        ((ActionBar) Objects.requireNonNull(getSupportActionBar())).hide();
    }

    public void hideKeyboardAndExtraKeys() {
        hideKeyboard();
        if (this.layoutKeys.getVisibility() == 0) {
            this.extraKeysHidden = true;
            setExtraKeysVisibility(8, false);
        }
    }

    public void stopPanner() {
        this.panner.stop();
    }

    public Connection getConnection() {
        return this.connection;
    }

    public boolean getUseDpadAsArrows() {
        return this.connection.getUseDpadAsArrows();
    }

    public boolean getRotateDpad() {
        return this.connection.getRotateDpad();
    }

    public RemoteCanvas getCanvas() {
        return this.canvas;
    }

    public Panner getPanner() {
        return this.panner;
    }

    public void setPanner(Panner panner) {
        this.panner = panner;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putString("WORKAROUND_FOR_BUG_19917_KEY", "WORKAROUND_FOR_BUG_19917_VALUE");
        super.onSaveInstanceState(bundle);
    }

    private boolean isMasterPasswordEnabled() {
        return getSharedPreferences(Constants.generalSettingsTag, 0).getBoolean(Constants.masterPasswordEnabledTag, false);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        InputHandler inputHandler = this.inputHandler;
        if (inputHandler != null) {
            inputHandler.onKeyDown(4, new KeyEvent(0, 4));
        }
    }

    public static Context getContext() {
        return context.get();
    }
}
