package com.freerdp.freerdpcore.presentation;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.InputDeviceCompat;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.domain.PlaceholderBookmark;
import com.freerdp.freerdpcore.domain.QuickConnectBookmark;
import com.freerdp.freerdpcore.utils.BookmarkArrayAdapter;
import com.freerdp.freerdpcore.utils.SeparatedListAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HomeActivity extends AppCompatActivity {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String ADD_BOOKMARK_PLACEHOLDER = "add_bookmark";
    private static final String PARAM_SUPERBAR_TEXT = "superbar_text";
    private static final String TAG = "HomeActivity";
    private PlaceholderBookmark addBookmarkPlaceholder;
    private Button clearTextButton;
    private ListView listViewBookmarks;
    View mDecor;
    private BookmarkArrayAdapter manualBookmarkAdapter;
    private String sectionLabelBookmarks;
    private SeparatedListAdapter separatedListAdapter;
    private EditText superBarEditText;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTitle(R.string.title_home);
        super.onCreate(bundle);
        setContentView(R.layout.home);
        View decorView = getWindow().getDecorView();
        this.mDecor = decorView;
        decorView.setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        Log.i(TAG, "Max HeapSize: " + Runtime.getRuntime().maxMemory());
        Log.i(TAG, "App data folder: " + getFilesDir().toString());
        this.sectionLabelBookmarks = getResources().getString(R.string.section_bookmarks);
        PlaceholderBookmark placeholderBookmark = new PlaceholderBookmark();
        this.addBookmarkPlaceholder = placeholderBookmark;
        placeholderBookmark.setName(ADD_BOOKMARK_PLACEHOLDER);
        this.addBookmarkPlaceholder.setLabel(getResources().getString(R.string.list_placeholder_add_bookmark));
        Intent intent = getIntent();
        Uri data = intent.getData();
        if ("android.intent.action.VIEW".equals(intent.getAction()) && data != null) {
            String fileReference = ConnectionReference.getFileReference(data.getPath());
            Bundle bundle2 = new Bundle();
            bundle2.putString("conRef", fileReference);
            Intent intent2 = new Intent(getApplicationContext(), (Class<?>) BookmarkActivity.class);
            intent2.putExtras(bundle2);
            startActivity(intent2);
        }
        this.clearTextButton = (Button) findViewById(R.id.clear_search_btn);
        this.superBarEditText = (EditText) findViewById(R.id.superBarEditText);
        ListView listView = (ListView) findViewById(R.id.listViewBookmarks);
        this.listViewBookmarks = listView;
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.freerdp.freerdpcore.presentation.HomeActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String sectionForPosition = HomeActivity.this.separatedListAdapter.getSectionForPosition(i);
                Log.v(HomeActivity.TAG, "Clicked on item id " + HomeActivity.this.separatedListAdapter.getItemId(i) + " in section " + sectionForPosition);
                if (sectionForPosition.equals(HomeActivity.this.sectionLabelBookmarks)) {
                    String string = view.getTag().toString();
                    if (ConnectionReference.isManualBookmarkReference(string) || ConnectionReference.isHostnameReference(string)) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putString("conRef", string);
                        Intent intent3 = new Intent(view.getContext(), (Class<?>) SessionActivity.class);
                        intent3.putExtras(bundle3);
                        HomeActivity.this.startActivity(intent3);
                        HomeActivity.this.superBarEditText.setText("");
                        HomeActivity.this.superBarEditText.clearFocus();
                        return;
                    }
                    if (ConnectionReference.isPlaceholderReference(string) && ConnectionReference.getPlaceholder(string).equals(HomeActivity.ADD_BOOKMARK_PLACEHOLDER)) {
                        HomeActivity.this.startActivity(new Intent(view.getContext(), (Class<?>) BookmarkActivity.class));
                    }
                }
            }
        });
        this.listViewBookmarks.setOnCreateContextMenuListener(new View.OnCreateContextMenuListener() { // from class: com.freerdp.freerdpcore.presentation.HomeActivity.2
            @Override // android.view.View.OnCreateContextMenuListener
            public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
                View view2 = ((AdapterView.AdapterContextMenuInfo) contextMenuInfo).targetView;
                String string = view2.getTag() != null ? view2.getTag().toString() : null;
                if (string == null || ConnectionReference.isHostnameReference(string) || ConnectionReference.isPlaceholderReference(string)) {
                    return;
                }
                HomeActivity.this.getMenuInflater().inflate(R.menu.bookmark_context_menu, contextMenu);
                contextMenu.setHeaderTitle(HomeActivity.this.getResources().getString(R.string.menu_title_bookmark));
            }
        });
        this.superBarEditText.addTextChangedListener(new SuperBarTextWatcher());
        this.clearTextButton.setOnClickListener(new View.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.HomeActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomeActivity.this.superBarEditText.setText("");
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDecor.setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        this.superBarEditText.requestFocus();
        return true;
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        String string = ((AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo()).targetView.getTag().toString();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.bookmark_connect) {
            Bundle bundle = new Bundle();
            bundle.putString("conRef", string);
            Intent intent = new Intent(this, (Class<?>) SessionActivity.class);
            intent.putExtras(bundle);
            startActivity(intent);
            return true;
        }
        if (itemId == R.id.bookmark_edit) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("conRef", string);
            Intent intent2 = new Intent(getApplicationContext(), (Class<?>) BookmarkActivity.class);
            intent2.putExtras(bundle2);
            startActivity(intent2);
            return true;
        }
        if (itemId != R.id.bookmark_delete) {
            return false;
        }
        if (ConnectionReference.isManualBookmarkReference(string)) {
            long manualBookmarkId = ConnectionReference.getManualBookmarkId(string);
            GlobalApp.getManualBookmarkGateway().delete(manualBookmarkId);
            this.manualBookmarkAdapter.remove(manualBookmarkId);
            this.separatedListAdapter.notifyDataSetChanged();
        }
        this.superBarEditText.setText("");
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.v(TAG, "HomeActivity.onResume");
        BookmarkArrayAdapter bookmarkArrayAdapter = new BookmarkArrayAdapter(this, R.layout.bookmark_list_item, GlobalApp.getManualBookmarkGateway().findAll());
        this.manualBookmarkAdapter = bookmarkArrayAdapter;
        bookmarkArrayAdapter.insert(this.addBookmarkPlaceholder, 0);
        SeparatedListAdapter separatedListAdapter = new SeparatedListAdapter(this);
        this.separatedListAdapter = separatedListAdapter;
        separatedListAdapter.addSection(this.sectionLabelBookmarks, this.manualBookmarkAdapter);
        this.listViewBookmarks.setAdapter((ListAdapter) this.separatedListAdapter);
        String string = this.superBarEditText.getText().toString();
        if (string.length() > 0) {
            this.superBarEditText.setText(string);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Log.v(TAG, "HomeActivity.onPause");
        this.listViewBookmarks.setAdapter((ListAdapter) null);
        this.separatedListAdapter = null;
        this.manualBookmarkAdapter = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (ApplicationSettingsActivity.getAskOnExit(this)) {
            CheckBox checkBox = new CheckBox(this);
            checkBox.setChecked(!ApplicationSettingsActivity.getAskOnExit(this));
            checkBox.setText(R.string.dlg_dont_show_again);
            new AlertDialog.Builder(this).setTitle(R.string.dlg_title_exit).setMessage(R.string.dlg_msg_exit).setView(checkBox).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.HomeActivity.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    HomeActivity.this.finish();
                }
            }).setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: com.freerdp.freerdpcore.presentation.HomeActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }).create().show();
            return;
        }
        super.onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(PARAM_SUPERBAR_TEXT, this.superBarEditText.getText().toString());
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.superBarEditText.setText(bundle.getString(PARAM_SUPERBAR_TEXT));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.home_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.newBookmark) {
            startActivity(new Intent(this, (Class<?>) BookmarkActivity.class));
            return true;
        }
        if (itemId == R.id.appSettings) {
            startActivity(new Intent(this, (Class<?>) ApplicationSettingsActivity.class));
            return true;
        }
        if (itemId == R.id.help) {
            startActivity(new Intent(this, (Class<?>) HelpActivity.class));
            return true;
        }
        if (itemId != R.id.about) {
            return true;
        }
        startActivity(new Intent(this, (Class<?>) AboutActivity.class));
        return true;
    }

    private class SuperBarTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private SuperBarTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (HomeActivity.this.separatedListAdapter != null) {
                String string = editable.toString();
                if (string.length() > 0) {
                    ArrayList<BookmarkBase> arrayListFindHistory = GlobalApp.getQuickConnectHistoryGateway().findHistory(string);
                    arrayListFindHistory.addAll(GlobalApp.getManualBookmarkGateway().findByLabelOrHostnameLike(string));
                    HomeActivity.this.manualBookmarkAdapter.replaceItems(arrayListFindHistory);
                    QuickConnectBookmark quickConnectBookmark = new QuickConnectBookmark();
                    quickConnectBookmark.setLabel(string);
                    quickConnectBookmark.setHostname(string);
                    HomeActivity.this.manualBookmarkAdapter.insert(quickConnectBookmark, 0);
                } else {
                    HomeActivity.this.manualBookmarkAdapter.replaceItems(GlobalApp.getManualBookmarkGateway().findAll());
                    HomeActivity.this.manualBookmarkAdapter.insert(HomeActivity.this.addBookmarkPlaceholder, 0);
                }
                HomeActivity.this.separatedListAdapter.notifyDataSetChanged();
            }
        }
    }
}
