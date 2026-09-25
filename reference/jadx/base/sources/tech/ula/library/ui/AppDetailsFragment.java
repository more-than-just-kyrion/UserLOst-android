package tech.ula.library.ui;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.NavArgsLazy;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import tech.ula.library.R;
import tech.ula.library.databinding.FragAppDetailsBinding;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.App;
import tech.ula.library.model.repositories.UlaDatabase;
import tech.ula.library.utils.AppDetails;
import tech.ula.library.viewmodel.AppDetailsEvent;
import tech.ula.library.viewmodel.AppDetailsViewModel;
import tech.ula.library.viewmodel.AppDetailsViewState;
import tech.ula.library.viewmodel.AppDetailsViewmodelFactory;

/* JADX INFO: compiled from: AppDetailsFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010!\u001a\u00020\u001c2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010*\u001a\u00020\u001cH\u0016J\b\u0010+\u001a\u00020\u001cH\u0002J\b\u0010,\u001a\u00020\u001cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u0018\u0010\u0019¨\u0006-"}, d2 = {"Ltech/ula/library/ui/AppDetailsFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/ula/library/databinding/FragAppDetailsBinding;", "activityContext", "Landroid/app/Activity;", "app", "Ltech/ula/library/model/entities/App;", "getApp", "()Ltech/ula/library/model/entities/App;", "app$delegate", "Lkotlin/Lazy;", "args", "Ltech/ula/library/ui/AppDetailsFragmentArgs;", "getArgs", "()Ltech/ula/library/ui/AppDetailsFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "getBinding", "()Ltech/ula/library/databinding/FragAppDetailsBinding;", "viewModel", "Ltech/ula/library/viewmodel/AppDetailsViewModel;", "getViewModel", "()Ltech/ula/library/viewmodel/AppDetailsViewModel;", "viewModel$delegate", "handleEnableRadioButtons", "", "viewState", "Ltech/ula/library/viewmodel/AppDetailsViewState;", "handleShowStateHint", "handleViewStateChange", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "setupAutoStartCheckbox", "setupPreferredServiceTypeRadioGroup", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppDetailsFragment extends Fragment {
    private FragAppDetailsBinding _binding;
    private Activity activityContext;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;

    /* JADX INFO: renamed from: app$delegate, reason: from kotlin metadata */
    private final Lazy app = LazyKt.lazy(new Function0<App>() { // from class: tech.ula.library.ui.AppDetailsFragment$app$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final App invoke() {
            App app = this.this$0.getArgs().getApp();
            Intrinsics.checkNotNull(app);
            return app;
        }
    });

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel = LazyKt.lazy(new Function0<AppDetailsViewModel>() { // from class: tech.ula.library.ui.AppDetailsFragment$viewModel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final AppDetailsViewModel invoke() {
            UlaDatabase.Companion companion = UlaDatabase.INSTANCE;
            Activity activity = this.this$0.activityContext;
            Activity activity2 = null;
            if (activity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity = null;
            }
            SessionDao sessionDao = companion.getInstance(activity).sessionDao();
            Activity activity3 = this.this$0.activityContext;
            if (activity3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity3 = null;
            }
            String path = activity3.getFilesDir().getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            Activity activity4 = this.this$0.activityContext;
            if (activity4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity4 = null;
            }
            Resources resources = activity4.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
            AppDetails appDetails = new AppDetails(path, resources);
            int i = Build.VERSION.SDK_INT;
            Activity activity5 = this.this$0.activityContext;
            if (activity5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            } else {
                activity2 = activity5;
            }
            SharedPreferences sharedPreferences = activity2.getSharedPreferences("apps", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return (AppDetailsViewModel) ViewModelProviders.of(this.this$0, new AppDetailsViewmodelFactory(sessionDao, appDetails, i, sharedPreferences)).get(AppDetailsViewModel.class);
        }
    });

    public AppDetailsFragment() {
        final AppDetailsFragment appDetailsFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(AppDetailsFragmentArgs.class), new Function0<Bundle>() { // from class: tech.ula.library.ui.AppDetailsFragment$special$$inlined$navArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = appDetailsFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + appDetailsFragment + " has null arguments");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final AppDetailsFragmentArgs getArgs() {
        return (AppDetailsFragmentArgs) this.args.getValue();
    }

    private final App getApp() {
        return (App) this.app.getValue();
    }

    private final AppDetailsViewModel getViewModel() {
        return (AppDetailsViewModel) this.viewModel.getValue();
    }

    private final FragAppDetailsBinding getBinding() {
        FragAppDetailsBinding fragAppDetailsBinding = this._binding;
        Intrinsics.checkNotNull(fragAppDetailsBinding);
        return fragAppDetailsBinding;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = FragAppDetailsBinding.inflate(inflater, container, false);
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
        this.activityContext = activity;
        getViewModel().getViewState().observe(this, new Observer() { // from class: tech.ula.library.ui.AppDetailsFragment$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AppDetailsFragment.onActivityCreated$lambda$1(this.f$0, (AppDetailsViewState) obj);
            }
        });
        AppDetailsViewModel.submitEvent$default(getViewModel(), new AppDetailsEvent.SubmitApp(getApp()), null, 2, null);
        setupPreferredServiceTypeRadioGroup();
        setupAutoStartCheckbox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$1(AppDetailsFragment this$0, AppDetailsViewState appDetailsViewState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appDetailsViewState != null) {
            this$0.handleViewStateChange(appDetailsViewState);
        }
    }

    private final void handleViewStateChange(AppDetailsViewState viewState) {
        getBinding().appsIcon.setImageURI(viewState.getAppIconUri());
        getBinding().appsTitle.setText(viewState.getAppTitle());
        getBinding().appsDescription.setText(viewState.getAppDescription());
        handleEnableRadioButtons(viewState);
        handleShowStateHint(viewState);
        if (viewState.getSelectedServiceTypeButton() != null) {
            getBinding().appsServiceTypePreferences.check(viewState.getSelectedServiceTypeButton().intValue());
        }
        getBinding().checkboxAutoStart.setChecked(viewState.getAutoStartEnabled());
    }

    private final void handleEnableRadioButtons(AppDetailsViewState viewState) {
        TextView textView;
        getBinding().appsSshPreference.setEnabled(viewState.getSshEnabled());
        getBinding().appsVncPreference.setEnabled(viewState.getVncEnabled());
        if (viewState.getXsdlEnabled()) {
            getBinding().appsXsdlPreference.setEnabled(true);
            return;
        }
        getBinding().appsXsdlPreference.setEnabled(false);
        getBinding().appsXsdlPreference.setAlpha(0.5f);
        View view = getView();
        if (view != null) {
            View viewFindViewById = view.findViewById(R.id.text_xsdl_version_supported_description);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            textView = (TextView) viewFindViewById;
        } else {
            textView = null;
        }
        if (textView == null) {
            return;
        }
        textView.setVisibility(0);
    }

    private final void handleShowStateHint(AppDetailsViewState viewState) {
        if (viewState.getDescribeStateHintEnabled()) {
            getBinding().textDescribeState.setVisibility(0);
            TextView textView = getBinding().textDescribeState;
            Integer describeStateText = viewState.getDescribeStateText();
            Intrinsics.checkNotNull(describeStateText);
            textView.setText(describeStateText.intValue());
            return;
        }
        getBinding().textDescribeState.setVisibility(8);
    }

    private final void setupPreferredServiceTypeRadioGroup() {
        getBinding().appsServiceTypePreferences.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: tech.ula.library.ui.AppDetailsFragment$$ExternalSyntheticLambda0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                AppDetailsFragment.setupPreferredServiceTypeRadioGroup$lambda$2(this.f$0, radioGroup, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPreferredServiceTypeRadioGroup$lambda$2(AppDetailsFragment this$0, RadioGroup radioGroup, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AppDetailsViewModel.submitEvent$default(this$0.getViewModel(), new AppDetailsEvent.ServiceTypeChanged(i, this$0.getApp()), null, 2, null);
    }

    private final void setupAutoStartCheckbox() {
        getBinding().checkboxAutoStart.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: tech.ula.library.ui.AppDetailsFragment$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AppDetailsFragment.setupAutoStartCheckbox$lambda$3(this.f$0, compoundButton, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAutoStartCheckbox$lambda$3(AppDetailsFragment this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AppDetailsViewModel.submitEvent$default(this$0.getViewModel(), new AppDetailsEvent.AutoStartChanged(z, this$0.getApp()), null, 2, null);
    }
}
