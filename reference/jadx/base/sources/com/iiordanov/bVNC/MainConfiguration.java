package com.iiordanov.bVNC;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Bundle;
import android.text.ClipboardManager;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.iiordanov.pubkeygenerator.GeneratePubkeyActivity;
import com.iiordanov.util.PermissionsManager;
import com.undatech.opaque.util.LogcatReader;
import com.undatech.remoteClientUi.R;
import java.util.ArrayList;
import java.util.Collections;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MainConfiguration extends FragmentActivity {
    private static final String TAG = "MainConfiguration";
    private Button buttonGeneratePubkey;
    private CheckBox checkboxKeepSshPass;
    private long connID = 0;
    protected Spinner connectionType;
    protected Database database;
    protected EditText ipText;
    protected boolean isNewConnection;
    protected int layoutID;
    private LinearLayout layoutUseSshPubkey;
    protected PermissionsManager permissionsManager;
    private RadioGroup radioCursor;
    protected ConnectionBean selected;
    protected int selectedConnType;
    private TextView sshCaption;
    private LinearLayout sshCredentials;
    private EditText sshPassphrase;
    private EditText sshPassword;
    private LinearLayout sshServerEntry;
    protected EditText textNickname;
    private TextView versionAndCode;

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
    }

    protected abstract void updateSelectedFromView();

    protected abstract void updateViewFromSelected();

    public void commonUpdateViewFromSelected() {
        Log.d(TAG, "commonUpdateViewFromSelected called");
        this.selected.loadFromSharedPreferences(this);
        int connectionType = this.selected.getConnectionType();
        this.selectedConnType = connectionType;
        this.connectionType.setSelection(connectionType);
        this.checkboxKeepSshPass.setChecked(this.selected.getKeepSshPassword());
        if (this.selected.getKeepSshPassword() || this.selected.getSshPassword().length() > 0) {
            this.sshPassword.setText(this.selected.getSshPassword());
        } else {
            this.sshPassword.setText("");
        }
        if (this.selected.getKeepSshPassword() || this.selected.getSshPassPhrase().length() > 0) {
            this.sshPassphrase.setText(this.selected.getSshPassPhrase());
        } else {
            this.sshPassphrase.setText("");
        }
        if (this.selectedConnType == 1 && this.selected.getAddress().equals("")) {
            this.ipText.setText("localhost");
        } else {
            this.ipText.setText(this.selected.getAddress());
        }
        if (this.selected.getUseLocalCursor() == 0) {
            this.radioCursor.check(R.id.radioCursorAuto);
        } else if (this.selected.getUseLocalCursor() == 1) {
            this.radioCursor.check(R.id.radioCursorForceLocal);
        } else if (this.selected.getUseLocalCursor() == 2) {
            this.radioCursor.check(R.id.radioCursorForceDisable);
        }
    }

    public void commonUpdateSelectedFromView() {
        Log.d(TAG, "commonUpdateSelectedFromView called");
        this.selected.setConnectionType(this.selectedConnType);
        this.selected.setAddress(this.ipText.getText().toString());
        this.selected.setSshPassPhrase(this.sshPassphrase.getText().toString());
        this.selected.setSshPassword(this.sshPassword.getText().toString());
        this.selected.setKeepSshPassword(this.checkboxKeepSshPass.isChecked());
        if (this.radioCursor.getCheckedRadioButtonId() == R.id.radioCursorAuto) {
            this.selected.setUseLocalCursor(0);
        } else if (this.radioCursor.getCheckedRadioButtonId() == R.id.radioCursorForceLocal) {
            this.selected.setUseLocalCursor(1);
        } else if (this.radioCursor.getCheckedRadioButtonId() == R.id.radioCursorForceDisable) {
            this.selected.setUseLocalCursor(2);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.d(TAG, "onCreate called");
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra("isNewConnection", false);
        this.isNewConnection = booleanExtra;
        if (!booleanExtra) {
            try {
                this.connID = Long.parseLong(intent.getStringExtra("connID"));
            } catch (NumberFormatException e) {
                this.connID = 0L;
                Log.e(TAG, "Could not parse connection to edit from connID!");
                e.printStackTrace();
            }
        }
        super.onCreate(bundle);
        Utils.showMenu(this);
        setContentView(this.layoutID);
        System.gc();
        this.permissionsManager = new PermissionsManager();
        this.textNickname = (EditText) findViewById(R.id.textNickname);
        Button button = (Button) findViewById(R.id.buttonGeneratePubkey);
        this.buttonGeneratePubkey = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.MainConfiguration.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainConfiguration.this.generatePubkey();
            }
        });
        TextView textView = (TextView) findViewById(R.id.versionAndCode);
        this.versionAndCode = textView;
        textView.setText(Utils.getVersionAndCode(this));
        this.database = ((App) getApplication()).getDatabase();
        ((Button) findViewById(R.id.buttonImportExport)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.MainConfiguration.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainConfiguration.this.permissionsManager.requestPermissions(MainConfiguration.this, true);
                MainConfiguration.this.showDialog(R.layout.importexport);
            }
        });
        ((Button) findViewById(R.id.copyLogcat)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.MainConfiguration.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((ClipboardManager) MainConfiguration.this.getSystemService("clipboard")).setText(new LogcatReader().getMyLogcat(500));
                Toast.makeText(MainConfiguration.this.getBaseContext(), MainConfiguration.this.getResources().getString(R.string.log_copied), 1).show();
            }
        });
        this.radioCursor = (RadioGroup) findViewById(R.id.radioCursor);
        this.sshCredentials = (LinearLayout) findViewById(R.id.sshCredentials);
        this.sshCaption = (TextView) findViewById(R.id.sshCaption);
        this.layoutUseSshPubkey = (LinearLayout) findViewById(R.id.layoutUseSshPubkey);
        this.sshServerEntry = (LinearLayout) findViewById(R.id.sshServerEntry);
        this.sshPassword = (EditText) findViewById(R.id.sshPassword);
        this.sshPassphrase = (EditText) findViewById(R.id.sshPassphrase);
        Spinner spinner = (Spinner) findViewById(R.id.connectionType);
        this.connectionType = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.MainConfiguration.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                MainConfiguration.this.selectedConnType = i;
                MainConfiguration.this.selected.setConnectionType(MainConfiguration.this.selectedConnType);
                MainConfiguration.this.selected.save(MainConfiguration.this);
                if (MainConfiguration.this.selectedConnType == 0) {
                    MainConfiguration.this.setVisibilityOfSshWidgets(8);
                } else if (MainConfiguration.this.selectedConnType == 1) {
                    MainConfiguration.this.setVisibilityOfSshWidgets(0);
                    if (MainConfiguration.this.ipText.getText().toString().equals("")) {
                        MainConfiguration.this.ipText.setText("localhost");
                    }
                }
                MainConfiguration.this.updateViewFromSelected();
            }
        });
        this.ipText = (EditText) findViewById(R.id.textIP);
        this.checkboxKeepSshPass = (CheckBox) findViewById(R.id.checkboxKeepSshPass);
    }

    void setConnectionTypeSpinnerAdapter(int i) {
        Log.d(TAG, "setConnectionTypeSpinnerAdapter called");
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(this, i, R.layout.connection_list_entry);
        arrayAdapterCreateFromResource.setDropDownViewResource(R.layout.connection_list_entry);
        this.connectionType.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
    }

    protected void setVisibilityOfSshWidgets(int i) {
        Log.d(TAG, "setVisibilityOfSshWidgets called");
        this.sshCredentials.setVisibility(i);
        this.sshCaption.setVisibility(i);
        this.layoutUseSshPubkey.setVisibility(i);
        this.sshServerEntry.setVisibility(i);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        Log.d(TAG, "onStart called");
        super.onStart();
        System.gc();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        Log.d(TAG, "onResume called");
        super.onResume();
        System.gc();
    }

    @Override // androidx.fragment.app.FragmentActivity
    protected void onResumeFragments() {
        Log.d(TAG, "onResumeFragments called");
        super.onResumeFragments();
        arriveOnPage();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.d(TAG, "onConfigurationChanged called");
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Log.d(TAG, "onStop called");
        Database database = this.database;
        if (database != null) {
            database.close();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Log.d(TAG, "onPause called");
        Database database = this.database;
        if (database != null) {
            database.close();
        }
        if (this.selected != null) {
            updateSelectedFromView();
            this.selected.saveAndWriteRecent(false, (Context) this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Log.d(TAG, "onDestroy called");
        Database database = this.database;
        if (database != null) {
            database.close();
        }
        System.gc();
        super.onDestroy();
    }

    protected void saveConnectionAndCloseLayout() {
        Log.d(TAG, "saveConnectionAndCloseLayout called");
        if (this.selected != null) {
            updateSelectedFromView();
            this.selected.saveAndWriteRecent(false, (Context) this);
        }
        finish();
    }

    public void arriveOnPage() {
        Log.d(TAG, "arriveOnPage called");
        if (!this.isNewConnection) {
            SQLiteDatabase readableDatabase = this.database.getReadableDatabase();
            ArrayList arrayList = new ArrayList();
            ConnectionBean.getAll(readableDatabase, AbstractConnectionBean.GEN_TABLE_NAME, arrayList, ConnectionBean.newInstance);
            Collections.sort(arrayList);
            arrayList.add(0, new ConnectionBean(this));
            for (int i = 1; i < arrayList.size(); i++) {
                if (((ConnectionBean) arrayList.get(i)).get_Id() == this.connID) {
                    this.selected = (ConnectionBean) arrayList.get(i);
                    break;
                }
            }
            this.database.close();
        }
        if (this.selected == null) {
            this.selected = new ConnectionBean(this);
        }
        updateViewFromSelected();
    }

    protected void generatePubkey() {
        Log.d(TAG, "generatePubkey called");
        updateSelectedFromView();
        this.selected.saveAndWriteRecent(true, (Context) this);
        Intent intent = new Intent(this, (Class<?>) GeneratePubkeyActivity.class);
        intent.putExtra("PrivateKey", this.selected.getSshPrivKey());
        startActivityForResult(intent, 1);
    }

    public int getHeight() {
        Log.d(TAG, "getHeight called");
        View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        int bottom = viewFindViewById.getBottom();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i = point.y;
        if (ViewConfiguration.get(this).hasPermanentMenuKey()) {
            i = bottom;
        }
        return Utils.isBlackBerry() ? bottom : i;
    }

    public int getWidth() {
        Log.d(TAG, "getWidth called");
        View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        int right = viewFindViewById.getRight();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return ViewConfiguration.get(this).hasPermanentMenuKey() ? right : point.x;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Log.d(TAG, "onCreateOptionsMenu called");
        getMenuInflater().inflate(R.menu.connectionsetupmenu, menu);
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        Log.d(TAG, "onMenuOpened called");
        try {
            MenuItem menuItemFindItem = menu.findItem(R.id.itemSaveAsCopy);
            ConnectionBean connectionBean = this.selected;
            menuItemFindItem.setEnabled((connectionBean == null || connectionBean.isNew()) ? false : true);
        } catch (NullPointerException unused) {
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.d(TAG, "onActivityResult called");
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            return;
        }
        if (i2 == -1 && intent != null && intent.getExtras() != null) {
            Bundle extras = intent.getExtras();
            String str = (String) extras.get("PrivateKey");
            if (!str.equals(this.selected.getSshPrivKey()) && str.length() != 0) {
                Toast.makeText(getBaseContext(), getString(R.string.ssh_key_generated), 1).show();
            }
            this.selected.setSshPrivKey(str);
            this.selected.setSshPubKey((String) extras.get("PublicKey"));
            this.selected.saveAndWriteRecent(true, (Context) this);
            return;
        }
        Log.i(TAG, "The user cancelled SSH key generation.");
    }

    public ConnectionBean getCurrentConnection() {
        Log.d(TAG, "getCurrentConnection called");
        return this.selected;
    }

    public void saveAsCopy(MenuItem menuItem) {
        Log.d(TAG, "saveAsCopy called");
        if (this.selected.getNickname().equals(this.textNickname.getText().toString())) {
            this.textNickname.setText(new String(getString(R.string.copy_of) + " " + this.selected.getNickname()));
        }
        this.selected.setScreenshotFilename(Utils.newScreenshotFileName());
        updateSelectedFromView();
        this.selected.set_Id(0L);
        this.selected.saveAndWriteRecent(false, (Context) this);
        arriveOnPage();
        finish();
    }

    public void showConnectionScreenHelp(MenuItem menuItem) {
        Log.d(TAG, "showConnectionScreenHelp called");
        Log.d(TAG, "Showing connection screen help.");
        Utils.createConnectionScreenDialog(this);
    }

    protected boolean useLastPositionToolbarDefault() {
        Log.d(TAG, "UseLastPositionToolbarDefault called");
        return getSharedPreferences(Constants.generalSettingsTag, 0).getBoolean(Constants.positionToolbarLastUsed, true);
    }
}
