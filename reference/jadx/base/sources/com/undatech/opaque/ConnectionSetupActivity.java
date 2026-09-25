package com.undatech.opaque;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.Utils;
import com.undatech.remoteClientUi.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionSetupActivity extends Activity {
    private static String TAG = "ConnectionSetupActivity";
    private Spinner spinnerConnectionType;
    private EditText hostname = null;
    private EditText vmname = null;
    private EditText user = null;
    private EditText password = null;
    private CheckBox keepPass = null;
    private Button advancedSettingsButton = null;
    private Context appContext = null;
    private ConnectionSettings currentConnection = null;
    private String currentSelectedConnection = null;
    private String connectionsList = null;
    private String[] connectionsArray = null;
    private boolean newConnection = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.appContext = getApplicationContext();
        setContentView(R.layout.connection_setup_activity);
        this.hostname = (EditText) findViewById(R.id.hostname);
        this.vmname = (EditText) findViewById(R.id.vmname);
        this.user = (EditText) findViewById(R.id.user);
        this.password = (EditText) findViewById(R.id.password);
        this.keepPass = (CheckBox) findViewById(R.id.checkboxKeepPassword);
        Button button = (Button) findViewById(R.id.advancedSettingsButton);
        this.advancedSettingsButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.ConnectionSetupActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConnectionSetupActivity.this.saveSelectedPreferences(false);
                Intent intent = new Intent(ConnectionSetupActivity.this, (Class<?>) AdvancedSettingsActivity.class);
                intent.putExtra("com.undatech.opaque.ConnectionSettings", ConnectionSetupActivity.this.currentConnection);
                ConnectionSetupActivity.this.startActivityForResult(intent, 1);
            }
        });
        loadConnections();
        this.currentSelectedConnection = getIntent().getStringExtra("com.undatech.opaque.connectionToEdit");
        Log.e(TAG, "currentSelectedConnection SET TO: " + this.currentSelectedConnection);
        if (this.currentSelectedConnection == null) {
            this.currentSelectedConnection = nextLargestNumber(this.connectionsArray);
            this.newConnection = true;
        }
        Spinner spinner = (Spinner) findViewById(R.id.spinnerConnectionType);
        this.spinnerConnectionType = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.undatech.opaque.ConnectionSetupActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (view != null) {
                    Log.e(ConnectionSetupActivity.TAG, "Selected connection type: " + Integer.toString(i) + " " + ((Object) ((TextView) view).getText()));
                }
            }
        });
        ConnectionSettings connectionSettings = new ConnectionSettings(this.currentSelectedConnection);
        this.currentConnection = connectionSettings;
        if (this.newConnection) {
            connectionSettings.loadAdvancedSettings(this, RemoteClientLibConstants.DEFAULT_SETTINGS_FILE);
            saveSelectedPreferences(false);
        }
        loadSelectedPreferences();
    }

    private String nextLargestNumber(String[] strArr) {
        int i = 0;
        if (strArr != null) {
            int length = strArr.length;
            int i2 = 0;
            while (i < length) {
                try {
                    int i3 = Integer.parseInt(strArr[i]);
                    if (i3 >= i2) {
                        i2 = i3 + 1;
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
                i++;
            }
            i = i2;
        }
        Log.e(TAG, "nextLargestNumber determined: " + i);
        return Integer.toString(i);
    }

    private void loadConnections() {
        String string = this.appContext.getSharedPreferences(Constants.generalSettingsTag, 0).getString("connections", null);
        this.connectionsList = string;
        if (string == null || string.trim().equals("")) {
            return;
        }
        this.connectionsArray = this.connectionsList.split(" ");
    }

    private void saveConnections() {
        if (this.newConnection) {
            this.newConnection = false;
            String str = new String(this.currentSelectedConnection);
            if (this.connectionsArray != null) {
                for (int i = 0; i < this.connectionsArray.length; i++) {
                    str = str + " " + this.connectionsArray[i];
                }
            }
            Log.d(TAG, "Saving list of connections: " + str);
            SharedPreferences.Editor editorEdit = this.appContext.getSharedPreferences(Constants.generalSettingsTag, 0).edit();
            editorEdit.putString("connections", str.trim());
            editorEdit.apply();
            loadConnections();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.i(TAG, "onActivityResult");
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            this.currentConnection = (ConnectionSettings) intent.getExtras().get("com.undatech.opaque.ConnectionSettings");
            saveSelectedPreferences(false);
        } else {
            Log.i(TAG, "Error during AdvancedSettingsActivity.");
        }
    }

    private void loadSelectedPreferences() {
        Log.i(TAG, "Loading current settings from file: " + this.currentSelectedConnection);
        this.currentConnection.loadFromSharedPreferences(this.appContext);
    }

    private void updateViewsFromPreferences() {
        this.spinnerConnectionType.setSelection(Arrays.asList(getResources().getStringArray(R.array.connection_types)).indexOf(this.currentConnection.getConnectionTypeString()));
        this.hostname.setText(this.currentConnection.getHostname());
        this.vmname.setText(this.currentConnection.getVmname());
        this.user.setText(this.currentConnection.getUser());
        this.password.setText(this.currentConnection.getPassword());
        this.keepPass.setChecked(this.currentConnection.getKeepPassword());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSelectedPreferences(boolean z) {
        Log.i(TAG, "Saving current settings to file: " + this.currentSelectedConnection);
        String string = this.user.getText().toString();
        String string2 = this.hostname.getText().toString();
        if (z && !string.equals("") && !string2.equals("")) {
            saveConnections();
        }
        this.currentConnection.setConnectionTypeString(this.spinnerConnectionType.getSelectedItem().toString());
        this.currentConnection.setUser(string);
        this.currentConnection.setHostname(string2);
        this.currentConnection.setVmname(this.vmname.getText().toString());
        this.currentConnection.setPassword(this.password.getText().toString());
        this.currentConnection.setKeepPassword(this.keepPass.isChecked());
        this.currentConnection.saveToSharedPreferences(this.appContext);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        Log.e(TAG, "onStop");
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Log.e(TAG, "onResume");
        loadSelectedPreferences();
        updateViewsFromPreferences();
    }

    public void toggleConnectionType(View view) {
        view.cancelLongPress();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.connection_setup_activity_actions, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getItemId();
        return true;
    }

    public void showConnectionScreenHelp(MenuItem menuItem) {
        Log.d(TAG, "Showing connection screen help.");
        Utils.createConnectionScreenDialog(this);
    }

    public void save(MenuItem menuItem) {
        String string = this.user.getText().toString();
        String string2 = this.hostname.getText().toString();
        if (!string.equals("") && !string2.equals("")) {
            saveSelectedPreferences(true);
            finish();
        } else {
            Toast.makeText(this.appContext, R.string.error_no_user_hostname, 1).show();
        }
    }
}
