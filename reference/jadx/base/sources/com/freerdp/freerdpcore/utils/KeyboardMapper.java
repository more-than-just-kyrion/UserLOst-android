package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.view.KeyEvent;
import com.freerdp.freerdpcore.R;

/* JADX INFO: loaded from: classes.dex */
public class KeyboardMapper {
    private static final int EXTKEY_KBCURSOR = 4354;
    private static final int EXTKEY_KBFUNCTIONKEYS = 4352;
    private static final int EXTKEY_KBNUMPAD = 4353;
    public static final int KEYBOARD_TYPE_CURSOR = 3;
    public static final int KEYBOARD_TYPE_FUNCTIONKEYS = 1;
    public static final int KEYBOARD_TYPE_NUMPAD = 2;
    public static final int KEYSTATE_LOCKED = 2;
    public static final int KEYSTATE_OFF = 3;
    public static final int KEYSTATE_ON = 1;
    private static final int KEY_FLAG_TOGGLE = 1073741824;
    private static final int KEY_FLAG_UNICODE = Integer.MIN_VALUE;
    static final int VK_ABNT_C1 = 193;
    static final int VK_ABNT_C2 = 194;
    static final int VK_ACCEPT = 30;
    static final int VK_ADD = 107;
    static final int VK_APPS = 93;
    static final int VK_ATTN = 246;
    static final int VK_BACK = 8;
    static final int VK_BROWSER_BACK = 166;
    static final int VK_BROWSER_FAVORITES = 171;
    static final int VK_BROWSER_FORWARD = 167;
    static final int VK_BROWSER_HOME = 172;
    static final int VK_BROWSER_REFRESH = 168;
    static final int VK_BROWSER_SEARCH = 170;
    static final int VK_BROWSER_STOP = 169;
    static final int VK_CANCEL = 3;
    static final int VK_CAPITAL = 20;
    static final int VK_CLEAR = 12;
    static final int VK_CONTROL = 17;
    static final int VK_CONVERT = 28;
    static final int VK_CRSEL = 247;
    static final int VK_DECIMAL = 110;
    static final int VK_DELETE = 46;
    static final int VK_DIVIDE = 111;
    static final int VK_DOWN = 40;
    static final int VK_END = 35;
    static final int VK_EREOF = 249;
    static final int VK_ESCAPE = 27;
    static final int VK_EXECUTE = 43;
    static final int VK_EXSEL = 248;
    static final int VK_EXT_KEY = 256;
    static final int VK_F1 = 112;
    static final int VK_F10 = 121;
    static final int VK_F11 = 122;
    static final int VK_F12 = 123;
    static final int VK_F13 = 124;
    static final int VK_F14 = 125;
    static final int VK_F15 = 126;
    static final int VK_F16 = 127;
    static final int VK_F17 = 128;
    static final int VK_F18 = 129;
    static final int VK_F19 = 130;
    static final int VK_F2 = 113;
    static final int VK_F20 = 131;
    static final int VK_F21 = 132;
    static final int VK_F22 = 133;
    static final int VK_F23 = 134;
    static final int VK_F24 = 135;
    static final int VK_F3 = 114;
    static final int VK_F4 = 115;
    static final int VK_F5 = 116;
    static final int VK_F6 = 117;
    static final int VK_F7 = 118;
    static final int VK_F8 = 119;
    static final int VK_F9 = 120;
    static final int VK_FINAL = 24;
    static final int VK_HANGUEL = 21;
    static final int VK_HANGUL = 21;
    static final int VK_HANJA = 25;
    static final int VK_HELP = 47;
    static final int VK_HOME = 36;
    static final int VK_INSERT = 45;
    static final int VK_JUNJA = 23;
    static final int VK_KANA = 21;
    static final int VK_KANJI = 25;
    static final int VK_KEY_0 = 48;
    static final int VK_KEY_1 = 49;
    static final int VK_KEY_2 = 50;
    static final int VK_KEY_3 = 51;
    static final int VK_KEY_4 = 52;
    static final int VK_KEY_5 = 53;
    static final int VK_KEY_6 = 54;
    static final int VK_KEY_7 = 55;
    static final int VK_KEY_8 = 56;
    static final int VK_KEY_9 = 57;
    static final int VK_KEY_A = 65;
    static final int VK_KEY_B = 66;
    static final int VK_KEY_C = 67;
    static final int VK_KEY_D = 68;
    static final int VK_KEY_E = 69;
    static final int VK_KEY_F = 70;
    static final int VK_KEY_G = 71;
    static final int VK_KEY_H = 72;
    static final int VK_KEY_I = 73;
    static final int VK_KEY_J = 74;
    static final int VK_KEY_K = 75;
    static final int VK_KEY_L = 76;
    static final int VK_KEY_M = 77;
    static final int VK_KEY_N = 78;
    static final int VK_KEY_O = 79;
    static final int VK_KEY_P = 80;
    static final int VK_KEY_Q = 81;
    static final int VK_KEY_R = 82;
    static final int VK_KEY_S = 83;
    static final int VK_KEY_T = 84;
    static final int VK_KEY_U = 85;
    static final int VK_KEY_V = 86;
    static final int VK_KEY_W = 87;
    static final int VK_KEY_X = 88;
    static final int VK_KEY_Y = 89;
    static final int VK_KEY_Z = 90;
    static final int VK_LAUNCH_APP1 = 182;
    static final int VK_LAUNCH_APP2 = 183;
    static final int VK_LAUNCH_MAIL = 180;
    static final int VK_LAUNCH_MEDIA_SELECT = 181;
    static final int VK_LBUTTON = 1;
    static final int VK_LCONTROL = 162;
    static final int VK_LEFT = 37;
    static final int VK_LMENU = 164;
    static final int VK_LSHIFT = 160;
    static final int VK_LWIN = 91;
    static final int VK_MBUTTON = 4;
    static final int VK_MEDIA_NEXT_TRACK = 176;
    static final int VK_MEDIA_PLAY_PAUSE = 179;
    static final int VK_MEDIA_PREV_TRACK = 177;
    static final int VK_MEDIA_STOP = 178;
    static final int VK_MENU = 18;
    static final int VK_MODECHANGE = 31;
    static final int VK_MULTIPLY = 106;
    static final int VK_NEXT = 34;
    static final int VK_NONAME = 252;
    static final int VK_NONCONVERT = 29;
    static final int VK_NUMLOCK = 144;
    static final int VK_NUMPAD0 = 96;
    static final int VK_NUMPAD1 = 97;
    static final int VK_NUMPAD2 = 98;
    static final int VK_NUMPAD3 = 99;
    static final int VK_NUMPAD4 = 100;
    static final int VK_NUMPAD5 = 101;
    static final int VK_NUMPAD6 = 102;
    static final int VK_NUMPAD7 = 103;
    static final int VK_NUMPAD8 = 104;
    static final int VK_NUMPAD9 = 105;
    static final int VK_OEM_1 = 186;
    static final int VK_OEM_102 = 226;
    static final int VK_OEM_2 = 191;
    static final int VK_OEM_3 = 192;
    static final int VK_OEM_4 = 219;
    static final int VK_OEM_5 = 220;
    static final int VK_OEM_6 = 221;
    static final int VK_OEM_7 = 222;
    static final int VK_OEM_8 = 223;
    static final int VK_OEM_CLEAR = 254;
    static final int VK_OEM_COMMA = 188;
    static final int VK_OEM_MINUS = 189;
    static final int VK_OEM_PERIOD = 190;
    static final int VK_OEM_PLUS = 187;
    static final int VK_PA1 = 253;
    static final int VK_PACKET = 231;
    static final int VK_PAUSE = 19;
    static final int VK_PLAY = 250;
    static final int VK_PRINT = 42;
    static final int VK_PRIOR = 33;
    static final int VK_PROCESSKEY = 229;
    static final int VK_RBUTTON = 2;
    static final int VK_RCONTROL = 163;
    static final int VK_RETURN = 13;
    static final int VK_RIGHT = 39;
    static final int VK_RMENU = 165;
    static final int VK_RSHIFT = 161;
    static final int VK_RWIN = 92;
    static final int VK_SCROLL = 145;
    static final int VK_SELECT = 41;
    static final int VK_SEPARATOR = 108;
    static final int VK_SHIFT = 16;
    static final int VK_SLEEP = 95;
    static final int VK_SNAPSHOT = 44;
    static final int VK_SPACE = 32;
    static final int VK_SUBTRACT = 109;
    static final int VK_TAB = 9;
    static final int VK_UNICODE = Integer.MIN_VALUE;
    static final int VK_UP = 38;
    static final int VK_VOLUME_DOWN = 174;
    static final int VK_VOLUME_MUTE = 173;
    static final int VK_VOLUME_UP = 175;
    static final int VK_XBUTTON1 = 5;
    static final int VK_XBUTTON2 = 6;
    static final int VK_ZOOM = 251;
    private static boolean initialized = false;
    private static int[] keymapAndroid;
    private static int[] keymapExt;
    private long lastModifierTime;
    private KeyProcessingListener listener = null;
    private boolean shiftPressed = false;
    private boolean ctrlPressed = false;
    private boolean altPressed = false;
    private boolean winPressed = false;
    private int lastModifierKeyCode = -1;
    private boolean isShiftLocked = false;
    private boolean isCtrlLocked = false;
    private boolean isAltLocked = false;
    private boolean isWinLocked = false;

