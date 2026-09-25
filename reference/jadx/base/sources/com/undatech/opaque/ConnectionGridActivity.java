package com.undatech.opaque;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.ClipboardManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.iiordanov.bVNC.App;
import com.iiordanov.bVNC.ConnectionBean;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.iiordanov.bVNC.Utils;
import com.iiordanov.bVNC.dialogs.GetTextFragment;
import com.iiordanov.bVNC.dialogs.ImportExportDialog;
import com.iiordanov.bVNC.dialogs.IntroTextDialog;
import com.iiordanov.bVNC.input.InputHandlerDirectSwipePan;
import com.iiordanov.util.PermissionsManager;
import com.undatech.opaque.util.ConnectionLoader;
import com.undatech.opaque.util.FileUtils;
import com.undatech.opaque.util.GeneralUtils;
import com.undatech.opaque.util.LogcatReader;
import com.undatech.remoteClientUi.R;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionGridActivity extends FragmentActivity implements GetTextFragment.OnFragmentDismissedListener {
    private static String TAG = "ConnectionGridActivity";
    private Context appContext;
    private ConnectionLoader connectionLoader;
    protected Database database;
    private GridView gridView;
    protected PermissionsManager permissionsManager;
    private EditText search;
    FragmentManager fragmentManager = getSupportFragmentManager();
    private boolean isConnecting = false;
    private boolean togglingMasterPassword = false;
    GetTextFragment getPassword = null;
    GetTextFragment getNewPassword = null;
    protected boolean isStarting = true;
    private AppCompatImageButton addNewConnection = null;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.appContext = getApplicationContext();
        setContentView(R.layout.grid_view_activity);
        GridView gridView = (GridView) findViewById(R.id.gridView);
        this.gridView = gridView;
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.undatech.opaque.ConnectionGridActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ConnectionGridActivity.this.launchConnection(view);
            }
        });
        this.gridView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.undatech.opaque.ConnectionGridActivity.2
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, final View view, int i, long j) {
                AlertDialog.Builder builder = new AlertDialog.Builder(ConnectionGridActivity.this);
                builder.setTitle(ConnectionGridActivity.this.getString(R.string.connection_edit_delete_prompt) + " " + ((String) ((TextView) view.findViewById(R.id.grid_item_text)).getText()) + " ?");
                final CharSequence[] charSequenceArr = {ConnectionGridActivity.this.getString(R.string.connection_edit), ConnectionGridActivity.this.getString(R.string.connection_delete)};
                builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.undatech.opaque.ConnectionGridActivity.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (charSequenceArr[i2].toString() == ConnectionGridActivity.this.getString(R.string.connection_edit)) {
                            ConnectionGridActivity.this.editConnection(view);
                        } else if (charSequenceArr[i2].toString() == ConnectionGridActivity.this.getString(R.string.connection_delete)) {
                            ConnectionGridActivity.this.deleteConnection(view);
                        }
                    }
                });
                builder.create().show();
                return true;
            }
        });
        PermissionsManager permissionsManager = new PermissionsManager();
        this.permissionsManager = permissionsManager;
        permissionsManager.requestPermissions(this, false);
        EditText editText = (EditText) findViewById(R.id.search);
        this.search = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.undatech.opaque.ConnectionGridActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ConnectionGridActivity.this.connectionLoader == null) {
                    return;
                }
                ConnectionGridActivity.this.gridView.setNumColumns(2);
                GridView gridView2 = ConnectionGridActivity.this.gridView;
                ConnectionGridActivity connectionGridActivity = ConnectionGridActivity.this;
                gridView2.setAdapter((ListAdapter) new LabeledImageApapter(connectionGridActivity, connectionGridActivity.connectionLoader.getConnectionsById(), ConnectionGridActivity.this.search.getText().toString().toLowerCase().split(" "), 2));
            }
        });
        this.database = ((App) getApplication()).getDatabase();
        if (this.getPassword == null) {
            this.getPassword = GetTextFragment.newInstance(GetTextFragment.DIALOG_ID_GET_MASTER_PASSWORD, getString(R.string.master_password_verify), this, 2, R.string.master_password_verify_message, R.string.master_password_set_error, null, null, null, false);
        }
        if (this.getNewPassword == null) {
            this.getNewPassword = GetTextFragment.newInstance(GetTextFragment.DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS, getString(R.string.master_password_set), this, 3, R.string.master_password_set_message, R.string.master_password_set_error, null, null, null, false);
        }
        FileUtils.logFilesInPrivateStorage(this);
        FileUtils.deletePrivateFileIfExisting(this, ".config/freerdp/licenses");
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) findViewById(R.id.addNewConnection);
        this.addNewConnection = appCompatImageButton;
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.ConnectionGridActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConnectionGridActivity.this.addNewConnection();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchConnection(View view) {
        Log.i(TAG, "Launch Connection");
        if (Utils.getMemoryInfo(this).lowMemory) {
            System.gc();
        }
        this.isConnecting = true;
        String str = (String) ((TextView) view.findViewById(R.id.grid_item_id)).getText();
        Intent intent = new Intent(this, GeneralUtils.getClassByName("com.iiordanov.bVNC.RemoteCanvasActivity"));
        if (Utils.isOpaque(getPackageName())) {
            ConnectionSettings connectionSettings = (ConnectionSettings) this.connectionLoader.getConnectionsById().get(str);
            connectionSettings.loadFromSharedPreferences(this.appContext);
            intent.putExtra("com.undatech.opaque.ConnectionSettings", connectionSettings);
        } else {
            intent.putExtra(Utils.getConnectionString(this.appContext), ((ConnectionBean) this.connectionLoader.getConnectionsById().get(str)).Gen_getValues());
        }
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editConnection(View view) {
        Log.d(TAG, "Modify Connection");
        String str = (String) ((TextView) view.findViewById(R.id.grid_item_id)).getText();
        Connection connection = this.connectionLoader.getConnectionsById().get(str);
        Intent intent = new Intent(this, (Class<?>) Utils.getConnectionSetupClass(getPackageName()));
        if (Utils.isOpaque(getPackageName())) {
            intent.putExtra("com.undatech.opaque.connectionToEdit", ((ConnectionSettings) this.connectionLoader.getConnectionsById().get(str)).getFilename());
        } else {
            intent.putExtra("isNewConnection", false);
            intent.putExtra("connID", connection.getId());
        }
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteConnection(View view) {
        Log.d(TAG, "Delete Connection");
        final String str = (String) ((TextView) view.findViewById(R.id.grid_item_id)).getText();
        Utils.showYesNoPrompt(this, getString(R.string.delete_connection) + "?", getString(R.string.delete_connection) + " " + ((String) ((TextView) view.findViewById(R.id.grid_item_text)).getText()) + " ?", new DialogInterface.OnClickListener() { // from class: com.undatech.opaque.ConnectionGridActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (Utils.isOpaque(ConnectionGridActivity.this.getPackageName())) {
                    String str2 = new String();
                    SharedPreferences sharedPreferences = ConnectionGridActivity.this.appContext.getSharedPreferences(Constants.generalSettingsTag, 0);
                    String string = sharedPreferences.getString("connections", null);
                    ConnectionSettings connectionSettings = (ConnectionSettings) ConnectionGridActivity.this.connectionLoader.getConnectionsById().get(str);
                    if (sharedPreferences != null) {
                        for (String str3 : string.split(" ")) {
                            if (!str3.equals(connectionSettings.getFilename())) {
                                str2 = str2 + " " + str3;
                            }
                        }
                        Log.d(ConnectionGridActivity.TAG, "Deleted connection, current list: " + str2);
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString("connections", str2.trim());
                        editorEdit.apply();
                        new File(ConnectionGridActivity.this.getFilesDir() + "/" + connectionSettings.getFilename() + ".png").delete();
                    }
                } else {
                    ((ConnectionBean) ConnectionGridActivity.this.connectionLoader.getConnectionsById().get(str)).Gen_delete(ConnectionGridActivity.this.database.getWritableDatabase());
                    ConnectionGridActivity.this.database.close();
                }
                ConnectionGridActivity.this.onResume();
            }
        }, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Log.i(TAG, "onResume of version " + Utils.getVersionAndCode(this));
        if (Utils.querySharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag)) {
            showGetTextFragment(this.getPassword);
        } else {
            loadSavedConnections();
            IntroTextDialog.showIntroTextIfNecessary(this, this.database, Utils.isFree(this) && this.isStarting);
        }
        this.isStarting = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Log.i(TAG, "onPause");
        Database database = this.database;
        if (database != null) {
            database.close();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity
    protected void onResumeFragments() {
        Log.i(TAG, "onResumeFragments called");
        super.onResumeFragments();
        System.gc();
        if (Utils.querySharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag)) {
            showGetTextFragment(this.getPassword);
        } else {
            loadSavedConnections();
        }
    }

    private void loadSavedConnections() {
        ConnectionLoader connectionLoader = new ConnectionLoader(this.appContext, this, Utils.isOpaque(getPackageName()));
        this.connectionLoader = connectionLoader;
        if (connectionLoader.getNumConnections() > 0) {
            this.gridView.setNumColumns(2);
            this.gridView.setAdapter((ListAdapter) new LabeledImageApapter(this, this.connectionLoader.getConnectionsById(), this.search.getText().toString().toLowerCase().split(" "), 2));
        } else {
            this.gridView.setAdapter((ListAdapter) new LabeledImageApapter(this, null, this.search.getText().toString().toLowerCase().split(" "), 2));
        }
    }

    public void addNewConnection() {
        Intent intent = new Intent(this, (Class<?>) Utils.getConnectionSetupClass(getPackageName()));
        intent.putExtra("isNewConnection", true);
        startActivity(intent);
    }

    public void addNewConnection(MenuItem menuItem) {
        addNewConnection();
    }

    public void addNewConnection(View view) {
        addNewConnection();
    }

    public void copyLogcat(MenuItem menuItem) {
        ((ClipboardManager) getSystemService("clipboard")).setText(new LogcatReader().getMyLogcat(500));
        Toast.makeText(getBaseContext(), getResources().getString(R.string.log_copied), 1).show();
    }

    public void editDefaultSettings(MenuItem menuItem) {
        Log.d(TAG, "editDefaultSettings selected.");
        if (Utils.isOpaque(getPackageName())) {
            Intent intent = new Intent(this, GeneralUtils.getClassByName("com.undatech.opaque.AdvancedSettingsActivity"));
            ConnectionSettings connectionSettings = new ConnectionSettings(RemoteClientLibConstants.DEFAULT_SETTINGS_FILE);
            connectionSettings.loadFromSharedPreferences(getApplicationContext());
            intent.putExtra("com.undatech.opaque.ConnectionSettings", connectionSettings);
            startActivityForResult(intent, 2);
            return;
        }
        Intent intent2 = new Intent();
        intent2.setClassName(this, "com.iiordanov.bVNC.GlobalPreferencesActivity");
        startActivity(intent2);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        menuInflater.inflate(R.menu.grid_view_activity_actions, menu);
        menuInflater.inflate(R.menu.input_mode_menu_item, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.i(TAG, "onActivityResult");
        super.onActivityResult(i, i2, intent);
        if (i != 2) {
            return;
        }
        if (i2 == -1) {
            ((ConnectionSettings) intent.getExtras().get("com.undatech.opaque.ConnectionSettings")).saveToSharedPreferences(this);
        } else {
            Log.i(TAG, "Error during AdvancedSettingsActivity.");
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        Log.d(TAG, "onMenuOpened");
        try {
            updateInputMenu(menu.findItem(R.id.itemInputMode).getSubMenu());
            menu.findItem(R.id.itemMasterPassword).setChecked(Utils.querySharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag));
            return true;
        } catch (NullPointerException unused) {
            return true;
        }
    }

    void updateInputMenu(Menu menu) {
        int length = RemoteCanvasActivity.inputModeIds.length;
        MenuItem[] menuItemArr = new MenuItem[length];
        for (int i = 0; i < RemoteCanvasActivity.inputModeIds.length; i++) {
            menuItemArr[i] = menu.findItem(RemoteCanvasActivity.inputModeIds[i]);
        }
        String strQuerySharedPreferenceString = Utils.querySharedPreferenceString(this, Constants.defaultInputMethodTag, InputHandlerDirectSwipePan.ID);
        Log.d(TAG, "Default Input Mode Item: " + strQuerySharedPreferenceString);
        for (int i2 = 0; i2 < length; i2++) {
            try {
                MenuItem menuItem = menuItemArr[i2];
                Log.d(TAG, "Input Mode Item: " + RemoteCanvasActivity.inputModeMap.get(Integer.valueOf(menuItem.getItemId())));
                if (strQuerySharedPreferenceString.equals(RemoteCanvasActivity.inputModeMap.get(Integer.valueOf(menuItem.getItemId())))) {
                    menuItem.setChecked(true);
                }
            } catch (NullPointerException unused) {
                return;
            }
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i != R.layout.importexport) {
            return null;
        }
        return new ImportExportDialog(this, this.database, Utils.isOpaque(getPackageName()));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.itemExportImport) {
            this.permissionsManager.requestPermissions(this, true);
            showDialog(R.layout.importexport);
        } else if (itemId == R.id.itemMasterPassword) {
            if (Utils.isFree(this)) {
                IntroTextDialog.showIntroTextIfNecessary(this, this.database, true);
            } else {
                this.togglingMasterPassword = true;
                if (Utils.querySharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag)) {
                    showGetTextFragment(this.getPassword);
                } else {
                    showGetTextFragment(this.getNewPassword);
                }
            }
        } else if (menuItem.getGroupId() == R.id.itemInputModeGroup) {
            Log.d(TAG, RemoteCanvasActivity.inputModeMap.get(Integer.valueOf(menuItem.getItemId())));
            Utils.setSharedPreferenceString(this, Constants.defaultInputMethodTag, RemoteCanvasActivity.inputModeMap.get(Integer.valueOf(menuItem.getItemId())));
        }
        return true;
    }

    private boolean checkMasterPassword(String str) {
        boolean z;
        Log.i(TAG, "Checking master password.");
        Database database = new Database(this);
        database.close();
        try {
            database.getReadableDatabase(str);
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        database.close();
        return z;
    }

    @Override // com.iiordanov.bVNC.dialogs.GetTextFragment.OnFragmentDismissedListener
    public void onTextObtained(String str, String[] strArr, boolean z, boolean z2) {
        handlePassword(strArr[0], z);
    }

    public void handlePassword(String str, boolean z) {
        if (this.togglingMasterPassword) {
            Log.i(TAG, "Asked to toggle master pasword.");
            this.togglingMasterPassword = false;
            if (Utils.querySharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag)) {
                Log.i(TAG, "Master password is enabled.");
                if (z) {
                    Log.i(TAG, "Dialog cancelled, so quitting.");
                    Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_password_necessary));
                    return;
                }
                if (checkMasterPassword(str)) {
                    Log.i(TAG, "Entered password correct, disabling password.");
                    Database.setPassword(str);
                    if (this.database.changeDatabasePassword("")) {
                        Utils.toggleSharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag);
                    } else {
                        Utils.showErrorMessage(this, getResources().getString(R.string.master_password_error_failed_to_disable));
                    }
                    removeGetPasswordFragments();
                    loadSavedConnections();
                    return;
                }
                Log.i(TAG, "Entered password is wrong or dialog cancelled, so quitting.");
                Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_wrong_password));
                return;
            }
            Log.i(TAG, "Master password is disabled.");
            if (!z) {
                Log.i(TAG, "Setting master password.");
                Database.setPassword("");
                if (this.database.changeDatabasePassword(str)) {
                    Utils.toggleSharedPreferenceBoolean(this, Constants.masterPasswordEnabledTag);
                } else {
                    Utils.showErrorMessage(this, getResources().getString(R.string.master_password_error_failed_to_enable));
                }
            } else {
                Log.i(TAG, "Dialog cancelled, not setting master password.");
                Utils.showErrorMessage(this, getResources().getString(R.string.master_password_error_password_not_set));
            }
            removeGetPasswordFragments();
            loadSavedConnections();
            return;
        }
        Log.i(TAG, "Just checking the password.");
        if (z) {
            Log.i(TAG, "Dialog cancelled, so quitting.");
            Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_password_necessary));
        } else {
            if (checkMasterPassword(str)) {
                Log.i(TAG, "Entered password is correct, so proceeding.");
                Database.setPassword(str);
                removeGetPasswordFragments();
                loadSavedConnections();
                return;
            }
            Log.i(TAG, "Entered password is wrong, so quitting.");
            Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_wrong_password));
        }
    }

    private void showGetTextFragment(GetTextFragment getTextFragment) {
        if (getTextFragment.isVisible()) {
            return;
        }
        removeGetPasswordFragments();
        getTextFragment.setCancelable(false);
        getTextFragment.show(this.fragmentManager, "");
    }

    private void removeGetPasswordFragments() {
        if (this.getPassword.isAdded()) {
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.remove(this.getPassword);
            fragmentTransactionBeginTransaction.commit();
            this.fragmentManager.executePendingTransactions();
        }
        if (this.getNewPassword.isAdded()) {
            FragmentTransaction fragmentTransactionBeginTransaction2 = getSupportFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction2.remove(this.getNewPassword);
            fragmentTransactionBeginTransaction2.commit();
            this.fragmentManager.executePendingTransactions();
        }
    }

    public void showMainScreenHelp(MenuItem menuItem) {
        Log.d(TAG, "Showing main screen help.");
        Utils.createMainScreenDialog(this);
    }

    public void showSupportForum(MenuItem menuItem) {
        Log.d(TAG, "Showing support forum.");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://groups.google.com/forum/#!forum/bvnc-ardp-aspice-opaque-remote-desktop-clients"));
        startActivity(intent);
    }

    public void reportBug(MenuItem menuItem) {
        Log.d(TAG, "Showing report bug page.");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://github.com/iiordanov/remote-desktop-clients/issues"));
        startActivity(intent);
    }
}
