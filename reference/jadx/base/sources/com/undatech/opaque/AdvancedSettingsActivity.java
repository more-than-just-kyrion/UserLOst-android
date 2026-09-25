package com.undatech.opaque;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.fragment.app.FragmentActivity;
import com.iiordanov.util.PermissionsManager;
import com.undatech.opaque.dialogs.ManageCustomCaFragment;
import com.undatech.opaque.util.FileUtils;
import com.undatech.remoteClientUi.R;
import java.io.IOException;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AdvancedSettingsActivity extends FragmentActivity implements ManageCustomCaFragment.OnFragmentDismissedListener {
    private static String TAG = "AdvancedSettingsActivity";
    private Button buttonManageOvirtCa;
    private ConnectionSettings currentConnection;
    private LinearLayout layoutCustomRemoteResolution;
    private LinearLayout layoutManageOvirtCa;
    private Spinner layoutMapSpinner;
    private LinearLayout layoutToggleCustomRemoteResolution;
    private LinearLayout layoutToggleUsingCustomOvirtCa;
    private LinearLayout layoutUseLastPositionToolbar;
    private EditText rdpHeight;
    private EditText rdpWidth;
    private TextView textUseLastPositionToolbar;
    private ToggleButton toggleAudioPlayback;
    private ToggleButton toggleAutoRequestDisplayResolution;
    private ToggleButton toggleAutoRotation;
    private ToggleButton toggleCustomDisplayResolution;
    private ToggleButton toggleSslStrict;
    private ToggleButton toggleUsbEnabled;
    private ToggleButton toggleUseLastPositionToolbar;
    private ToggleButton toggleUsingCustomOvirtCa;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.advanced_settings_activity);
        this.currentConnection = (ConnectionSettings) getIntent().getSerializableExtra("com.undatech.opaque.ConnectionSettings");
        ToggleButton toggleButton = (ToggleButton) findViewById(R.id.toggleAudioPlayback);
        this.toggleAudioPlayback = toggleButton;
        toggleButton.setChecked(this.currentConnection.isAudioPlaybackEnabled());
        ToggleButton toggleButton2 = (ToggleButton) findViewById(R.id.toggleUsbEnabled);
        this.toggleUsbEnabled = toggleButton2;
        toggleButton2.setChecked(this.currentConnection.isUsbEnabled());
        ToggleButton toggleButton3 = (ToggleButton) findViewById(R.id.toggleAutoRotation);
        this.toggleAutoRotation = toggleButton3;
        toggleButton3.setChecked(this.currentConnection.isRotationEnabled());
        ToggleButton toggleButton4 = (ToggleButton) findViewById(R.id.toggleAutoRequestDisplayResolution);
        this.toggleAutoRequestDisplayResolution = toggleButton4;
        toggleButton4.setChecked(this.currentConnection.isRequestingNewDisplayResolution());
        ToggleButton toggleButton5 = (ToggleButton) findViewById(R.id.toggleCustomDisplayResolution);
        this.toggleCustomDisplayResolution = toggleButton5;
        toggleButton5.setChecked(this.currentConnection.getRdpResType() == 2);
        ToggleButton toggleButton6 = (ToggleButton) findViewById(R.id.toggleSslStrict);
        this.toggleSslStrict = toggleButton6;
        toggleButton6.setChecked(this.currentConnection.isSslStrict());
        this.layoutManageOvirtCa = (LinearLayout) findViewById(R.id.layoutManageOvirtCa);
        this.layoutToggleUsingCustomOvirtCa = (LinearLayout) findViewById(R.id.layoutToggleUsingCustomOvirtCa);
        ToggleButton toggleButton7 = (ToggleButton) findViewById(R.id.toggleUsingCustomOvirtCa);
        this.toggleUsingCustomOvirtCa = toggleButton7;
        toggleButton7.setChecked(this.currentConnection.isUsingCustomOvirtCa());
        this.layoutUseLastPositionToolbar = (LinearLayout) findViewById(R.id.layoutUseLastPositionToolbar);
        this.textUseLastPositionToolbar = (TextView) findViewById(R.id.textUseLastPositionToolbar);
        this.textUseLastPositionToolbar.setText(getString(R.string.position_toolbar_last_used) + StringUtils.LF + getString(R.string.position_toolbar_last_used_summary));
        ToggleButton toggleButton8 = (ToggleButton) findViewById(R.id.toggleUseLastPositionToolbar);
        this.toggleUseLastPositionToolbar = toggleButton8;
        toggleButton8.setChecked(this.currentConnection.getUseLastPositionToolbar());
        Button button = (Button) findViewById(R.id.buttonManageOvirtCa);
        this.buttonManageOvirtCa = button;
        button.setEnabled(this.currentConnection.isUsingCustomOvirtCa());
        if (this.currentConnection.getConnectionTypeString().equals(getResources().getString(R.string.connection_type_pve))) {
            this.layoutToggleUsingCustomOvirtCa.setVisibility(8);
            this.layoutManageOvirtCa.setVisibility(8);
        }
        Spinner spinner = (Spinner) findViewById(R.id.layoutMaps);
        this.layoutMapSpinner = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.undatech.opaque.AdvancedSettingsActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                AdvancedSettingsActivity.this.layoutMapSpinner.setSelection(i);
                TextView textView = AdvancedSettingsActivity.this.layoutMapSpinner != null ? (TextView) AdvancedSettingsActivity.this.layoutMapSpinner.getSelectedView() : null;
                if (textView != null) {
                    AdvancedSettingsActivity.this.currentConnection.setLayoutMap(textView.getText().toString());
                }
            }
        });
        this.layoutToggleCustomRemoteResolution = (LinearLayout) findViewById(R.id.layoutToggleCustomRemoteResolution);
        this.layoutCustomRemoteResolution = (LinearLayout) findViewById(R.id.layoutCustomRemoteResolution);
        if (this.toggleCustomDisplayResolution.isChecked()) {
            this.layoutCustomRemoteResolution.setVisibility(0);
        } else {
            this.layoutCustomRemoteResolution.setVisibility(8);
        }
        if (!this.toggleAutoRequestDisplayResolution.isChecked()) {
            this.layoutToggleCustomRemoteResolution.setVisibility(0);
        } else {
            this.layoutToggleCustomRemoteResolution.setVisibility(8);
            this.layoutCustomRemoteResolution.setVisibility(8);
        }
        EditText editText = (EditText) findViewById(R.id.rdpWidth);
        this.rdpWidth = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.undatech.opaque.AdvancedSettingsActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int rdpWidth;
                if (editable.toString().isEmpty()) {
                    rdpWidth = 0;
                } else {
                    try {
                        rdpWidth = Integer.parseInt(editable.toString());
                    } catch (NumberFormatException unused) {
                        rdpWidth = AdvancedSettingsActivity.this.currentConnection.getRdpWidth();
                    }
                }
                AdvancedSettingsActivity.this.currentConnection.setRdpWidth(rdpWidth);
            }
        });
        this.rdpWidth.setText(Integer.toString(this.currentConnection.getRdpWidth()));
        EditText editText2 = (EditText) findViewById(R.id.rdpHeight);
        this.rdpHeight = editText2;
        editText2.addTextChangedListener(new TextWatcher() { // from class: com.undatech.opaque.AdvancedSettingsActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int rdpHeight;
                if (editable.toString().isEmpty()) {
                    rdpHeight = 0;
                } else {
                    try {
                        rdpHeight = Integer.parseInt(editable.toString());
                    } catch (NumberFormatException unused) {
                        rdpHeight = AdvancedSettingsActivity.this.currentConnection.getRdpHeight();
                    }
                }
                AdvancedSettingsActivity.this.currentConnection.setRdpHeight(rdpHeight);
            }
        });
        this.rdpHeight.setText(Integer.toString(this.currentConnection.getRdpHeight()));
        Intent intent = new Intent();
        intent.putExtra("com.undatech.opaque.ConnectionSettings", this.currentConnection);
        setResult(-1, intent);
    }

    public void toggleAudioPlaybackSetting(View view) {
        ToggleButton toggleButton = (ToggleButton) view;
        if (toggleButton.isChecked()) {
            new PermissionsManager().requestPermissions(this, true);
        }
        this.currentConnection.setAudioPlaybackEnabled(toggleButton.isChecked());
    }

    public void toggleUsbEnabledSetting(View view) {
        this.currentConnection.setUsbEnabled(((ToggleButton) view).isChecked());
    }

    public void toggleAutoRotation(View view) {
        this.currentConnection.setRotationEnabled(((ToggleButton) view).isChecked());
    }

    public void toggleAutoRequestDisplayResolution(View view) {
        boolean zIsChecked = ((ToggleButton) view).isChecked();
        this.currentConnection.setRequestingNewDisplayResolution(zIsChecked);
        if (zIsChecked) {
            this.layoutToggleCustomRemoteResolution.setVisibility(8);
            this.layoutCustomRemoteResolution.setVisibility(8);
        } else {
            this.layoutToggleCustomRemoteResolution.setVisibility(0);
            this.layoutCustomRemoteResolution.setVisibility(0);
        }
    }

    public void toggleCustomDisplayResolution(View view) {
        boolean zIsChecked = ((ToggleButton) view).isChecked();
        this.currentConnection.setRdpResType(zIsChecked ? 2 : 0);
        if (zIsChecked) {
            this.layoutCustomRemoteResolution.setVisibility(0);
        } else {
            this.layoutCustomRemoteResolution.setVisibility(8);
        }
    }

    public void toggleSslStrict(View view) {
        this.currentConnection.setSslStrict(((ToggleButton) view).isChecked());
    }

    public void toggleUsingCustomOvirtCa(View view) {
        boolean zIsChecked = ((ToggleButton) view).isChecked();
        this.currentConnection.setUsingCustomOvirtCa(zIsChecked);
        this.buttonManageOvirtCa.setEnabled(zIsChecked);
    }

    public void toggleUseLastPositionToolbar(View view) {
        this.currentConnection.setUseLastPositionToolbar(((ToggleButton) view).isChecked());
    }

    public void showManageOvirtCaDialog(View view) {
        showCaDialog(ManageCustomCaFragment.TYPE_OVIRT);
    }

    private void showCaDialog(int i) {
        ManageCustomCaFragment.newInstance(i, this.currentConnection).show(getSupportFragmentManager(), "customCa");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        List<String> listListFiles;
        super.onResume();
        try {
            listListFiles = FileUtils.listFiles(this, "layouts");
        } catch (IOException e) {
            e.printStackTrace();
            listListFiles = null;
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_spinner_item, listListFiles);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.layoutMapSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        int iIndexOf = listListFiles.indexOf(this.currentConnection.getLayoutMap());
        if (iIndexOf < 0) {
            iIndexOf = listListFiles.indexOf("English (US)");
        }
        this.layoutMapSpinner.setSelection(iIndexOf);
    }

    @Override // com.undatech.opaque.dialogs.ManageCustomCaFragment.OnFragmentDismissedListener
    public void onFragmentDismissed(ConnectionSettings connectionSettings) {
        this.currentConnection = connectionSettings;
    }
}
