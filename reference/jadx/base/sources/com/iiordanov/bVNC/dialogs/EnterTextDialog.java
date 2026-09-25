package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.iiordanov.bVNC.SentTextBean;
import com.undatech.remoteClientUi.R;
import java.util.ArrayList;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class EnterTextDialog extends Dialog {
    static final int DELETED_ID = -10;
    static final int NUMBER_SENT_SAVED = 100;
    private ImageButton _buttonNextEntry;
    private ImageButton _buttonPreviousEntry;
    private RemoteCanvasActivity _canvasActivity;
    private ArrayList<SentTextBean> _history;
    private int _historyIndex;
    private EditText _textEnterText;

    public EnterTextDialog(Context context) {
        super(context);
        setOwnerActivity((Activity) context);
        this._canvasActivity = (RemoteCanvasActivity) context;
        this._history = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String saveText(boolean z) {
        Editable text = this._textEnterText.getText();
        if (text.length() == 0) {
            return "";
        }
        String string = text.toString();
        if (z || this._historyIndex >= this._history.size() || !string.equals(this._history.get(this._historyIndex).getSentText())) {
            SentTextBean sentTextBean = new SentTextBean();
            sentTextBean.setSentText(string);
            SQLiteDatabase writableDatabase = new Database(getContext()).getWritableDatabase();
            sentTextBean.Gen_insert(writableDatabase);
            this._history.add(sentTextBean);
            for (int i = 0; i < this._historyIndex - 100; i++) {
                SentTextBean sentTextBean2 = this._history.get(i);
                if (sentTextBean2.get_Id() != -10) {
                    sentTextBean2.Gen_delete(writableDatabase);
                    sentTextBean2.set_Id(-10L);
                }
            }
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendText(String str) {
        this._canvasActivity.getCanvas().getKeyboard().sendText(str);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.entertext);
        setTitle(R.string.enter_text_title);
        this._textEnterText = (EditText) findViewById(R.id.textEnterText);
        ImageButton imageButton = (ImageButton) findViewById(R.id.buttonNextEntry);
        this._buttonNextEntry = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.EnterTextDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int size = EnterTextDialog.this._history.size();
                if (EnterTextDialog.this._historyIndex < size) {
                    EnterTextDialog.this.saveText(false);
                    EnterTextDialog.this._historyIndex++;
                    if (EnterTextDialog.this._history.size() > size && EnterTextDialog.this._historyIndex == size) {
                        EnterTextDialog.this._historyIndex++;
                    }
                    if (EnterTextDialog.this._historyIndex < EnterTextDialog.this._history.size()) {
                        EnterTextDialog.this._textEnterText.setText(((SentTextBean) EnterTextDialog.this._history.get(EnterTextDialog.this._historyIndex)).getSentText());
                    } else {
                        EnterTextDialog.this._textEnterText.setText("");
                    }
                }
                EnterTextDialog.this.updateButtons();
            }
        });
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.buttonPreviousEntry);
        this._buttonPreviousEntry = imageButton2;
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.EnterTextDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EnterTextDialog.this._historyIndex > 0) {
                    EnterTextDialog.this.saveText(false);
                    EnterTextDialog.this._historyIndex--;
                    EnterTextDialog.this._textEnterText.setText(((SentTextBean) EnterTextDialog.this._history.get(EnterTextDialog.this._historyIndex)).getSentText());
                }
                EnterTextDialog.this.updateButtons();
            }
        });
        ((Button) findViewById(R.id.buttonSendText)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.EnterTextDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnterTextDialog.this.sendText(EnterTextDialog.this.saveText(true));
                EnterTextDialog.this._textEnterText.setText("");
                EnterTextDialog enterTextDialog = EnterTextDialog.this;
                enterTextDialog._historyIndex = enterTextDialog._history.size();
                EnterTextDialog.this.updateButtons();
                EnterTextDialog.this.dismiss();
            }
        });
        ((Button) findViewById(R.id.buttonSendWithoutSaving)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.EnterTextDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnterTextDialog.this.sendText(EnterTextDialog.this._textEnterText.getText().toString());
                EnterTextDialog.this._textEnterText.setText("");
                EnterTextDialog enterTextDialog = EnterTextDialog.this;
                enterTextDialog._historyIndex = enterTextDialog._history.size();
                EnterTextDialog.this.updateButtons();
                EnterTextDialog.this.dismiss();
            }
        });
        ((ImageButton) findViewById(R.id.buttonTextDelete)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.EnterTextDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String sentText;
                if (EnterTextDialog.this._historyIndex < EnterTextDialog.this._history.size()) {
                    String string = EnterTextDialog.this._textEnterText.getText().toString();
                    SentTextBean sentTextBean = (SentTextBean) EnterTextDialog.this._history.get(EnterTextDialog.this._historyIndex);
                    if (string.equals(sentTextBean.getSentText())) {
                        sentTextBean.Gen_delete(new Database(EnterTextDialog.this.getContext()).getWritableDatabase());
                        EnterTextDialog.this._history.remove(EnterTextDialog.this._historyIndex);
                        if (EnterTextDialog.this._historyIndex > 0) {
                            EnterTextDialog.this._historyIndex--;
                        }
                    }
                }
                if (EnterTextDialog.this._historyIndex >= EnterTextDialog.this._history.size()) {
                    sentText = "";
                } else {
                    sentText = ((SentTextBean) EnterTextDialog.this._history.get(EnterTextDialog.this._historyIndex)).getSentText();
                }
                EnterTextDialog.this._textEnterText.setText(sentText);
                EnterTextDialog.this.updateButtons();
            }
        });
        Cursor cursorRawQuery = new Database(getContext()).getReadableDatabase().rawQuery("select * from SENT_TEXT ORDER BY _id", (String[]) null);
        try {
            SentTextBean.Gen_populateFromCursor(cursorRawQuery, this._history, SentTextBean.GEN_NEW);
            cursorRawQuery.close();
            this._historyIndex = this._history.size();
            updateButtons();
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtons() {
        this._buttonPreviousEntry.setEnabled(this._historyIndex > 0);
        this._buttonNextEntry.setEnabled(this._historyIndex < this._history.size());
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        this._textEnterText.requestFocus();
    }
}
