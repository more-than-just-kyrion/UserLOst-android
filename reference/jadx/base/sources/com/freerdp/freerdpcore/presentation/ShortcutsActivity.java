package com.freerdp.freerdpcore.presentation;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.services.SessionRequestHandlerActivity;
import com.freerdp.freerdpcore.utils.BookmarkArrayAdapter;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutsActivity extends ListActivity {
    public static final String TAG = "ShortcutsActivity";

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if ("android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction())) {
            getListView().setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.freerdp.freerdpcore.presentation.ShortcutsActivity.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    ShortcutsActivity.this.setupShortcut(view.getTag().toString(), ((TextView) view.findViewById(R.id.bookmark_text1)).getText().toString());
                }
            });
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        getListView().setAdapter((ListAdapter) new BookmarkArrayAdapter(this, android.R.layout.simple_list_item_2, GlobalApp.getManualBookmarkGateway().findAll()));
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        getListView().setAdapter((ListAdapter) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupShortcut(final String str, final String str2) {
        final EditText editText = new EditText(this);
        editText.setText(str2);
        new AlertDialog.Builder(this).setTitle(R.string.dlg_title_create_shortcut).setMessage(R.string.dlg_msg_create_shortcut).setView(editText).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.ShortcutsActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String string = editText.getText().toString();
                if (string.length() == 0) {
                    string = str2;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setClassName(this, SessionRequestHandlerActivity.class.getName());
                intent.setData(Uri.parse(str));
                Intent intent2 = new Intent();
                intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
                intent2.putExtra("android.intent.extra.shortcut.NAME", string);
                intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.icon_launcher_freerdp));
                ShortcutsActivity.this.setResult(-1, intent2);
                ShortcutsActivity.this.finish();
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.ShortcutsActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }
}
