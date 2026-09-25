package tech.ula.library.ui;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
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
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import android.widget.ToggleButton;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import com.freerdp.freerdpcore.services.HistoryDB;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import tech.ula.library.MainActivity;
import tech.ula.library.R;
import tech.ula.library.RequestDirPermissionsActivity;
import tech.ula.library.databinding.FragFilesystemEditBinding;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.AvfCompatibility;
import tech.ula.library.utils.AvfSessionManager;
import tech.ula.library.utils.CredentialValidationStatus;
import tech.ula.library.utils.CredentialValidator;
import tech.ula.library.utils.PermissionHandler;
import tech.ula.library.utils.ProFeaturePrompter;
import tech.ula.library.utils.QemuSessionManager;
import tech.ula.library.utils.UlaFiles;
import tech.ula.library.utils.preferences.AppsPreferences;
import tech.ula.library.viewmodel.FilesystemEditViewModel;
import tech.ula.library.viewmodel.FilesystemEditViewmodelFactory;
import tech.ula.library.viewmodel.FilesystemImportStatus;
import tech.ula.library.viewmodel.ImportFailure;
import tech.ula.library.viewmodel.ImportSuccess;
import tech.ula.library.viewmodel.UriUnselected;

/* JADX INFO: compiled from: FilesystemEditFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010+\u001a\u00020\u001aH\u0002J\b\u0010,\u001a\u00020\u001aH\u0002J\u0012\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\"\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00042\b\u00104\u001a\u0004\u0018\u000105H\u0016J\u0012\u00106\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0018\u00107\u001a\u00020.2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J&\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010:\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\b\u0010A\u001a\u00020.H\u0016J\u0010\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020DH\u0016J\u001a\u0010E\u001a\u00020.2\u0006\u0010F\u001a\u00020=2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\b\u0010G\u001a\u00020.H\u0002J\b\u0010H\u001a\u00020.H\u0002J\b\u0010I\u001a\u00020.H\u0002J\b\u0010J\u001a\u00020.H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R!\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0018\u001a\u0004\b \u0010!R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0018\u001a\u0004\b%\u0010&R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006K"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragment;", "Landroidx/fragment/app/Fragment;", "()V", "IMPORT_FILESYSTEM_REQUEST_CODE", "", "_binding", "Ltech/ula/library/databinding/FragFilesystemEditBinding;", "activityContext", "Ltech/ula/library/MainActivity;", "args", "Ltech/ula/library/ui/FilesystemEditFragmentArgs;", "getArgs", "()Ltech/ula/library/ui/FilesystemEditFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragFilesystemEditBinding;", "distributionList", "", "", "getDistributionList", "()Ljava/util/Set;", "distributionList$delegate", "Lkotlin/Lazy;", "editExisting", "", "getEditExisting", "()Z", "editExisting$delegate", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "filesystem$delegate", "filesystemEditViewModel", "Ltech/ula/library/viewmodel/FilesystemEditViewModel;", "getFilesystemEditViewModel", "()Ltech/ula/library/viewmodel/FilesystemEditViewModel;", "filesystemEditViewModel$delegate", "filesystemImportStatusObserver", "Landroidx/lifecycle/Observer;", "Ltech/ula/library/viewmodel/FilesystemImportStatus;", "filesystemParametersAreCorrect", "insertFilesystem", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "onActivityResult", "requestCode", "resultCode", "returnIntent", "Landroid/content/Intent;", "onCreate", "onCreateOptionsMenu", "menu", "Landroid/view/Menu;", "inflater", "Landroid/view/MenuInflater;", "onCreateView", "Landroid/view/View;", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onOptionsItemSelected", HistoryDB.QUICK_CONNECT_TABLE_COL_ITEM, "Landroid/view/MenuItem;", "onViewCreated", "view", "setupAdvancedOptionButton", "setupExecutionTypeSelector", "setupImportButton", "setupTextInputs", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemEditFragment extends Fragment {
    private FragFilesystemEditBinding _binding;
    private MainActivity activityContext;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private final int IMPORT_FILESYSTEM_REQUEST_CODE = 5;

    /* JADX INFO: renamed from: filesystem$delegate, reason: from kotlin metadata */
    private final Lazy filesystem = LazyKt.lazy(new Function0<Filesystem>() { // from class: tech.ula.library.ui.FilesystemEditFragment$filesystem$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Filesystem invoke() {
            Filesystem filesystem = this.this$0.getArgs().getFilesystem();
            Intrinsics.checkNotNull(filesystem);
            return filesystem;
        }
    });

    /* JADX INFO: renamed from: editExisting$delegate, reason: from kotlin metadata */
    private final Lazy editExisting = LazyKt.lazy(new Function0<Boolean>() { // from class: tech.ula.library.ui.FilesystemEditFragment$editExisting$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getArgs().getEditExisting());
        }
    });
    private final Observer<FilesystemImportStatus> filesystemImportStatusObserver = new Observer() { // from class: tech.ula.library.ui.FilesystemEditFragment$$ExternalSyntheticLambda0
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            FilesystemEditFragment.filesystemImportStatusObserver$lambda$1(this.f$0, (FilesystemImportStatus) obj);
        }
    };

    /* JADX INFO: renamed from: filesystemEditViewModel$delegate, reason: from kotlin metadata */
    private final Lazy filesystemEditViewModel = LazyKt.lazy(new Function0<FilesystemEditViewModel>() { // from class: tech.ula.library.ui.FilesystemEditFragment$filesystemEditViewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FilesystemEditViewModel invoke() {
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            return (FilesystemEditViewModel) ViewModelProviders.of(this.this$0, new FilesystemEditViewmodelFactory(companion.getInstance(mainActivity))).get(FilesystemEditViewModel.class);
        }
    });

    /* JADX INFO: renamed from: distributionList$delegate, reason: from kotlin metadata */
    private final Lazy distributionList = LazyKt.lazy(new Function0<Set<? extends String>>() { // from class: tech.ula.library.ui.FilesystemEditFragment$distributionList$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Set<? extends String> invoke() {
            MainActivity mainActivity = this.this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            return new AppsPreferences(mainActivity).getDistributionsList();
        }
    });

    /* JADX INFO: compiled from: FilesystemEditFragment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ExecutionType.values().length];
            try {
                iArr[ExecutionType.AVF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExecutionType.QEMU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FilesystemEditFragment() {
        final FilesystemEditFragment filesystemEditFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(FilesystemEditFragmentArgs.class), new Function0<Bundle>() { // from class: tech.ula.library.ui.FilesystemEditFragment$special$$inlined$navArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = filesystemEditFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + filesystemEditFragment + " has null arguments");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final FilesystemEditFragmentArgs getArgs() {
        return (FilesystemEditFragmentArgs) this.args.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Filesystem getFilesystem() {
        return (Filesystem) this.filesystem.getValue();
    }

    private final boolean getEditExisting() {
        return ((Boolean) this.editExisting.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void filesystemImportStatusObserver$lambda$1(FilesystemEditFragment this$0, FilesystemImportStatus filesystemImportStatus) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (filesystemImportStatus != null) {
            MainActivity mainActivity = this$0.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(mainActivity);
            if (filesystemImportStatus instanceof ImportSuccess) {
                builder.setMessage(R.string.import_success).create().show();
            } else if (filesystemImportStatus instanceof ImportFailure) {
                builder.setMessage(R.string.import_failure).create().show();
            } else {
                boolean z = filesystemImportStatus instanceof UriUnselected;
            }
        }
    }

    private final FilesystemEditViewModel getFilesystemEditViewModel() {
        return (FilesystemEditViewModel) this.filesystemEditViewModel.getValue();
    }

    private final Set<String> getDistributionList() {
        return (Set) this.distributionList.getValue();
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
        inflater.inflate(R.menu.menu_edit, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return item.getItemId() == R.id.menu_item_add ? insertFilesystem() : super.onOptionsItemSelected(item);
    }

    private final FragFilesystemEditBinding getBinding() {
        FragFilesystemEditBinding fragFilesystemEditBinding = this._binding;
        Intrinsics.checkNotNull(fragFilesystemEditBinding);
        return fragFilesystemEditBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragFilesystemEditBinding.inflate(inflater, container, false);
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
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        this.activityContext = (MainActivity) activity;
        getFilesystemEditViewModel().getImportStatusLiveData().observe(getViewLifecycleOwner(), this.filesystemImportStatusObserver);
        if (!getDistributionList().isEmpty()) {
            Spinner spinner = getBinding().spinnerFilesystemType;
            MainActivity mainActivity = this.activityContext;
            if (mainActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity = null;
            }
            MainActivity mainActivity2 = mainActivity;
            Set<String> distributionList = getDistributionList();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(distributionList, 10));
            Iterator<T> it = distributionList.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt.capitalize((String) it.next()));
            }
            spinner.setAdapter((SpinnerAdapter) new ArrayAdapter(mainActivity2, android.R.layout.simple_spinner_dropdown_item, arrayList));
        }
        if (getEditExisting()) {
            int count = getBinding().spinnerFilesystemType.getAdapter().getCount();
            for (int i = 0; i < count; i++) {
                String string = getBinding().spinnerFilesystemType.getAdapter().getItem(i).toString();
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                String lowerCase = string.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (Intrinsics.areEqual(lowerCase, getFilesystem().getDistributionType())) {
                    getBinding().spinnerFilesystemType.setSelection(i);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        this.activityContext = (MainActivity) activity;
        setupTextInputs();
        if (getEditExisting()) {
            getBinding().btnShowAdvancedOptions.setVisibility(8);
            getBinding().spinnerFilesystemType.setEnabled(false);
            getBinding().filesystemProtected.setChecked(getFilesystem().isProtected());
            getBinding().executionTypeGroup.setVisibility(8);
        } else {
            setupImportButton();
            setupAdvancedOptionButton();
            getBinding().filesystemProtected.setChecked(false);
            setupExecutionTypeSelector();
        }
        getBinding().spinnerFilesystemType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: tech.ula.library.ui.FilesystemEditFragment.onViewCreated.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view2, int position, long id) {
                Filesystem filesystem = FilesystemEditFragment.this.getFilesystem();
                String strValueOf = String.valueOf(parent != null ? parent.getItemAtPosition(position) : null);
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                String lowerCase = strValueOf.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                filesystem.setDistributionType(lowerCase);
            }
        });
        getBinding().filesystemProtected.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tech.ula.library.ui.FilesystemEditFragment$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FilesystemEditFragment.onViewCreated$lambda$3(this.f$0, compoundButton, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(FilesystemEditFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFilesystem().setProtected(z);
    }

    private final void setupTextInputs() {
        getBinding().inputFilesystemName.setText(getFilesystem().getName());
        getBinding().inputFilesystemUsername.setText(getFilesystem().getDefaultUsername());
        getBinding().inputFilesystemPassword.setText(getFilesystem().getDefaultPassword());
        getBinding().inputFilesystemVncpassword.setText(getFilesystem().getDefaultVncPassword());
        if (getEditExisting()) {
            getBinding().inputFilesystemUsername.setEnabled(false);
            getBinding().inputFilesystemPassword.setEnabled(false);
            getBinding().inputFilesystemVncpassword.setEnabled(false);
        }
        if (getFilesystem().isAppsFilesystem()) {
            getBinding().inputFilesystemName.setEnabled(false);
        }
        getBinding().inputFilesystemName.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.FilesystemEditFragment.setupTextInputs.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                FilesystemEditFragment.this.getFilesystem().setName(String.valueOf(p0));
            }
        });
        getBinding().inputFilesystemUsername.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.FilesystemEditFragment.setupTextInputs.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                FilesystemEditFragment.this.getFilesystem().setDefaultUsername(String.valueOf(p0));
            }
        });
        getBinding().inputFilesystemPassword.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.FilesystemEditFragment.setupTextInputs.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                FilesystemEditFragment.this.getFilesystem().setDefaultPassword(String.valueOf(p0));
            }
        });
        getBinding().inputFilesystemVncpassword.addTextChangedListener(new TextWatcher() { // from class: tech.ula.library.ui.FilesystemEditFragment.setupTextInputs.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
                FilesystemEditFragment.this.getFilesystem().setDefaultVncPassword(String.valueOf(p0));
            }
        });
    }

    private final void setupImportButton() {
        getBinding().importButton.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.FilesystemEditFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilesystemEditFragment.setupImportButton$lambda$4(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupImportButton$lambda$4(FilesystemEditFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("application/*");
        PermissionHandler.Companion companion = PermissionHandler.INSTANCE;
        MainActivity mainActivity = this$0.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        if (!companion.permissionsAreGranted(mainActivity)) {
            PermissionHandler.Companion companion2 = PermissionHandler.INSTANCE;
            MainActivity mainActivity3 = this$0.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity3;
            }
            companion2.showPermissionsNecessaryDialog(mainActivity2, false);
            return;
        }
        try {
            this$0.getFilesystem().setCreatedFromBackup(true);
            this$0.startActivityForResult(intent, this$0.IMPORT_FILESYSTEM_REQUEST_CODE);
        } catch (ActivityNotFoundException unused) {
            MainActivity mainActivity4 = this$0.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity4;
            }
            Toast.makeText(mainActivity2, R.string.prompt_install_file_manager, 1).show();
        }
    }

    private final void setupExecutionTypeSelector() {
        AvfCompatibility avfCompatibility = AvfCompatibility.INSTANCE;
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        boolean zIsDeviceCapable = avfCompatibility.isDeviceCapable(mainActivity);
        if (!zIsDeviceCapable) {
            getBinding().executionTypeGroup.setVisibility(8);
            getFilesystem().setExecutionType(ExecutionType.PROOT);
            return;
        }
        getBinding().executionTypeGroup.setVisibility(0);
        getBinding().radioAvf.setVisibility(zIsDeviceCapable ? 0 : 8);
        getBinding().radioQemu.setVisibility(8);
        MainActivity mainActivity3 = this.activityContext;
        if (mainActivity3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity3;
        }
        SharedPreferences sharedPreferences = mainActivity2.getSharedPreferences("usage", 0);
        final boolean z = sharedPreferences.getBoolean("hasMadeSubPurchase", false) || sharedPreferences.getBoolean("hasMadeInAppPurchase", false);
        int i = WhenMappings.$EnumSwitchMapping$0[getFilesystem().getExecutionType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                getBinding().radioProot.setChecked(true);
                getFilesystem().setExecutionType(ExecutionType.PROOT);
            } else {
                getBinding().radioProot.setChecked(true);
            }
        } else if (zIsDeviceCapable) {
            getBinding().radioAvf.setChecked(true);
        } else {
            getBinding().radioProot.setChecked(true);
            getFilesystem().setExecutionType(ExecutionType.PROOT);
        }
        getBinding().executionTypeGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: tech.ula.library.ui.FilesystemEditFragment$$ExternalSyntheticLambda3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                FilesystemEditFragment.setupExecutionTypeSelector$lambda$7(z, this, radioGroup, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupExecutionTypeSelector$lambda$7(boolean z, FilesystemEditFragment this$0, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MainActivity mainActivity = null;
        MainActivity mainActivity2 = null;
        if (i == R.id.radio_avf) {
            if (!z) {
                MainActivity mainActivity3 = this$0.activityContext;
                if (mainActivity3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                    mainActivity3 = null;
                }
                Toast.makeText(mainActivity3, R.string.requires_pro_purchase, 1).show();
                this$0.getBinding().radioProot.setChecked(true);
                this$0.getFilesystem().setExecutionType(ExecutionType.PROOT);
                Object obj = this$0.activityContext;
                if (obj == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                    obj = null;
                }
                RequestDirPermissionsActivity requestDirPermissionsActivity = obj instanceof RequestDirPermissionsActivity ? (RequestDirPermissionsActivity) obj : null;
                if (requestDirPermissionsActivity != null) {
                    new ProFeaturePrompter(requestDirPermissionsActivity).getFinishedAction().invoke();
                    return;
                }
                return;
            }
            this$0.getFilesystem().setExecutionType(ExecutionType.AVF);
            MainActivity mainActivity4 = this$0.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity4;
            }
            if (new AvfSessionManager(mainActivity2).isAvfRunnerInstalled()) {
                return;
            }
            FragmentKt.findNavController(this$0).navigate(R.id.action_filesystem_edit_to_avf_install_wizard);
            return;
        }
        if (i != R.id.radio_qemu) {
            this$0.getFilesystem().setExecutionType(ExecutionType.PROOT);
            return;
        }
        if (!z) {
            MainActivity mainActivity5 = this$0.activityContext;
            if (mainActivity5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity5 = null;
            }
            Toast.makeText(mainActivity5, R.string.requires_pro_purchase, 1).show();
            this$0.getBinding().radioProot.setChecked(true);
            this$0.getFilesystem().setExecutionType(ExecutionType.PROOT);
            Object obj2 = this$0.activityContext;
            if (obj2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                obj2 = null;
            }
            RequestDirPermissionsActivity requestDirPermissionsActivity2 = obj2 instanceof RequestDirPermissionsActivity ? (RequestDirPermissionsActivity) obj2 : null;
            if (requestDirPermissionsActivity2 != null) {
                new ProFeaturePrompter(requestDirPermissionsActivity2).getFinishedAction().invoke();
                return;
            }
            return;
        }
        this$0.getFilesystem().setExecutionType(ExecutionType.QEMU);
        MainActivity mainActivity6 = this$0.activityContext;
        if (mainActivity6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity = mainActivity6;
        }
        if (new QemuSessionManager(mainActivity).isQemuRunnerInstalled()) {
            return;
        }
        FragmentKt.findNavController(this$0).navigate(R.id.action_filesystem_edit_to_qemu_install_wizard);
    }

    private final void setupAdvancedOptionButton() {
        final ToggleButton btnShowAdvancedOptions = getBinding().btnShowAdvancedOptions;
        Intrinsics.checkNotNullExpressionValue(btnShowAdvancedOptions, "btnShowAdvancedOptions");
        btnShowAdvancedOptions.setOnClickListener(new View.OnClickListener() { // from class: tech.ula.library.ui.FilesystemEditFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilesystemEditFragment.setupAdvancedOptionButton$lambda$8(btnShowAdvancedOptions, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAdvancedOptionButton$lambda$8(ToggleButton btn, FilesystemEditFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(btn, "$btn");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean zIsChecked = btn.isChecked();
        if (zIsChecked) {
            btn.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_keyboard_arrow_down_white_24dp, 0);
            this$0.getBinding().advancedOptions.setVisibility(0);
        } else {
            if (zIsChecked) {
                return;
            }
            btn.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_keyboard_arrow_right_white_24dp, 0);
            this$0.getBinding().advancedOptions.setVisibility(4);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent returnIntent) {
        Uri data;
        super.onActivityResult(requestCode, resultCode, returnIntent);
        if (requestCode != this.IMPORT_FILESYSTEM_REQUEST_CODE || returnIntent == null || (data = returnIntent.getData()) == null) {
            return;
        }
        getFilesystemEditViewModel().setBackupUri(data);
        getBinding().textBackupFilename.setText(data.getLastPathSegment());
    }

    private final boolean insertFilesystem() {
        NavController navControllerFindNavController = NavHostFragment.INSTANCE.findNavController(this);
        if (!filesystemParametersAreCorrect()) {
            return false;
        }
        MainActivity mainActivity = null;
        if (getEditExisting()) {
            FilesystemEditViewModel.updateFilesystem$default(getFilesystemEditViewModel(), getFilesystem(), null, 2, null);
            navControllerFindNavController.popBackStack();
            return true;
        }
        MainActivity mainActivity2 = this.activityContext;
        if (mainActivity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity2 = null;
        }
        MainActivity mainActivity3 = mainActivity2;
        MainActivity mainActivity4 = this.activityContext;
        if (mainActivity4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity4 = null;
        }
        String nativeLibraryDir = mainActivity4.getApplicationInfo().nativeLibraryDir;
        Intrinsics.checkNotNullExpressionValue(nativeLibraryDir, "nativeLibraryDir");
        getFilesystem().setArchType(new UlaFiles(mainActivity3, nativeLibraryDir, null, 4, null).getArchType());
        if (getFilesystem().isCreatedFromBackup()) {
            FilesystemEditViewModel filesystemEditViewModel = getFilesystemEditViewModel();
            MainActivity mainActivity5 = this.activityContext;
            if (mainActivity5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                mainActivity5 = null;
            }
            ContentResolver contentResolver = mainActivity5.getContentResolver();
            Intrinsics.checkNotNullExpressionValue(contentResolver, "getContentResolver(...)");
            Filesystem filesystem = getFilesystem();
            MainActivity mainActivity6 = this.activityContext;
            if (mainActivity6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity = mainActivity6;
            }
            File filesDir = mainActivity.getFilesDir();
            Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
            FilesystemEditViewModel.insertFilesystemFromBackup$default(filesystemEditViewModel, contentResolver, filesystem, filesDir, null, 8, null);
        } else {
            FilesystemEditViewModel.insertFilesystem$default(getFilesystemEditViewModel(), getFilesystem(), null, 2, null);
        }
        navControllerFindNavController.popBackStack();
        return true;
    }

    private final boolean filesystemParametersAreCorrect() {
        MainActivity mainActivity = this.activityContext;
        MainActivity mainActivity2 = null;
        if (mainActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            mainActivity = null;
        }
        String[] stringArray = mainActivity.getResources().getStringArray(R.array.blacklisted_usernames);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        CredentialValidator credentialValidator = new CredentialValidator();
        String name = getFilesystem().getName();
        String defaultUsername = getFilesystem().getDefaultUsername();
        String defaultPassword = getFilesystem().getDefaultPassword();
        String defaultVncPassword = getFilesystem().getDefaultVncPassword();
        CredentialValidationStatus credentialValidationStatusValidateFilesystemName = credentialValidator.validateFilesystemName(name);
        CredentialValidationStatus credentialValidationStatusValidateUsername = credentialValidator.validateUsername(defaultUsername, stringArray);
        CredentialValidationStatus credentialValidationStatusValidatePassword = credentialValidator.validatePassword(defaultPassword);
        CredentialValidationStatus credentialValidationStatusValidateVncPassword = credentialValidator.validateVncPassword(defaultVncPassword);
        if (!credentialValidationStatusValidateFilesystemName.getCredentialIsValid()) {
            MainActivity mainActivity3 = this.activityContext;
            if (mainActivity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity3;
            }
            Toast.makeText(mainActivity2, credentialValidationStatusValidateFilesystemName.getErrorMessageId(), 1).show();
            return false;
        }
        if (!credentialValidationStatusValidateUsername.getCredentialIsValid()) {
            MainActivity mainActivity4 = this.activityContext;
            if (mainActivity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity4;
            }
            Toast.makeText(mainActivity2, credentialValidationStatusValidateUsername.getErrorMessageId(), 1).show();
            return false;
        }
        if (!credentialValidationStatusValidatePassword.getCredentialIsValid()) {
            MainActivity mainActivity5 = this.activityContext;
            if (mainActivity5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                mainActivity2 = mainActivity5;
            }
            Toast.makeText(mainActivity2, credentialValidationStatusValidatePassword.getErrorMessageId(), 1).show();
            return false;
        }
        if (credentialValidationStatusValidateVncPassword.getCredentialIsValid()) {
            return true;
        }
        MainActivity mainActivity6 = this.activityContext;
        if (mainActivity6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
        } else {
            mainActivity2 = mainActivity6;
        }
        Toast.makeText(mainActivity2, credentialValidationStatusValidateVncPassword.getErrorMessageId(), 1).show();
        return false;
    }
}
