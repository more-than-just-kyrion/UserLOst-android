package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.ToggleButton;
import com.iiordanov.bVNC.ConnectionBean;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.bVNC;
import com.iiordanov.util.RandomString;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class AutoXCustomizeDialog extends AlertDialog {
    private static final Intent docIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://iiordanov.blogspot.ca/2012/10/looking-for-nx-client-for-android-or.html"));
    private Button autoXCancel;
    private Button autoXConfirm;
    private EditText autoXHeight;
    private EditText autoXSessionProg;
    private EditText autoXWidth;
    private Button buttonAutoXHelp;
    private CheckBox checkboxAutoXUnixAuth;
    private CheckBox checkboxAutoXUnixpw;
    private String command;
    private int commandIndex;
    private Database database;
    private String geometry;
    private LinearLayout layoutAdvancedSettings;
    private bVNC mainConfigDialog;
    private int nativeHeight;
    private int nativeWidth;
    private int origCommandIndex;
    private String pw;
    private RandomString rnd;
    private ConnectionBean selected;
    private String sessionProg;
    private Spinner spinnerAutoXGeometry;
    private Spinner spinnerAutoXSession;
    private Spinner spinnerAutoXType;
    private ToggleButton toggleAutoXAdvanced;

    public AutoXCustomizeDialog(Context context, Database database) {
        super(context);
        this.geometry = "";
        this.sessionProg = "";
        this.pw = "";
        setOwnerActivity((Activity) context);
        bVNC bvnc = (bVNC) context;
        this.mainConfigDialog = bvnc;
        this.selected = bvnc.getCurrentConnection();
        this.rnd = new RandomString();
        this.database = database;
    }

    public static void showDocumentation(Context context) {
        context.startActivity(docIntent);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        retainAutoXInfo();
        dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        setWidgetStateAppropriately();
    }

    private void setWidgetStateAppropriately() {
        ConnectionBean currentConnection = this.mainConfigDialog.getCurrentConnection();
        this.selected = currentConnection;
        if (currentConnection == null) {
            dismiss();
            return;
        }
        this.commandIndex = currentConnection.getAutoXType();
        this.origCommandIndex = this.selected.getAutoXType();
        this.spinnerAutoXType.setSelection(this.commandIndex);
        setRemoteWidthAndHeight();
        setSessionProg();
        setPwOption();
        this.checkboxAutoXUnixAuth.setChecked(this.selected.getAutoXUnixAuth());
        setAdvancedToggleState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdvancedToggleState() {
        this.toggleAutoXAdvanced.setChecked(this.commandIndex != 0 && (this.selected.getAutoXResType() != 0 || this.selected.getAutoXSessionType() != 0 || this.selected.getAutoXUnixpw() || this.selected.getAutoXUnixAuth()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCommandIndexAndCommand(int i) {
        this.commandIndex = i;
        if (i != 0) {
            this.command = Constants.getCommandString(i, this.geometry + this.sessionProg + this.pw);
        } else {
            this.command = new String("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRemoteWidthAndHeight() {
        if (Constants.SDK_INT < 19) {
            this.nativeWidth = Math.max(this.mainConfigDialog.getWidth(), this.mainConfigDialog.getHeight());
            this.nativeHeight = Math.min(this.mainConfigDialog.getWidth(), this.mainConfigDialog.getHeight());
        } else {
            Point point = new Point();
            this.mainConfigDialog.getWindowManager().getDefaultDisplay().getRealSize(point);
            this.nativeWidth = Math.max(point.x, point.y);
            this.nativeHeight = Math.min(point.x, point.y);
        }
        this.spinnerAutoXGeometry.setSelection(this.selected.getAutoXResType());
        if (this.selected.getAutoXResType() == 0) {
            this.autoXWidth.setEnabled(false);
            this.autoXHeight.setEnabled(false);
            this.autoXWidth.setText(Integer.toString(this.nativeWidth));
            this.autoXHeight.setText(Integer.toString(this.nativeHeight));
            this.selected.setAutoXWidth(this.nativeWidth);
            this.selected.setAutoXHeight(this.nativeHeight);
        } else {
            this.autoXWidth.setEnabled(true);
            this.autoXHeight.setEnabled(true);
            this.autoXWidth.setText(Integer.toString(this.selected.getAutoXWidth()));
            this.autoXHeight.setText(Integer.toString(this.selected.getAutoXHeight()));
        }
        this.geometry = new String(" -env FD_GEOM=" + this.selected.getAutoXWidth() + "x" + this.selected.getAutoXHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionProg() {
        this.spinnerAutoXSession.setSelection(this.selected.getAutoXSessionType());
        if (this.selected.getAutoXSessionType() != 1) {
            this.autoXSessionProg.setEnabled(false);
            this.autoXSessionProg.setText(Constants.getSessionProgString(this.selected.getAutoXSessionType()));
            this.sessionProg = new String(" -env FD_PROG=\"" + Constants.getSessionProgString(this.selected.getAutoXSessionType()) + "\" ");
        } else {
            this.autoXSessionProg.setEnabled(true);
            this.autoXSessionProg.setText(this.selected.getAutoXSessionProg().toString());
            this.sessionProg = new String(" -env FD_PROG=\"" + this.autoXSessionProg.getText().toString() + "\" ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPwOption() {
        this.checkboxAutoXUnixpw.setChecked(this.selected.getAutoXUnixpw());
        if (this.selected.getAutoXUnixpw()) {
            this.pw = Constants.AUTO_X_USERPW;
        } else {
            this.selected.setAutoXRandFileNm(this.rnd.randomLowerCaseString(20));
            this.pw = "-passwdfile rm:.x11vnc_temp_pwd_" + this.selected.getAutoXRandFileNm() + " \"";
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.auto_x_customize);
        getWindow().clearFlags(131080);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.dimAmount = 1.0f;
        attributes.width = -1;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        Spinner spinner = (Spinner) findViewById(R.id.spinnerAutoXType);
        this.spinnerAutoXType = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                AutoXCustomizeDialog.this.setCommandIndexAndCommand(i);
                AutoXCustomizeDialog.this.setAdvancedToggleState();
            }
        });
        Button button = (Button) findViewById(R.id.buttonAutoXHelp);
        this.buttonAutoXHelp = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AutoXCustomizeDialog.showDocumentation(AutoXCustomizeDialog.this.mainConfigDialog);
            }
        });
        this.toggleAutoXAdvanced = (ToggleButton) findViewById(R.id.toggleAutoXAdvanced);
        this.layoutAdvancedSettings = (LinearLayout) findViewById(R.id.layoutAdvancedSettings);
        this.toggleAutoXAdvanced.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    AutoXCustomizeDialog.this.layoutAdvancedSettings.setVisibility(0);
                } else {
                    AutoXCustomizeDialog.this.layoutAdvancedSettings.setVisibility(8);
                }
            }
        });
        this.spinnerAutoXGeometry = (Spinner) findViewById(R.id.spinnerAutoXGeometry);
        this.autoXWidth = (EditText) findViewById(R.id.autoXWidth);
        this.autoXHeight = (EditText) findViewById(R.id.autoXHeight);
        this.spinnerAutoXGeometry.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                AutoXCustomizeDialog.this.selected.setAutoXResType(i);
                AutoXCustomizeDialog.this.setRemoteWidthAndHeight();
            }
        });
        this.spinnerAutoXSession = (Spinner) findViewById(R.id.spinnerAutoXSession);
        this.autoXSessionProg = (EditText) findViewById(R.id.autoXSessionProg);
        this.spinnerAutoXSession.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                AutoXCustomizeDialog.this.selected.setAutoXSessionType(i);
                AutoXCustomizeDialog.this.setSessionProg();
            }
        });
        CheckBox checkBox = (CheckBox) findViewById(R.id.checkboxAutoXUnixpw);
        this.checkboxAutoXUnixpw = checkBox;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AutoXCustomizeDialog.this.selected.setAutoXUnixpw(z);
                AutoXCustomizeDialog.this.setPwOption();
            }
        });
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.checkboxAutoXUnixAuth);
        this.checkboxAutoXUnixAuth = checkBox2;
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AutoXCustomizeDialog.this.selected.setAutoXUnixAuth(z);
            }
        });
        Button button2 = (Button) findViewById(R.id.autoXConfirm);
        this.autoXConfirm = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AutoXCustomizeDialog.this.updateAutoXInfo();
                AutoXCustomizeDialog.this.dismiss();
            }
        });
        Button button3 = (Button) findViewById(R.id.autoXCancel);
        this.autoXCancel = button3;
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.AutoXCustomizeDialog.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AutoXCustomizeDialog.this.retainAutoXInfo();
                AutoXCustomizeDialog.this.dismiss();
            }
        });
        setWidgetStateAppropriately();
    }

    public void updateAutoXInfo() {
        this.selected.setAutoXResType(this.spinnerAutoXGeometry.getSelectedItemPosition());
        try {
            this.selected.setAutoXWidth(Integer.parseInt(this.autoXWidth.getText().toString()));
            this.selected.setAutoXHeight(Integer.parseInt(this.autoXHeight.getText().toString()));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        this.selected.setAutoXSessionType(this.spinnerAutoXSession.getSelectedItemPosition());
        this.selected.setAutoXSessionProg(this.autoXSessionProg.getText().toString());
        setRemoteWidthAndHeight();
        setSessionProg();
        setCommandIndexAndCommand(this.commandIndex);
        boolean z = this.commandIndex != 0;
        this.selected.setAutoXEnabled(z);
        if (z) {
            this.selected.setAddress("localhost");
        }
        this.selected.setAutoXType(this.commandIndex);
        this.selected.setAutoXCommand(this.command);
        this.selected.setAutoXUnixpw(this.checkboxAutoXUnixpw.isChecked());
        this.selected.setAutoXUnixAuth(this.checkboxAutoXUnixAuth.isChecked());
        this.selected.setPassword(this.rnd.randomString(8));
        this.mainConfigDialog.updateViewFromSelected();
        this.selected.saveAndWriteRecent(false, getContext());
    }

    public void retainAutoXInfo() {
        setCommandIndexAndCommand(this.origCommandIndex);
        this.selected.setAutoXType(this.origCommandIndex);
        this.selected.setAutoXCommand(this.command);
        this.mainConfigDialog.updateViewFromSelected();
        this.selected.saveAndWriteRecent(false, getContext());
    }
}