    public interface KeyProcessingListener {
        void modifiersChanged();

        void processUnicodeKey(int i);

        void processVirtualKey(int i, boolean z);

        void switchKeyboard(int i);
    }

    public void init(Context context) {
        if (initialized) {
            return;
        }
        int[] iArr = new int[256];
        keymapAndroid = iArr;
        iArr[7] = 48;
        iArr[8] = 49;
        iArr[9] = 50;
        iArr[10] = 51;
        iArr[11] = 52;
        iArr[12] = 53;
        iArr[13] = 54;
        iArr[14] = 55;
        iArr[15] = 56;
        iArr[16] = 57;
        iArr[29] = 65;
        iArr[30] = 66;
        iArr[31] = 67;
        iArr[32] = 68;
        iArr[33] = 69;
        iArr[34] = 70;
        iArr[35] = 71;
        iArr[36] = 72;
        iArr[37] = 73;
        iArr[38] = 74;
        iArr[39] = 75;
        iArr[40] = 76;
        iArr[41] = 77;
        iArr[42] = 78;
        iArr[43] = 79;
        iArr[44] = 80;
        iArr[45] = 81;
        iArr[46] = 82;
        iArr[47] = VK_KEY_S;
        iArr[48] = VK_KEY_T;
        iArr[49] = VK_KEY_U;
        iArr[50] = VK_KEY_V;
        iArr[51] = VK_KEY_W;
        iArr[52] = VK_KEY_X;
        iArr[53] = VK_KEY_Y;
        iArr[54] = 90;
        iArr[67] = 8;
        iArr[66] = 13;
        iArr[62] = 32;
        iArr[61] = 9;
        int[] iArr2 = new int[256];
        keymapExt = iArr2;
        iArr2[context.getResources().getInteger(R.integer.keycode_F1)] = VK_F1;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F2)] = VK_F2;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F3)] = VK_F3;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F4)] = VK_F4;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F5)] = VK_F5;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F6)] = VK_F6;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F7)] = VK_F7;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F8)] = VK_F8;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F9)] = VK_F9;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F10)] = VK_F10;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F11)] = VK_F11;
        keymapExt[context.getResources().getInteger(R.integer.keycode_F12)] = VK_F12;
        keymapExt[context.getResources().getInteger(R.integer.keycode_tab)] = 9;
        keymapExt[context.getResources().getInteger(R.integer.keycode_print)] = 42;
        keymapExt[context.getResources().getInteger(R.integer.keycode_insert)] = 301;
        keymapExt[context.getResources().getInteger(R.integer.keycode_delete)] = 302;
        keymapExt[context.getResources().getInteger(R.integer.keycode_home)] = 292;
        keymapExt[context.getResources().getInteger(R.integer.keycode_end)] = 291;
        keymapExt[context.getResources().getInteger(R.integer.keycode_pgup)] = 289;
        keymapExt[context.getResources().getInteger(R.integer.keycode_pgdn)] = 290;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_0)] = 96;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_1)] = 97;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_2)] = 98;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_3)] = 99;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_4)] = 100;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_5)] = 101;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_6)] = 102;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_7)] = 103;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_8)] = 104;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_9)] = 105;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_numlock)] = 144;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_add)] = 107;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_comma)] = 110;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_divide)] = 367;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_enter)] = 269;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_multiply)] = 106;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_subtract)] = 109;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_equals)] = -2147483587;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_left_paren)] = -2147483608;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_right_paren)] = -2147483607;
        keymapExt[context.getResources().getInteger(R.integer.keycode_up)] = 294;
        keymapExt[context.getResources().getInteger(R.integer.keycode_down)] = 296;
        keymapExt[context.getResources().getInteger(R.integer.keycode_left)] = 293;
        keymapExt[context.getResources().getInteger(R.integer.keycode_right)] = 295;
        keymapExt[context.getResources().getInteger(R.integer.keycode_enter)] = 269;
        keymapExt[context.getResources().getInteger(R.integer.keycode_backspace)] = 8;
        keymapExt[context.getResources().getInteger(R.integer.keycode_win)] = 347;
        keymapExt[context.getResources().getInteger(R.integer.keycode_menu)] = 349;
        keymapExt[context.getResources().getInteger(R.integer.keycode_esc)] = 27;
        keymapExt[context.getResources().getInteger(R.integer.keycode_specialkeys_keyboard)] = EXTKEY_KBFUNCTIONKEYS;
        keymapExt[context.getResources().getInteger(R.integer.keycode_numpad_keyboard)] = EXTKEY_KBNUMPAD;
        keymapExt[context.getResources().getInteger(R.integer.keycode_cursor_keyboard)] = EXTKEY_KBCURSOR;
        keymapExt[context.getResources().getInteger(R.integer.keycode_toggle_shift)] = 1073741984;
        keymapExt[context.getResources().getInteger(R.integer.keycode_toggle_ctrl)] = 1073741986;
        keymapExt[context.getResources().getInteger(R.integer.keycode_toggle_alt)] = 1073741988;
        keymapExt[context.getResources().getInteger(R.integer.keycode_toggle_win)] = 1073741915;
        initialized = true;
    }

    public void reset(KeyProcessingListener keyProcessingListener) {
        this.shiftPressed = false;
        this.ctrlPressed = false;
        this.altPressed = false;
        this.winPressed = false;
        setKeyProcessingListener(keyProcessingListener);
    }

    public void setKeyProcessingListener(KeyProcessingListener keyProcessingListener) {
        this.listener = keyProcessingListener;
    }

    public boolean processAndroidKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            if (action != 2) {
                return false;
            }
            String characters = keyEvent.getCharacters();
            for (int i = 0; i < characters.length(); i++) {
                this.listener.processUnicodeKey(characters.charAt(i));
            }
            return true;
        }
        boolean zIsModifierPressed = isModifierPressed();
        int virtualKeyCode = getVirtualKeyCode(keyEvent.getKeyCode());
        if ((Integer.MIN_VALUE & virtualKeyCode) != 0) {
            this.listener.processUnicodeKey(virtualKeyCode & Integer.MAX_VALUE);
        } else if (virtualKeyCode > 0 && (keyEvent.getMetaState() & 7) == 0) {
            this.listener.processVirtualKey(virtualKeyCode, true);
            this.listener.processVirtualKey(virtualKeyCode, false);
        } else if (keyEvent.isShiftPressed() && virtualKeyCode != 0) {
            this.listener.processVirtualKey(160, true);
            this.listener.processVirtualKey(virtualKeyCode, true);
            this.listener.processVirtualKey(virtualKeyCode, false);
            this.listener.processVirtualKey(160, false);
        } else {
            if (keyEvent.getUnicodeChar() == 0) {
                return false;
            }
            this.listener.processUnicodeKey(keyEvent.getUnicodeChar());
        }
        if (zIsModifierPressed) {
            resetModifierKeysAfterInput(false);
        }
        return true;
    }

    public void processCustomKeyEvent(int i) {
        int extendedKeyCode = getExtendedKeyCode(i);
        if (extendedKeyCode == 0) {
            return;
        }
        if ((1073741824 & extendedKeyCode) != 0) {
            processToggleButton(extendedKeyCode & (-1073741825));
            return;
        }
        if (extendedKeyCode == EXTKEY_KBFUNCTIONKEYS || extendedKeyCode == EXTKEY_KBNUMPAD || extendedKeyCode == EXTKEY_KBCURSOR) {
            switchKeyboard(extendedKeyCode);
            return;
        }
        if ((Integer.MIN_VALUE & extendedKeyCode) != 0) {
            this.listener.processUnicodeKey(extendedKeyCode & Integer.MAX_VALUE);
        } else {
            this.listener.processVirtualKey(extendedKeyCode, true);
            this.listener.processVirtualKey(extendedKeyCode, false);
        }
        resetModifierKeysAfterInput(false);
    }

    public void sendAltF4() {
        this.listener.processVirtualKey(164, true);
        this.listener.processVirtualKey(VK_F4, true);
        this.listener.processVirtualKey(VK_F4, false);
        this.listener.processVirtualKey(164, false);
    }

    private boolean isModifierPressed() {
        return this.shiftPressed || this.ctrlPressed || this.altPressed || this.winPressed;
    }

    public int getModifierState(int i) {
        int extendedKeyCode = getExtendedKeyCode(i);
        if ((1073741824 & extendedKeyCode) == 0) {
            return -1;
        }
        int i2 = extendedKeyCode & (-1073741825);
        if (i2 == 91) {
            if (this.winPressed) {
                return this.isWinLocked ? 2 : 1;
            }
            return 3;
        }
        if (i2 == 160) {
            if (this.shiftPressed) {
                return this.isShiftLocked ? 2 : 1;
            }
            return 3;
        }
        if (i2 == 162) {
            if (this.ctrlPressed) {
                return this.isCtrlLocked ? 2 : 1;
            }
            return 3;
        }
        if (i2 != 164) {
            return -1;
        }
        if (this.altPressed) {
            return this.isAltLocked ? 2 : 1;
        }
        return 3;
    }

    private int getVirtualKeyCode(int i) {
        if (i < 0 || i > 255) {
            return 0;
        }
        return keymapAndroid[i];
    }

    private int getExtendedKeyCode(int i) {
        if (i < 0 || i > 255) {
            return 0;
        }
        return keymapExt[i];
    }

    private void processToggleButton(int i) {
        if (i != 91) {
            if (i != 160) {
                if (i != 162) {
                    if (i == 164) {
                        if (!checkToggleModifierLock(164)) {
                            this.isAltLocked = false;
                            boolean z = !this.altPressed;
                            this.altPressed = z;
                            this.listener.processVirtualKey(164, z);
                        } else {
                            this.isAltLocked = true;
                        }
                    }
                } else if (!checkToggleModifierLock(162)) {
                    this.isCtrlLocked = false;
                    boolean z2 = !this.ctrlPressed;
                    this.ctrlPressed = z2;
                    this.listener.processVirtualKey(162, z2);
                } else {
                    this.isCtrlLocked = true;
                }
            } else if (!checkToggleModifierLock(160)) {
                this.isShiftLocked = false;
                boolean z3 = !this.shiftPressed;
                this.shiftPressed = z3;
                this.listener.processVirtualKey(160, z3);
            } else {
                this.isShiftLocked = true;
            }
        } else if (!checkToggleModifierLock(91)) {
            this.isWinLocked = false;
            boolean z4 = !this.winPressed;
            this.winPressed = z4;
            this.listener.processVirtualKey(347, z4);
        } else {
            this.isWinLocked = true;
        }
        this.listener.modifiersChanged();
    }

    public void clearlAllModifiers() {
        resetModifierKeysAfterInput(true);
    }

    private void resetModifierKeysAfterInput(boolean z) {
        if (this.shiftPressed && (!this.isShiftLocked || z)) {
            this.listener.processVirtualKey(160, false);
            this.shiftPressed = false;
        }
        if (this.ctrlPressed && (!this.isCtrlLocked || z)) {
            this.listener.processVirtualKey(162, false);
            this.ctrlPressed = false;
        }
        if (this.altPressed && (!this.isAltLocked || z)) {
            this.listener.processVirtualKey(164, false);
            this.altPressed = false;
        }
        if (this.winPressed && (!this.isWinLocked || z)) {
            this.listener.processVirtualKey(347, false);
            this.winPressed = false;
        }
        KeyProcessingListener keyProcessingListener = this.listener;
        if (keyProcessingListener != null) {
            keyProcessingListener.modifiersChanged();
        }
    }

    private void switchKeyboard(int i) {
        switch (i) {
            case EXTKEY_KBFUNCTIONKEYS /* 4352 */:
                this.listener.switchKeyboard(1);
                break;
            case EXTKEY_KBNUMPAD /* 4353 */:
                this.listener.switchKeyboard(2);
                break;
            case EXTKEY_KBCURSOR /* 4354 */:
                this.listener.switchKeyboard(3);
                break;
        }
    }

    private boolean checkToggleModifierLock(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.lastModifierKeyCode != i) {
            this.lastModifierKeyCode = i;
            this.lastModifierTime = jCurrentTimeMillis;
            return false;
        }
        if (this.lastModifierTime + 800 > jCurrentTimeMillis) {
            this.lastModifierTime = 0L;
            return true;
        }
        this.lastModifierTime = jCurrentTimeMillis;
        return false;
    }
}
