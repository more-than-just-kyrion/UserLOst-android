package com.iiordanov.bVNC.dialogs;

import android.app.Dialog;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.iiordanov.bVNC.bVNC;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class RepeaterDialog extends Dialog {
    bVNC _configurationDialog;
    private EditText _repeaterId;

    public RepeaterDialog(bVNC bvnc) {
        super(bvnc);
        setOwnerActivity(bvnc);
        this._configurationDialog = bvnc;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.repeater_dialog_title);
        setContentView(R.layout.repeater_dialog);
        this._repeaterId = (EditText) findViewById(R.id.textRepeaterInfo);
        ((TextView) findViewById(R.id.textRepeaterCaption)).setText(Html.fromHtml(getContext().getString(R.string.repeater_caption)));
        ((Button) findViewById(R.id.buttonSaveRepeater)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.RepeaterDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RepeaterDialog.this._configurationDialog.updateRepeaterInfo(true, RepeaterDialog.this._repeaterId.getText().toString());
                RepeaterDialog.this.dismiss();
            }
        });
        ((Button) findViewById(R.id.buttonClearRepeater)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.RepeaterDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RepeaterDialog.this._configurationDialog.updateRepeaterInfo(false, "");
                RepeaterDialog.this.dismiss();
            }
        });
    }
}
