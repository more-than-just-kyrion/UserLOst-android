package tech.ula.library.utils;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.ViewGroup;
import android.widget.Toast;
import com.android.billingclient.api.Purchase;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tech.ula.library.MainActivity;
import tech.ula.library.R;

/* JADX INFO: compiled from: UserPrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b#\u0018\u0000 d2\u00020\u0001:\u0001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010R\u001a\u00020\u0006H\u0002J\u0006\u0010S\u001a\u00020\u0006J\u0006\u0010T\u001a\u00020\u0006J\u0006\u0010U\u001a\u00020\u0006J\b\u0010V\u001a\u00020\u0006H\u0002J\u0016\u0010W\u001a\u00020\r2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\u0010\u0010Y\u001a\u00020\r2\u0006\u0010Z\u001a\u00020#H\u0002J\u0016\u0010[\u001a\u00020\r2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\u000e\u0010\\\u001a\u00020\r2\u0006\u0010]\u001a\u00020\u0006J\u0010\u0010^\u001a\u00020\r2\u0006\u0010_\u001a\u00020\u0006H\u0002J\u0010\u0010`\u001a\u00020\r2\u0006\u0010_\u001a\u00020\u0006H\u0002J\u0010\u0010a\u001a\u00020\r2\u0006\u0010b\u001a\u00020\u0014H\u0002J\b\u0010c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0014X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R#\u0010 \u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0004\u0012\u00020\r0!¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R#\u0010&\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0004\u0012\u00020\r0!¢\u0006\b\n\u0000\u001a\u0004\b'\u0010%R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0010R\u001d\u0010*\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\r0!¢\u0006\b\n\u0000\u001a\u0004\b+\u0010%R\u001d\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0!¢\u0006\b\n\u0000\u001a\u0004\b-\u0010%R\u0014\u0010.\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010/\u001a\n 1*\u0004\u0018\u00010000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0016R\u0014\u00104\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u0016R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0010R\u0014\u00108\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0016R\u001a\u0010:\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\b\"\u0004\b<\u0010=R\u0014\u0010>\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u0014\u0010G\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\u0016R\u0014\u0010I\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010\u0016R\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u0010R\u0014\u0010M\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010\u0016R\u0014\u0010O\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010Q\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006e"}, d2 = {"Ltech/ula/library/utils/ContributionPrompter;", "Ltech/ula/library/utils/UserPrompter;", "activity", "Ltech/ula/library/MainActivity;", "(Ltech/ula/library/MainActivity;)V", "altInitialPosFlow", "", "getAltInitialPosFlow", "()Z", "canAskForPurchaseKey", "", "doNothing", "Lkotlin/Function0;", "", "finishedAction", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "hasMadeInAppPurchaseKey", "hasMadeSubPurchaseKey", "initialNegBtnText", "", "getInitialNegBtnText", "()I", "initialPosBtnText", "getInitialPosBtnText", "initialPositiveBtnAction", "getInitialPositiveBtnAction", "initialPrompt", "getInitialPrompt", "()Ljava/lang/String;", "minimumNumberOfOpensBeforeContributionRequest", "numberOfTimesOpenedKey", "onEntitledInAppPurchases", "Lkotlin/Function1;", "", "Lcom/android/billingclient/api/Purchase;", "getOnEntitledInAppPurchases", "()Lkotlin/jvm/functions/Function1;", "onEntitledSubPurchases", "getOnEntitledSubPurchases", "onFlowComplete", "getOnFlowComplete", "onPurchase", "getOnPurchase", "onSubscriptionSupportedChecked", "getOnSubscriptionSupportedChecked", "openContributionView", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "primaryNegBtnText", "getPrimaryNegBtnText", "primaryPosBtnText", "getPrimaryPosBtnText", "primaryPositiveBtnAction", "getPrimaryPositiveBtnAction", "primaryRequest", "getPrimaryRequest", "purchaseRequired", "getPurchaseRequired", "setPurchaseRequired", "(Z)V", "savedActivity", "getSavedActivity", "()Ltech/ula/library/MainActivity;", "savedViewGroup", "Landroid/view/ViewGroup;", "getSavedViewGroup", "()Landroid/view/ViewGroup;", "setSavedViewGroup", "(Landroid/view/ViewGroup;)V", "secondaryNegBtnText", "getSecondaryNegBtnText", "secondaryPosBtnText", "getSecondaryPosBtnText", "secondaryPositiveBtnAction", "getSecondaryPositiveBtnAction", "secondaryRequest", "getSecondaryRequest", "sendGithubIntent", "subscriptionSupported", "userHasResponded", "askingForContributionIsAppropriate", "canAskForPurchase", "hasMadeInAppPurchase", "hasMadeSubPurchase", "numberOfTimesOpenedIsGreaterThanThreshold", "processInAppPurchases", "purchases", "processPurchase", "purchase", "processSubPurchases", "setCanAskForPurchase", "canAsk", "setHasMadeInAppPurchase", "hasMadePurchase", "setHasMadeSubPurchase", "setNumberOfTimesOpened", "numberTimesOpened", "viewShouldBeShown", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ContributionPrompter implements UserPrompter {
    public static final String prefString = "usage";
    private final MainActivity activity;
    private final String canAskForPurchaseKey;
    private final Function0<Unit> doNothing;
    private final String hasMadeInAppPurchaseKey;
    private final String hasMadeSubPurchaseKey;
    private final int minimumNumberOfOpensBeforeContributionRequest;
    private final String numberOfTimesOpenedKey;
    private final Function1<List<? extends Purchase>, Unit> onEntitledInAppPurchases;
    private final Function1<List<? extends Purchase>, Unit> onEntitledSubPurchases;
    private final Function0<Unit> onFlowComplete;
    private final Function1<Purchase, Unit> onPurchase;
    private final Function1<Boolean, Unit> onSubscriptionSupportedChecked;
    private final Function0<Unit> openContributionView;
    private final SharedPreferences prefs;
    private boolean purchaseRequired;
    private ViewGroup savedViewGroup;
    private final Function0<Unit> sendGithubIntent;
    private boolean subscriptionSupported;
    private final Function0<Unit> userHasResponded;

    @Override // tech.ula.library.utils.UserPrompter
    public boolean getAltInitialPosFlow() {
        return true;
    }

    public ContributionPrompter(MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.numberOfTimesOpenedKey = "numberOfTimesOpenedContribution";
        this.hasMadeSubPurchaseKey = "hasMadeSubPurchase";
        this.hasMadeInAppPurchaseKey = "hasMadeInAppPurchase";
        this.canAskForPurchaseKey = "canAskForPurchase";
        this.minimumNumberOfOpensBeforeContributionRequest = 5;
        this.doNothing = new Function0<Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$doNothing$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.openContributionView = new ContributionPrompter$openContributionView$1(this);
        this.prefs = getActivity().getSharedPreferences("usage", 0);
        this.onSubscriptionSupportedChecked = new Function1<Boolean, Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$onSubscriptionSupportedChecked$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                this.this$0.subscriptionSupported = z;
            }
        };
        this.onEntitledSubPurchases = new Function1<List<? extends Purchase>, Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$onEntitledSubPurchases$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Purchase> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends Purchase> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.this$0.processSubPurchases(it);
            }
        };
        this.onEntitledInAppPurchases = new Function1<List<? extends Purchase>, Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$onEntitledInAppPurchases$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Purchase> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends Purchase> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.this$0.processInAppPurchases(it);
            }
        };
        this.onPurchase = new Function1<Purchase, Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$onPurchase$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Purchase purchase) {
                invoke2(purchase);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Purchase it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.this$0.processPurchase(it);
            }
        };
        this.onFlowComplete = new Function0<Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$onFlowComplete$1
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
                this.this$0.getFinishedAction().invoke();
            }
        };
        this.sendGithubIntent = new Function0<Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$sendGithubIntent$1
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
                this.this$0.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("")));
            }
        };
        this.userHasResponded = new Function0<Unit>() { // from class: tech.ula.library.utils.ContributionPrompter$userHasResponded$1
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
                editorEdit.putInt(this.this$0.numberOfTimesOpenedKey, 0);
                editorEdit.apply();
                if (this.this$0.getPurchaseRequired()) {
                    this.this$0.setPurchaseRequired(false);
                    this.this$0.getActivity().userHasCompletedPayment(this.this$0.hasMadeInAppPurchase() || this.this$0.hasMadeSubPurchase());
                } else {
                    this.this$0.getActivity().userHasCompletedContribution();
                }
            }
        };
    }

    @Override // tech.ula.library.utils.UserPrompter
    public void showView(ViewGroup viewGroup) {
        UserPrompter.DefaultImpls.showView(this, viewGroup);
    }

    public final boolean getPurchaseRequired() {
        return this.purchaseRequired;
    }

    public final void setPurchaseRequired(boolean z) {
        this.purchaseRequired = z;
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
        return this.openContributionView;
    }

    public final Function1<Boolean, Unit> getOnSubscriptionSupportedChecked() {
        return this.onSubscriptionSupportedChecked;
    }

    public final Function1<List<? extends Purchase>, Unit> getOnEntitledSubPurchases() {
        return this.onEntitledSubPurchases;
    }

    public final Function1<List<? extends Purchase>, Unit> getOnEntitledInAppPurchases() {
        return this.onEntitledInAppPurchases;
    }

    public final Function1<Purchase, Unit> getOnPurchase() {
        return this.onPurchase;
    }

    public final Function0<Unit> getOnFlowComplete() {
        return this.onFlowComplete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processSubPurchases(List<? extends Purchase> purchases) {
        Iterator<T> it = purchases.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((Purchase) it.next()).getPurchaseState() == 1) {
                z = true;
            }
        }
        setHasMadeSubPurchase(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processInAppPurchases(List<? extends Purchase> purchases) {
        Iterator<T> it = purchases.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((Purchase) it.next()).getPurchaseState() == 1) {
                z = true;
            }
        }
        setHasMadeInAppPurchase(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processPurchase(Purchase purchase) {
        String str = purchase.getSkus().get(0);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        if (StringsKt.endsWith$default(str, "onetime", false, 2, (Object) null) || purchase.getSkus().get(0).equals(BillingManager.Sku.PRO_FEATURES)) {
            setHasMadeInAppPurchase(true);
        } else {
            setHasMadeSubPurchase(true);
        }
        Toast.makeText(getActivity(), R.string.contribution_thanks, 1).show();
        getFinishedAction().invoke();
    }

    @Override // tech.ula.library.utils.UserPrompter
    public String getInitialPrompt() {
        String string = getActivity().getString(R.string.contribution_primary, new Object[]{getActivity().getString(tech.ula.customlibrary.R.string.app_name)});
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getInitialPosBtnText() {
        return R.string.button_yes;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getInitialNegBtnText() {
        return R.string.button_refuse;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getPrimaryRequest() {
        return R.string.contribution_secondary_positive;
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
        return R.string.contribution_secondary_negative;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryPosBtnText() {
        return R.string.button_yes;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public int getSecondaryNegBtnText() {
        return R.string.button_refuse;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getPrimaryPositiveBtnAction() {
        return this.doNothing;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getSecondaryPositiveBtnAction() {
        return this.sendGithubIntent;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public Function0<Unit> getFinishedAction() {
        return this.userHasResponded;
    }

    @Override // tech.ula.library.utils.UserPrompter
    public boolean viewShouldBeShown() {
        return askingForContributionIsAppropriate();
    }

    private final boolean askingForContributionIsAppropriate() {
        return (!numberOfTimesOpenedIsGreaterThanThreshold() || hasMadeSubPurchase() || hasMadeInAppPurchase()) ? false : true;
    }

    private final boolean numberOfTimesOpenedIsGreaterThanThreshold() {
        int i = this.prefs.getInt(this.numberOfTimesOpenedKey, 0) + 1;
        setNumberOfTimesOpened(i);
        return i > this.minimumNumberOfOpensBeforeContributionRequest;
    }

    private final void setNumberOfTimesOpened(int numberTimesOpened) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putInt(this.numberOfTimesOpenedKey, numberTimesOpened);
        editorEdit.apply();
    }

    public final boolean hasMadeSubPurchase() {
        return this.prefs.getBoolean(this.hasMadeSubPurchaseKey, false);
    }

    public final boolean hasMadeInAppPurchase() {
        return this.prefs.getBoolean(this.hasMadeInAppPurchaseKey, false);
    }

    public final boolean canAskForPurchase() {
        return this.prefs.getBoolean(this.canAskForPurchaseKey, true);
    }

    public final void setCanAskForPurchase(boolean canAsk) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.canAskForPurchaseKey, canAsk);
        editorEdit.apply();
    }

    private final void setHasMadeSubPurchase(boolean hasMadePurchase) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.hasMadeSubPurchaseKey, hasMadePurchase);
        if (hasMadePurchase) {
            editorEdit.putInt(this.numberOfTimesOpenedKey, 0);
        }
        editorEdit.apply();
    }

    private final void setHasMadeInAppPurchase(boolean hasMadePurchase) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.hasMadeInAppPurchaseKey, hasMadePurchase);
        if (hasMadePurchase) {
            editorEdit.putInt(this.numberOfTimesOpenedKey, 0);
        }
        editorEdit.apply();
    }
}
