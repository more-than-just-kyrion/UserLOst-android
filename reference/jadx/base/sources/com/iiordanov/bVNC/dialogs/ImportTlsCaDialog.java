package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.iiordanov.bVNC.ConnectionBean;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.aSPICE;
import com.undatech.remoteClientUi.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ImportTlsCaDialog extends AlertDialog {
    private static final Intent docIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://spice-space.org/page/SSLConnection"));
    private EditText caCert;
    private EditText caCertPath;
    private EditText certSubject;
    private Database database;
    private Button helpButton;
    private Button importButton;
    private aSPICE mainConfigPage;
    private ConnectionBean selected;

    public ImportTlsCaDialog(Context context, Database database) {
        super(context);
        setOwnerActivity((Activity) context);
        aSPICE aspice = (aSPICE) context;
        this.mainConfigPage = aspice;
        this.selected = aspice.getCurrentConnection();
        this.database = database;
    }

    public static void showDocumentation(Context context) {
        context.startActivity(docIntent);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.selected.setCaCert(this.caCert.getText().toString());
        this.selected.setCertSubject(this.certSubject.getText().toString());
        this.mainConfigPage.updateViewFromSelected();
        this.selected.saveAndWriteRecent(false, getContext());
        dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        setWidgetStateAppropriately();
    }

    private void setWidgetStateAppropriately() {
        ConnectionBean currentConnection = this.mainConfigPage.getCurrentConnection();
        this.selected = currentConnection;
        this.certSubject.setText(currentConnection.getCertSubject());
        this.caCert.setText(this.selected.getCaCert());
        this.caCertPath.setText("/sdcard/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void importCaCert() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(this.caCertPath.getText().toString())));
            StringBuffer stringBuffer = new StringBuffer();
            String line = null;
            do {
                try {
                    line = bufferedReader.readLine();
                    if (line != null) {
                        stringBuffer.append(line + '\n');
                    }
                } catch (IOException unused) {
                    Toast.makeText(getContext(), R.string.spice_ca_file_error_reading, 1).show();
                }
            } while (line != null);
            this.caCert.setText(stringBuffer.toString());
        } catch (FileNotFoundException unused2) {
            Toast.makeText(getContext(), R.string.spice_ca_file_not_found, 1).show();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.import_tls_ca_dialog);
        getWindow().clearFlags(131080);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.dimAmount = 1.0f;
        attributes.width = -1;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        this.certSubject = (EditText) findViewById(R.id.certSubject);
        this.caCert = (EditText) findViewById(R.id.caCert);
        this.caCertPath = (EditText) findViewById(R.id.caCertPath);
        Button button = (Button) findViewById(R.id.importButton);
        this.importButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.ImportTlsCaDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImportTlsCaDialog.this.importCaCert();
            }
        });
        Button button2 = (Button) findViewById(R.id.helpButton);
        this.helpButton = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.ImportTlsCaDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImportTlsCaDialog.showDocumentation(ImportTlsCaDialog.this.mainConfigPage);
            }
        });
        setWidgetStateAppropriately();
    }
}
