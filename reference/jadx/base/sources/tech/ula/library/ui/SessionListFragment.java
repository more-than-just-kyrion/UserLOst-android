package tech.ula.library.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.fragment.FragmentKt;
import com.freerdp.freerdpcore.services.HistoryDB;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.MainActivity;
import tech.ula.library.R;
import tech.ula.library.ServerService;
import tech.ula.library.databinding.FragSessionListBinding;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.viewmodel.SessionListViewModel;
import tech.ula.library.viewmodel.SessionListViewModelFactory;

/* JADX INFO: compiled from: SessionListFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001@B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0018\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0010\u0010*\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0012\u0010+\u001a\u00020#2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010'\u001a\u00020(H\u0016J\u0012\u0010/\u001a\u00020#2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\"\u00100\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104H\u0016J\u0018\u00105\u001a\u00020#2\u0006\u0010$\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J&\u00109\u001a\u0004\u0018\u0001022\u0006\u00107\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010=\u001a\u00020#H\u0016J\u0010\u0010>\u001a\u00020 2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010?\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0011X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u000f\u001a\u0004\b\u0019\u0010\u001aR,\u0010\u001c\u001a \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u001e0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Ltech/ula/library/ui/SessionListFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/ula/library/databinding/FragSessionListBinding;", "activityContext", "Ltech/ula/library/MainActivity;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragSessionListBinding;", "doOnSessionSelection", "Ltech/ula/library/ui/SessionListFragment$SessionSelection;", "getDoOnSessionSelection", "()Ltech/ula/library/ui/SessionListFragment$SessionSelection;", "doOnSessionSelection$delegate", "Lkotlin/Lazy;", "filesystemList", "", "Ltech/ula/library/model/entities/Filesystem;", "sessionAdapter", "Ltech/ula/library/ui/SessionListAdapter;", "sessionList", "Ltech/ula/library/model/entities/Session;", "sessionListViewModel", "Ltech/ula/library/viewmodel/SessionListViewModel;", "getSessionListViewModel", "()Ltech/ula/library/viewmodel/SessionListViewModel;", "sessionListViewModel$delegate", "sessionsAndFilesystemsChangeObserver", "Landroidx/lifecycle/Observer;", "Lkotlin/Pair;", "deleteSession", "", "session", "doCreateSessionContextMenu", "", "menu", "Landroid/view/ContextMenu;", "doSessionContextItemSelected", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "doSessionItemClicked", "editSession", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "onCreate", "onCreateContextMenu", "v", "Landroid/view/View;", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onCreateOptionsMenu", "Landroid/view/Menu;", "inflater", "Landroid/view/MenuInflater;", "onCreateView", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onOptionsItemSelected", "stopService", "SessionSelection", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionListFragment extends Fragment {
    private FragSessionListBinding _binding;
    private MainActivity activityContext;
    private List<Filesystem> filesystemList;
    private SessionListAdapter sessionAdapter;
    private List<Session> sessionList;

    /* JADX INFO: renamed from: doOnSessionSelection$delegate, reason: from kotlin metadata */
    private final Lazy doOnSessionSelection = LazyKt.lazy(new Function0<MainActivity>() { // from class: tech.ula.library.ui.SessionListFragment$doOnSessionSelection$2
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

    /* JADX INFO: renamed from: sessionListViewModel$delegate, reason: from kotlin metadata */
    private final Lazy sessionListViewModel = LazyKt.lazy(new Function0<SessionListViewModel>() { // from class: tech.ula.library.ui.SessionListFragment$sessionListViewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SessionListViewModel invoke() {
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            return (SessionListViewModel) ViewModelProviders.of(this.this$0, new SessionListViewModelFactory(companion.getInstance(mainActivity))).get(SessionListViewModel.class);
        }
    });
    private final Observer<Pair<List<Session>, List<Filesystem>>> sessionsAndFilesystemsChangeObserver = new Observer() { // from class: tech.ula.library.ui.SessionListFragment$$ExternalSyntheticLambda1
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            SessionListFragment.sessionsAndFilesystemsChangeObserver$lambda$1(this.f$0, (Pair) obj);
        }
    };

    /* JADX INFO: compiled from: SessionListFragment.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Ltech/ula/library/ui/SessionListFragment$SessionSelection;", "", "sessionHasBeenSelected", "", "session", "Ltech/ula/library/model/entities/Session;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface SessionSelection {
        void sessionHasBeenSelected(Session session);
    }

    private final SessionSelection getDoOnSessionSelection() {
        return (SessionSelection) this.doOnSessionSelection.getValue();
    }

    private final SessionListViewModel getSessionListViewModel() {
        return (SessionListViewModel) this.sessionListViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sessionsAndFilesystemsChangeObserver$lambda$1(SessionListFragment this$0, Pair pair) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (pair != null) {
            this$0.sessionList = (List) pair.getFirst();
            this$0.filesystemList = (List) pair.getSecond();
            MainActivity mainActivity = this$0.activityContext;
            SessionListAdapter sessionListAdapter = null;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            MainActivity mainActivity2 = mainActivity;
            List<Session> list = this$0.sessionList;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sessionList");
                list = null;
            }
            List<Filesystem> list2 = this$0.filesystemList;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filesystemList");
                list2 = null;
            }
            this$0.sessionAdapter = new SessionListAdapter(mainActivity2, list, list2);
            ListView listView = this$0.getBinding().listSessions;
            SessionListAdapter sessionListAdapter2 = this$0.sessionAdapter;
            if (sessionListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sessionAdapter");
            } else {
                sessionListAdapter = sessionListAdapter2;
            }
            listView.setAdapter((ListAdapter) sessionListAdapter);
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
        inflater.inflate(R.menu.menu_create, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return item.getItemId() == R.id.menu_item_add ? editSession(new Session(0L, null, 0L, null, false, null, null, null, null, 0L, 0L, null, false, false, 0, false, 0.0f, false, false, false, false, null, false, 0L, false, 33554426, null)) : super.onOptionsItemSelected(item);
    }

    private final FragSessionListBinding getBinding() {
        FragSessionListBinding fragSessionListBinding = this._binding;
        Intrinsics.checkNotNull(fragSessionListBinding);
        return fragSessionListBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragSessionListBinding.inflate(inflater, container, false);
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
        getSessionListViewModel().getSessionsAndFilesystems().observe(getViewLifecycleOwner(), this.sessionsAndFilesystemsChangeObserver);
        registerForContextMenu(getBinding().listSessions);
        getBinding().listSessions.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: tech.ula.library.ui.SessionListFragment$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                SessionListFragment.onActivityCreated$lambda$2(this.f$0, adapterView, view, i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$2(SessionListFragment this$0, AdapterView adapterView, View view, int i, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        Intrinsics.checkNotNull(itemAtPosition, "null cannot be cast to non-null type tech.ula.library.ui.SessionListItem");
        SessionListItem sessionListItem = (SessionListItem) itemAtPosition;
        if (!(sessionListItem instanceof SessionSeparatorItem) && (sessionListItem instanceof SessionItem)) {
            this$0.doSessionItemClicked(((SessionItem) sessionListItem).getSession());
        }
    }

    private final void doSessionItemClicked(Session session) {
        getDoOnSessionSelection().sessionHasBeenSelected(session);
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(v, "v");
        super.onCreateContextMenu(menu, v, menuInfo);
        Intrinsics.checkNotNull(menuInfo, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo");
        Object item = getBinding().listSessions.getAdapter().getItem(((AdapterView.AdapterContextMenuInfo) menuInfo).position);
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type tech.ula.library.ui.SessionListItem");
        SessionListItem sessionListItem = (SessionListItem) item;
        if (!(sessionListItem instanceof SessionSeparatorItem) && (sessionListItem instanceof SessionItem)) {
            Session session = ((SessionItem) sessionListItem).getSession();
            doCreateSessionContextMenu(session, menu);
            if (session.isProtected()) {
                menu.removeItem(R.id.menu_item_session_delete);
            }
        }
    }

    private final void doCreateSessionContextMenu(Session session, ContextMenu menu) {
        MainActivity mainActivity = null;
        if (session.getActive()) {
            MainActivity mainActivity2 = this.activityContext;
            if (mainActivity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity2;
            }
            mainActivity.getMenuInflater().inflate(R.menu.context_menu_active_sessions, menu);
            return;
        }
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity = mainActivity3;
        }
        mainActivity.getMenuInflater().inflate(R.menu.context_menu_inactive_sessions, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        ContextMenu.ContextMenuInfo menuInfo = item.getMenuInfo();
        Intrinsics.checkNotNull(menuInfo, "null cannot be cast to non-null type android.widget.AdapterView.AdapterContextMenuInfo");
        Object item2 = getBinding().listSessions.getAdapter().getItem(((AdapterView.AdapterContextMenuInfo) menuInfo).position);
        Intrinsics.checkNotNull(item2, "null cannot be cast to non-null type tech.ula.library.ui.SessionListItem");
        SessionListItem sessionListItem = (SessionListItem) item2;
        if (sessionListItem instanceof SessionSeparatorItem) {
            return true;
        }
        if (sessionListItem instanceof SessionItem) {
            return doSessionContextItemSelected(((SessionItem) sessionListItem).getSession(), item);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final boolean doSessionContextItemSelected(Session session, MenuItem item) {
        int itemId = item.getItemId();
        if (itemId == R.id.menu_item_session_stop_session) {
            return stopService(session);
        }
        if (itemId == R.id.menu_item_session_edit) {
            return editSession(session);
        }
        return itemId == R.id.menu_item_session_delete ? deleteSession(session) : super.onContextItemSelected(item);
    }

    private final boolean stopService(Session session) {
        if (!session.getActive()) {
            return true;
        }
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        Intent intent = new Intent(mainActivity, (Class<?>) ServerService.class);
        intent.putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "kill");
        intent.putExtra("session", session);
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        mainActivity2.startService(intent);
        return true;
    }

    private final boolean editSession(Session session) {
        FragmentKt.findNavController(this).navigate(R.id.session_edit_fragment, BundleKt.bundleOf(TuplesKt.to("session", session), TuplesKt.to("editExisting", Boolean.valueOf(!Intrinsics.areEqual(session.getName(), "")))));
        return true;
    }

    private final boolean deleteSession(Session session) {
        stopService(session);
        getSessionListViewModel().deleteSessionById(session.getId());
        return true;
    }
}
