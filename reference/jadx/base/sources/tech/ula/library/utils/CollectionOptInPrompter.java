package tech.ula.library.utils;

import android.content.SharedPreferences;
import android.view.ViewGroup;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.MainActivity;
import tech.ula.library.R;

/* JADX INFO: compiled from: UserPrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 <2\u00020\u0001:\u0001<B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010:\u001a\u00020\u0006J\b\u0010;\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u0012R\u0014\u0010!\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u0012R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u000eR\u0014\u0010%\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u0012R\u0014\u0010'\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0014\u00100\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0012R\u0014\u00102\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0012R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u000eR\u0014\u00106\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0012R\u0014\u00108\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Ltech/ula/library/utils/CollectionOptInPrompter;", "Ltech/ula/library/utils/UserPrompter;", "activity", "Ltech/ula/library/MainActivity;", "(Ltech/ula/library/MainActivity;)V", "altInitialPosFlow", "", "getAltInitialPosFlow", "()Z", "doNothing", "Lkotlin/Function0;", "", "finishedAction", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "initialNegBtnText", "", "getInitialNegBtnText", "()I", "initialPosBtnText", "getInitialPosBtnText", "initialPositiveBtnAction", "getInitialPositiveBtnAction", "initialPrompt", "", "getInitialPrompt", "()Ljava/lang/String;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/SentryLogger;", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "primaryNegBtnText", "getPrimaryNegBtnText", "primaryPosBtnText", "getPrimaryPosBtnText", "primaryPositiveBtnAction", "getPrimaryPositiveBtnAction", "primaryRequest", "getPrimaryRequest", "savedActivity", "getSavedActivity", "()Ltech/ula/library/MainActivity;", "savedViewGroup", "Landroid/view/ViewGroup;", "getSavedViewGroup", "()Landroid/view/ViewGroup;", "setSavedViewGroup", "(Landroid/view/ViewGroup;)V", "secondaryNegBtnText", "getSecondaryNegBtnText", "secondaryPosBtnText", "getSecondaryPosBtnText", "secondaryPositiveBtnAction", "getSecondaryPositiveBtnAction", "secondaryRequest", "getSecondaryRequest", "setOptInOn", "userHasBeenPrompted", "userHasOptedIn", "viewShouldBeShown", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectionOptInPrompter implements UserPrompter {
    public static final String userHasBeenPromptedToOptIn = "opt_in_checked";
    public static final String userHasOptedInPreference = "pref_opt_in";
    private final MainActivity activity;
    private final Function0<Unit> doNothing;
    private final SentryLogger logger;
    private final SharedPreferences prefs;
    private ViewGroup savedViewGroup;
    private final Function0<Unit> setOptInOn;
    private final Function0<Unit> userHasBeenPrompted;

    @Override // tech.ula.library.utils.UserPrompter
    public boolean getAltInitialPosFlow() {
        return false;
    }

    public CollectionOptInPrompter(MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        MainActivity mainActivity = activity;
        SharedPreferences sharedPreferences = mainActivity.getSharedPreferences(mainActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        this.logger = new SentryLogger();
        this.doNothing = new Function0<Unit>() { // from class: tech.ula.library.utils.CollectionOptInPrompter$doNothing$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.setOptInOn = new Function0<Unit>() { // from class: tech.ula.library.utils.CollectionOptInPrompter$setOptInOn$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.logger.initialize(this.this$0.activity);
                SharedPreferences.Editor editorEdit = this.this$0.prefs.edit();
                editorEdit.putBoolean(CollectionOptInPrompter.userHasOptedInPreference, true);
                editorEdit.apply();
            }
        };
        this.userHasBeenPrompted = new Function0<Unit>() { // from class: tech.ula.library.utils.CollectionOptInPrompter$userHasBeenPrompted$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SharedPreferences.Editor editorEdit = this.this$0.prefs.edit();
                editorEdit.putBoolean(CollectionOptInPrompter.userHasBeenPromptedToOptIn, true);
                editorEdit.apply();
            }
        };
    }

    @Override // tech.ula.library.utils.UserPrompter
    public void showView(ViewGroup viewGroup) {
        UserPrompter.DefaultImpls.showView(this, viewGroup);
    }

    @Override // tech.ula.library.utils.UserPrompter
    /* JADX INFO: renamed from: getSavedActivity, reason: from getter */
    public MainActivity getActivity() {
        return this.activity;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public ViewGroup getSavedViewGroup() {
        return this.savedViewGroup;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public void setSavedViewGroup(ViewGroup viewGroup) {
        this.savedViewGroup = viewGroup;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getInitialPositiveBtnAction() {
        return this.doNothing;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public String getInitialPrompt() {
        String string = getActivity().getString(R.string.opt_in_help_prompt, new Object[]{getActivity().getString(tech.ula.customlibrary.R.string.app_name)});
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getInitialPosBtnText() {
        return R.string.button_yes;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getInitialNegBtnText() {
        return R.string.button_negative;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryRequest() {
        return R.string.opt_in_error_collection_prompt;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryPosBtnText() {
        return R.string.button_yes;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryNegBtnText() {
        return R.string.button_negative;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryRequest() {
        return R.string.opt_in_secondary_prompt;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryPosBtnText() {
        return R.string.button_positive;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryNegBtnText() {
        return R.string.button_refuse;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getPrimaryPositiveBtnAction() {
        return this.setOptInOn;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getSecondaryPositiveBtnAction() {
        return this.setOptInOn;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getFinishedAction() {
        return this.userHasBeenPrompted;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public boolean viewShouldBeShown() {
        return !this.prefs.getBoolean(userHasBeenPromptedToOptIn, false);
    }

    public final boolean userHasOptedIn() {
        return this.prefs.getBoolean(userHasOptedInPreference, false);
    }
}
