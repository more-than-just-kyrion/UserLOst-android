package com.freerdp.freerdpcore.presentation;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import android.widget.ZoomControls;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.InputDeviceCompat;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.application.SessionState;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import com.freerdp.freerdpcore.services.LibFreeRDP;
import com.freerdp.freerdpcore.utils.ClipboardManagerProxy;
import com.freerdp.freerdpcore.utils.KeyboardMapper;
import com.freerdp.freerdpcore.utils.Mouse;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class SessionActivity extends AppCompatActivity implements LibFreeRDP.UIEventListener, KeyboardView.OnKeyboardActionListener, ScrollView2D.ScrollView2DListener, KeyboardMapper.KeyProcessingListener, SessionView.SessionViewListener, TouchPointerView.TouchPointerListener, ClipboardManagerProxy.OnClipboardChangedListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MAX_DISCARDED_MOVE_EVENTS = 3;
    public static final String PARAM_CONNECTION_REFERENCE = "conRef";
    public static final String PARAM_INSTANCE = "instance";
    private static final int SCROLLING_DISTANCE = 20;
    private static final int SCROLLING_TIMEOUT = 50;
    private static final int SEND_MOVE_EVENT_TIMEOUT = 150;
    private static final String TAG = "FreeRDP.SessionActivity";
    private static final int ZOOMCONTROLS_AUTOHIDE_TIMEOUT = 4000;
    private static final float ZOOMING_STEP = 0.5f;
    private Bitmap bitmap;
    private boolean callbackDialogResult;
    private Keyboard cursorKeyboard;
    private AlertDialog dlgUserCredentials;
    private AlertDialog dlgVerifyCertificate;
    private KeyboardMapper keyboardMapper;
    private KeyboardView keyboardView;
    private LibFreeRDPBroadcastReceiver libFreeRDPBroadcastReceiver;
    private ClipboardManagerProxy mClipboardManager;
    View mDecor;
    private Keyboard modifiersKeyboard;
    private KeyboardView modifiersKeyboardView;
    private Keyboard numpadKeyboard;
    private ProgressDialog progressDialog;
    private int screen_height;
    private int screen_width;
    private ScrollView2D scrollView;
    private SessionState session;
    private SessionView sessionView;
    private Keyboard specialkeysKeyboard;
    private TouchPointerView touchPointerView;
    private UIHandler uiHandler;
    private View userCredView;
    private ZoomControls zoomControls;
    private boolean connectCancelledByUser = false;
    private boolean sessionRunning = false;
    private boolean toggleMouseButtons = false;
    private boolean sysKeyboardVisible = false;
    private boolean extKeyboardVisible = false;
    private int discardedMoveEvents = 0;

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onPress(int i) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onRelease(int i) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onText(CharSequence charSequence) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeDown() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeLeft() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeRight() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeUp() {
    }

    private void createDialogs() {
        this.dlgVerifyCertificate = new AlertDialog.Builder(this).setTitle(R.string.dlg_title_verify_certificate).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SessionActivity.this.callbackDialogResult = true;
                synchronized (dialogInterface) {
                    dialogInterface.notify();
                }
            }
        }).setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SessionActivity.this.callbackDialogResult = false;
                SessionActivity.this.connectCancelledByUser = true;
                synchronized (dialogInterface) {
                    dialogInterface.notify();
                }
            }
        }).setCancelable(false).create();
        this.userCredView = getLayoutInflater().inflate(R.layout.credentials, (ViewGroup) null, true);
        this.dlgUserCredentials = new AlertDialog.Builder(this).setView(this.userCredView).setTitle(R.string.dlg_title_credentials).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SessionActivity.this.callbackDialogResult = true;
                synchronized (dialogInterface) {
                    dialogInterface.notify();
                }
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SessionActivity.this.callbackDialogResult = false;
                SessionActivity.this.connectCancelledByUser = true;
                synchronized (dialogInterface) {
                    dialogInterface.notify();
                }
            }
        }).setCancelable(false).create();
    }

    private boolean hasHardwareMenuButton() {
        return ViewConfiguration.get(this).hasPermanentMenuKey();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (ApplicationSettingsActivity.getHideStatusBar(this)) {
            getWindow().setFlags(1024, 1024);
        }
        setContentView(R.layout.session);
        if (hasHardwareMenuButton() || ApplicationSettingsActivity.getHideActionBar(this)) {
            getSupportActionBar().hide();
        } else {
            getSupportActionBar().show();
        }
        Log.v(TAG, "Session.onCreate");
        final View viewFindViewById = findViewById(R.id.session_root_view);
        viewFindViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.5
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SessionActivity.this.screen_width = viewFindViewById.getWidth();
                SessionActivity.this.screen_height = viewFindViewById.getHeight();
                if (SessionActivity.this.sessionRunning || SessionActivity.this.getIntent() == null) {
                    return;
                }
                SessionActivity sessionActivity = SessionActivity.this;
                sessionActivity.processIntent(sessionActivity.getIntent());
                SessionActivity.this.sessionRunning = true;
            }
        });
        SessionView sessionView = (SessionView) findViewById(R.id.sessionView);
        this.sessionView = sessionView;
        sessionView.setScaleGestureDetector(new ScaleGestureDetector(this, new PinchZoomListener()));
        this.sessionView.setSessionViewListener(this);
        this.sessionView.requestFocus();
        TouchPointerView touchPointerView = (TouchPointerView) findViewById(R.id.touchPointerView);
        this.touchPointerView = touchPointerView;
        touchPointerView.setTouchPointerListener(this);
        KeyboardMapper keyboardMapper = new KeyboardMapper();
        this.keyboardMapper = keyboardMapper;
        keyboardMapper.init(this);
        this.keyboardMapper.reset(this);
        this.modifiersKeyboard = new Keyboard(getApplicationContext(), R.xml.modifiers_keyboard);
        this.specialkeysKeyboard = new Keyboard(getApplicationContext(), R.xml.specialkeys_keyboard);
        this.numpadKeyboard = new Keyboard(getApplicationContext(), R.xml.numpad_keyboard);
        this.cursorKeyboard = new Keyboard(getApplicationContext(), R.xml.cursor_keyboard);
        KeyboardView keyboardView = (KeyboardView) findViewById(R.id.extended_keyboard);
        this.keyboardView = keyboardView;
        keyboardView.setKeyboard(this.specialkeysKeyboard);
        this.keyboardView.setOnKeyboardActionListener(this);
        KeyboardView keyboardView2 = (KeyboardView) findViewById(R.id.extended_keyboard_header);
        this.modifiersKeyboardView = keyboardView2;
        keyboardView2.setKeyboard(this.modifiersKeyboard);
        this.modifiersKeyboardView.setOnKeyboardActionListener(this);
        ScrollView2D scrollView2D = (ScrollView2D) findViewById(R.id.sessionScrollView);
        this.scrollView = scrollView2D;
        scrollView2D.setScrollViewListener(this);
        this.uiHandler = new UIHandler();
        this.libFreeRDPBroadcastReceiver = new LibFreeRDPBroadcastReceiver();
        ZoomControls zoomControls = (ZoomControls) findViewById(R.id.zoomControls);
        this.zoomControls = zoomControls;
        zoomControls.hide();
        this.zoomControls.setOnZoomInClickListener(new View.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SessionActivity.this.resetZoomControlsAutoHideTimeout();
                SessionActivity.this.zoomControls.setIsZoomInEnabled(SessionActivity.this.sessionView.zoomIn(0.5f));
                SessionActivity.this.zoomControls.setIsZoomOutEnabled(true);
            }
        });
        this.zoomControls.setOnZoomOutClickListener(new View.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SessionActivity.this.resetZoomControlsAutoHideTimeout();
                SessionActivity.this.zoomControls.setIsZoomOutEnabled(SessionActivity.this.sessionView.zoomOut(0.5f));
                SessionActivity.this.zoomControls.setIsZoomInEnabled(true);
            }
        });
        this.toggleMouseButtons = false;
        createDialogs();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(GlobalApp.ACTION_EVENT_FREERDP);
        registerReceiver(this.libFreeRDPBroadcastReceiver, intentFilter);
        ClipboardManagerProxy clipboardManager = ClipboardManagerProxy.getClipboardManager(this);
        this.mClipboardManager = clipboardManager;
        clipboardManager.addClipboardChangedListener(this);
        View decorView = getWindow().getDecorView();
        this.mDecor = decorView;
        decorView.setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        Log.v(TAG, "Session.onStart");
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        Log.v(TAG, "Session.onRestart");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.v(TAG, "Session.onResume");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Log.v(TAG, "Session.onPause");
        showKeyboard(false, false);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Log.v(TAG, "Session.onStop");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Log.v(TAG, "Session.onDestroy");
        GlobalApp.cancelDisconnectTimer();
        Iterator<SessionState> it = GlobalApp.getSessions().iterator();
        while (it.hasNext()) {
            LibFreeRDP.disconnect(it.next().getInstance());
        }
        unregisterReceiver(this.libFreeRDPBroadcastReceiver);
        this.mClipboardManager.removeClipboardboardChangedListener(this);
        GlobalApp.freeSession(this.session.getInstance());
        this.session = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.modifiersKeyboard = new Keyboard(getApplicationContext(), R.xml.modifiers_keyboard);
        this.specialkeysKeyboard = new Keyboard(getApplicationContext(), R.xml.specialkeys_keyboard);
        this.numpadKeyboard = new Keyboard(getApplicationContext(), R.xml.numpad_keyboard);
        this.cursorKeyboard = new Keyboard(getApplicationContext(), R.xml.cursor_keyboard);
        this.keyboardView.setKeyboard(this.specialkeysKeyboard);
        this.modifiersKeyboardView.setKeyboard(this.modifiersKeyboard);
        this.mDecor.setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processIntent(Intent intent) {
        BookmarkBase bookmarkBaseFindById;
        Bundle extras = intent.getExtras();
        Uri data = intent.getData();
        if (data != null) {
            connect(data);
            return;
        }
        if (extras.containsKey(PARAM_INSTANCE)) {
            SessionState session = GlobalApp.getSession(extras.getInt(PARAM_INSTANCE));
            this.session = session;
            this.bitmap = session.getSurface().getBitmap();
            bindSession();
            return;
        }
        if (extras.containsKey("conRef")) {
            String string = extras.getString("conRef");
            if (ConnectionReference.isHostnameReference(string)) {
                bookmarkBaseFindById = new ManualBookmark();
                ((ManualBookmark) bookmarkBaseFindById.get()).setHostname(ConnectionReference.getHostname(string));
            } else {
                bookmarkBaseFindById = (ConnectionReference.isBookmarkReference(string) && ConnectionReference.isManualBookmarkReference(string)) ? GlobalApp.getManualBookmarkGateway().findById(ConnectionReference.getManualBookmarkId(string)) : null;
            }
            if (bookmarkBaseFindById != null) {
                connect(bookmarkBaseFindById);
            }
        }
    }

    private void connect(BookmarkBase bookmarkBase) {
        SessionState sessionStateCreateSession = GlobalApp.createSession(bookmarkBase, getApplicationContext());
        this.session = sessionStateCreateSession;
        BookmarkBase.ScreenSettings activeScreenSettings = sessionStateCreateSession.getBookmark().getActiveScreenSettings();
        Log.v(TAG, "Screen Resolution: " + activeScreenSettings.getResolutionString());
        if (activeScreenSettings.isAutomatic()) {
            if ((getResources().getConfiguration().screenLayout & 15) >= 3) {
                activeScreenSettings.setHeight(this.screen_height);
                activeScreenSettings.setWidth(this.screen_width);
            } else {
                int i = this.screen_width;
                int i2 = this.screen_height;
                if (i <= i2) {
                    i = i2;
                }
                activeScreenSettings.setHeight(i);
                activeScreenSettings.setWidth((int) (i * 1.6f));
            }
        }
        if (activeScreenSettings.isFitScreen()) {
            activeScreenSettings.setHeight(this.screen_height);
            activeScreenSettings.setWidth(this.screen_width);
        }
        connectWithTitle(bookmarkBase.getLabel());
    }

    private void connect(Uri uri) {
        this.session = GlobalApp.createSession(uri, getApplicationContext());
        connectWithTitle(uri.getAuthority());
    }

    private void connectWithTitle(String str) {
        this.session.setUIEventListener(this);
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.progressDialog = progressDialog;
        progressDialog.setTitle(str);
        this.progressDialog.setMessage(getResources().getText(R.string.dlg_msg_connecting));
        this.progressDialog.setButton(-2, "Cancel", new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SessionActivity.this.connectCancelledByUser = true;
                LibFreeRDP.cancelConnection(SessionActivity.this.session.getInstance());
            }
        });
        this.progressDialog.setCancelable(false);
        this.progressDialog.show();
        new Thread(new Runnable() { // from class: com.freerdp.freerdpcore.presentation.SessionActivity.9
            @Override // java.lang.Runnable
            public void run() {
                SessionActivity.this.session.connect(SessionActivity.this.getApplicationContext());
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindSession() {
        Log.v(TAG, "bindSession called");
        this.session.setUIEventListener(this);
        this.sessionView.onSurfaceChange(this.session);
        this.scrollView.requestLayout();
        this.keyboardMapper.reset(this);
        this.mDecor.setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    private void hideSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.toggleSoftInput(2, 0);
        } else {
            inputMethodManager.toggleSoftInput(0, 2);
        }
    }

    private void showKeyboard(boolean z, boolean z2) {
        this.uiHandler.removeMessages(3);
        if (this.zoomControls.getVisibility() == 0) {
            this.zoomControls.hide();
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (z) {
            this.keyboardView.setVisibility(8);
            inputMethodManager.toggleSoftInput(2, 0);
            this.modifiersKeyboardView.setVisibility(0);
        } else if (z2) {
            hideSoftInput();
            this.keyboardView.setKeyboard(this.specialkeysKeyboard);
            this.keyboardView.setVisibility(0);
            this.modifiersKeyboardView.setVisibility(0);
        } else {
            hideSoftInput();
            this.keyboardView.setVisibility(8);
            this.modifiersKeyboardView.setVisibility(8);
            this.keyboardMapper.clearlAllModifiers();
        }
        this.sysKeyboardVisible = z;
        this.extKeyboardVisible = z2;
    }

    private void updateModifierKeyStates() {
        for (Keyboard.Key key : this.modifiersKeyboard.getKeys()) {
            if (key.sticky) {
                int modifierState = this.keyboardMapper.getModifierState(key.codes[0]);
                if (modifierState == 1) {
                    key.on = true;
                    key.pressed = false;
                } else if (modifierState == 2) {
                    key.on = true;
                    key.pressed = true;
                } else if (modifierState == 3) {
                    key.on = false;
                    key.pressed = false;
                }
            }
        }
        this.modifiersKeyboardView.invalidateAllKeys();
    }

    private void sendDelayedMoveEvent(int i, int i2) {
        if (this.uiHandler.hasMessages(4)) {
            this.uiHandler.removeMessages(4);
            this.discardedMoveEvents++;
        } else {
            this.discardedMoveEvents = 0;
        }
        if (this.discardedMoveEvents > 3) {
            LibFreeRDP.sendCursorEvent(this.session.getInstance(), i, i2, Mouse.getMoveEvent());
        } else {
            this.uiHandler.sendMessageDelayed(Message.obtain(null, 4, i, i2), 150L);
        }
    }

    private void cancelDelayedMoveEvent() {
        this.uiHandler.removeMessages(4);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.session_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.session_touch_pointer) {
            if (this.touchPointerView.getVisibility() == 0) {
                this.touchPointerView.setVisibility(4);
                this.sessionView.setTouchPointerPadding(0, 0);
            } else {
                this.touchPointerView.setVisibility(0);
                this.sessionView.setTouchPointerPadding(this.touchPointerView.getPointerWidth(), this.touchPointerView.getPointerHeight());
            }
        } else if (itemId == R.id.session_sys_keyboard) {
            showKeyboard(!this.sysKeyboardVisible, false);
        } else if (itemId == R.id.session_ext_keyboard) {
            showKeyboard(false, !this.extKeyboardVisible);
        } else if (itemId == R.id.session_disconnect) {
            showKeyboard(false, false);
            LibFreeRDP.disconnect(this.session.getInstance());
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.sysKeyboardVisible || this.extKeyboardVisible) {
            showKeyboard(false, false);
        } else {
            this.keyboardMapper.sendAltF4();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (i == 4) {
            LibFreeRDP.disconnect(this.session.getInstance());
            return true;
        }
        return super.onKeyLongPress(i, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.keyboardMapper.processAndroidKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.keyboardMapper.processAndroidKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return this.keyboardMapper.processAndroidKeyEvent(keyEvent);
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onKey(int i, int[] iArr) {
        this.keyboardMapper.processCustomKeyEvent(i);
    }

    @Override // com.freerdp.freerdpcore.utils.KeyboardMapper.KeyProcessingListener
    public void processVirtualKey(int i, boolean z) {
        LibFreeRDP.sendKeyEvent(this.session.getInstance(), i, z);
    }

    @Override // com.freerdp.freerdpcore.utils.KeyboardMapper.KeyProcessingListener
    public void processUnicodeKey(int i) {
        LibFreeRDP.sendUnicodeKeyEvent(this.session.getInstance(), i, true);
        LibFreeRDP.sendUnicodeKeyEvent(this.session.getInstance(), i, false);
    }

    @Override // com.freerdp.freerdpcore.utils.KeyboardMapper.KeyProcessingListener
    public void switchKeyboard(int i) {
        if (i == 1) {
            this.keyboardView.setKeyboard(this.specialkeysKeyboard);
        } else if (i == 2) {
            this.keyboardView.setKeyboard(this.numpadKeyboard);
        } else {
            if (i != 3) {
                return;
            }
            this.keyboardView.setKeyboard(this.cursorKeyboard);
        }
    }

    @Override // com.freerdp.freerdpcore.utils.KeyboardMapper.KeyProcessingListener
    public void modifiersChanged() {
        updateModifierKeyStates();
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnSettingsChanged(int i, int i2, int i3) {
        if (i3 > 16) {
            this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } else {
            this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        }
        this.session.setSurface(new BitmapDrawable(this.bitmap));
        if (this.session.getBookmark() == null) {
            return;
        }
        BookmarkBase.ScreenSettings activeScreenSettings = this.session.getBookmark().getActiveScreenSettings();
        if ((activeScreenSettings.getWidth() == i || activeScreenSettings.getWidth() == i + 1) && activeScreenSettings.getHeight() == i2 && activeScreenSettings.getColors() == i3) {
            return;
        }
        this.uiHandler.sendMessage(Message.obtain(null, 2, getResources().getText(R.string.info_capabilities_changed)));
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnGraphicsUpdate(int i, int i2, int i3, int i4) {
        LibFreeRDP.updateGraphics(this.session.getInstance(), this.bitmap, i, i2, i3, i4);
        this.sessionView.addInvalidRegion(new Rect(i, i2, i3 + i, i4 + i2));
        this.uiHandler.sendEmptyMessage(1);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnGraphicsResize(int i, int i2, int i3) {
        if (i3 > 16) {
            this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } else {
            this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        }
        this.session.setSurface(new BitmapDrawable(this.bitmap));
        this.uiHandler.sendEmptyMessage(6);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public boolean OnAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        this.callbackDialogResult = false;
        ((EditText) this.userCredView.findViewById(R.id.editTextUsername)).setText(sb);
        ((EditText) this.userCredView.findViewById(R.id.editTextDomain)).setText(sb2);
        ((EditText) this.userCredView.findViewById(R.id.editTextPassword)).setText(sb3);
        this.uiHandler.sendMessage(Message.obtain(null, 5, this.dlgUserCredentials));
        try {
            synchronized (this.dlgUserCredentials) {
                this.dlgUserCredentials.wait();
            }
        } catch (InterruptedException unused) {
        }
        sb.setLength(0);
        sb2.setLength(0);
        sb3.setLength(0);
        sb.append(((EditText) this.userCredView.findViewById(R.id.editTextUsername)).getText().toString());
        sb2.append(((EditText) this.userCredView.findViewById(R.id.editTextDomain)).getText().toString());
        sb3.append(((EditText) this.userCredView.findViewById(R.id.editTextPassword)).getText().toString());
        return this.callbackDialogResult;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public boolean OnGatewayAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        this.callbackDialogResult = false;
        ((EditText) this.userCredView.findViewById(R.id.editTextUsername)).setText(sb);
        ((EditText) this.userCredView.findViewById(R.id.editTextDomain)).setText(sb2);
        ((EditText) this.userCredView.findViewById(R.id.editTextPassword)).setText(sb3);
        this.uiHandler.sendMessage(Message.obtain(null, 5, this.dlgUserCredentials));
        try {
            synchronized (this.dlgUserCredentials) {
                this.dlgUserCredentials.wait();
            }
        } catch (InterruptedException unused) {
        }
        sb.setLength(0);
        sb2.setLength(0);
        sb3.setLength(0);
        sb.append(((EditText) this.userCredView.findViewById(R.id.editTextUsername)).getText().toString());
        sb2.append(((EditText) this.userCredView.findViewById(R.id.editTextDomain)).getText().toString());
        sb3.append(((EditText) this.userCredView.findViewById(R.id.editTextPassword)).getText().toString());
        return this.callbackDialogResult;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public int OnVerifiyCertificate(String str, String str2, String str3, String str4, boolean z) {
        if (ApplicationSettingsActivity.getAcceptAllCertificates(this)) {
            return 0;
        }
        this.callbackDialogResult = false;
        this.dlgVerifyCertificate.setMessage(getResources().getString(R.string.dlg_msg_verify_certificate) + "\n\nSubject: " + str2 + "\nIssuer: " + str3 + "\nFingerprint: " + str4);
        this.uiHandler.sendMessage(Message.obtain(null, 5, this.dlgVerifyCertificate));
        try {
            synchronized (this.dlgVerifyCertificate) {
                this.dlgVerifyCertificate.wait();
            }
        } catch (InterruptedException unused) {
        }
        return this.callbackDialogResult ? 1 : 0;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public int OnVerifyChangedCertificate(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (ApplicationSettingsActivity.getAcceptAllCertificates(this)) {
            return 0;
        }
        this.callbackDialogResult = false;
        this.dlgVerifyCertificate.setMessage(getResources().getString(R.string.dlg_msg_verify_certificate) + "\n\nSubject: " + str2 + "\nIssuer: " + str3 + "\nFingerprint: " + str4);
        this.uiHandler.sendMessage(Message.obtain(null, 5, this.dlgVerifyCertificate));
        try {
            synchronized (this.dlgVerifyCertificate) {
                this.dlgVerifyCertificate.wait();
            }
        } catch (InterruptedException unused) {
        }
        return this.callbackDialogResult ? 1 : 0;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnRemoteClipboardChanged(String str) {
        Log.v(TAG, "OnRemoteClipboardChanged: " + str);
        this.mClipboardManager.setClipboardData(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetZoomControlsAutoHideTimeout() {
        this.uiHandler.removeMessages(3);
        this.uiHandler.sendEmptyMessageDelayed(3, 4000L);
    }

    @Override // com.freerdp.freerdpcore.presentation.ScrollView2D.ScrollView2DListener
    public void onScrollChanged(ScrollView2D scrollView2D, int i, int i2, int i3, int i4) {
        this.zoomControls.setIsZoomInEnabled(!this.sessionView.isAtMaxZoom());
        this.zoomControls.setIsZoomOutEnabled(!this.sessionView.isAtMinZoom());
        if (!ApplicationSettingsActivity.getHideZoomControls(this) && this.zoomControls.getVisibility() != 0) {
            this.zoomControls.show();
        }
        resetZoomControlsAutoHideTimeout();
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewBeginTouch() {
        this.scrollView.setScrollEnabled(false);
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewEndTouch() {
        this.scrollView.setScrollEnabled(true);
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewLeftTouch(int i, int i2, boolean z) {
        if (!z) {
            cancelDelayedMoveEvent();
        }
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), i, i2, this.toggleMouseButtons ? Mouse.getRightButtonEvent(this, z) : Mouse.getLeftButtonEvent(this, z));
        if (z) {
            return;
        }
        this.toggleMouseButtons = false;
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewRightTouch(int i, int i2, boolean z) {
        if (z) {
            return;
        }
        this.toggleMouseButtons = !this.toggleMouseButtons;
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewMove(int i, int i2) {
        sendDelayedMoveEvent(i, i2);
    }

    @Override // com.freerdp.freerdpcore.presentation.SessionView.SessionViewListener
    public void onSessionViewScroll(boolean z) {
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), 0, 0, Mouse.getScrollEvent(this, z));
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerClose() {
        this.touchPointerView.setVisibility(4);
        this.sessionView.setTouchPointerPadding(0, 0);
    }

    private Point mapScreenCoordToSessionCoord(int i, int i2) {
        int scrollX = (int) ((i + this.scrollView.getScrollX()) / this.sessionView.getZoom());
        int scrollY = (int) ((i2 + this.scrollView.getScrollY()) / this.sessionView.getZoom());
        if (scrollX > this.bitmap.getWidth()) {
            scrollX = this.bitmap.getWidth();
        }
        if (scrollY > this.bitmap.getHeight()) {
            scrollY = this.bitmap.getHeight();
        }
        return new Point(scrollX, scrollY);
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerLeftClick(int i, int i2, boolean z) {
        Point pointMapScreenCoordToSessionCoord = mapScreenCoordToSessionCoord(i, i2);
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), pointMapScreenCoordToSessionCoord.x, pointMapScreenCoordToSessionCoord.y, Mouse.getLeftButtonEvent(this, z));
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerRightClick(int i, int i2, boolean z) {
        Point pointMapScreenCoordToSessionCoord = mapScreenCoordToSessionCoord(i, i2);
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), pointMapScreenCoordToSessionCoord.x, pointMapScreenCoordToSessionCoord.y, Mouse.getRightButtonEvent(this, z));
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerMove(int i, int i2) {
        Point pointMapScreenCoordToSessionCoord = mapScreenCoordToSessionCoord(i, i2);
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), pointMapScreenCoordToSessionCoord.x, pointMapScreenCoordToSessionCoord.y, Mouse.getMoveEvent());
        if (!ApplicationSettingsActivity.getAutoScrollTouchPointer(this) || this.uiHandler.hasMessages(7)) {
            return;
        }
        Log.v(TAG, "Starting auto-scroll");
        this.uiHandler.sendEmptyMessageDelayed(7, 50L);
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerScroll(boolean z) {
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), 0, 0, Mouse.getScrollEvent(this, z));
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerToggleKeyboard() {
        showKeyboard(!this.sysKeyboardVisible, false);
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerToggleExtKeyboard() {
        showKeyboard(false, !this.extKeyboardVisible);
    }

    @Override // com.freerdp.freerdpcore.presentation.TouchPointerView.TouchPointerListener
    public void onTouchPointerResetScrollZoom() {
        this.sessionView.setZoom(1.0f);
        this.scrollView.scrollTo(0, 0);
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        super.onGenericMotionEvent(motionEvent);
        if (motionEvent.getAction() == 8) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue < 0.0f) {
                LibFreeRDP.sendCursorEvent(this.session.getInstance(), 0, 0, Mouse.getScrollEvent(this, false));
            }
            if (axisValue > 0.0f) {
                LibFreeRDP.sendCursorEvent(this.session.getInstance(), 0, 0, Mouse.getScrollEvent(this, true));
            }
        }
        return true;
    }

    @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy.OnClipboardChangedListener
    public void onClipboardChanged(String str) {
        Log.v(TAG, "onClipboardChanged: " + str);
        LibFreeRDP.sendClipboardData(this.session.getInstance(), str);
    }

    private class UIHandler extends Handler {
        public static final int DISPLAY_TOAST = 2;
        public static final int GRAPHICS_CHANGED = 6;
        public static final int HIDE_ZOOMCONTROLS = 3;
        public static final int REFRESH_SESSIONVIEW = 1;
        public static final int SCROLLING_REQUESTED = 7;
        public static final int SEND_MOVE_EVENT = 4;
        public static final int SHOW_DIALOG = 5;

        UIHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    SessionActivity.this.sessionView.invalidateRegion();
                    break;
                case 2:
                    Toast.makeText(SessionActivity.this.getApplicationContext(), message.obj.toString(), 1).show();
                    break;
                case 3:
                    SessionActivity.this.zoomControls.hide();
                    break;
                case 4:
                    LibFreeRDP.sendCursorEvent(SessionActivity.this.session.getInstance(), message.arg1, message.arg2, Mouse.getMoveEvent());
                    break;
                case 5:
                    ((Dialog) message.obj).show();
                    break;
                case 6:
                    SessionActivity.this.sessionView.onSurfaceChange(SessionActivity.this.session);
                    SessionActivity.this.scrollView.requestLayout();
                    break;
                case 7:
                    float[] pointerPosition = SessionActivity.this.touchPointerView.getPointerPosition();
                    int i = 0;
                    int i2 = -20;
                    int i3 = pointerPosition[0] > SessionActivity.this.screen_width - SessionActivity.this.touchPointerView.getPointerWidth() ? 20 : pointerPosition[0] < 0.0f ? -20 : 0;
                    if (pointerPosition[1] > SessionActivity.this.screen_height - SessionActivity.this.touchPointerView.getPointerHeight()) {
                        i2 = 20;
                    } else if (pointerPosition[1] >= 0.0f) {
                        i2 = 0;
                    }
                    SessionActivity.this.scrollView.scrollBy(i3, i2);
                    if (SessionActivity.this.scrollView.getScrollX() == 0 || SessionActivity.this.scrollView.getScrollX() == SessionActivity.this.sessionView.getWidth() - SessionActivity.this.scrollView.getWidth()) {
                        i3 = 0;
                    }
                    if (SessionActivity.this.scrollView.getScrollY() != 0 && SessionActivity.this.scrollView.getScrollY() != SessionActivity.this.sessionView.getHeight() - SessionActivity.this.scrollView.getHeight()) {
                        i = i2;
                    }
                    if (i3 != 0 || i != 0) {
                        SessionActivity.this.uiHandler.sendEmptyMessageDelayed(7, 50L);
                    } else {
                        Log.v(SessionActivity.TAG, "Stopping auto-scroll");
                    }
                    break;
            }
        }
    }

    private class PinchZoomListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private float scaleFactor;

        private PinchZoomListener() {
            this.scaleFactor = 1.0f;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            SessionActivity.this.scrollView.setScrollEnabled(false);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = this.scaleFactor * scaleGestureDetector.getScaleFactor();
            this.scaleFactor = scaleFactor;
            this.scaleFactor = Math.max(1.0f, Math.min(scaleFactor, 3.0f));
            SessionActivity.this.sessionView.setZoom(this.scaleFactor);
            if (SessionActivity.this.sessionView.isAtMinZoom() || SessionActivity.this.sessionView.isAtMaxZoom()) {
                return true;
            }
            SessionActivity.this.scrollView.scrollBy((int) ((((SessionActivity.this.scrollView.getScrollX() + scaleGestureDetector.getFocusX()) * scaleGestureDetector.getScaleFactor()) - (SessionActivity.this.scrollView.getScrollX() * scaleGestureDetector.getScaleFactor())) - scaleGestureDetector.getFocusX()), (int) ((((SessionActivity.this.scrollView.getScrollY() + scaleGestureDetector.getFocusY()) * scaleGestureDetector.getScaleFactor()) - (SessionActivity.this.scrollView.getScrollY() * scaleGestureDetector.getScaleFactor())) - scaleGestureDetector.getFocusY()));
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            SessionActivity.this.scrollView.setScrollEnabled(true);
        }
    }

    private class LibFreeRDPBroadcastReceiver extends BroadcastReceiver {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private LibFreeRDPBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (SessionActivity.this.session != null && SessionActivity.this.session.getInstance() == intent.getExtras().getLong(GlobalApp.EVENT_PARAM, -1L)) {
                int i = intent.getExtras().getInt(GlobalApp.EVENT_TYPE, -1);
                if (i == 1) {
                    OnConnectionSuccess(context);
                } else if (i == 2) {
                    OnConnectionFailure(context);
                } else {
                    if (i != 3) {
                        return;
                    }
                    OnDisconnected(context);
                }
            }
        }

        private void OnConnectionSuccess(Context context) {
            Bundle extras;
            Log.v(SessionActivity.TAG, "OnConnectionSuccess");
            SessionActivity.this.bindSession();
            if (SessionActivity.this.progressDialog != null) {
                SessionActivity.this.progressDialog.dismiss();
                SessionActivity.this.progressDialog = null;
            }
            if (SessionActivity.this.session.getBookmark() != null && (extras = SessionActivity.this.getIntent().getExtras()) != null && extras.containsKey("conRef") && ConnectionReference.isHostnameReference(extras.getString("conRef"))) {
                String hostname = ((ManualBookmark) SessionActivity.this.session.getBookmark().get()).getHostname();
                if (GlobalApp.getQuickConnectHistoryGateway().historyItemExists(hostname)) {
                    return;
                }
                GlobalApp.getQuickConnectHistoryGateway().addHistoryItem(hostname);
            }
        }

        private void OnConnectionFailure(Context context) {
            Log.v(SessionActivity.TAG, "OnConnectionFailure");
            SessionActivity.this.uiHandler.removeMessages(4);
            if (SessionActivity.this.progressDialog != null) {
                SessionActivity.this.progressDialog.dismiss();
                SessionActivity.this.progressDialog = null;
            }
            if (SessionActivity.this.connectCancelledByUser) {
                return;
            }
            SessionActivity.this.uiHandler.sendMessage(Message.obtain(null, 2, SessionActivity.this.getResources().getText(R.string.error_connection_failure)));
        }

        private void OnDisconnected(Context context) {
            Log.v(SessionActivity.TAG, "OnDisconnected");
            SessionActivity.this.uiHandler.removeMessages(4);
            if (SessionActivity.this.progressDialog != null) {
                SessionActivity.this.progressDialog.dismiss();
                SessionActivity.this.progressDialog = null;
            }
            SessionActivity.this.session.setUIEventListener(null);
        }
    }
}
