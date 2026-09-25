package com.termux.app;

import android.media.AudioManager;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import com.termux.terminal.KeyHandler;
import com.termux.terminal.TerminalEmulator;
import com.termux.terminal.TerminalSession;
import com.termux.view.TerminalViewClient;
import java.util.List;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public final class TermuxViewClient implements TerminalViewClient {
    final TermuxActivity mActivity;
    boolean mVirtualControlKeyDown;
    boolean mVirtualFnKeyDown;

    @Override // com.termux.view.TerminalViewClient
    public boolean onLongPress(MotionEvent motionEvent) {
        return false;
    }

    public TermuxViewClient(TermuxActivity termuxActivity) {
        this.mActivity = termuxActivity;
    }

    @Override // com.termux.view.TerminalViewClient
    public float onScale(float f) {
        if (f >= 0.9f && f <= 1.1f) {
            return f;
        }
        this.mActivity.changeFontSize(f > 1.0f);
        return 1.0f;
    }

    @Override // com.termux.view.TerminalViewClient
    public void onSingleTapUp(MotionEvent motionEvent) {
        ((InputMethodManager) this.mActivity.getSystemService("input_method")).showSoftInput(this.mActivity.mTerminalView, 1);
    }

    @Override // com.termux.view.TerminalViewClient
    public boolean shouldBackButtonBeMappedToEscape() {
        return this.mActivity.mSettings.mBackIsEscape;
    }

    @Override // com.termux.view.TerminalViewClient
    public void copyModeChanged(boolean z) {
        this.mActivity.getDrawer().setDrawerLockMode(z ? 1 : 0);
    }

    @Override // com.termux.view.TerminalViewClient
    public boolean onKeyDown(int i, KeyEvent keyEvent, TerminalSession terminalSession) {
        if (handleVirtualKeys(i, keyEvent, true)) {
            return true;
        }
        if (i == 66 && !terminalSession.isRunning()) {
            this.mActivity.removeFinishedSession(terminalSession);
            return true;
        }
        if (!keyEvent.isCtrlPressed() || !keyEvent.isAltPressed()) {
            return false;
        }
        int unicodeChar = keyEvent.getUnicodeChar(0);
        if (i == 20 || unicodeChar == 110) {
            this.mActivity.switchToSession(true);
        } else if (i == 19 || unicodeChar == 112) {
            this.mActivity.switchToSession(false);
        } else if (i == 22) {
            this.mActivity.getDrawer().openDrawer(3);
        } else if (i == 21) {
            this.mActivity.getDrawer().closeDrawers();
        } else if (unicodeChar == 107) {
            ((InputMethodManager) this.mActivity.getSystemService("input_method")).toggleSoftInput(2, 0);
        } else if (unicodeChar == 109) {
            this.mActivity.mTerminalView.showContextMenu();
        } else if (unicodeChar == 114) {
            this.mActivity.renameSession(terminalSession);
        } else if (unicodeChar == 99) {
            this.mActivity.addNewSession(false, null);
        } else if (unicodeChar == 117) {
            this.mActivity.showUrlSelection();
        } else if (unicodeChar == 118) {
            this.mActivity.doPaste();
        } else if (unicodeChar == 43 || keyEvent.getUnicodeChar(1) == 43) {
            this.mActivity.changeFontSize(true);
        } else if (unicodeChar == 45) {
            this.mActivity.changeFontSize(false);
        } else if (unicodeChar >= 49 && unicodeChar <= 57) {
            int i2 = unicodeChar - 49;
            TermuxService termuxService = this.mActivity.mTermService;
            if (termuxService.getSessions().size() > i2) {
                this.mActivity.switchToSession(termuxService.getSessions().get(i2));
            }
        }
        return true;
    }

    @Override // com.termux.view.TerminalViewClient
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return handleVirtualKeys(i, keyEvent, false);
    }

    @Override // com.termux.view.TerminalViewClient
    public boolean readControlKey() {
        return (this.mActivity.mExtraKeysView != null && this.mActivity.mExtraKeysView.readSpecialButton(ExtraKeysView.SpecialButton.CTRL)) || this.mVirtualControlKeyDown;
    }

    @Override // com.termux.view.TerminalViewClient
    public boolean readAltKey() {
        return this.mActivity.mExtraKeysView != null && this.mActivity.mExtraKeysView.readSpecialButton(ExtraKeysView.SpecialButton.ALT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:40:0x006f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x009f  */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0038. Please report as an issue. */
    @Override // com.termux.view.TerminalViewClient
    public boolean onCodePoint(int i, boolean z, TerminalSession terminalSession) {
        boolean z2;
        int i2;
        if (!this.mVirtualFnKeyDown) {
            if (z) {
                if (i == 106 && !terminalSession.isRunning()) {
                    this.mActivity.removeFinishedSession(terminalSession);
                    return true;
                }
                List<TermuxPreferences.KeyboardShortcut> list = this.mActivity.mSettings.shortcuts;
                if (!list.isEmpty()) {
                    int lowerCase = Character.toLowerCase(i);
                    for (int size = list.size() - 1; size >= 0; size--) {
                        TermuxPreferences.KeyboardShortcut keyboardShortcut = list.get(size);
                        if (lowerCase == keyboardShortcut.codePoint) {
                            int i3 = keyboardShortcut.shortcutAction;
                            if (i3 == 1) {
                                this.mActivity.addNewSession(false, null);
                                return true;
                            }
                            if (i3 == 2) {
                                this.mActivity.switchToSession(true);
                                return true;
                            }
                            if (i3 == 3) {
                                this.mActivity.switchToSession(false);
                                return true;
                            }
                            if (i3 == 4) {
                                TermuxActivity termuxActivity = this.mActivity;
                                termuxActivity.renameSession(termuxActivity.getCurrentTermSession());
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        int lowerCase2 = Character.toLowerCase(i);
        if (lowerCase2 != 46) {
            if (lowerCase2 == 110) {
                i2 = 93;
            } else {
                if (lowerCase2 != 97) {
                    if (lowerCase2 == 98) {
                        z2 = true;
                    } else {
                        if (lowerCase2 != 104) {
                            i2 = 124;
                            if (lowerCase2 != 105) {
                                if (lowerCase2 == 107) {
                                    this.mActivity.toggleShowExtraKeys();
                                } else if (lowerCase2 == 108) {
                                    z2 = false;
                                    lowerCase2 = 124;
                                } else if (lowerCase2 == 112) {
                                    i2 = 92;
                                } else if (lowerCase2 != 113) {
                                    switch (lowerCase2) {
                                        case 48:
                                            i2 = CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA;
                                            break;
                                        case 49:
                                        case 50:
                                        case 51:
                                        case 52:
                                        case 53:
                                        case 54:
                                        case 55:
                                        case 56:
                                        case 57:
                                            i2 = i + 82;
                                            break;
                                        default:
                                            switch (lowerCase2) {
                                                case 100:
                                                    i2 = 22;
                                                    break;
                                                case 101:
                                                    lowerCase2 = 27;
                                                    break;
                                                case 102:
                                                    z2 = true;
                                                    break;
                                                default:
                                                    switch (lowerCase2) {
                                                        case 115:
                                                            i2 = 20;
                                                            break;
                                                        case 116:
                                                            i2 = 61;
                                                            break;
                                                        case 117:
                                                            lowerCase2 = 95;
                                                            break;
                                                        case 118:
                                                            ((AudioManager) this.mActivity.getSystemService("audio")).adjustSuggestedStreamVolume(0, Integer.MIN_VALUE, 1);
                                                            break;
                                                        case 119:
                                                            i2 = 19;
                                                            break;
                                                        case 120:
                                                            z2 = true;
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    this.mActivity.toggleShowExtraKeys();
                                }
                                z2 = false;
                                lowerCase2 = -1;
                                i2 = -1;
                            }
                            if (i2 != -1) {
                                TerminalEmulator emulator = terminalSession.getEmulator();
                                terminalSession.write(KeyHandler.getCode(i2, 0, emulator.isCursorKeysApplicationMode(), emulator.isKeypadApplicationMode()));
                            } else if (lowerCase2 != -1) {
                                terminalSession.writeCodePoint(z2, lowerCase2);
                            }
                            return true;
                        }
                        lowerCase2 = 126;
                    }
                    i2 = -1;
                    if (i2 != -1) {
                        TerminalEmulator emulator2 = terminalSession.getEmulator();
                        terminalSession.write(KeyHandler.getCode(i2, 0, emulator2.isCursorKeysApplicationMode(), emulator2.isKeypadApplicationMode()));
                    } else if (lowerCase2 != -1) {
                        terminalSession.writeCodePoint(z2, lowerCase2);
                    }
                    return true;
                }
                i2 = 21;
            }
            z2 = false;
            lowerCase2 = -1;
            if (i2 != -1) {
                TerminalEmulator emulator3 = terminalSession.getEmulator();
                terminalSession.write(KeyHandler.getCode(i2, 0, emulator3.isCursorKeysApplicationMode(), emulator3.isKeypadApplicationMode()));
            } else if (lowerCase2 != -1) {
                terminalSession.writeCodePoint(z2, lowerCase2);
            }
            return true;
        }
        lowerCase2 = 28;
        z2 = false;
        i2 = -1;
        if (i2 != -1) {
            TerminalEmulator emulator4 = terminalSession.getEmulator();
            terminalSession.write(KeyHandler.getCode(i2, 0, emulator4.isCursorKeysApplicationMode(), emulator4.isKeypadApplicationMode()));
        } else if (lowerCase2 != -1) {
            terminalSession.writeCodePoint(z2, lowerCase2);
        }
        return true;
    }

    private boolean handleVirtualKeys(int i, KeyEvent keyEvent, boolean z) {
        InputDevice device = keyEvent.getDevice();
        if (this.mActivity.mSettings.mDisableVolumeVirtualKeys) {
            return false;
        }
        if (device != null && device.getKeyboardType() == 2) {
            return false;
        }
        if (i == 25) {
            this.mVirtualControlKeyDown = z;
            return true;
        }
        if (i != 24) {
            return false;
        }
        this.mVirtualFnKeyDown = z;
        return true;
    }
}
