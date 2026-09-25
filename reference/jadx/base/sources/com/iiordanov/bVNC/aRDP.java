package com.iiordanov.bVNC;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.iiordanov.bVNC.dialogs.IntroTextDialog;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class aRDP extends MainConfiguration {
    private static final String TAG = "aRDP";
    private CheckBox checkboxConsoleMode;
    private CheckBox checkboxDesktopBackground;
    private CheckBox checkboxDesktopComposition;
    private CheckBox checkboxEnableGfx;
    private CheckBox checkboxEnableGfxH264;
    private CheckBox checkboxEnableRecording;
    private CheckBox checkboxFontSmoothing;
    private CheckBox checkboxKeepPassword;
    private CheckBox checkboxMenuAnimation;
    private CheckBox checkboxRedirectSdCard;
    private CheckBox checkboxRemoteFx;
    private CheckBox checkboxRotateDpad;
    private CheckBox checkboxUseDpadAsArrows;
    private CheckBox checkboxUseLastPositionToolbar;
    private CheckBox checkboxUseSshPubkey;
    private CheckBox checkboxVisualStyles;
    private CheckBox checkboxWindowContents;
    private RadioGroup groupRemoteSoundType;
    private LinearLayout layoutAdvancedSettings;
    private EditText passwordText;
    private EditText portText;
    private EditText rdpDomain;
    private EditText rdpHeight;
    private EditText rdpWidth;
    private Spinner spinnerRdpGeometry;
    private EditText sshPort;
    private EditText sshServer;
    private EditText sshUser;
    private EditText textUsername;
    private ToggleButton toggleAdvancedSettings;

    @Override // com.iiordanov.bVNC.MainConfiguration, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.layoutID = R.layout.main_rdp;
        super.onCreate(bundle);
        this.sshServer = (EditText) findViewById(R.id.sshServer);
        this.sshPort = (EditText) findViewById(R.id.sshPort);
        this.sshUser = (EditText) findViewById(R.id.sshUser);
        this.portText = (EditText) findViewById(R.id.textPORT);
        this.passwordText = (EditText) findViewById(R.id.textPASSWORD);
        this.textUsername = (EditText) findViewById(R.id.textUsername);
        this.rdpDomain = (EditText) findViewById(R.id.rdpDomain);
        this.checkboxUseSshPubkey = (CheckBox) findViewById(R.id.checkboxUseSshPubkey);
        this.checkboxKeepPassword = (CheckBox) findViewById(R.id.checkboxKeepPassword);
        this.checkboxUseDpadAsArrows = (CheckBox) findViewById(R.id.checkboxUseDpadAsArrows);
        this.checkboxRotateDpad = (CheckBox) findViewById(R.id.checkboxRotateDpad);
        this.checkboxUseLastPositionToolbar = (CheckBox) findViewById(R.id.checkboxUseLastPositionToolbar);
        this.toggleAdvancedSettings = (ToggleButton) findViewById(R.id.toggleAdvancedSettings);
        this.layoutAdvancedSettings = (LinearLayout) findViewById(R.id.layoutAdvancedSettings);
        this.toggleAdvancedSettings.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.aRDP.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    aRDP.this.layoutAdvancedSettings.setVisibility(0);
                } else {
                    aRDP.this.layoutAdvancedSettings.setVisibility(8);
                }
            }
        });
        this.spinnerRdpGeometry = (Spinner) findViewById(R.id.spinnerRdpGeometry);
        this.rdpWidth = (EditText) findViewById(R.id.rdpWidth);
        this.rdpHeight = (EditText) findViewById(R.id.rdpHeight);
        this.spinnerRdpGeometry.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.aRDP.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                aRDP.this.selected.setRdpResType(i);
                aRDP.this.setRemoteWidthAndHeight();
            }
        });
        this.groupRemoteSoundType = (RadioGroup) findViewById(R.id.groupRemoteSoundType);
        this.checkboxEnableRecording = (CheckBox) findViewById(R.id.checkboxEnableRecording);
        this.checkboxConsoleMode = (CheckBox) findViewById(R.id.checkboxConsoleMode);
        this.checkboxRedirectSdCard = (CheckBox) findViewById(R.id.checkboxRedirectSdCard);
        this.checkboxRemoteFx = (CheckBox) findViewById(R.id.checkboxRemoteFx);
        this.checkboxDesktopBackground = (CheckBox) findViewById(R.id.checkboxDesktopBackground);
        this.checkboxFontSmoothing = (CheckBox) findViewById(R.id.checkboxFontSmoothing);
        this.checkboxDesktopComposition = (CheckBox) findViewById(R.id.checkboxDesktopComposition);
        this.checkboxWindowContents = (CheckBox) findViewById(R.id.checkboxWindowContents);
        this.checkboxMenuAnimation = (CheckBox) findViewById(R.id.checkboxMenuAnimation);
        this.checkboxVisualStyles = (CheckBox) findViewById(R.id.checkboxVisualStyles);
        this.checkboxEnableGfx = (CheckBox) findViewById(R.id.checkboxEnableGfx);
        this.checkboxEnableGfxH264 = (CheckBox) findViewById(R.id.checkboxEnableGfxH264);
        setConnectionTypeSpinnerAdapter(R.array.rdp_connection_type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteWidthAndHeight() {
        if (this.selected.getRdpResType() != 2) {
            this.rdpWidth.setEnabled(false);
            this.rdpHeight.setEnabled(false);
        } else {
            this.rdpWidth.setEnabled(true);
            this.rdpHeight.setEnabled(true);
        }
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    protected void updateViewFromSelected() {
        if (this.selected == null) {
            return;
        }
        super.commonUpdateViewFromSelected();
        this.sshServer.setText(this.selected.getSshServer());
        this.sshPort.setText(Integer.toString(this.selected.getSshPort()));
        this.sshUser.setText(this.selected.getSshUser());
        this.checkboxUseSshPubkey.setChecked(this.selected.getUseSshPubKey());
        this.portText.setText(Integer.toString(this.selected.getPort()));
        if (this.selected.getKeepPassword() || this.selected.getPassword().length() > 0) {
            this.passwordText.setText(this.selected.getPassword());
        }
        this.checkboxKeepPassword.setChecked(this.selected.getKeepPassword());
        this.checkboxUseDpadAsArrows.setChecked(this.selected.getUseDpadAsArrows());
        this.checkboxRotateDpad.setChecked(this.selected.getRotateDpad());
        this.checkboxUseLastPositionToolbar.setChecked(!this.isNewConnection ? this.selected.getUseLastPositionToolbar() : useLastPositionToolbarDefault());
        this.textNickname.setText(this.selected.getNickname());
        this.textUsername.setText(this.selected.getUserName());
        this.rdpDomain.setText(this.selected.getRdpDomain());
        this.spinnerRdpGeometry.setSelection(this.selected.getRdpResType());
        this.rdpWidth.setText(Integer.toString(this.selected.getRdpWidth()));
        this.rdpHeight.setText(Integer.toString(this.selected.getRdpHeight()));
        setRemoteWidthAndHeight();
        setRemoteSoundTypeFromSettings(this.selected.getRemoteSoundType());
        this.checkboxEnableRecording.setChecked(this.selected.getEnableRecording());
        this.checkboxConsoleMode.setChecked(this.selected.getConsoleMode());
        this.checkboxRedirectSdCard.setChecked(this.selected.getRedirectSdCard());
        this.checkboxRemoteFx.setChecked(this.selected.getRemoteFx());
        this.checkboxDesktopBackground.setChecked(this.selected.getDesktopBackground());
        this.checkboxFontSmoothing.setChecked(this.selected.getFontSmoothing());
        this.checkboxDesktopComposition.setChecked(this.selected.getDesktopComposition());
        this.checkboxWindowContents.setChecked(this.selected.getWindowContents());
        this.checkboxMenuAnimation.setChecked(this.selected.getMenuAnimation());
        this.checkboxVisualStyles.setChecked(this.selected.getVisualStyles());
        this.checkboxEnableGfx.setChecked(this.selected.getEnableGfx());
        this.checkboxEnableGfxH264.setChecked(this.selected.getEnableGfxH264());
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    protected void updateSelectedFromView() {
        commonUpdateSelectedFromView();
        if (this.selected == null) {
            return;
        }
        try {
            this.selected.setPort(Integer.parseInt(this.portText.getText().toString()));
            this.selected.setSshPort(Integer.parseInt(this.sshPort.getText().toString()));
        } catch (NumberFormatException unused) {
        }
        this.selected.setNickname(this.textNickname.getText().toString());
        this.selected.setSshServer(this.sshServer.getText().toString());
        this.selected.setSshUser(this.sshUser.getText().toString());
        this.selected.setUseSshPubKey(this.checkboxUseSshPubkey.isChecked());
        this.selected.setUserName(this.textUsername.getText().toString());
        this.selected.setRdpDomain(this.rdpDomain.getText().toString());
        this.selected.setRdpResType(this.spinnerRdpGeometry.getSelectedItemPosition());
        try {
            this.selected.setRdpWidth(Integer.parseInt(this.rdpWidth.getText().toString()));
            this.selected.setRdpHeight(Integer.parseInt(this.rdpHeight.getText().toString()));
        } catch (NumberFormatException unused2) {
        }
        setRemoteSoundTypeFromView(this.groupRemoteSoundType);
        this.selected.setEnableRecording(this.checkboxEnableRecording.isChecked());
        this.selected.setConsoleMode(this.checkboxConsoleMode.isChecked());
        this.selected.setRedirectSdCard(this.checkboxRedirectSdCard.isChecked());
        this.selected.setRemoteFx(this.checkboxRemoteFx.isChecked());
        this.selected.setDesktopBackground(this.checkboxDesktopBackground.isChecked());
        this.selected.setFontSmoothing(this.checkboxFontSmoothing.isChecked());
        this.selected.setDesktopComposition(this.checkboxDesktopComposition.isChecked());
        this.selected.setWindowContents(this.checkboxWindowContents.isChecked());
        this.selected.setMenuAnimation(this.checkboxMenuAnimation.isChecked());
        this.selected.setVisualStyles(this.checkboxVisualStyles.isChecked());
        this.selected.setEnableGfx(this.checkboxEnableGfx.isChecked());
        this.selected.setEnableGfxH264(this.checkboxEnableGfxH264.isChecked());
        this.selected.setPassword(this.passwordText.getText().toString());
        this.selected.setKeepPassword(this.checkboxKeepPassword.isChecked());
        this.selected.setUseDpadAsArrows(this.checkboxUseDpadAsArrows.isChecked());
        this.selected.setRotateDpad(this.checkboxRotateDpad.isChecked());
        this.selected.setUseLastPositionToolbar(this.checkboxUseLastPositionToolbar.isChecked());
        if (this.checkboxUseLastPositionToolbar.isChecked()) {
            return;
        }
        this.selected.setUseLastPositionToolbarMoved(false);
    }

    public void toggleEnableRecording(View view) {
        CheckBox checkBox = (CheckBox) view;
        if (Utils.isFree(this)) {
            IntroTextDialog.showIntroTextIfNecessary(this, this.database, true);
            checkBox.setChecked(false);
        } else {
            this.permissionsManager.requestPermissions(this, true);
        }
        this.selected.setEnableRecording(checkBox.isChecked());
    }

    public void remoteSoundTypeToggled(View view) {
        if (Utils.isFree(this)) {
            IntroTextDialog.showIntroTextIfNecessary(this, this.database, true);
        }
    }

    public void setRemoteSoundTypeFromView(View view) {
        RadioGroup radioGroup = (RadioGroup) view;
        int i = 1;
        if (Utils.isFree(this)) {
            IntroTextDialog.showIntroTextIfNecessary(this, this.database, true);
            radioGroup.check(R.id.radioRemoteSoundDisabled);
        }
        int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
        if (checkedRadioButtonId != R.id.radioRemoteSoundOnServer) {
            i = checkedRadioButtonId == R.id.radioRemoteSoundOnDevice ? 0 : 2;
        }
        this.selected.setRemoteSoundType(i);
    }

    public void setRemoteSoundTypeFromSettings(int i) {
        int i2;
        if (Utils.isFree(this)) {
            i = 2;
        }
        if (i == 0) {
            i2 = R.id.radioRemoteSoundOnDevice;
        } else if (i != 1) {
            i2 = i != 2 ? 0 : R.id.radioRemoteSoundDisabled;
        } else {
            i2 = R.id.radioRemoteSoundOnServer;
        }
        this.groupRemoteSoundType.check(i2);
    }

    public void save(MenuItem menuItem) {
        if (this.ipText.getText().length() != 0 && this.portText.getText().length() != 0) {
            saveConnectionAndCloseLayout();
        } else {
            Toast.makeText(this, R.string.rdp_server_empty, 1).show();
        }
    }
}
