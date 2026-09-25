package tech.ula.library.ui;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.fragment.FragmentKt;
import com.freerdp.freerdpcore.services.HistoryDB;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.spongycastle.i18n.ErrorBundle;
import tech.ula.library.MainActivity;
import tech.ula.library.R;
import tech.ula.library.ServerService;
import tech.ula.library.databinding.FragFilesystemListBinding;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.BusyboxExecutor;
import tech.ula.library.utils.ExtensionsKt;
import tech.ula.library.utils.FilesystemManager;
import tech.ula.library.utils.PermissionHandler;
import tech.ula.library.utils.ProotDebugLogger;
import tech.ula.library.utils.UlaFiles;
import tech.ula.library.viewmodel.FilesystemDeleteState;
import tech.ula.library.viewmodel.FilesystemExportState;
import tech.ula.library.viewmodel.FilesystemListViewModel;
import tech.ula.library.viewmodel.FilesystemListViewState;
import tech.ula.library.viewmodel.FilesystemListViewmodelFactory;

/* JADX INFO: compiled from: FilesystemListFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001AB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0010H\u0002J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0010H\u0002J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0010H\u0002J\u0010\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020'H\u0002J\u0012\u0010(\u001a\u00020\u001f2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\"\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\b\u0010/\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\"\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010:H\u0016J&\u0010;\u001a\u0004\u0018\u0001082\u0006\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010@\u001a\u00020\u001fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Ltech/ula/library/ui/FilesystemListFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/ula/library/databinding/FragFilesystemListBinding;", "activeSessionObserver", "Landroidx/lifecycle/Observer;", "", "Ltech/ula/library/model/entities/Session;", "activeSessions", "activityContext", "Ltech/ula/library/MainActivity;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragFilesystemListBinding;", "filesystemChangeObserver", "Ltech/ula/library/model/entities/Filesystem;", "filesystemList", "filesystemListViewModel", "Ltech/ula/library/viewmodel/FilesystemListViewModel;", "getFilesystemListViewModel", "()Ltech/ula/library/viewmodel/FilesystemListViewModel;", "filesystemListViewModel$delegate", "Lkotlin/Lazy;", "viewStateObserver", "Ltech/ula/library/viewmodel/FilesystemListViewState;", "createExportExternalIntent", "Landroid/content/Intent;", "backupName", "", "deleteFilesystem", "", "filesystem", "editFilesystem", "exportFilesystem", "handleDeleteStatus", "viewState", "Ltech/ula/library/viewmodel/FilesystemDeleteState;", "handleExportStatus", "Ltech/ula/library/viewmodel/FilesystemExportState;", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onActivityResult", "requestCode", "", "resultCode", "data", "onContextItemSelected", "", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "onCreateContextMenu", "menu", "Landroid/view/ContextMenu;", "v", "Landroid/view/View;", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "FilesystemListProgress", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemListFragment extends Fragment {
    private FragFilesystemListBinding _binding;
    private List<Session> activeSessions;
    private MainActivity activityContext;
    private List<Filesystem> filesystemList;

    /* JADX INFO: renamed from: filesystemListViewModel$delegate, reason: from kotlin metadata */
    private final Lazy filesystemListViewModel = LazyKt.lazy(new Function0<FilesystemListViewModel>() { // from class: tech.ula.library.ui.FilesystemListFragment$filesystemListViewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FilesystemListViewModel invoke() {
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            MainActivity mainActivity = this.this$0.activityContext;
            MainActivity mainActivity2 = null;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            FilesystemDao filesystemDao = companion.getInstance(mainActivity).filesystemDao();
            UlaDatabase.Companion companion2 = UlaDatabase.INSTANCE;
            MainActivity mainActivity3 = this.this$0.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity3 = null;
            }
            SessionDao sessionDao = companion2.getInstance(mainActivity3).sessionDao();
            MainActivity mainActivity4 = this.this$0.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity4 = null;
            }
            MainActivity mainActivity5 = mainActivity4;
            MainActivity mainActivity6 = this.this$0.activityContext;
            if (mainActivity6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity6 = null;
            }
            String nativeLibraryDir = mainActivity6.getApplicationInfo().nativeLibraryDir;
            Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
            UlaFiles ulaFiles = new UlaFiles(mainActivity5, nativeLibraryDir, null, 4, null);
            MainActivity mainActivity7 = this.this$0.activityContext;
            if (mainActivity7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity7;
            }
            MainActivity mainActivity8 = mainActivity2;
            SharedPreferences sharedPreferences = mainActivity8.getSharedPreferences(mainActivity8.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return (FilesystemListViewModel) ViewModelProviders.of(this.this$0, new FilesystemListViewmodelFactory(filesystemDao, sessionDao, new FilesystemManager(ulaFiles, new BusyboxExecutor(ulaFiles, new ProotDebugLogger(sharedPreferences, ulaFiles), null, 4, null), null, 4, null))).get(FilesystemListViewModel.class);
        }
    });
    private final Observer<List<Filesystem>> filesystemChangeObserver = new Observer() { // from class: tech.ula.library.ui.FilesystemListFragment$$ExternalSyntheticLambda0
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            FilesystemListFragment.filesystemChangeObserver$lambda$1(this.f$0, (List) obj);
        }
    };
    private final Observer<FilesystemListViewState> viewStateObserver = new Observer() { // from class: tech.ula.library.ui.FilesystemListFragment$$ExternalSyntheticLambda1
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            FilesystemListFragment.viewStateObserver$lambda$3(this.f$0, (FilesystemListViewState) obj);
        }
    };
    private final Observer<List<Session>> activeSessionObserver = new Observer() { // from class: tech.ula.library.ui.FilesystemListFragment$$ExternalSyntheticLambda2
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            FilesystemListFragment.activeSessionObserver$lambda$5(this.f$0, (List) obj);
        }
    };

    /* JADX INFO: compiled from: FilesystemListFragment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Ltech/ula/library/ui/FilesystemListFragment$FilesystemListProgress;", "", "stopProgressFromFilesystemList", "", "updateFilesystemDeleteProgress", "updateFilesystemExportProgress", ErrorBundle.DETAIL_ENTRY, "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface FilesystemListProgress {
        void stopProgressFromFilesystemList();

        void updateFilesystemDeleteProgress();

        void updateFilesystemExportProgress(String details);
    }

    private final FilesystemListViewModel getFilesystemListViewModel() {
        return (FilesystemListViewModel) this.filesystemListViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void filesystemChangeObserver$lambda$1(FilesystemListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.filesystemList = list;
            ListView listView = this$0.getBinding().listFilesystems;
            MainActivity mainActivity = this$0.activityContext;
            List<Filesystem> list2 = null;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            MainActivity mainActivity2 = mainActivity;
            List<Filesystem> list3 = this$0.filesystemList;
            if (list3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filesystemList");
            } else {
                list2 = list3;
            }
            listView.setAdapter((ListAdapter) new FilesystemListAdapter(mainActivity2, list2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void viewStateObserver$lambda$3(FilesystemListFragment this$0, FilesystemListViewState filesystemListViewState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (filesystemListViewState != null) {
            if (filesystemListViewState instanceof FilesystemExportState) {
                this$0.handleExportStatus((FilesystemExportState) filesystemListViewState);
            } else if (filesystemListViewState instanceof FilesystemDeleteState) {
                this$0.handleDeleteStatus((FilesystemDeleteState) filesystemListViewState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void activeSessionObserver$lambda$5(FilesystemListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.activeSessions = list;
        }
    }

    private final FragFilesystemListBinding getBinding() {
        FragFilesystemListBinding fragFilesystemListBinding = this._binding;
        Intrinsics.checkNotNull(fragFilesystemListBinding);
        return fragFilesystemListBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragFilesystemListBinding.inflate(inflater, container, false);
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        this.activityContext = (MainActivity) activity;
        getFilesystemListViewModel().getAllFilesystems().observe(getViewLifecycleOwner(), this.filesystemChangeObserver);
        getFilesystemListViewModel().getViewState().observe(getViewLifecycleOwner(), this.viewStateObserver);
        getFilesystemListViewModel().getAllActiveSessions().observe(getViewLifecycleOwner(), this.activeSessionObserver);
        registerForContextMenu(getBinding().listFilesystems);
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(v, "v");
        super.onCreateContextMenu(menu, v, menuInfo);
        Intrinsics.checkNotNull(menuInfo, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo");
        int i = ((AdapterView.AdapterContextMenuInfo) menuInfo).position;
        List<Filesystem> list = this.filesystemList;
        MainActivity mainActivity = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filesystemList");
            list = null;
        }
        Filesystem filesystem = list.get(i);
        MainActivity mainActivity2 = this.activityContext;
        if (mainActivity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity = mainActivity2;
        }
        mainActivity.getMenuInflater().inflate(R.menu.context_menu_filesystems, menu);
        if (filesystem.isProtected()) {
            menu.removeItem(R.id.menu_item_filesystem_delete);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        ContextMenu.ContextMenuInfo menuInfo = item.getMenuInfo();
        Intrinsics.checkNotNull(menuInfo, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo");
        int i = ((AdapterView.AdapterContextMenuInfo) menuInfo).position;
        List<Filesystem> list = this.filesystemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filesystemList");
            list = null;
        }
        Filesystem filesystem = list.get(i);
        int itemId = item.getItemId();
        if (itemId == R.id.menu_item_filesystem_edit) {
            editFilesystem(filesystem);
            return true;
        }
        if (itemId == R.id.menu_item_filesystem_delete) {
            deleteFilesystem(filesystem);
            return true;
        }
        if (itemId == R.id.menu_item_filesystem_export) {
            exportFilesystem(filesystem);
            return true;
        }
        super.onContextItemSelected(item);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        Uri data2;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != 7 || data == null || (data2 = data.getData()) == null) {
            return;
        }
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        File filesDir = mainActivity.getFilesDir();
        FilesystemListViewModel filesystemListViewModel = getFilesystemListViewModel();
        Intrinsics.checkNotNull(filesDir);
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        ContentResolver contentResolver = mainActivity2.getContentResolver();
        Intrinsics.checkNotNullExpressionValue(contentResolver, "getContentResolver(...)");
        FilesystemListViewModel.startExport$default(filesystemListViewModel, filesDir, data2, contentResolver, null, 8, null);
    }

    private final void editFilesystem(Filesystem filesystem) {
        FragmentKt.findNavController(this).navigate(R.id.filesystem_edit_fragment, BundleKt.bundleOf(TuplesKt.to("filesystem", filesystem), TuplesKt.to("editExisting", Boolean.valueOf(!Intrinsics.areEqual(filesystem.getName(), "")))));
    }

    private final void deleteFilesystem(Filesystem filesystem) {
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        Intent intent = new Intent(mainActivity, (Class<?>) ServerService.class);
        intent.putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "filesystemIsBeingDeleted");
        intent.putExtra("filesystemId", filesystem.getId());
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        mainActivity2.startService(intent);
        FilesystemListViewModel.deleteFilesystemById$default(getFilesystemListViewModel(), filesystem.getId(), null, 2, null);
    }

    private final void exportFilesystem(Filesystem filesystem) {
        PermissionHandler.Companion companion = PermissionHandler.INSTANCE;
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        if (!companion.permissionsAreGranted(mainActivity)) {
            PermissionHandler.Companion companion2 = PermissionHandler.INSTANCE;
            MainActivity mainActivity3 = this.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity3;
            }
            companion2.showPermissionsNecessaryDialog(mainActivity2, false);
            return;
        }
        Intent intentCreateExportExternalIntent = createExportExternalIntent(getFilesystemListViewModel().getFilesystemBackupName(filesystem));
        getFilesystemListViewModel().setFilesystemToBackup(filesystem);
        startActivityForResult(intentCreateExportExternalIntent, 7);
    }

    private final Intent createExportExternalIntent(String backupName) {
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("application/*");
        intent.putExtra("android.intent.extra.TITLE", backupName);
        return intent;
    }

    private final void handleExportStatus(FilesystemExportState viewState) {
        String string;
        MainActivity mainActivity = null;
        if (viewState instanceof FilesystemExportState.Update) {
            MainActivity mainActivity2 = this.activityContext;
            if (mainActivity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity2;
            }
            mainActivity.updateFilesystemExportProgress(((FilesystemExportState.Update) viewState).getDetails());
            return;
        }
        if (viewState instanceof FilesystemExportState.Success) {
            MainActivity mainActivity3 = this.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity3 = null;
            }
            mainActivity3.stopProgressFromFilesystemList();
            MainActivity mainActivity4 = this.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity4;
            }
            Toast.makeText(mainActivity, R.string.backup_export_success, 1).show();
            return;
        }
        if (!(viewState instanceof FilesystemExportState.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        MainActivity mainActivity5 = this.activityContext;
        if (mainActivity5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity5 = null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(mainActivity5);
        FilesystemExportState.Failure failure = (FilesystemExportState.Failure) viewState;
        if (failure.getReason() == R.string.error_export_execution_failure) {
            string = getString(failure.getReason(), failure.getDetails());
        } else {
            string = getString(failure.getReason());
        }
        Intrinsics.checkNotNull(string);
        builder.setMessage(getString(R.string.export_failure) + StringUtils.LF + string).create().show();
        MainActivity mainActivity6 = this.activityContext;
        if (mainActivity6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity = mainActivity6;
        }
        mainActivity.stopProgressFromFilesystemList();
    }

    private final void handleDeleteStatus(FilesystemDeleteState viewState) {
        MainActivity mainActivity = null;
        if (viewState instanceof FilesystemDeleteState.InProgress) {
            MainActivity mainActivity2 = this.activityContext;
            if (mainActivity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity2;
            }
            mainActivity.updateFilesystemDeleteProgress();
            return;
        }
        if (viewState instanceof FilesystemDeleteState.Success) {
            MainActivity mainActivity3 = this.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity3;
            }
            mainActivity.stopProgressFromFilesystemList();
            return;
        }
        if (!(viewState instanceof FilesystemDeleteState.Failure)) {
            throw new NoWhenBranchMatchedException();
        }
        MainActivity mainActivity4 = this.activityContext;
        if (mainActivity4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity4 = null;
        }
        int i = R.string.general_error_title;
        String string = getString(R.string.error_filesystem_delete);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ExtensionsKt.displayGenericErrorDialog$default(mainActivity4, i, string, null, 4, null);
        MainActivity mainActivity5 = this.activityContext;
        if (mainActivity5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity = mainActivity5;
        }
        mainActivity.stopProgressFromFilesystemList();
    }
}
