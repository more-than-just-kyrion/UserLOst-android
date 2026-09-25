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
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.iiordanov.bVNC.dialogs.ImportTlsCaDialog;
import com.undatech.opaque.util.FileUtils;
import com.undatech.remoteClientUi.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class aSPICE extends MainConfiguration {
    private static final String TAG = "aSPICE";
    private Button buttonImportCa;
    private CheckBox checkboxEnableSound;
    private CheckBox checkboxKeepPassword;
    private CheckBox checkboxRotateDpad;
    private CheckBox checkboxUseDpadAsArrows;
    private CheckBox checkboxUseLastPositionToolbar;
    private CheckBox checkboxUseSshPubkey;
    private LinearLayout layoutAdvancedSettings;
    private EditText passwordText;
    private EditText portText;
    private EditText resHeight;
    private EditText resWidth;
    private Spinner spinnerGeometry;
    private EditText sshPort;
    private EditText sshServer;
    private EditText sshUser;
    private EditText textNickname;
    private EditText tlsPort;
    private ToggleButton toggleAdvancedSettings;
    private Spinner layoutMapSpinner = null;
    private List<String> spinnerArray = null;

    @Override // com.iiordanov.bVNC.MainConfiguration, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.layoutID = R.layout.main_spice;
        super.onCreate(bundle);
        this.sshServer = (EditText) findViewById(R.id.sshServer);
        this.sshPort = (EditText) findViewById(R.id.sshPort);
        this.sshUser = (EditText) findViewById(R.id.sshUser);
        this.portText = (EditText) findViewById(R.id.textPORT);
        this.tlsPort = (EditText) findViewById(R.id.tlsPort);
        this.passwordText = (EditText) findViewById(R.id.textPASSWORD);
        this.textNickname = (EditText) findViewById(R.id.textNickname);
        Button button = (Button) findViewById(R.id.buttonImportCa);
        this.buttonImportCa = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.aSPICE.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aSPICE.this.updateSelectedFromView();
                aSPICE.this.showDialog(R.layout.import_tls_ca_dialog);
            }
        });
        this.checkboxUseSshPubkey = (CheckBox) findViewById(R.id.checkboxUseSshPubkey);
        this.checkboxKeepPassword = (CheckBox) findViewById(R.id.checkboxKeepPassword);
        this.checkboxUseDpadAsArrows = (CheckBox) findViewById(R.id.checkboxUseDpadAsArrows);
        this.checkboxRotateDpad = (CheckBox) findViewById(R.id.checkboxRotateDpad);
        this.checkboxUseLastPositionToolbar = (CheckBox) findViewById(R.id.checkboxUseLastPositionToolbar);
        this.checkboxEnableSound = (CheckBox) findViewById(R.id.checkboxEnableSound);
        this.toggleAdvancedSettings = (ToggleButton) findViewById(R.id.toggleAdvancedSettings);
        this.layoutAdvancedSettings = (LinearLayout) findViewById(R.id.layoutAdvancedSettings);
        this.toggleAdvancedSettings.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.aSPICE.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    aSPICE.this.layoutAdvancedSettings.setVisibility(0);
                } else {
                    aSPICE.this.layoutAdvancedSettings.setVisibility(8);
                }
            }
        });
        this.spinnerGeometry = (Spinner) findViewById(R.id.spinnerRdpGeometry);
        this.resWidth = (EditText) findViewById(R.id.rdpWidth);
        this.resHeight = (EditText) findViewById(R.id.rdpHeight);
        this.spinnerGeometry.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.aSPICE.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                aSPICE.this.selected.setRdpResType(i);
                aSPICE.this.setRemoteWidthAndHeight();
            }
        });
        try {
            this.spinnerArray = FileUtils.listFiles(this, "layouts");
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.layoutMapSpinner = (Spinner) findViewById(R.id.layoutMaps);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_spinner_item, this.spinnerArray);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.layoutMapSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        setConnectionTypeSpinnerAdapter(R.array.spice_connection_type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteWidthAndHeight() {
        if (this.selected.getRdpResType() != 2) {
            this.resWidth.setEnabled(false);
            this.resHeight.setEnabled(false);
        } else {
            this.resWidth.setEnabled(true);
            this.resHeight.setEnabled(true);
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i == R.layout.import_tls_ca_dialog) {
            return new ImportTlsCaDialog(this, this.database);
        }
        return null;
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    public void updateViewFromSelected() {
        super.commonUpdateViewFromSelected();
        if (this.selected == null) {
            return;
        }
        this.sshServer.setText(this.selected.getSshServer());
        this.sshPort.setText(Integer.toString(this.selected.getSshPort()));
        this.sshUser.setText(this.selected.getSshUser());
        this.checkboxUseSshPubkey.setChecked(this.selected.getUseSshPubKey());
        if (this.selected.getPort() < 0) {
            this.portText.setText("");
        } else {
            this.portText.setText(Integer.toString(this.selected.getPort()));
        }
        if (this.selected.getTlsPort() < 0) {
            this.tlsPort.setText("");
        } else {
            this.tlsPort.setText(Integer.toString(this.selected.getTlsPort()));
        }
        if (this.selected.getKeepPassword() || this.selected.getPassword().length() > 0) {
            this.passwordText.setText(this.selected.getPassword());
        }
        this.checkboxKeepPassword.setChecked(this.selected.getKeepPassword());
        this.checkboxUseDpadAsArrows.setChecked(this.selected.getUseDpadAsArrows());
        this.checkboxRotateDpad.setChecked(this.selected.getRotateDpad());
        this.checkboxUseLastPositionToolbar.setChecked(!this.isNewConnection ? this.selected.getUseLastPositionToolbar() : useLastPositionToolbarDefault());
        if (this.selected.getEnableSound()) {
            this.permissionsManager.requestPermissions(this, true);
        }
        this.checkboxEnableSound.setChecked(this.selected.getEnableSound());
        this.textNickname.setText(this.selected.getNickname());
        this.spinnerGeometry.setSelection(this.selected.getRdpResType());
        this.resWidth.setText(Integer.toString(this.selected.getRdpWidth()));
        this.resHeight.setText(Integer.toString(this.selected.getRdpHeight()));
        setRemoteWidthAndHeight();
        String caCert = this.selected.getCaCert();
        try {
            String str = getFilesDir() + "/ca" + Integer.toString(this.selected.getCaCert().hashCode()) + ".pem";
            this.selected.setCaCertPath(str);
            if (!new File(str).exists() && !caCert.equals("")) {
                Log.e(TAG, str);
                PrintWriter printWriter = new PrintWriter(str);
                printWriter.println(this.selected.getCaCert().toString());
                printWriter.close();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        int iIndexOf = this.spinnerArray.indexOf(this.selected.getLayoutMap());
        if (iIndexOf < 0) {
            iIndexOf = this.spinnerArray.indexOf("English (US)");
        }
        this.layoutMapSpinner.setSelection(iIndexOf);
    }

    @Override // com.iiordanov.bVNC.MainConfiguration
    protected void updateSelectedFromView() {
        if (this.selected == null) {
            return;
        }
        super.commonUpdateSelectedFromView();
        if (!this.portText.getText().toString().equals("")) {
            try {
                this.selected.setPort(Integer.parseInt(this.portText.getText().toString()));
            } catch (NumberFormatException unused) {
            }
        } else {
            this.selected.setPort(-1);
        }
        if (!this.tlsPort.getText().toString().equals("")) {
            try {
                this.selected.setTlsPort(Integer.parseInt(this.tlsPort.getText().toString()));
            } catch (NumberFormatException unused2) {
            }
        } else {
            this.selected.setTlsPort(-1);
        }
        try {
            this.selected.setSshPort(Integer.parseInt(this.sshPort.getText().toString()));
        } catch (NumberFormatException unused3) {
        }
        this.selected.setNickname(this.textNickname.getText().toString());
        this.selected.setSshServer(this.sshServer.getText().toString());
        this.selected.setSshUser(this.sshUser.getText().toString());
        this.selected.setUseSshPubKey(this.checkboxUseSshPubkey.isChecked());
        this.selected.setRdpResType(this.spinnerGeometry.getSelectedItemPosition());
        try {
            this.selected.setRdpWidth(Integer.parseInt(this.resWidth.getText().toString()));
            this.selected.setRdpHeight(Integer.parseInt(this.resHeight.getText().toString()));
        } catch (NumberFormatException unused4) {
        }
        this.selected.setPassword(this.passwordText.getText().toString());
        this.selected.setKeepPassword(this.checkboxKeepPassword.isChecked());
        this.selected.setUseDpadAsArrows(this.checkboxUseDpadAsArrows.isChecked());
        this.selected.setRotateDpad(this.checkboxRotateDpad.isChecked());
        this.selected.setUseLastPositionToolbar(this.checkboxUseLastPositionToolbar.isChecked());
        if (!this.checkboxUseLastPositionToolbar.isChecked()) {
            this.selected.setUseLastPositionToolbarMoved(false);
        }
        this.selected.setEnableSound(this.checkboxEnableSound.isChecked());
        Spinner spinner = this.layoutMapSpinner;
        TextView textView = spinner != null ? (TextView) spinner.getSelectedView() : null;
        if (textView != null) {
            this.selected.setLayoutMap(textView.getText().toString());
        }
    }

    public void save(MenuItem menuItem) {
        if (this.ipText.getText().length() != 0 && (this.portText.getText().length() != 0 || this.tlsPort.getText().length() != 0)) {
            saveConnectionAndCloseLayout();
        } else {
            Toast.makeText(this, R.string.spice_server_empty, 1).show();
        }
    }
}
