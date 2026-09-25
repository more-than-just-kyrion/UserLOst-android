package com.iiordanov.bVNC;

import android.app.ListActivity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import com.undatech.remoteClientUi.R;
import net.sqlcipher.Cursor;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionListActivity extends ListActivity {
    Database database;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.database = new Database(this);
        if (isMasterPasswordEnabled()) {
            Utils.showFatalErrorMessage(this, getResources().getString(R.string.master_password_error_shortcuts_not_supported));
            return;
        }
        Cursor cursorQuery = this.database.getReadableDatabase().query(AbstractConnectionBean.GEN_TABLE_NAME, new String[]{"_id", AbstractConnectionBean.GEN_FIELD_NICKNAME, AbstractConnectionBean.GEN_FIELD_USERNAME, AbstractConnectionBean.GEN_FIELD_ADDRESS, AbstractConnectionBean.GEN_FIELD_PORT, AbstractConnectionBean.GEN_FIELD_REPEATERID}, "KEEPPASSWORD <> 0", null, null, null, AbstractConnectionBean.GEN_FIELD_NICKNAME);
        startManagingCursor(cursorQuery);
        setListAdapter(new SimpleCursorAdapter(this, R.layout.connection_list, cursorQuery, new String[]{AbstractConnectionBean.GEN_FIELD_NICKNAME, AbstractConnectionBean.GEN_FIELD_ADDRESS, AbstractConnectionBean.GEN_FIELD_PORT, AbstractConnectionBean.GEN_FIELD_REPEATERID}, new int[]{R.id.list_text_nickname, R.id.list_text_address, R.id.list_text_port, R.id.list_text_repeater}));
    }

    @Override // android.app.ListActivity
    protected void onListItemClick(ListView listView, View view, int i, long j) {
        ConnectionBean connectionBean = new ConnectionBean(this);
        if (connectionBean.Gen_read(this.database.getReadableDatabase(), j)) {
            String packageName = getPackageName();
            Parcelable parcelableFromContext = Intent.ShortcutIconResource.fromContext(this, R.drawable.icon);
            if (Utils.isRdp(packageName)) {
                parcelableFromContext = Intent.ShortcutIconResource.fromContext(this, R.drawable.icon_ardp);
            } else if (Utils.isSpice(packageName)) {
                parcelableFromContext = Intent.ShortcutIconResource.fromContext(this, R.drawable.icon_aspice);
            }
            Intent intent = new Intent();
            Intent intent2 = new Intent(this, (Class<?>) RemoteCanvasActivity.class);
            Uri.Builder builder = new Uri.Builder();
            builder.authority(Utils.getConnectionString(this) + ":" + connectionBean.get_Id());
            builder.scheme(Utils.getConnectionScheme(this));
            intent2.setData(builder.build());
            intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
            intent.putExtra("android.intent.extra.shortcut.NAME", connectionBean.getNickname());
            intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", parcelableFromContext);
            setResult(-1, intent);
        } else {
            setResult(0);
        }
        finish();
    }

    @Override // android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        Database database = this.database;
        if (database != null) {
            database.close();
        }
        super.onDestroy();
    }

    private boolean isMasterPasswordEnabled() {
        return getSharedPreferences(Constants.generalSettingsTag, 0).getBoolean(Constants.masterPasswordEnabledTag, false);
    }
}
