package com.termux.app;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.PopupWindow;
import android.widget.ToggleButton;
import androidx.drawerlayout.widget.DrawerLayout;
import com.termux.R;
import com.termux.view.TerminalView;
import com.undatech.opaque.input.RemoteKeyboard;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.function.IntConsumer;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public final class ExtraKeysView extends GridLayout {
    private static final int BUTTON_COLOR = 0;
    private static final int BUTTON_PRESSED_COLOR = -8421505;
    private static final int INTERESTING_COLOR = -8331542;
    private static final int TEXT_COLOR = -1;
    static final Map<String, Integer> keyCodesForString = new HashMap<String, Integer>() { // from class: com.termux.app.ExtraKeysView.1
        {
            put("SPACE", 62);
            put("ESC", Integer.valueOf(RemoteKeyboard.SCAN_DELETE));
            put("TAB", 61);
            put("HOME", 122);
            put("END", 123);
            put("PGUP", 92);
            put("PGDN", 93);
            put("INS", 124);
            put("DEL", 112);
            put("BKSP", 67);
            put("UP", 19);
            put("LEFT", 21);
            put("RIGHT", 22);
            put("DOWN", 20);
            put("ENTER", 66);
            put("F1", Integer.valueOf(TarConstants.PREFIXLEN_XSTAR));
            put("F2", Integer.valueOf(CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA));
            put("F3", Integer.valueOf(CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA));
            put("F4", Integer.valueOf(CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA));
            put("F5", Integer.valueOf(CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA));
            put("F6", Integer.valueOf(CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA));
            put("F7", Integer.valueOf(CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA));
            put("F8", Integer.valueOf(CipherSuite.TLS_PSK_WITH_RC4_128_SHA));
            put("F9", Integer.valueOf(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA));
            put("F10", Integer.valueOf(CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA));
            put("F11", Integer.valueOf(CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA));
            put("F12", Integer.valueOf(CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA));
        }
    };
    private int longPressCount;
    private PopupWindow popupWindow;
    private ScheduledExecutorService scheduledExecutor;
    private Map<SpecialButton, SpecialButtonState> specialButtons;

    public enum SpecialButton {
        CTRL,
        ALT,
        FN
    }

    public ExtraKeysView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.specialButtons = new HashMap<SpecialButton, SpecialButtonState>() { // from class: com.termux.app.ExtraKeysView.2
            {
                put(SpecialButton.CTRL, new SpecialButtonState());
                put(SpecialButton.ALT, new SpecialButtonState());
                put(SpecialButton.FN, new SpecialButtonState());
            }
        };
    }

    private void sendKey(View view, String str, final boolean z, final boolean z2) {
        final TerminalView terminalView = (TerminalView) view.findViewById(R.id.terminal_view);
        if ("KEYBOARD".equals(str)) {
            ((InputMethodManager) getContext().getSystemService("input_method")).toggleSoftInput(0, 0);
            return;
        }
        if ("DRAWER".equals(str)) {
            ((DrawerLayout) view.findViewById(R.id.drawer_layout)).openDrawer(3);
            return;
        }
        Map<String, Integer> map = keyCodesForString;
        if (map.containsKey(str)) {
            int iIntValue = map.get(str).intValue();
            int i = z ? 12288 : 0;
            terminalView.onKeyDown(iIntValue, new KeyEvent(0L, 0L, 1, iIntValue, 0, z2 ? i | 18 : i));
            return;
        }
        str.codePoints().forEach(new IntConsumer() { // from class: com.termux.app.ExtraKeysView$$ExternalSyntheticLambda0
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                terminalView.inputCodePoint(i2, z, z2);
            }
        });
    }

    private void sendKey(View view, ExtraKeyButton extraKeyButton) {
        if (extraKeyButton.isMacro()) {
            boolean z = false;
            boolean z2 = false;
            for (String str : extraKeyButton.getKey().split(" ")) {
                if ("CTRL".equals(str)) {
                    z = true;
                } else if ("ALT".equals(str)) {
                    z2 = true;
                } else {
                    sendKey(view, str, z, z2);
                    z = false;
                    z2 = false;
                }
            }
            return;
        }
        sendKey(view, extraKeyButton.getKey(), false, false);
    }

    private static class SpecialButtonState {
        ToggleButton button;
        boolean isOn;

        private SpecialButtonState() {
            this.isOn = false;
            this.button = null;
        }
    }

    public boolean readSpecialButton(SpecialButton specialButton) {
        SpecialButtonState specialButtonState = this.specialButtons.get(specialButton);
        if (specialButtonState == null) {
            throw new RuntimeException("Must be a valid special button (see source)");
        }
        if (!specialButtonState.isOn || specialButtonState.button == null) {
            return false;
        }
        if (specialButtonState.button.isPressed()) {
            return true;
        }
        if (!specialButtonState.button.isChecked()) {
            return false;
        }
        specialButtonState.button.setChecked(false);
        specialButtonState.button.setTextColor(-1);
        return true;
    }

    void popup(View view, String str) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Button button = new Button(getContext(), null, android.R.attr.buttonBarButtonStyle);
        button.setText(str);
        button.setTextColor(-1);
        button.setPadding(0, 0, 0, 0);
        button.setMinHeight(0);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setMinimumHeight(0);
        button.setWidth(measuredWidth);
        button.setHeight(measuredHeight);
        button.setBackgroundColor(BUTTON_PRESSED_COLOR);
        PopupWindow popupWindow = new PopupWindow(this);
        this.popupWindow = popupWindow;
        popupWindow.setWidth(-2);
        this.popupWindow.setHeight(-2);
        this.popupWindow.setContentView(button);
        this.popupWindow.setOutsideTouchable(true);
        this.popupWindow.setFocusable(false);
        this.popupWindow.showAsDropDown(view, 0, measuredHeight * (-2));
    }

    static int maximumLength(Object[][] objArr) {
        int iMax = 0;
        for (Object[] objArr2 : objArr) {
            iMax = Math.max(iMax, objArr2.length);
        }
        return iMax;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.termux.app.ExtraKeysView] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.widget.Button] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.widget.Button, android.widget.ToggleButton] */
    void reload(ExtraKeysInfos extraKeysInfos) {
        final ?? button;
        if (extraKeysInfos == null) {
            return;
        }
        Iterator<SpecialButtonState> it = this.specialButtons.values().iterator();
        while (it.hasNext()) {
            it.next().button = null;
        }
        removeAllViews();
        ExtraKeyButton[][] matrix = extraKeysInfos.getMatrix();
        setRowCount(matrix.length);
        setColumnCount(maximumLength(matrix));
        for (int i = 0; i < matrix.length; i++) {
            int i2 = 0;
            while (true) {
                ExtraKeyButton[] extraKeyButtonArr = matrix[i];
                if (i2 < extraKeyButtonArr.length) {
                    final ExtraKeyButton extraKeyButton = extraKeyButtonArr[i2];
                    if (Arrays.asList("CTRL", "ALT", "FN").contains(extraKeyButton.getKey())) {
                        SpecialButtonState specialButtonState = this.specialButtons.get(SpecialButton.valueOf(extraKeyButton.getKey()));
                        specialButtonState.isOn = true;
                        button = new ToggleButton(getContext(), null, android.R.attr.buttonBarButtonStyle);
                        specialButtonState.button = button;
                        button.setClickable(true);
                    } else {
                        button = new Button(getContext(), null, android.R.attr.buttonBarButtonStyle);
                    }
                    button.setText(extraKeyButton.getDisplay());
                    button.setTextColor(-1);
                    button.setPadding(0, 0, 0, 0);
                    button.setOnClickListener(new View.OnClickListener() { // from class: com.termux.app.ExtraKeysView$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$reload$1(button, extraKeyButton, view);
                        }
                    });
                    button.setOnTouchListener(new View.OnTouchListener() { // from class: com.termux.app.ExtraKeysView$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            return this.f$0.lambda$reload$3(extraKeyButton, view, motionEvent);
                        }
                    });
                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
                    layoutParams.width = 0;
                    layoutParams.height = 0;
                    layoutParams.setMargins(0, 0, 0, 0);
                    layoutParams.columnSpec = GridLayout.spec(i2, GridLayout.FILL, 1.0f);
                    layoutParams.rowSpec = GridLayout.spec(i, GridLayout.FILL, 1.0f);
                    button.setLayoutParams(layoutParams);
                    addView(button);
                    i2++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reload$1(Button button, ExtraKeyButton extraKeyButton, View view) {
        if (Settings.System.getInt(getContext().getContentResolver(), "haptic_feedback_enabled", 0) != 0 && (Build.VERSION.SDK_INT >= 28 || Settings.Global.getInt(getContext().getContentResolver(), "zen_mode", 0) != 2)) {
            button.performHapticFeedback(3);
        }
        View rootView = getRootView();
        if (Arrays.asList("CTRL", "ALT", "FN").contains(extraKeyButton.getKey())) {
            ToggleButton toggleButton = (ToggleButton) button;
            toggleButton.setChecked(toggleButton.isChecked());
            toggleButton.setTextColor(toggleButton.isChecked() ? INTERESTING_COLOR : -1);
            return;
        }
        sendKey(rootView, extraKeyButton);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$reload$3(final ExtraKeyButton extraKeyButton, View view, MotionEvent motionEvent) {
        final View rootView = getRootView();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.longPressCount = 0;
            view.setBackgroundColor(BUTTON_PRESSED_COLOR);
            if (Arrays.asList("UP", "DOWN", "LEFT", "RIGHT", "BKSP", "DEL").contains(extraKeyButton.getKey())) {
                ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                this.scheduledExecutor = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.termux.app.ExtraKeysView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$reload$2(rootView, extraKeyButton);
                    }
                }, 400L, 80L, TimeUnit.MILLISECONDS);
            }
            return true;
        }
        if (action == 1) {
            view.setBackgroundColor(0);
            ScheduledExecutorService scheduledExecutorService = this.scheduledExecutor;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
                this.scheduledExecutor = null;
            }
            if (this.longPressCount == 0 || this.popupWindow != null) {
                PopupWindow popupWindow = this.popupWindow;
                if (popupWindow != null) {
                    popupWindow.setContentView(null);
                    this.popupWindow.dismiss();
                    this.popupWindow = null;
                    if (extraKeyButton.getPopup() != null) {
                        sendKey(rootView, extraKeyButton.getPopup());
                    }
                } else {
                    view.performClick();
                }
            }
            return true;
        }
        if (action != 2) {
            if (action != 3) {
                return true;
            }
            view.setBackgroundColor(0);
            ScheduledExecutorService scheduledExecutorService2 = this.scheduledExecutor;
            if (scheduledExecutorService2 != null) {
                scheduledExecutorService2.shutdownNow();
                this.scheduledExecutor = null;
            }
            return true;
        }
        if (extraKeyButton.getPopup() != null) {
            if (this.popupWindow == null && motionEvent.getY() < 0.0f) {
                ScheduledExecutorService scheduledExecutorService3 = this.scheduledExecutor;
                if (scheduledExecutorService3 != null) {
                    scheduledExecutorService3.shutdownNow();
                    this.scheduledExecutor = null;
                }
                view.setBackgroundColor(0);
                popup(view, extraKeyButton.getPopup().getDisplay());
            }
            if (this.popupWindow != null && motionEvent.getY() > 0.0f) {
                view.setBackgroundColor(BUTTON_PRESSED_COLOR);
                this.popupWindow.dismiss();
                this.popupWindow = null;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reload$2(View view, ExtraKeyButton extraKeyButton) {
        this.longPressCount++;
        sendKey(view, extraKeyButton);
    }
}
