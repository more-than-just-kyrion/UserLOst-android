package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.Utils;
import com.undatech.opaque.ConnectionSettings;
import com.undatech.remoteClientUi.R;
import java.io.File;
import java.io.IOException;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes2.dex */
public class ImportExportDialog extends Dialog {
    public static final String TAG = "ImportExportDialog";
    private EditText _textLoadUrl;
    private EditText _textSaveUrl;
    private Activity activity;
    private boolean connectionsInSharedPrefs;
    private Database database;

    public ImportExportDialog(Activity activity, Database database, boolean z) {
        super(activity);
        setOwnerActivity(activity);
        this.activity = activity;
        this.database = database;
        this.connectionsInSharedPrefs = z;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.importexport);
        setTitle(R.string.import_export_settings);
        this._textLoadUrl = (EditText) findViewById(R.id.textImportUrl);
        this._textSaveUrl = (EditText) findViewById(R.id.textExportPath);
        String absolutePath = new File(new File(Environment.getExternalStorageDirectory().getPath()), Utils.getExportFileName(getContext().getPackageName())).getAbsolutePath();
        this._textSaveUrl.setText(absolutePath);
        this._textLoadUrl.setText(absolutePath);
        ((Button) findViewById(R.id.buttonExport)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.ImportExportDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (ImportExportDialog.this.connectionsInSharedPrefs) {
                        ConnectionSettings.exportSettingsFromSharedPrefsToJson(ImportExportDialog.this._textLoadUrl.getText().toString(), ImportExportDialog.this.getContext());
                    } else {
                        Utils.exportSettingsToXml(ImportExportDialog.this._textSaveUrl.getText().toString(), ImportExportDialog.this.database.getReadableDatabase());
                    }
                    ImportExportDialog.this.dismiss();
                } catch (IOException e) {
                    ImportExportDialog.this.errorNotify("I/O Exception exporting config", e);
                } catch (SAXException e2) {
                    ImportExportDialog.this.errorNotify("XML Exception exporting config", e2);
                }
            }
        });
        ((Button) findViewById(R.id.buttonImport)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.ImportExportDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (ImportExportDialog.this.connectionsInSharedPrefs) {
                        ConnectionSettings.importSettingsFromJsonToSharedPrefs(ImportExportDialog.this._textSaveUrl.getText().toString(), ImportExportDialog.this.getContext());
                    } else {
                        Utils.importSettingsFromXml(ImportExportDialog.this._textLoadUrl.getText().toString(), ImportExportDialog.this.database.getWritableDatabase());
                    }
                    ImportExportDialog.this.dismiss();
                    ImportExportDialog.this.activity.recreate();
                } catch (IOException e) {
                    ImportExportDialog.this.errorNotify("I/O error reading configuration", e);
                } catch (SAXException e2) {
                    ImportExportDialog.this.errorNotify("XML or format error reading configuration", e2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void errorNotify(String str, Throwable th) {
        Log.i(TAG, str, th);
        Utils.showErrorMessage(getContext(), str + ":" + th.getMessage());
    }
}
