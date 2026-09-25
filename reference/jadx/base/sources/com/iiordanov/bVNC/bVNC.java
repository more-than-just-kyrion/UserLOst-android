package com.iiordanov.bVNC;

import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog;
import com.iiordanov.bVNC.dialogs.RepeaterDialog;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class bVNC extends MainConfiguration {
    private static final String TAG = "androidVNC";
    private TextView autoXStatus;
    private Button buttonCustomizeX11Vnc;
    private CheckBox checkboxKeepPassword;
    private CheckBox checkboxPreferHextile;
    private CheckBox checkboxRotateDpad;
    private CheckBox checkboxUseDpadAsArrows;
    private CheckBox checkboxUseLastPositionToolbar;
    private CheckBox checkboxUseSshPubkey;
    private CheckBox checkboxViewOnly;
    private Spinner colorSpinner;
    private RadioGroup groupForceFullScreen;
    private LinearLayout layoutAdvancedSettings;
    private LinearLayout layoutUseX11Vnc;
    private EditText passwordText;
    private EditText portText;
    private Button repeaterButton;
    private LinearLayout repeaterEntry;
    private TextView repeaterText;
    private boolean repeaterTextSet;
    private EditText resHeight;
    private EditText resWidth;
    private Spinner spinnerVncGeometry;
    private EditText sshPort;
    private EditText sshServer;
    private EditText sshUser;
    private EditText textNickname;
    private EditText textUsername;
    private ToggleButton toggleAdvancedSettings;

    @Override // com.iiordanov.bVNC.MainConfiguration, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.d(TAG, "onCreate called");
        this.layoutID = R.layout.main;
        super.onCreate(bundle);
        this.sshServer = (EditText) findViewById(R.id.sshServer);
        this.sshPort = (EditText) findViewById(R.id.sshPort);
        this.sshUser = (EditText) findViewById(R.id.sshUser);
        this.layoutUseX11Vnc = (LinearLayout) findViewById(R.id.layoutUseX11Vnc);
        this.portText = (EditText) findViewById(R.id.textPORT);
        this.passwordText = (EditText) findViewById(R.id.textPASSWORD);
        this.textNickname = (EditText) findViewById(R.id.textNickname);
        this.textUsername = (EditText) findViewById(R.id.textUsername);
        this.autoXStatus = (TextView) findViewById(R.id.autoXStatus);
        this.repeaterButton = (Button) findViewById(R.id.buttonRepeater);
        this.repeaterEntry = (LinearLayout) findViewById(R.id.repeaterEntry);
        this.repeaterButton.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.bVNC.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bVNC.this.showDialog(R.layout.repeater_dialog);
            }
        });
        this.checkboxUseSshPubkey = (CheckBox) findViewById(R.id.checkboxUseSshPubkey);
        Button button = (Button) findViewById(R.id.buttonCustomizeX11Vnc);
        this.buttonCustomizeX11Vnc = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.bVNC.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bVNC.this.updateSelectedFromView();
                bVNC.this.showDialog(R.layout.auto_x_customize);
            }
        });
        this.connectionType = (Spinner) findViewById(R.id.connectionType);
        this.connectionType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.bVNC.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                Log.d(bVNC.TAG, "connectionType onItemSelected called");
                bVNC.this.selectedConnType = i;
                bVNC.this.selected.setConnectionType(bVNC.this.selectedConnType);
                bVNC.this.selected.save(bVNC.this);
                if (bVNC.this.selectedConnType == 0 || bVNC.this.selectedConnType == 3 || bVNC.this.selectedConnType == 5) {
                    bVNC.this.setVisibilityOfSshWidgets(8);
                    bVNC.this.setVisibilityOfUltraVncWidgets(8);
                    bVNC.this.ipText.setHint(R.string.address_caption_hint);
                    bVNC.this.textUsername.setHint(R.string.username_hint_optional);
                } else if (bVNC.this.selectedConnType == 1) {
                    bVNC.this.setVisibilityOfSshWidgets(0);
                    bVNC.this.setVisibilityOfUltraVncWidgets(8);
                    if (bVNC.this.ipText.getText().toString().equals("")) {
                        bVNC.this.ipText.setText("localhost");
                    }
                    bVNC.this.ipText.setHint(R.string.address_caption_hint_tunneled);
                    bVNC.this.textUsername.setHint(R.string.username_hint_optional);
                } else if (bVNC.this.selectedConnType == 2) {
                    bVNC.this.setVisibilityOfSshWidgets(8);
                    bVNC.this.setVisibilityOfUltraVncWidgets(0);
                    bVNC.this.ipText.setHint(R.string.address_caption_hint);
                    bVNC.this.textUsername.setHint(R.string.username_hint);
                } else if (bVNC.this.selectedConnType == 4) {
                    bVNC.this.setVisibilityOfSshWidgets(8);
                    bVNC.this.textUsername.setVisibility(0);
                    bVNC.this.repeaterEntry.setVisibility(8);
                    if (bVNC.this.passwordText.getText().toString().equals("")) {
                        bVNC.this.checkboxKeepPassword.setChecked(false);
                    }
                    bVNC.this.ipText.setHint(R.string.address_caption_hint);
                    bVNC.this.textUsername.setHint(R.string.username_hint_vencrypt);
                }
                bVNC.this.updateViewFromSelected();
            }
        });
        this.toggleAdvancedSettings = (ToggleButton) findViewById(R.id.toggleAdvancedSettings);
        this.layoutAdvancedSettings = (LinearLayout) findViewById(R.id.layoutAdvancedSettings);
        this.toggleAdvancedSettings.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.bVNC.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    bVNC.this.layoutAdvancedSettings.setVisibility(0);
                } else {
                    bVNC.this.layoutAdvancedSettings.setVisibility(8);
                }
            }
        });
        this.colorSpinner = (Spinner) findViewById(R.id.colorformat);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.connection_list_entry, COLORMODEL.values());
        this.groupForceFullScreen = (RadioGroup) findViewById(R.id.groupForceFullScreen);
        this.checkboxKeepPassword = (CheckBox) findViewById(R.id.checkboxKeepPassword);
        this.checkboxUseDpadAsArrows = (CheckBox) findViewById(R.id.checkboxUseDpadAsArrows);
        this.checkboxRotateDpad = (CheckBox) findViewById(R.id.checkboxRotateDpad);
        this.checkboxUseLastPositionToolbar = (CheckBox) findViewById(R.id.checkboxUseLastPositionToolbar);
        this.checkboxPreferHextile = (CheckBox) findViewById(R.id.checkboxPreferHextile);
        this.checkboxViewOnly = (CheckBox) findViewById(R.id.checkboxViewOnly);
        this.colorSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        this.colorSpinner.setSelection(0);
        this.spinnerVncGeometry = (Spinner) findViewById(R.id.spinnerVncGeometry);
        this.resWidth = (EditText) findViewById(R.id.rdpWidth);
        this.resHeight = (EditText) findViewById(R.id.rdpHeight);
        this.spinnerVncGeometry.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.bVNC.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (bVNC.this.selected != null) {
                    bVNC.this.selected.setRdpResType(i);
                    bVNC.this.setRemoteWidthAndHeight();
                }
            }
        });
        this.repeaterText = (TextView) findViewById(R.id.textRepeaterId);
        setConnectionTypeSpinnerAdapter(R.array.connection_type);
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    protected void setVisibilityOfSshWidgets(int i) {
        Log.d(TAG, "setVisibilityOfSshWidgets called");
        super.setVisibilityOfSshWidgets(i);
        this.layoutUseX11Vnc.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteWidthAndHeight() {
        Log.d(TAG, "setRemoteWidthAndHeight called");
        if (this.selected.getRdpResType() != 4) {
            this.resWidth.setEnabled(false);
            this.resHeight.setEnabled(false);
        } else {
            this.resWidth.setEnabled(true);
            this.resHeight.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVisibilityOfUltraVncWidgets(int i) {
        Log.d(TAG, "setVisibilityOfUltraVncWidgets called");
        this.repeaterEntry.setVisibility(i);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        Log.d(TAG, "onCreateDialog called");
        if (i == R.layout.repeater_dialog) {
            return new RepeaterDialog(this);
        }
        if (i != R.layout.auto_x_customize) {
            return null;
        }
        AutoXCustomizeDialog autoXCustomizeDialog = new AutoXCustomizeDialog(this, this.database);
        autoXCustomizeDialog.setCancelable(false);
        return autoXCustomizeDialog;
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    public void updateViewFromSelected() {
        Log.d(TAG, "updateViewFromSelected called");
        if (this.selected == null) {
            return;
        }
        super.commonUpdateViewFromSelected();
        this.sshServer.setText(this.selected.getSshServer());
        this.sshPort.setText(Integer.toString(this.selected.getSshPort()));
        this.sshUser.setText(this.selected.getSshUser());
        this.checkboxUseSshPubkey.setChecked(this.selected.getUseSshPubKey());
        if (this.selectedConnType == 1 && this.selected.getAutoXEnabled()) {
            this.ipText.setVisibility(8);
            this.portText.setVisibility(8);
            this.textUsername.setVisibility(8);
            this.passwordText.setVisibility(8);
            this.checkboxKeepPassword.setVisibility(8);
            this.autoXStatus.setText(R.string.auto_x_enabled);
        } else {
            this.ipText.setVisibility(0);
            this.portText.setVisibility(0);
            this.textUsername.setVisibility(0);
            this.passwordText.setVisibility(0);
            this.checkboxKeepPassword.setVisibility(0);
            this.autoXStatus.setText(R.string.auto_x_disabled);
        }
        this.portText.setText(Integer.toString(this.selected.getPort()));
        if (this.selected.getKeepPassword() || this.selected.getPassword().length() > 0) {
            this.passwordText.setText(this.selected.getPassword());
        }
        this.groupForceFullScreen.check(this.selected.getForceFull() == 0 ? R.id.radioForceFullScreenAuto : R.id.radioForceFullScreenOn);
        this.checkboxKeepPassword.setChecked(this.selected.getKeepPassword());
        this.checkboxUseDpadAsArrows.setChecked(this.selected.getUseDpadAsArrows());
        this.checkboxRotateDpad.setChecked(this.selected.getRotateDpad());
        this.checkboxUseLastPositionToolbar.setChecked(!this.isNewConnection ? this.selected.getUseLastPositionToolbar() : useLastPositionToolbarDefault());
        this.checkboxPreferHextile.setChecked(this.selected.getPrefEncoding() == 5);
        this.checkboxViewOnly.setChecked(this.selected.getViewOnly());
        this.textNickname.setText(this.selected.getNickname());
        this.textUsername.setText(this.selected.getUserName());
        COLORMODEL colormodelValueOf = COLORMODEL.C24bit;
        try {
            colormodelValueOf = COLORMODEL.valueOf(this.selected.getColorModel());
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        COLORMODEL[] colormodelArrValues = COLORMODEL.values();
        this.spinnerVncGeometry.setSelection(this.selected.getRdpResType());
        this.resWidth.setText(Integer.toString(this.selected.getRdpWidth()));
        this.resHeight.setText(Integer.toString(this.selected.getRdpHeight()));
        for (int i = 0; i < colormodelArrValues.length; i++) {
            if (colormodelArrValues[i] == colormodelValueOf) {
                this.colorSpinner.setSelection(i);
                break;
            }
        }
        updateRepeaterInfo(this.selected.getUseRepeater(), this.selected.getRepeaterId());
    }

    public void updateRepeaterInfo(boolean z, String str) {
        Log.d(TAG, "updateRepeaterInfo called");
        if (z) {
            this.repeaterText.setText(str);
            this.repeaterTextSet = true;
            this.ipText.setHint(R.string.repeater_caption_hint);
        } else {
            this.repeaterText.setText(getText(R.string.repeater_empty_text));
            this.repeaterTextSet = false;
            this.ipText.setHint(R.string.address_caption_hint);
        }
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    protected void updateSelectedFromView() {
        long j;
        Log.d(TAG, "updateSelectedFromView called");
        super.commonUpdateSelectedFromView();
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
        ConnectionBean connectionBean = this.selected;
        if (this.groupForceFullScreen.getCheckedRadioButtonId() == R.id.radioForceFullScreenAuto) {
            j = 0;
        } else {
            j = this.groupForceFullScreen.getCheckedRadioButtonId() == R.id.radioForceFullScreenOn ? 1L : 2L;
        }
        connectionBean.setForceFull(j);
        this.selected.setPassword(this.passwordText.getText().toString());
        this.selected.setKeepPassword(this.checkboxKeepPassword.isChecked());
        this.selected.setUseDpadAsArrows(this.checkboxUseDpadAsArrows.isChecked());
        this.selected.setRotateDpad(this.checkboxRotateDpad.isChecked());
        this.selected.setUseLastPositionToolbar(this.checkboxUseLastPositionToolbar.isChecked());
        if (!this.checkboxUseLastPositionToolbar.isChecked()) {
            this.selected.setUseLastPositionToolbarMoved(false);
        }
        if (this.checkboxPreferHextile.isChecked()) {
            this.selected.setPrefEncoding(5);
        } else {
            this.selected.setPrefEncoding(7);
        }
        this.selected.setViewOnly(this.checkboxViewOnly.isChecked());
        this.selected.setRdpResType(this.spinnerVncGeometry.getSelectedItemPosition());
        try {
            this.selected.setRdpWidth(Integer.parseInt(this.resWidth.getText().toString()));
            this.selected.setRdpHeight(Integer.parseInt(this.resHeight.getText().toString()));
        } catch (NumberFormatException unused2) {
        }
        this.selected.setColorModel(((COLORMODEL) this.colorSpinner.getSelectedItem()).nameString());
        if (this.repeaterTextSet) {
            this.selected.setRepeaterId(this.repeaterText.getText().toString());
            this.selected.setUseRepeater(true);
        } else {
            this.selected.setUseRepeater(false);
        }
    }

    public void save(MenuItem menuItem) {
        Log.d(TAG, "save called");
        if (this.ipText.getText().length() != 0 && this.portText.getText().length() != 0) {
            saveConnectionAndCloseLayout();
        } else {
            Toast.makeText(this, R.string.vnc_server_empty, 1).show();
        }
    }
}
