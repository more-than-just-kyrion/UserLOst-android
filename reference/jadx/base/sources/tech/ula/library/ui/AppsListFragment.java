package tech.ula.library.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.freerdp.freerdpcore.services.HistoryDB;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import tech.ula.library.MainActivity;
import tech.ula.library.R;
import tech.ula.library.ServerService;
import tech.ula.library.databinding.FragAppListBinding;
import tech.ula.library.model.daos.AppsDao;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.remote.GithubAppsFetcher;
import tech.ula.library.model.repositories.AppRefreshStatus;
import tech.ula.library.model.repositories.AppsRepository;
import tech.ula.library.model.repositories.RefreshStatus;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.preferences.AppsPreferences;
import tech.ula.library.viewmodel.AppsListViewModel;
import tech.ula.library.viewmodel.AppsListViewModelFactory;

/* JADX INFO: compiled from: AppsListFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0001JB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\b\u0010-\u001a\u00020*H\u0002J\b\u0010.\u001a\u00020/H\u0002J\u0012\u00100\u001a\u00020*2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020*2\u0006\u00104\u001a\u00020\tH\u0016J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0012\u00109\u001a\u00020*2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0018\u0010:\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010;\u001a\u00020<H\u0016J&\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010;\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010A2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\b\u0010B\u001a\u00020*H\u0016J\u0010\u0010C\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\b\u0010D\u001a\u00020*H\u0002J\u0010\u0010E\u001a\u0002062\u0006\u00104\u001a\u00020\tH\u0002J\u0010\u0010F\u001a\u00020*2\u0006\u0010G\u001a\u00020/H\u0002J\u0010\u0010H\u001a\u0002062\u0006\u00104\u001a\u00020\tH\u0002J\b\u0010I\u001a\u000206H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0011\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0011\u001a\u0004\b&\u0010'¨\u0006K"}, d2 = {"Ltech/ula/library/ui/AppsListFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/ula/library/ui/AppsListAdapter$AppsClickHandler;", "()V", "_binding", "Ltech/ula/library/databinding/FragAppListBinding;", "activeAppsObserver", "Landroidx/lifecycle/Observer;", "", "Ltech/ula/library/model/entities/App;", "activityContext", "Ltech/ula/library/MainActivity;", "appsAdapter", "Ltech/ula/library/ui/AppsListAdapter;", "getAppsAdapter", "()Ltech/ula/library/ui/AppsListAdapter;", "appsAdapter$delegate", "Lkotlin/Lazy;", "appsObserver", "appsPreferences", "Ltech/ula/library/utils/preferences/AppsPreferences;", "getAppsPreferences", "()Ltech/ula/library/utils/preferences/AppsPreferences;", "appsPreferences$delegate", "binding", "getBinding", "()Ltech/ula/library/databinding/FragAppListBinding;", "doOnAppSelection", "Ltech/ula/library/ui/AppsListFragment$AppSelection;", "getDoOnAppSelection", "()Ltech/ula/library/ui/AppsListFragment$AppSelection;", "doOnAppSelection$delegate", "refreshStatus", "Ltech/ula/library/model/repositories/RefreshStatus;", "refreshStatusObserver", "Ltech/ula/library/model/repositories/AppRefreshStatus;", "viewModel", "Ltech/ula/library/viewmodel/AppsListViewModel;", "getViewModel", "()Ltech/ula/library/viewmodel/AppsListViewModel;", "viewModel$delegate", "createContextMenu", "", "menu", "Landroid/view/Menu;", "doRefresh", "getUserlandVersion", "", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onClick", "app", "onContextItemSelected", "", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "onCreate", "onCreateOptionsMenu", "inflater", "Landroid/view/MenuInflater;", "onCreateView", "Landroid/view/View;", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onOptionsItemSelected", "setLatestUpdateUserlandVersion", "showAppDetails", "showRefreshUnavailableDialog", JsonMarshaller.MESSAGE, "stopAppSession", "userlandIsNewVersion", "AppSelection", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppsListFragment extends Fragment implements AppsListAdapter.AppsClickHandler {
    private FragAppListBinding _binding;
    private MainActivity activityContext;

    /* JADX INFO: renamed from: doOnAppSelection$delegate, reason: from kotlin metadata */
    private final Lazy doOnAppSelection = LazyKt.lazy(new Function0<MainActivity>() { // from class: tech.ula.library.ui.AppsListFragment$doOnAppSelection$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final MainActivity invoke() {
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity != null) {
                return mainActivity;
            }
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            return null;
        }
    });

    /* JADX INFO: renamed from: appsAdapter$delegate, reason: from kotlin metadata */
    private final Lazy appsAdapter = LazyKt.lazy(new Function0<AppsListAdapter>() { // from class: tech.ula.library.ui.AppsListFragment$appsAdapter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final AppsListAdapter invoke() {
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            return new AppsListAdapter(mainActivity, this.this$0);
        }
    });
    private RefreshStatus refreshStatus = RefreshStatus.INACTIVE;

    /* JADX INFO: renamed from: appsPreferences$delegate, reason: from kotlin metadata */
    private final Lazy appsPreferences = LazyKt.lazy(new Function0<AppsPreferences>() { // from class: tech.ula.library.ui.AppsListFragment$appsPreferences$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final AppsPreferences invoke() {
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            return new AppsPreferences(mainActivity);
        }
    });

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = LazyKt.lazy(new Function0<AppsListViewModel>() { // from class: tech.ula.library.ui.AppsListFragment$viewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final AppsListViewModel invoke() {
            MainActivity mainActivity;
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            MainActivity mainActivity2 = this.this$0.activityContext;
            if (mainActivity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity2 = null;
            }
            AppsDao appsDao = companion.getInstance(mainActivity2).appsDao();
            MainActivity mainActivity3 = this.this$0.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity3 = null;
            }
            String strValueOf = String.valueOf(mainActivity3.getFilesDir());
            MainActivity mainActivity4 = this.this$0.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity4 = null;
            }
            AssetManager assets = mainActivity4.getAssets();
            Intrinsics.checkNotNullExpressionValue(assets, "getAssets(...)");
            MainActivity mainActivity5 = this.this$0.activityContext;
            if (mainActivity5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity5 = null;
            }
            MainActivity mainActivity6 = mainActivity5;
            SharedPreferences sharedPreferences = mainActivity6.getSharedPreferences(mainActivity6.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            GithubAppsFetcher githubAppsFetcher = new GithubAppsFetcher(strValueOf, assets, sharedPreferences, null, null, 24, null);
            AppsPreferences appsPreferences = this.this$0.getAppsPreferences();
            MainActivity mainActivity7 = this.this$0.activityContext;
            if (mainActivity7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            } else {
                mainActivity = mainActivity7;
            }
            MainActivity mainActivity8 = mainActivity;
            SharedPreferences sharedPreferences2 = mainActivity8.getSharedPreferences(mainActivity8.getPackageName() + "_preferences", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences2, "getSharedPreferences(...)");
            return (AppsListViewModel) ViewModelProviders.of(this.this$0, new AppsListViewModelFactory(new AppsRepository(appsDao, githubAppsFetcher, appsPreferences, sharedPreferences2, null, 16, null))).get(AppsListViewModel.class);
        }
    });
    private final Observer<List<App>> appsObserver = new Observer() { // from class: tech.ula.library.ui.AppsListFragment$$ExternalSyntheticLambda2
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            AppsListFragment.appsObserver$lambda$1(this.f$0, (List) obj);
        }
    };
    private final Observer<List<App>> activeAppsObserver = new Observer() { // from class: tech.ula.library.ui.AppsListFragment$$ExternalSyntheticLambda3
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            AppsListFragment.activeAppsObserver$lambda$3(this.f$0, (List) obj);
        }
    };
    private final Observer<AppRefreshStatus> refreshStatusObserver = new Observer() { // from class: tech.ula.library.ui.AppsListFragment$$ExternalSyntheticLambda4
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            AppsListFragment.refreshStatusObserver$lambda$5(this.f$0, (AppRefreshStatus) obj);
        }
    };

    /* JADX INFO: compiled from: AppsListFragment.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Ltech/ula/library/ui/AppsListFragment$AppSelection;", "", "appHasBeenSelected", "", "app", "Ltech/ula/library/model/entities/App;", "autoStart", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface AppSelection {
        void appHasBeenSelected(App app, boolean autoStart);
    }

    private final AppSelection getDoOnAppSelection() {
        return (AppSelection) this.doOnAppSelection.getValue();
    }

    private final AppsListAdapter getAppsAdapter() {
        return (AppsListAdapter) this.appsAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppsPreferences getAppsPreferences() {
        return (AppsPreferences) this.appsPreferences.getValue();
    }

    private final AppsListViewModel getViewModel() {
        return (AppsListViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void appsObserver$lambda$1(AppsListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.getAppsAdapter().updateApps(list);
            this$0.getBinding().listApps.scrollToPosition(0);
            if (list.isEmpty() || this$0.userlandIsNewVersion()) {
                this$0.doRefresh();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void activeAppsObserver$lambda$3(AppsListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.getAppsAdapter().updateActiveApps(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshStatusObserver$lambda$5(AppsListFragment this$0, AppRefreshStatus appRefreshStatus) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appRefreshStatus != null) {
            this$0.refreshStatus = appRefreshStatus.getRefreshStatus();
            this$0.getBinding().swipeRefresh.setRefreshing(this$0.refreshStatus == RefreshStatus.ACTIVE);
            if (this$0.refreshStatus == RefreshStatus.FAILED) {
                this$0.showRefreshUnavailableDialog(appRefreshStatus.getMessage());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        inflater.inflate(R.menu.menu_refresh, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() == R.id.menu_item_refresh) {
            getBinding().swipeRefresh.setRefreshing(true);
            doRefresh();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // tech.ula.library.ui.AppsListAdapter.AppsClickHandler
    public void onClick(App app) {
        Intrinsics.checkNotNullParameter(app, "app");
        getDoOnAppSelection().appHasBeenSelected(app, false);
    }

    @Override // tech.ula.library.ui.AppsListAdapter.AppsClickHandler
    public void createContextMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        MainActivity mainActivity = this.activityContext;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        mainActivity.getMenuInflater().inflate(R.menu.context_menu_apps, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == R.id.menu_item_app_details) {
            return showAppDetails(getAppsAdapter().getContextMenuItem());
        }
        return itemId == R.id.menu_item_stop_app ? stopAppSession(getAppsAdapter().getContextMenuItem()) : super.onContextItemSelected(item);
    }

    private final FragAppListBinding getBinding() {
        FragAppListBinding fragAppListBinding = this._binding;
        Intrinsics.checkNotNull(fragAppListBinding);
        return fragAppListBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragAppListBinding.inflate(inflater, container, false);
        LinearLayout root = getBinding().getRoot();
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
        getViewModel().getAppsList().observe(getViewLifecycleOwner(), this.appsObserver);
        getViewModel().getActiveApps().observe(getViewLifecycleOwner(), this.activeAppsObserver);
        getViewModel().getRefreshStatus().observe(getViewLifecycleOwner(), this.refreshStatusObserver);
        registerForContextMenu(getBinding().listApps);
        getBinding().listApps.setLayoutManager(new LinearLayoutManager(getBinding().listApps.getContext()));
        getBinding().listApps.setAdapter(getAppsAdapter());
        getBinding().swipeRefresh.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: tech.ula.library.ui.AppsListFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                AppsListFragment.onActivityCreated$lambda$6(this.f$0);
            }
        });
        getBinding().swipeRefresh.setColorSchemeResources(R.color.holo_blue_light, R.color.holo_green_light, R.color.holo_orange_light, R.color.holo_red_light);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$6(AppsListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.doRefresh();
    }

    private final void doRefresh() {
        getViewModel().refreshAppsList();
        setLatestUpdateUserlandVersion();
    }

    private final boolean showAppDetails(App app) {
        FragmentKt.findNavController(this).navigate(R.id.action_app_list_to_app_details, BundleKt.bundleOf(TuplesKt.to("app", app)));
        return true;
    }

    private final boolean stopAppSession(App app) {
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        Intent intentPutExtra = new Intent(mainActivity, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "stopApp").putExtra("app", app);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        mainActivity2.startService(intentPutExtra);
        return true;
    }

    private final void showRefreshUnavailableDialog(String message) {
        MainActivity mainActivity = this.activityContext;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        new AlertDialog.Builder(mainActivity).setMessage(getString(R.string.alert_network_required_for_refresh) + StringUtils.LF + getString(R.string.alert_unreachable_app) + " " + message).setTitle(R.string.general_error_title).setPositiveButton(R.string.button_ok, new DialogInterface.OnClickListener() { // from class: tech.ula.library.ui.AppsListFragment$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    private final boolean userlandIsNewVersion() {
        String userlandVersion = getUserlandVersion();
        MainActivity mainActivity = this.activityContext;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        MainActivity mainActivity2 = mainActivity;
        SharedPreferences sharedPreferences = mainActivity2.getSharedPreferences(mainActivity2.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return !Intrinsics.areEqual(userlandVersion, sharedPreferences.getString("lastAppsUpdate", ""));
    }

    private final void setLatestUpdateUserlandVersion() {
        String userlandVersion = getUserlandVersion();
        MainActivity mainActivity = this.activityContext;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        MainActivity mainActivity2 = mainActivity;
        SharedPreferences sharedPreferences = mainActivity2.getSharedPreferences(mainActivity2.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("lastAppsUpdate", userlandVersion);
        editorEdit.apply();
    }

    private final String getUserlandVersion() {
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        PackageManager packageManager = mainActivity.getPackageManager();
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        String str = packageManager.getPackageInfo(mainActivity2.getPackageName(), 0).versionName;
        Intrinsics.checkNotNull(str);
        return str;
    }
}
