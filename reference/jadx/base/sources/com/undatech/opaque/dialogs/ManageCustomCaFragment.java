package com.undatech.opaque.dialogs;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.undatech.opaque.ConnectionSettings;
import com.undatech.opaque.util.HttpsFileDownloader;
import com.undatech.remoteClientUi.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes2.dex */
public class ManageCustomCaFragment extends DialogFragment implements HttpsFileDownloader.OnDownloadFinishedListener {
    public static String TAG = "ManageCustomCaFragment";
    public static int TYPE_OVIRT = 0;
    public static int TYPE_SPICE = 1;
    private EditText caCert;
    private EditText caCertPath;
    private int caPurpose;
    private ConnectionSettings currentConnection;
    private OnFragmentDismissedListener dismissalListener;
    private Button downloadButton;
    private Handler handler;
    private Button helpButton;
    private Button importButton;
    private String caTextContents = "";
    private Runnable setCaText = new Runnable() { // from class: com.undatech.opaque.dialogs.ManageCustomCaFragment.1
        @Override // java.lang.Runnable
        public void run() {
            ManageCustomCaFragment.this.caCert.setText(ManageCustomCaFragment.this.caTextContents);
        }
    };

    public interface OnFragmentDismissedListener {
        void onFragmentDismissed(ConnectionSettings connectionSettings);
    }

    @Override // com.undatech.opaque.util.HttpsFileDownloader.OnDownloadFinishedListener
    public void onDownload(String str) {
        Log.d(TAG, "onDownload");
        this.caTextContents = str;
        this.handler.post(this.setCaText);
    }

    public void setOnFragmentDismissedListener(OnFragmentDismissedListener onFragmentDismissedListener) {
        this.dismissalListener = onFragmentDismissedListener;
    }

    public static ManageCustomCaFragment newInstance(int i, ConnectionSettings connectionSettings) {
        ManageCustomCaFragment manageCustomCaFragment = new ManageCustomCaFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("caPurpose", i);
        bundle.putSerializable("currentConnection", connectionSettings);
        manageCustomCaFragment.setArguments(bundle);
        return manageCustomCaFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.dismissalListener = (OnFragmentDismissedListener) activity;
            Log.e(TAG, "onAttach: assigning OnFragmentDismissedListener");
        } catch (ClassCastException unused) {
            throw new ClassCastException(activity.toString() + " must implement OnFragmentDismissedListener");
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.handler = new Handler();
        this.caPurpose = getArguments().getInt("caPurpose");
        this.currentConnection = (ConnectionSettings) getArguments().getSerializable("currentConnection");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.manage_custom_ca, viewGroup, false);
        getDialog().setTitle(R.string.manage_custom_ca_title);
        this.caCert = (EditText) viewInflate.findViewById(R.id.caCert);
        this.caCertPath = (EditText) viewInflate.findViewById(R.id.caCertPath);
        Button button = (Button) viewInflate.findViewById(R.id.importButton);
        this.importButton = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.ManageCustomCaFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ManageCustomCaFragment.this.importCaCertFromFile();
            }
        });
        Button button2 = (Button) viewInflate.findViewById(R.id.downloadButton);
        this.downloadButton = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.ManageCustomCaFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ManageCustomCaFragment.this.downloadFromServer();
            }
        });
        Button button3 = (Button) viewInflate.findViewById(R.id.helpButton);
        this.helpButton = button3;
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.ManageCustomCaFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        setWidgetStateAppropriately();
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadFromServer() {
        Log.d(TAG, "downloadFromServer");
        String address = this.currentConnection.getAddress();
        if (!this.currentConnection.getAddress().startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            address = "https://" + address;
        }
        new HttpsFileDownloader(address + "/ovirt-engine/services/pki-resource?resource=ca-certificate&format=X509-PEM-CA", false, this).initiateDownload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void importCaCertFromFile() {
        Log.d(TAG, "importCaCertFromFile");
        FragmentActivity activity = getActivity();
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
                    Toast.makeText(activity, R.string.ca_file_error_reading, 1).show();
                }
            } while (line != null);
            this.caCert.setText(stringBuffer.toString());
        } catch (FileNotFoundException unused2) {
            Toast.makeText(activity, R.string.ca_file_not_found, 1).show();
        }
    }

    private void setWidgetStateAppropriately() {
        if (this.caPurpose == TYPE_OVIRT) {
            this.caCert.setText(this.currentConnection.getOvirtCaData());
            this.caCertPath.setText(getExternalSDCardDirectory());
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.e(TAG, "dismiss: sending back data to Activity");
        if (this.caPurpose == TYPE_OVIRT) {
            Log.e(TAG, "Setting custom oVirt CA");
            this.currentConnection.setOvirtCaData(this.caCert.getText().toString());
        }
        this.dismissalListener.onFragmentDismissed(this.currentConnection);
    }

    public String getExternalSDCardDirectory() {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/";
    }
}
