package tech.ula.library.utils;

import android.content.SharedPreferences;
import android.widget.Toast;
import com.android.billingclient.api.Purchase;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tech.ula.library.R;
import tech.ula.library.RequestDirPermissionsActivity;
import tech.ula.library.model.entities.ExecutionType;

/* JADX INFO: compiled from: ProFeaturePrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 22\u00020\u0001:\u00012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010$\u001a\u00020\u001aJ\u0006\u0010%\u001a\u00020\u001aJ\u0006\u0010&\u001a\u00020\u001aJ\u0016\u0010'\u001a\u00020\u00072\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010H\u0002J\u0016\u0010+\u001a\u00020\u00072\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u000e\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u001aH\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R#\u0010\r\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u00070\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R#\u0010\u0013\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u00070\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\tR\u001d\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00070\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u001d\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0016\u0010\u001c\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Ltech/ula/library/utils/ProFeaturePrompter;", "Ltech/ula/library/utils/ProFeaturePrompterInt;", "activity", "Ltech/ula/library/RequestDirPermissionsActivity;", "(Ltech/ula/library/RequestDirPermissionsActivity;)V", "finishedAction", "Lkotlin/Function0;", "", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "hasMadeInAppPurchaseKey", "", "hasMadeSubPurchaseKey", "onEntitledInAppPurchases", "Lkotlin/Function1;", "", "Lcom/android/billingclient/api/Purchase;", "getOnEntitledInAppPurchases", "()Lkotlin/jvm/functions/Function1;", "onEntitledSubPurchases", "getOnEntitledSubPurchases", "onFlowComplete", "getOnFlowComplete", "onPurchase", "getOnPurchase", "onSubscriptionSupportedChecked", "", "getOnSubscriptionSupportedChecked", PreferenceConstants.BACKUP_PREF_KEY, "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "savedActivity", "getSavedActivity", "()Ltech/ula/library/RequestDirPermissionsActivity;", "subscriptionSupported", "userHasResponded", "hasMadeInAppPurchase", "hasMadeSubPurchase", "hasProAccess", "processInAppPurchases", "purchases", "processPurchase", "purchase", "processSubPurchases", "requiresProPurchase", PubkeyDatabase.FIELD_PUBKEY_TYPE, "Ltech/ula/library/model/entities/ExecutionType;", "setHasMadeInAppPurchase", "hasMadePurchase", "setHasMadeSubPurchase", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProFeaturePrompter implements ProFeaturePrompterInt {
    public static final String prefString = "usage";
    private final RequestDirPermissionsActivity activity;
    private final String hasMadeInAppPurchaseKey;
    private final String hasMadeSubPurchaseKey;
    private final Function1<List<? extends Purchase>, Unit> onEntitledInAppPurchases;
    private final Function1<List<? extends Purchase>, Unit> onEntitledSubPurchases;
    private final Function0<Unit> onFlowComplete;
    private final Function1<Purchase, Unit> onPurchase;
    private final Function1<Boolean, Unit> onSubscriptionSupportedChecked;
    private final SharedPreferences prefs;
    private boolean subscriptionSupported;
    private final Function0<Unit> userHasResponded;

    public ProFeaturePrompter(RequestDirPermissionsActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.hasMadeSubPurchaseKey = "hasMadeSubPurchase";
        this.hasMadeInAppPurchaseKey = "hasMadeInAppPurchase";
        this.prefs = getActivity().getSharedPreferences("usage", 0);
        this.onSubscriptionSupportedChecked = new Function1<Boolean, Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$onSubscriptionSupportedChecked$1
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
        this.onEntitledSubPurchases = new Function1<List<? extends Purchase>, Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$onEntitledSubPurchases$1
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
        this.onEntitledInAppPurchases = new Function1<List<? extends Purchase>, Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$onEntitledInAppPurchases$1
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
        this.onPurchase = new Function1<Purchase, Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$onPurchase$1
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
        this.onFlowComplete = new Function0<Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$onFlowComplete$1
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
        this.userHasResponded = new Function0<Unit>() { // from class: tech.ula.library.utils.ProFeaturePrompter$userHasResponded$1
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
                this.this$0.getActivity().userHasCompletedPayment(this.this$0.hasMadeInAppPurchase() || this.this$0.hasMadeSubPurchase());
            }
        };
    }

    @Override // tech.ula.library.utils.ProFeaturePrompterInt
    /* JADX INFO: renamed from: getSavedActivity, reason: from getter */
    public RequestDirPermissionsActivity getActivity() {
        return this.activity;
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

    @Override // tech.ula.library.utils.ProFeaturePrompterInt
    public Function0<Unit> getFinishedAction() {
        return this.userHasResponded;
    }

    public final boolean hasMadeSubPurchase() {
        return this.prefs.getBoolean(this.hasMadeSubPurchaseKey, false);
    }

    public final boolean hasMadeInAppPurchase() {
        return this.prefs.getBoolean(this.hasMadeInAppPurchaseKey, false);
    }

    public final boolean hasProAccess() {
        return hasMadeSubPurchase() || hasMadeInAppPurchase();
    }

    public final boolean requiresProPurchase(ExecutionType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (type == ExecutionType.PROOT || hasProAccess()) ? false : true;
    }

    private final void setHasMadeSubPurchase(boolean hasMadePurchase) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.hasMadeSubPurchaseKey, hasMadePurchase);
        editorEdit.apply();
    }

    private final void setHasMadeInAppPurchase(boolean hasMadePurchase) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putBoolean(this.hasMadeInAppPurchaseKey, hasMadePurchase);
        editorEdit.apply();
    }
}
