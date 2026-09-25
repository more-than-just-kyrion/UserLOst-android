package tech.ula.library.ui;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import com.freerdp.freerdpcore.services.HistoryDB;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.spongycastle.i18n.TextBundle;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.databinding.FragSessionEditBinding;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.ServiceType;
import tech.ula.library.model.entities.Session;
import tech.ula.library.model.entities.SessionKt;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.viewmodel.SessionEditViewModel;
import tech.ula.library.viewmodel.SessionEditViewmodelFactory;

/* JADX INFO: compiled from: SessionEditFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001GB\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u00182\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J$\u0010,\u001a\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\b\u00100\u001a\u00020-H\u0002J\u0012\u00101\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0012\u00104\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0018\u00105\u001a\u00020-2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J&\u0010:\u001a\u0004\u0018\u00010;2\u0006\u00108\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\b\u0010?\u001a\u00020-H\u0016J\u0010\u0010@\u001a\u00020\u00112\u0006\u0010A\u001a\u00020BH\u0016J\u001a\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020;2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0010\u0010E\u001a\u00020-2\u0006\u0010F\u001a\u00020\u0019H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0015\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0015\u001a\u0004\b\"\u0010#¨\u0006H"}, d2 = {"Ltech/ula/library/ui/SessionEditFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/ula/library/databinding/FragSessionEditBinding;", "activityContext", "Landroid/app/Activity;", "args", "Ltech/ula/library/ui/SessionEditFragmentArgs;", "getArgs", "()Ltech/ula/library/ui/SessionEditFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragSessionEditBinding;", "editExisting", "", "getEditExisting", "()Z", "editExisting$delegate", "Lkotlin/Lazy;", "filesystemChangeObserver", "Landroidx/lifecycle/Observer;", "", "Ltech/ula/library/model/entities/Filesystem;", "filesystemList", "session", "Ltech/ula/library/model/entities/Session;", "getSession", "()Ltech/ula/library/model/entities/Session;", "session$delegate", "sessionEditViewModel", "Ltech/ula/library/viewmodel/SessionEditViewModel;", "getSessionEditViewModel", "()Ltech/ula/library/viewmodel/SessionEditViewModel;", "sessionEditViewModel$delegate", "augmentFilesystemList", "Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem;", "filesystems", "getDefaultServicePort", "", "selectedServiceType", "Ltech/ula/library/model/entities/ServiceType;", "getListDifferenceAndSetNewFilesystem", "", "prevFilesystems", "currentFilesystems", "insertSession", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateOptionsMenu", "menu", "Landroid/view/Menu;", "inflater", "Landroid/view/MenuInflater;", "onCreateView", "Landroid/view/View;", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onOptionsItemSelected", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "onViewCreated", "view", "updateFilesystemDetailsForSession", "filesystem", "FilesystemDropdownItem", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionEditFragment extends Fragment {
    private FragSessionEditBinding _binding;
    private Activity activityContext;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;

    /* JADX INFO: renamed from: session$delegate, reason: from kotlin metadata */
    private final Lazy session = LazyKt.lazy(new Function0<Session>() { // from class: tech.ula.library.ui.SessionEditFragment$session$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Session invoke() {
            Session session = this.this$0.getArgs().getSession();
            Intrinsics.checkNotNull(session);
            return session;
        }
    });

    /* JADX INFO: renamed from: editExisting$delegate, reason: from kotlin metadata */
    private final Lazy editExisting = LazyKt.lazy(new Function0<Boolean>() { // from class: tech.ula.library.ui.SessionEditFragment$editExisting$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getArgs().getEditExisting());
        }
    });
    private List<Filesystem> filesystemList = CollectionsKt.emptyList();

    /* JADX INFO: renamed from: sessionEditViewModel$delegate, reason: from kotlin metadata */
    private final Lazy sessionEditViewModel = LazyKt.lazy(new Function0<SessionEditViewModel>() { // from class: tech.ula.library.ui.SessionEditFragment$sessionEditViewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SessionEditViewModel invoke() {
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            Activity activity = this.this$0.activityContext;
            if (activity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity = null;
            }
            return (SessionEditViewModel) ViewModelProviders.of(this.this$0, new SessionEditViewmodelFactory(companion.getInstance(activity))).get(SessionEditViewModel.class);
        }
    });
    private final Observer<List<Filesystem>> filesystemChangeObserver = new Observer() { // from class: tech.ula.library.ui.SessionEditFragment$$ExternalSyntheticLambda1
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            SessionEditFragment.filesystemChangeObserver$lambda$2(this.f$0, (List) obj);
        }
    };

    public SessionEditFragment() {
        final SessionEditFragment sessionEditFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(SessionEditFragmentArgs.class), new Function0<Bundle>() { // from class: tech.ula.library.ui.SessionEditFragment$special$$inlined$navArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = sessionEditFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + sessionEditFragment + " has null arguments");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final SessionEditFragmentArgs getArgs() {
        return (SessionEditFragmentArgs) this.args.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Session getSession() {
        return (Session) this.session.getValue();
    }

    private final boolean getEditExisting() {
        return ((Boolean) this.editExisting.getValue()).booleanValue();
    }

    private final SessionEditViewModel getSessionEditViewModel() {
        return (SessionEditViewModel) this.sessionEditViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void filesystemChangeObserver$lambda$2(SessionEditFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            List<FilesystemDropdownItem> listAugmentFilesystemList = this$0.augmentFilesystemList(list);
            this$0.getListDifferenceAndSetNewFilesystem(this$0.filesystemList, list);
            Activity activity = this$0.activityContext;
            if (activity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity = null;
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(activity, R.layout.simple_spinner_dropdown_item, listAugmentFilesystemList);
            Iterator it = list.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (((Filesystem) it.next()).getId() == this$0.getSession().getFilesystemId()) {
                    break;
                } else {
                    i++;
                }
            }
            int i2 = i >= 0 ? i : 0;
            this$0.getBinding().spinnerFilesystemList.setAdapter((SpinnerAdapter) arrayAdapter);
            this$0.getBinding().spinnerFilesystemList.setSelection(i2);
            this$0.filesystemList = list;
        }
    }

    /* JADX INFO: compiled from: SessionEditFragment.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem;", "", "()V", "FilesystemItem", "NonFilesystemItem", "Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem$FilesystemItem;", "Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class FilesystemDropdownItem {
        public /* synthetic */ FilesystemDropdownItem(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: SessionEditFragment.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;", "Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem;", TextBundle.TEXT_ENTRY, "", "(Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class NonFilesystemItem extends FilesystemDropdownItem {
            private final String text;

            public static /* synthetic */ NonFilesystemItem copy$default(NonFilesystemItem nonFilesystemItem, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = nonFilesystemItem.text;
                }
                return nonFilesystemItem.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getText() {
                return this.text;
            }

            public final NonFilesystemItem copy(String text) {
                Intrinsics.checkNotNullParameter(text, "text");
                return new NonFilesystemItem(text);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof NonFilesystemItem) && Intrinsics.areEqual(this.text, ((NonFilesystemItem) other).text);
            }

            public int hashCode() {
                return this.text.hashCode();
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NonFilesystemItem(String text) {
                super(null);
                Intrinsics.checkNotNullParameter(text, "text");
                this.text = text;
            }

            public final String getText() {
                return this.text;
            }

            public String toString() {
                return this.text;
            }
        }

        private FilesystemDropdownItem() {
        }

        /* JADX INFO: compiled from: SessionEditFragment.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem$FilesystemItem;", "Ltech/ula/library/ui/SessionEditFragment$FilesystemDropdownItem;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "(Ltech/ula/library/model/entities/Filesystem;)V", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class FilesystemItem extends FilesystemDropdownItem {
            private final Filesystem filesystem;

            public static /* synthetic */ FilesystemItem copy$default(FilesystemItem filesystemItem, Filesystem filesystem, int i, Object obj) {
                if ((i & 1) != 0) {
                    filesystem = filesystemItem.filesystem;
                }
                return filesystemItem.copy(filesystem);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Filesystem getFilesystem() {
                return this.filesystem;
            }

            public final FilesystemItem copy(Filesystem filesystem) {
                Intrinsics.checkNotNullParameter(filesystem, "filesystem");
                return new FilesystemItem(filesystem);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof FilesystemItem) && Intrinsics.areEqual(this.filesystem, ((FilesystemItem) other).filesystem);
            }

            public int hashCode() {
                return this.filesystem.hashCode();
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public FilesystemItem(Filesystem filesystem) {
                super(null);
                Intrinsics.checkNotNullParameter(filesystem, "filesystem");
                this.filesystem = filesystem;
            }

            public final Filesystem getFilesystem() {
                return this.filesystem;
            }

            public String toString() {
                return this.filesystem.getName() + ": " + StringsKt.capitalize(this.filesystem.getDistributionType());
            }
        }
    }

    private final List<FilesystemDropdownItem> augmentFilesystemList(List<Filesystem> filesystems) {
        ArrayList arrayList = new ArrayList();
        if (filesystems.isEmpty()) {
            arrayList.add(new FilesystemDropdownItem.NonFilesystemItem(""));
        }
        List<Filesystem> list = filesystems;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(new FilesystemDropdownItem.FilesystemItem((Filesystem) it.next()));
        }
        arrayList.addAll(arrayList2);
        arrayList.add(new FilesystemDropdownItem.NonFilesystemItem("Create new"));
        return CollectionsKt.toList(arrayList);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragSessionEditBinding getBinding() {
        FragSessionEditBinding fragSessionEditBinding = this._binding;
        Intrinsics.checkNotNull(fragSessionEditBinding);
        return fragSessionEditBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragSessionEditBinding.inflate(inflater, container, false);
        ScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        inflater.inflate(tech.ula.library.R.menu.menu_edit, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() == tech.ula.library.R.id.menu_item_add) {
            insertSession();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        this.activityContext = activity;
        getSessionEditViewModel().getAllFilesystems().observe(getViewLifecycleOwner(), this.filesystemChangeObserver);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getBinding().textInputSessionName.setText(getSession().getName());
        if (getSession().isAppsSession()) {
            getBinding().textInputSessionName.setEnabled(false);
        }
        getBinding().sessionProtected.setChecked(getSession().isProtected());
        int count = getBinding().spinnerSessionServiceType.getAdapter().getCount();
        for (int i = 0; i < count; i++) {
            String string = getBinding().spinnerSessionServiceType.getAdapter().getItem(i).toString();
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String lowerCase = string.toLowerCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (Intrinsics.areEqual(lowerCase, getSession().getServiceType().toString())) {
                getBinding().spinnerSessionServiceType.setSelection(i);
            }
        }
        getBinding().textInputSessionName.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.SessionEditFragment.onViewCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                SessionEditFragment.this.getSession().setName(String.valueOf(p0));
            }
        });
        getBinding().spinnerFilesystemList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: tech.ula.library.ui.SessionEditFragment.onViewCreated.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view2, int position, long id) {
                if (parent != null) {
                    SessionEditFragment sessionEditFragment = SessionEditFragment.this;
                    Object itemAtPosition = parent.getItemAtPosition(position);
                    Intrinsics.checkNotNull(itemAtPosition, "null cannot be cast to non-null type tech.ula.library.ui.SessionEditFragment.FilesystemDropdownItem");
                    FilesystemDropdownItem filesystemDropdownItem = (FilesystemDropdownItem) itemAtPosition;
                    if (filesystemDropdownItem instanceof FilesystemDropdownItem.NonFilesystemItem) {
                        if (Intrinsics.areEqual(((FilesystemDropdownItem.NonFilesystemItem) filesystemDropdownItem).getText(), "Create new")) {
                            FragmentKt.findNavController(sessionEditFragment).navigate(tech.ula.library.R.id.filesystem_edit_fragment, BundleKt.bundleOf(TuplesKt.to("filesystem", new Filesystem(0L, null, null, null, null, null, null, null, false, null, false, false, false, false, null, 32766, null)), TuplesKt.to("editExisting", false)));
                        }
                    } else if (filesystemDropdownItem instanceof FilesystemDropdownItem.FilesystemItem) {
                        Filesystem filesystem = ((FilesystemDropdownItem.FilesystemItem) filesystemDropdownItem).getFilesystem();
                        sessionEditFragment.updateFilesystemDetailsForSession(filesystem);
                        sessionEditFragment.getBinding().textInputUsername.setText(filesystem.getDefaultUsername());
                    }
                }
            }
        });
        getBinding().spinnerSessionServiceType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: tech.ula.library.ui.SessionEditFragment.onViewCreated.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view2, int position, long id) {
                SessionEditFragment.this.getSession().setServiceType(SessionKt.toServiceType(String.valueOf(parent != null ? parent.getItemAtPosition(position) : null)));
            }
        });
        getBinding().textInputUsername.setEnabled(false);
        getBinding().textInputUsername.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.SessionEditFragment.onViewCreated.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                SessionEditFragment.this.getSession().setUsername(String.valueOf(p0));
            }
        });
        getBinding().sessionProtected.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tech.ula.library.ui.SessionEditFragment$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SessionEditFragment.onViewCreated$lambda$4(this.f$0, compoundButton, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(SessionEditFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSession().setProtected(z);
    }

    private final void insertSession() {
        NavController navControllerFindNavController = NavHostFragment.INSTANCE.findNavController(this);
        if (Intrinsics.areEqual(getSession().getName(), "")) {
            getBinding().textInputSessionName.setError(getString(tech.ula.library.R.string.error_session_name));
        }
        if (Intrinsics.areEqual(getSession().getFilesystemName(), "")) {
            View selectedView = getBinding().spinnerFilesystemList.getSelectedView();
            Intrinsics.checkNotNull(selectedView, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) selectedView;
            textView.setError("");
            textView.setTextColor(SupportMenu.CATEGORY_MASK);
            textView.setText(getString(tech.ula.library.R.string.error_filesystem_name));
        }
        Activity activity = null;
        if (Intrinsics.areEqual(getSession().getName(), "") || Intrinsics.areEqual(getSession().getUsername(), "") || Intrinsics.areEqual(getSession().getFilesystemName(), "")) {
            Activity activity2 = this.activityContext;
            if (activity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                activity = activity2;
            }
            Toast.makeText(activity, tech.ula.library.R.string.error_empty_field, 1).show();
            return;
        }
        if (getEditExisting()) {
            SessionEditViewModel.updateSession$default(getSessionEditViewModel(), getSession(), null, 2, null);
        } else {
            SessionEditViewModel.insertSession$default(getSessionEditViewModel(), getSession(), null, 2, null);
        }
        navControllerFindNavController.popBackStack();
    }

    private final long getDefaultServicePort(ServiceType selectedServiceType) {
        if (Intrinsics.areEqual(selectedServiceType, ServiceType.Vnc.INSTANCE)) {
            return Long.parseLong(BuildConfig.VNC_DISPLAY);
        }
        return 2022L;
    }

    private final void getListDifferenceAndSetNewFilesystem(List<Filesystem> prevFilesystems, List<Filesystem> currentFilesystems) {
        Set setSubtract = CollectionsKt.subtract(currentFilesystems, prevFilesystems);
        if (prevFilesystems.isEmpty() || setSubtract.isEmpty()) {
            return;
        }
        updateFilesystemDetailsForSession((Filesystem) CollectionsKt.first(setSubtract));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFilesystemDetailsForSession(Filesystem filesystem) {
        getSession().setFilesystemName(filesystem.getName());
        getSession().setUsername(filesystem.getDefaultUsername());
        getSession().setPassword(filesystem.getDefaultPassword());
        getSession().setVncPassword(filesystem.getDefaultVncPassword());
        getSession().setFilesystemId(filesystem.getId());
        getSession().setExecutionType(filesystem.getExecutionType());
    }
}
