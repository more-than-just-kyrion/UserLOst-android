package com.iiordanov.bVNC.dialogs;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.iiordanov.bVNC.ConnectionSettable;
import com.iiordanov.bVNC.Database;
import com.iiordanov.bVNC.MetaList;
import com.iiordanov.bVNC.RemoteCanvasActivity;
import com.iiordanov.bVNC.Utils;
import com.iiordanov.bVNC.input.AbstractMetaKeyBean;
import com.iiordanov.bVNC.input.MetaKeyBase;
import com.iiordanov.bVNC.input.MetaKeyBean;
import com.undatech.opaque.Connection;
import com.undatech.remoteClientUi.R;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import net.sourceforge.jsocks.Proxy;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class MetaKeyDialog extends Dialog implements ConnectionSettable {
    public static final String[] EMPTY_ARGS = new String[0];
    static ArrayList<MetaList> _lists;
    private static String copyListString;
    RemoteCanvasActivity _canvasActivity;
    CheckBox _checkAlt;
    CheckBox _checkCtrl;
    CheckBox _checkShift;
    CheckBox _checkSuper;
    Connection _connection;
    MetaKeyBean _currentKeyBean;
    Database _database;
    private boolean _justStarted;
    ArrayList<MetaKeyBean> _keysInList;
    long _listId;
    Spinner _spinnerKeySelect;
    Spinner _spinnerKeysInList;
    Spinner _spinnerLists;
    TextView _textKeyDesc;
    EditText _textListName;

    public MetaKeyDialog(Context context) {
        super(context);
        this._keysInList = new ArrayList<>();
        this._currentKeyBean = new MetaKeyBean(0L, 0, MetaKeyBean.allKeys.get(0));
        setOwnerActivity((Activity) context);
        this._canvasActivity = (RemoteCanvasActivity) context;
    }

    @Override // android.app.Dialog
    public boolean onCreateOptionsMenu(Menu menu) {
        this._canvasActivity.getMenuInflater().inflate(R.menu.metakeymenu, menu);
        menu.findItem(R.id.itemDeleteKeyList).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                Utils.showYesNoPrompt(MetaKeyDialog.this._canvasActivity, MetaKeyDialog.this.getContext().getString(R.string.delete_key_list), MetaKeyDialog.this.getContext().getString(R.string.delete_key_list) + " " + MetaKeyDialog.this._textListName.getText().toString(), new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        int selectedItemPosition = MetaKeyDialog.this._spinnerLists.getSelectedItemPosition();
                        if (selectedItemPosition == -1) {
                            return;
                        }
                        MetaKeyDialog.this._listId = MetaKeyDialog._lists.get(selectedItemPosition).get_Id();
                        if (MetaKeyDialog.this._listId > 1) {
                            MetaKeyDialog._lists.remove(selectedItemPosition);
                            ArrayAdapter spinnerAdapter = MetaKeyDialog.getSpinnerAdapter(MetaKeyDialog.this._spinnerLists);
                            spinnerAdapter.remove((String) spinnerAdapter.getItem(selectedItemPosition));
                            SQLiteDatabase writableDatabase = MetaKeyDialog.this._database.getWritableDatabase();
                            writableDatabase.execSQL(MessageFormat.format("DELETE FROM {0} WHERE {1} = {2}", AbstractMetaKeyBean.GEN_TABLE_NAME, "METALISTID", Long.valueOf(MetaKeyDialog.this._listId)));
                            writableDatabase.execSQL(MessageFormat.format("DELETE FROM {0} WHERE {1} = {2}", MetaList.GEN_TABLE_NAME, "_id", Long.valueOf(MetaKeyDialog.this._listId)));
                            writableDatabase.close();
                            MetaKeyDialog.this._connection.setMetaListId(1L);
                            MetaKeyDialog.this._connection.save(MetaKeyDialog.this.getContext());
                            MetaKeyDialog.this.setMetaKeyList();
                        }
                    }
                }, null);
                return true;
            }
        });
        menu.findItem(R.id.itemDeleteKey).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.2
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                final int selectedItemPosition = MetaKeyDialog.this._spinnerKeysInList.getSelectedItemPosition();
                if (selectedItemPosition == -1) {
                    return true;
                }
                final MetaKeyBean metaKeyBean = MetaKeyDialog.this._keysInList.get(selectedItemPosition);
                Utils.showYesNoPrompt(MetaKeyDialog.this._canvasActivity, MetaKeyDialog.this.getContext().getString(R.string.delete_key), MetaKeyDialog.this.getContext().getString(R.string.delete_key) + " " + metaKeyBean.getKeyDesc(), new DialogInterface.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MetaKeyDialog.getSpinnerAdapter(MetaKeyDialog.this._spinnerKeysInList).remove(metaKeyBean.getKeyDesc());
                        MetaKeyDialog.this._keysInList.remove(selectedItemPosition);
                        MetaKeyDialog.this._database.getWritableDatabase().execSQL(MessageFormat.format("DELETE FROM {0} WHERE {1} = {2}", AbstractMetaKeyBean.GEN_TABLE_NAME, "METALISTID", Long.valueOf(metaKeyBean.get_Id())));
                        if (MetaKeyDialog.this._connection.getLastMetaKeyId() == metaKeyBean.get_Id()) {
                            MetaKeyDialog.this._connection.setLastMetaKeyId(0L);
                            MetaKeyDialog.this._connection.save(MetaKeyDialog.this.getContext());
                        }
                        int selectedItemPosition2 = MetaKeyDialog.this._spinnerKeysInList.getSelectedItemPosition();
                        if (selectedItemPosition2 == -1 || selectedItemPosition2 >= MetaKeyDialog.this._keysInList.size()) {
                            return;
                        }
                        MetaKeyDialog.this._currentKeyBean = new MetaKeyBean(MetaKeyDialog.this._keysInList.get(selectedItemPosition2));
                        MetaKeyDialog.this.updateDialogForCurrentKey();
                    }
                }, null);
                return true;
            }
        });
        return true;
    }

    @Override // android.app.Dialog
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.itemDeleteKeyList).setEnabled(this._currentKeyBean.getMetaListId() > 1);
        menu.findItem(R.id.itemDeleteKey).setEnabled(this._spinnerKeysInList.getSelectedItemPosition() != -1);
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.metakey);
        getWindow().clearFlags(131080);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.dimAmount = 1.0f;
        attributes.width = -1;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        setTitle(R.string.meta_key_title);
        this._checkShift = (CheckBox) findViewById(R.id.checkboxShift);
        this._checkCtrl = (CheckBox) findViewById(R.id.checkboxCtrl);
        this._checkAlt = (CheckBox) findViewById(R.id.checkboxAlt);
        this._checkSuper = (CheckBox) findViewById(R.id.checkboxSuper);
        this._textKeyDesc = (TextView) findViewById(R.id.textKeyDesc);
        this._textListName = (EditText) findViewById(R.id.textListName);
        this._spinnerKeySelect = (Spinner) findViewById(R.id.spinnerKeySelect);
        this._spinnerKeysInList = (Spinner) findViewById(R.id.spinnerKeysInList);
        this._spinnerLists = (Spinner) findViewById(R.id.spinnerLists);
        this._database = new Database(getContext());
        if (_lists == null) {
            _lists = new ArrayList<>();
            MetaList.getAll(this._database.getReadableDatabase(), MetaList.GEN_TABLE_NAME, _lists, MetaList.GEN_NEW);
        }
        this._spinnerKeySelect.setAdapter((SpinnerAdapter) new ArrayAdapter(getOwnerActivity(), R.layout.key_list_entry, MetaKeyBean.allKeysNames));
        this._spinnerKeySelect.setSelection(0);
        setListSpinner();
        this._checkShift.setOnCheckedChangeListener(new MetaCheckListener(1));
        this._checkAlt.setOnCheckedChangeListener(new MetaCheckListener(2));
        this._checkCtrl.setOnCheckedChangeListener(new MetaCheckListener(4096));
        this._checkSuper.setOnCheckedChangeListener(new MetaCheckListener(131072));
        this._spinnerLists.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                MetaKeyDialog.this._connection.setMetaListId(MetaKeyDialog._lists.get(i).get_Id());
                MetaKeyDialog.this._connection.save(MetaKeyDialog.this.getContext());
                MetaKeyDialog.this.setMetaKeyList();
            }
        });
        this._spinnerKeysInList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                MetaKeyDialog.this._currentKeyBean = new MetaKeyBean(MetaKeyDialog.this._keysInList.get(i));
                MetaKeyDialog.this.updateDialogForCurrentKey();
            }
        });
        this._spinnerKeySelect.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (MetaKeyDialog.this._currentKeyBean == null) {
                    MetaKeyDialog.this._currentKeyBean = new MetaKeyBean(0L, 0, MetaKeyBean.allKeys.get(i));
                } else {
                    MetaKeyDialog.this._currentKeyBean.setKeyBase(MetaKeyBean.allKeys.get(i));
                }
                MetaKeyDialog.this.updateDialogForCurrentKey();
            }
        });
        ((Button) findViewById(R.id.buttonSend)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MetaKeyDialog.this.sendCurrentKey();
                MetaKeyDialog.this.dismiss();
            }
        });
        ((Button) findViewById(R.id.buttonNewList)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MetaList metaList = new MetaList();
                metaList.setName(MetaKeyDialog.this.getContext().getString(R.string.new_list_button));
                metaList.Gen_insert(MetaKeyDialog.this._database.getWritableDatabase());
                MetaKeyDialog.this._connection.setMetaListId(metaList.get_Id());
                MetaKeyDialog.this._connection.save(MetaKeyDialog.this.getContext());
                MetaKeyDialog._lists.add(metaList);
                MetaKeyDialog.getSpinnerAdapter(MetaKeyDialog.this._spinnerLists).add(metaList.getName());
                MetaKeyDialog.this.setMetaKeyList();
            }
        });
        ((Button) findViewById(R.id.buttonCopyList)).setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.MetaKeyDialog.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MetaList metaList = new MetaList();
                metaList.setName(MetaKeyDialog.this.getContext().getString(R.string.copy_of) + " " + MetaKeyDialog.this._textListName.getText().toString());
                SQLiteDatabase writableDatabase = MetaKeyDialog.this._database.getWritableDatabase();
                metaList.Gen_insert(writableDatabase);
                writableDatabase.execSQL(MessageFormat.format(MetaKeyDialog.this.getCopyListString(), Long.valueOf(metaList.get_Id()), Long.valueOf(MetaKeyDialog.this._listId)));
                MetaKeyDialog.this._connection.setMetaListId(metaList.get_Id());
                MetaKeyDialog.this._connection.save(MetaKeyDialog.this.getContext());
                MetaKeyDialog._lists.add(metaList);
                MetaKeyDialog.getSpinnerAdapter(MetaKeyDialog.this._spinnerLists).add(metaList.getName());
                MetaKeyDialog.this.setMetaKeyList();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCopyListString() {
        if (copyListString == null) {
            StringBuilder sb = new StringBuilder("INSERT INTO META_KEY ( METALISTID");
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, Object> entry : this._currentKeyBean.Gen_getValues().valueSet()) {
                if (!entry.getKey().equals("_id") && !entry.getKey().equals("METALISTID")) {
                    sb2.append(',');
                    sb2.append(entry.getKey());
                }
            }
            String string = sb2.toString();
            sb.append(string);
            sb.append(" ) SELECT {0} ");
            sb.append(string);
            sb.append(" FROM META_KEY WHERE METALISTID = {1}");
            copyListString = sb.toString();
        }
        return copyListString;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        takeKeyEvents(true);
        this._justStarted = true;
        super.onStart();
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        int i = 0;
        for (MetaList metaList : _lists) {
            if (metaList.get_Id() == this._listId) {
                String string = this._textListName.getText().toString();
                if (!string.equals(metaList.getName())) {
                    metaList.setName(string);
                    metaList.Gen_update(this._database.getWritableDatabase());
                    ArrayAdapter<String> spinnerAdapter = getSpinnerAdapter(this._spinnerLists);
                    spinnerAdapter.remove(spinnerAdapter.getItem(i));
                    spinnerAdapter.insert(string, i);
                    break;
                }
                break;
            }
            i++;
        }
        takeKeyEvents(false);
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        this._justStarted = false;
        if (i != 4 && i != 82 && getCurrentFocus() == null) {
            int metaState = keyEvent.getMetaState();
            int metaFlags = this._currentKeyBean.getMetaFlags();
            MetaKeyBase metaKeyBase = MetaKeyBean.keysByKeyCode.get(Integer.valueOf(i));
            if (metaKeyBase != null) {
                if ((metaState & 1) != 0) {
                    metaFlags |= 1;
                }
                if ((metaState & 2) != 0) {
                    metaFlags |= 2;
                }
                this._currentKeyBean.setKeyBase(metaKeyBase);
            } else {
                if ((metaState & 1) != 0) {
                    metaFlags ^= 1;
                }
                if ((metaState & 2) != 0) {
                    metaFlags ^= 2;
                }
                if (i == 84) {
                    metaFlags ^= 4096;
                }
            }
            this._currentKeyBean.setMetaFlags(metaFlags);
            updateDialogForCurrentKey();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!this._justStarted && i != 4 && i != 82 && getCurrentFocus() == null) {
            if (MetaKeyBean.keysByKeyCode.get(Integer.valueOf(i)) == null) {
                return true;
            }
            sendCurrentKey();
            dismiss();
            return true;
        }
        this._justStarted = false;
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayAdapter<String> getSpinnerAdapter(Spinner spinner) {
        return (ArrayAdapter) spinner.getAdapter();
    }

    void sendCurrentKey() {
        int iBinarySearch = Collections.binarySearch(this._keysInList, this._currentKeyBean);
        SQLiteDatabase writableDatabase = this._database.getWritableDatabase();
        if (iBinarySearch < 0) {
            int i = -(iBinarySearch + 1);
            this._currentKeyBean.Gen_insert(writableDatabase);
            this._keysInList.add(i, this._currentKeyBean);
            ArrayAdapter<String> spinnerAdapter = getSpinnerAdapter(this._spinnerKeysInList);
            if (spinnerAdapter != null) {
                spinnerAdapter.insert(this._currentKeyBean.getKeyDesc(), i);
            }
            this._spinnerKeysInList.setSelection(i);
            this._connection.setLastMetaKeyId(this._currentKeyBean.get_Id());
        } else {
            this._connection.setLastMetaKeyId(this._keysInList.get(iBinarySearch).get_Id());
            this._spinnerKeysInList.setSelection(iBinarySearch);
        }
        this._connection.save(getContext());
        this._canvasActivity.getCanvas().getKeyboard().sendMetaKey(this._currentKeyBean);
    }

    void setMetaKeyList() {
        long metaListId = this._connection.getMetaListId();
        if (metaListId != this._listId) {
            for (int i = 0; i < _lists.size(); i++) {
                MetaList metaList = _lists.get(i);
                if (metaList.get_Id() == metaListId) {
                    this._spinnerLists.setSelection(i);
                    this._keysInList = new ArrayList<>();
                    Cursor cursorRawQuery = this._database.getReadableDatabase().rawQuery(MessageFormat.format("SELECT * FROM {0} WHERE {1} = {2} ORDER BY KEYDESC", AbstractMetaKeyBean.GEN_TABLE_NAME, "METALISTID", Long.valueOf(metaListId)), EMPTY_ARGS);
                    MetaKeyBean.Gen_populateFromCursor(cursorRawQuery, this._keysInList, MetaKeyBean.NEW);
                    cursorRawQuery.close();
                    ArrayList arrayList = new ArrayList(this._keysInList.size());
                    long lastMetaKeyId = this._canvasActivity.getConnection().getLastMetaKeyId();
                    int i2 = 0;
                    for (int i3 = 0; i3 < this._keysInList.size(); i3++) {
                        MetaKeyBean metaKeyBean = this._keysInList.get(i3);
                        arrayList.add(metaKeyBean.getKeyDesc());
                        if (lastMetaKeyId == metaKeyBean.get_Id()) {
                            i2 = i3;
                        }
                    }
                    this._spinnerKeysInList.setAdapter((SpinnerAdapter) new ArrayAdapter(getOwnerActivity(), R.layout.key_list_entry, arrayList));
                    if (arrayList.size() > 0) {
                        this._spinnerKeysInList.setSelection(i2);
                        this._currentKeyBean = new MetaKeyBean(this._keysInList.get(i2));
                    } else {
                        this._currentKeyBean = new MetaKeyBean(metaListId, 0, MetaKeyBean.allKeys.get(0));
                    }
                    updateDialogForCurrentKey();
                    this._textListName.setText(metaList.getName());
                    break;
                }
            }
            this._listId = metaListId;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDialogForCurrentKey() {
        MetaKeyBase metaKeyBase;
        int iBinarySearch;
        int metaFlags = this._currentKeyBean.getMetaFlags();
        this._checkAlt.setChecked((metaFlags & 34) != 0);
        this._checkShift.setChecked((metaFlags & 129) != 0);
        this._checkCtrl.setChecked((metaFlags & 20480) != 0);
        this._checkSuper.setChecked((metaFlags & Proxy.SOCKS_JUST_ERROR) != 0);
        if (this._currentKeyBean.isMouseClick()) {
            metaKeyBase = MetaKeyBean.keysByMouseButton.get(Integer.valueOf(this._currentKeyBean.getMouseButtons()));
        } else {
            metaKeyBase = MetaKeyBean.keysByKeySym.get(Integer.valueOf(this._currentKeyBean.getKeySym()));
        }
        if (metaKeyBase != null && (iBinarySearch = Collections.binarySearch(MetaKeyBean.allKeys, metaKeyBase)) >= 0) {
            this._spinnerKeySelect.setSelection(iBinarySearch);
        }
        this._textKeyDesc.setText(this._currentKeyBean.getKeyDesc());
    }

    @Override // com.iiordanov.bVNC.ConnectionSettable
    public void setConnection(Connection connection) {
        if (this._connection != connection) {
            this._connection = connection;
            setMetaKeyList();
        }
    }

    void setListSpinner() {
        ArrayList arrayList = new ArrayList(_lists.size());
        for (int i = 0; i < _lists.size(); i++) {
            arrayList.add(_lists.get(i).getName());
        }
        this._spinnerLists.setAdapter((SpinnerAdapter) new ArrayAdapter(getOwnerActivity(), R.layout.key_list_entry, arrayList));
    }

    class MetaCheckListener implements CompoundButton.OnCheckedChangeListener {
        private int _mask;

        MetaCheckListener(int i) {
            this._mask = i;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                MetaKeyDialog.this._currentKeyBean.setMetaFlags(MetaKeyDialog.this._currentKeyBean.getMetaFlags() | this._mask);
            } else {
                MetaKeyDialog.this._currentKeyBean.setMetaFlags(MetaKeyDialog.this._currentKeyBean.getMetaFlags() & (~this._mask));
            }
            MetaKeyDialog.this._textKeyDesc.setText(MetaKeyDialog.this._currentKeyBean.getKeyDesc());
        }
    }
}
