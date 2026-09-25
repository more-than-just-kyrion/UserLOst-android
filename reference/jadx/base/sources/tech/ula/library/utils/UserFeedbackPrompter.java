package tech.ula.library.utils;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.ViewGroup;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.MainActivity;
import tech.ula.library.R;

/* JADX INFO: compiled from: UserPrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u0000 G2\u00020\u0001:\u0001GB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010@\u001a\u00020\u0006H\u0002J\b\u0010A\u001a\u00020\u0006H\u0002J\b\u0010B\u001a\u00020\u0006H\u0002J\b\u0010C\u001a\u00020\u0006H\u0002J\u0010\u0010D\u001a\u00020\r2\u0006\u0010E\u001a\u00020\u0012H\u0002J\b\u0010F\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0010R\u0014\u0010\u0019\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n \"*\u0004\u0018\u00010!0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u0014R\u0014\u0010%\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u0014R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010\u0010R\u0014\u0010)\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0014R\u0014\u0010+\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00104\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u0014R\u0014\u00106\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0014R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0010R\u0014\u0010:\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u0014R\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010=\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010?\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006H"}, d2 = {"Ltech/ula/library/utils/UserFeedbackPrompter;", "Ltech/ula/library/utils/UserPrompter;", "activity", "Ltech/ula/library/MainActivity;", "(Ltech/ula/library/MainActivity;)V", "altInitialPosFlow", "", "getAltInitialPosFlow", "()Z", "dateTimeFirstOpenKey", "", "doNothing", "Lkotlin/Function0;", "", "finishedAction", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "initialNegBtnText", "", "getInitialNegBtnText", "()I", "initialPosBtnText", "getInitialPosBtnText", "initialPositiveBtnAction", "getInitialPositiveBtnAction", "initialPrompt", "getInitialPrompt", "()Ljava/lang/String;", "millisecondsInThreeDays", "", "minimumNumberOfOpensBeforeReviewRequest", "numberOfTimesOpenedKey", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "primaryNegBtnText", "getPrimaryNegBtnText", "primaryPosBtnText", "getPrimaryPosBtnText", "primaryPositiveBtnAction", "getPrimaryPositiveBtnAction", "primaryRequest", "getPrimaryRequest", "savedActivity", "getSavedActivity", "()Ltech/ula/library/MainActivity;", "savedViewGroup", "Landroid/view/ViewGroup;", "getSavedViewGroup", "()Landroid/view/ViewGroup;", "setSavedViewGroup", "(Landroid/view/ViewGroup;)V", "secondaryNegBtnText", "getSecondaryNegBtnText", "secondaryPosBtnText", "getSecondaryPosBtnText", "secondaryPositiveBtnAction", "getSecondaryPositiveBtnAction", "secondaryRequest", "getSecondaryRequest", "sendGithubIntent", "sendReviewIntent", "userGaveFeedbackKey", "userHasGivenFeedback", "askingForFeedbackIsAppropriate", "getIsSufficientTimeElapsedSinceFirstOpen", "getUserGaveFeedback", "numberOfTimesOpenedIsGreaterThanThreshold", "setNumberOfTimesOpened", "numberTimesOpened", "viewShouldBeShown", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UserFeedbackPrompter implements UserPrompter {
    public static final String prefString = "usage";
    private final MainActivity activity;
    private final String dateTimeFirstOpenKey;
    private final Function0<Unit> doNothing;
    private final long millisecondsInThreeDays;
    private final int minimumNumberOfOpensBeforeReviewRequest;
    private final String numberOfTimesOpenedKey;
    private final SharedPreferences prefs;
    private ViewGroup savedViewGroup;
    private final Function0<Unit> sendGithubIntent;
    private final Function0<Unit> sendReviewIntent;
    private final String userGaveFeedbackKey;
    private final Function0<Unit> userHasGivenFeedback;

    @Override // tech.ula.library.utils.UserPrompter
    public boolean getAltInitialPosFlow() {
        return false;
    }

    public UserFeedbackPrompter(MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.prefs = activity.getSharedPreferences("usage", 0);
        this.numberOfTimesOpenedKey = "numberOfTimesOpened";
        this.userGaveFeedbackKey = "userGaveFeedback";
        this.dateTimeFirstOpenKey = "dateTimeFirstOpen";
        this.millisecondsInThreeDays = 259200000L;
        this.minimumNumberOfOpensBeforeReviewRequest = 3;
        this.doNothing = new Function0<Unit>() { // from class: tech.ula.library.utils.UserFeedbackPrompter$doNothing$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.sendReviewIntent = new Function0<Unit>() { // from class: tech.ula.library.utils.UserFeedbackPrompter$sendReviewIntent$1
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
                this.this$0.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + this.this$0.getActivity().getPackageName())));
            }
        };
        this.sendGithubIntent = new Function0<Unit>() { // from class: tech.ula.library.utils.UserFeedbackPrompter$sendGithubIntent$1
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
                this.this$0.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("")));
            }
        };
        this.userHasGivenFeedback = new Function0<Unit>() { // from class: tech.ula.library.utils.UserFeedbackPrompter$userHasGivenFeedback$1
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
                editorEdit.putBoolean(this.this$0.userGaveFeedbackKey, true);
                editorEdit.apply();
                this.this$0.getActivity().userHasCompletedFeedback();
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
        String string = getActivity().getString(R.string.review_is_user_enjoying, new Object[]{getActivity().getString(tech.ula.customlibrary.R.string.app_name)});
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
        return R.string.review_ask_for_rating;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryPosBtnText() {
        return R.string.button_positive;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryNegBtnText() {
        return R.string.button_refuse;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryRequest() {
        return R.string.review_ask_for_feedback;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryPosBtnText() {
        return R.string.button_positive;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryNegBtnText() {
        return R.string.button_negative;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getPrimaryPositiveBtnAction() {
        return this.sendReviewIntent;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getSecondaryPositiveBtnAction() {
        return this.sendGithubIntent;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getFinishedAction() {
        return this.userHasGivenFeedback;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public boolean viewShouldBeShown() {
        return askingForFeedbackIsAppropriate();
    }

    private final boolean askingForFeedbackIsAppropriate() {
        return numberOfTimesOpenedIsGreaterThanThreshold() && !getUserGaveFeedback();
    }

    private final boolean getIsSufficientTimeElapsedSinceFirstOpen() {
        return System.currentTimeMillis() > this.prefs.getLong(this.dateTimeFirstOpenKey, 0L) + this.millisecondsInThreeDays;
    }

    private final boolean numberOfTimesOpenedIsGreaterThanThreshold() {
        int i = this.prefs.getInt(this.numberOfTimesOpenedKey, 0) + 1;
        setNumberOfTimesOpened(i);
        return i > this.minimumNumberOfOpensBeforeReviewRequest;
    }

    private final void setNumberOfTimesOpened(int numberTimesOpened) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        if (numberTimesOpened == 1) {
            editorEdit.putLong(this.dateTimeFirstOpenKey, System.currentTimeMillis());
        }
        editorEdit.putInt(this.numberOfTimesOpenedKey, numberTimesOpened);
        editorEdit.apply();
    }

    private final boolean getUserGaveFeedback() {
        return this.prefs.getBoolean(this.userGaveFeedbackKey, false);
    }
}
