package tech.ula.library.utils;

import android.app.Activity;
import android.util.Log;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001:Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0018\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\f\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\u000fJ\u0006\u0010 \u001a\u00020\bJ\u0018\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001eH\u0002J\b\u0010%\u001a\u00020\u000eH\u0002J\u0010\u0010&\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001eH\u0002J\u001e\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001e\u0010+\u001a\u00020\b2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0006\u0010,\u001a\u00020\bJh\u0010-\u001a\u00020\b2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00062\u0018\u0010/\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\b0\u000526\u00100\u001a2\u0012\u0013\u0012\u00110#¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\b01H\u0002J\u0006\u00104\u001a\u00020\bJh\u00105\u001a\u00020\b2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00062\u0018\u0010/\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\b0\u000526\u00100\u001a2\u0012\u0013\u0012\u00110#¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\b01H\u0002J\u000e\u00106\u001a\u00020\b2\u0006\u00107\u001a\u00020\u001eJ\u0016\u00108\u001a\u00020\b2\f\u00109\u001a\b\u0012\u0004\u0012\u00020\b0\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00170\u001dj\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0017`\u001fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Ltech/ula/library/utils/BillingManager;", "", "activity", "Landroid/app/Activity;", "onEntitledSubPurchases", "Lkotlin/Function1;", "", "Lcom/android/billingclient/api/Purchase;", "", "onEntitledInAppPurchases", "onPurchase", "onFlowComplete", "Lkotlin/Function0;", "onSubscriptionSupportedChecked", "", "(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "billingClient", "Lcom/android/billingclient/api/BillingClient;", "isBillingServiceConnected", "()Z", "setBillingServiceConnected", "(Z)V", "populateSkus", "Lcom/android/billingclient/api/SkuDetails;", "getPopulateSkus", "()Lkotlin/jvm/functions/Function1;", "purchasesUpdatedListener", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "skuDetailsMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "destroy", "handlePopulateSkuError", "code", "", JsonMarshaller.MESSAGE, "isSubscriptionPurchaseSupported", "log", "processInAppPurchaseList", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "list", "processSubPurchaseList", "queryInAppPurchases", "queryInAppSkuDetails", "skus", "onSuccess", "onError", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "querySubPurchases", "querySubscriptionSkuDetails", "startPurchaseFlow", "productId", "startServiceConnection", "task", "Sku", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingManager {
    private final Activity activity;
    private final BillingClient billingClient;
    private boolean isBillingServiceConnected;
    private final Function1<List<? extends Purchase>, Unit> onEntitledInAppPurchases;
    private final Function1<List<? extends Purchase>, Unit> onEntitledSubPurchases;
    private final Function0<Unit> onFlowComplete;
    private final Function1<Purchase, Unit> onPurchase;
    private final Function1<Boolean, Unit> onSubscriptionSupportedChecked;
    private final Function1<List<? extends SkuDetails>, Unit> populateSkus;
    private final PurchasesUpdatedListener purchasesUpdatedListener;
    private final HashMap<String, SkuDetails> skuDetailsMap;

    /* JADX WARN: Multi-variable type inference failed */
    public BillingManager(Activity activity, Function1<? super List<? extends Purchase>, Unit> onEntitledSubPurchases, Function1<? super List<? extends Purchase>, Unit> onEntitledInAppPurchases, Function1<? super Purchase, Unit> onPurchase, Function0<Unit> onFlowComplete, Function1<? super Boolean, Unit> onSubscriptionSupportedChecked) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onEntitledSubPurchases, "onEntitledSubPurchases");
        Intrinsics.checkNotNullParameter(onEntitledInAppPurchases, "onEntitledInAppPurchases");
        Intrinsics.checkNotNullParameter(onPurchase, "onPurchase");
        Intrinsics.checkNotNullParameter(onFlowComplete, "onFlowComplete");
        Intrinsics.checkNotNullParameter(onSubscriptionSupportedChecked, "onSubscriptionSupportedChecked");
        this.activity = activity;
        this.onEntitledSubPurchases = onEntitledSubPurchases;
        this.onEntitledInAppPurchases = onEntitledInAppPurchases;
        this.onPurchase = onPurchase;
        this.onFlowComplete = onFlowComplete;
        this.onSubscriptionSupportedChecked = onSubscriptionSupportedChecked;
        PurchasesUpdatedListener purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda3
            @Override // com.android.billingclient.api.PurchasesUpdatedListener
            public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                BillingManager.purchasesUpdatedListener$lambda$2(this.f$0, billingResult, list);
            }
        };
        this.purchasesUpdatedListener = purchasesUpdatedListener;
        this.skuDetailsMap = new HashMap<>();
        BillingClient billingClientBuild = BillingClient.newBuilder(activity).enablePendingPurchases().setListener(purchasesUpdatedListener).build();
        Intrinsics.checkNotNullExpressionValue(billingClientBuild, "build(...)");
        this.billingClient = billingClientBuild;
        this.populateSkus = new Function1<List<? extends SkuDetails>, Unit>() { // from class: tech.ula.library.utils.BillingManager$populateSkus$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends SkuDetails> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends SkuDetails> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                BillingManager billingManager = this.this$0;
                for (SkuDetails skuDetails : it) {
                    billingManager.skuDetailsMap.put(skuDetails.getSku(), skuDetails);
                }
            }
        };
        startServiceConnection(new Function0<Unit>() { // from class: tech.ula.library.utils.BillingManager.1
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
                BillingManager.this.onSubscriptionSupportedChecked.invoke(Boolean.valueOf(BillingManager.this.isSubscriptionPurchaseSupported()));
                BillingManager.this.querySubPurchases();
                BillingManager.this.queryInAppPurchases();
                BillingManager.this.querySubscriptionSkuDetails(CollectionsKt.listOf((Object[]) new String[]{Sku.US1_MONTHLY, Sku.US5_MONTHLY, Sku.US10_MONTHLY, Sku.US20_MONTHLY, Sku.US1_YEARLY, Sku.US5_YEARLY, Sku.US10_YEARLY, Sku.US20_YEARLY}), BillingManager.this.getPopulateSkus(), new C00521(BillingManager.this));
                BillingManager.this.queryInAppSkuDetails(CollectionsKt.listOf((Object[]) new String[]{Sku.PRO_FEATURES, Sku.PRO_FEATURES_TEST, Sku.US1_ONETIME, Sku.US5_ONETIME, Sku.US10_ONETIME, Sku.US20_ONETIME}), BillingManager.this.getPopulateSkus(), new AnonymousClass2(BillingManager.this));
            }

            /* JADX INFO: renamed from: tech.ula.library.utils.BillingManager$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: BillingManager.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* synthetic */ class C00521 extends FunctionReferenceImpl implements Function2<Integer, String, Unit> {
                C00521(Object obj) {
                    super(2, obj, BillingManager.class, "handlePopulateSkuError", "handlePopulateSkuError(ILjava/lang/String;)V", 0);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                    invoke(num.intValue(), str);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String p1) {
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    ((BillingManager) this.receiver).handlePopulateSkuError(i, p1);
                }
            }

            /* JADX INFO: renamed from: tech.ula.library.utils.BillingManager$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: BillingManager.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<Integer, String, Unit> {
                AnonymousClass2(Object obj) {
                    super(2, obj, BillingManager.class, "handlePopulateSkuError", "handlePopulateSkuError(ILjava/lang/String;)V", 0);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                    invoke(num.intValue(), str);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String p1) {
                    Intrinsics.checkNotNullParameter(p1, "p1");
                    ((BillingManager) this.receiver).handlePopulateSkuError(i, p1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchasesUpdatedListener$lambda$2(final BillingManager this$0, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        int responseCode = billingResult.getResponseCode();
        if (responseCode != 0) {
            if (responseCode == 1) {
                this$0.log("onPurchasesUpdated() - user cancelled the purchase flow - skipping");
                this$0.onFlowComplete.invoke();
                return;
            } else {
                this$0.log("onPurchasesUpdated() got unknown resultCode: " + billingResult.getResponseCode());
                this$0.onFlowComplete.invoke();
                return;
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                int purchaseState = purchase.getPurchaseState();
                if (purchaseState == 1) {
                    Function1<Purchase, Unit> function1 = this$0.onPurchase;
                    Intrinsics.checkNotNull(purchase);
                    function1.invoke(purchase);
                    if (!purchase.isAcknowledged()) {
                        AcknowledgePurchaseParams acknowledgePurchaseParamsBuild = AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build();
                        Intrinsics.checkNotNullExpressionValue(acknowledgePurchaseParamsBuild, "build(...)");
                        this$0.billingClient.acknowledgePurchase(acknowledgePurchaseParamsBuild, new AcknowledgePurchaseResponseListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda5
                            @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
                            public final void onAcknowledgePurchaseResponse(BillingResult billingResult2) {
                                BillingManager.purchasesUpdatedListener$lambda$2$lambda$1$lambda$0(this.f$0, billingResult2);
                            }
                        });
                    }
                } else if (purchaseState == 2) {
                    this$0.onFlowComplete.invoke();
                }
            }
        }
        this$0.log("onPurchasesUpdated(), " + list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void purchasesUpdatedListener$lambda$2$lambda$1$lambda$0(BillingManager this$0, BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this$0.log("acknowledgePurchase(), billingResult=" + billingResult);
    }

    /* JADX INFO: renamed from: isBillingServiceConnected, reason: from getter */
    public final boolean getIsBillingServiceConnected() {
        return this.isBillingServiceConnected;
    }

    public final void setBillingServiceConnected(boolean z) {
        this.isBillingServiceConnected = z;
    }

    public final Function1<List<? extends SkuDetails>, Unit> getPopulateSkus() {
        return this.populateSkus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlePopulateSkuError(int code, String message) {
        log("Error trying to populate skus.  code: " + code + " message: " + message);
    }

    private final void processSubPurchaseList(BillingResult billingResult, List<? extends Purchase> list) {
        if (billingResult.getResponseCode() != 0) {
            log("Error trying to query purchases: " + billingResult);
        } else if (list != null) {
            this.onEntitledSubPurchases.invoke(list);
        }
    }

    public final void querySubPurchases() {
        if (isSubscriptionPurchaseSupported()) {
            this.billingClient.queryPurchasesAsync("subs", new PurchasesResponseListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda4
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    BillingManager.querySubPurchases$lambda$4(this.f$0, billingResult, list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void querySubPurchases$lambda$4(BillingManager this$0, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(list, "list");
        this$0.processSubPurchaseList(billingResult, list);
    }

    private final void processInAppPurchaseList(BillingResult billingResult, List<? extends Purchase> list) {
        if (billingResult.getResponseCode() != 0) {
            log("Error trying to query purchases: " + billingResult);
        } else if (list != null) {
            this.onEntitledInAppPurchases.invoke(list);
        }
    }

    public final void queryInAppPurchases() {
        this.billingClient.queryPurchasesAsync("inapp", new PurchasesResponseListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda2
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                BillingManager.queryInAppPurchases$lambda$6(this.f$0, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryInAppPurchases$lambda$6(BillingManager this$0, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(list, "list");
        this$0.processInAppPurchaseList(billingResult, list);
    }

    public final void startPurchaseFlow(String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        final SkuDetails skuDetails = this.skuDetailsMap.get(productId);
        if (skuDetails != null) {
            startServiceConnection(new Function0<Unit>() { // from class: tech.ula.library.utils.BillingManager.startPurchaseFlow.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setSkuDetails(skuDetails).build();
                    Intrinsics.checkNotNullExpressionValue(billingFlowParamsBuild, "build(...)");
                    BillingResult billingResultLaunchBillingFlow = this.billingClient.launchBillingFlow(this.activity, billingFlowParamsBuild);
                    Intrinsics.checkNotNullExpressionValue(billingResultLaunchBillingFlow, "launchBillingFlow(...)");
                    this.log("startPurchaseFlow(...), billingResult=" + billingResultLaunchBillingFlow);
                }
            });
        }
    }

    public final void destroy() {
        log("destroy()");
        if (this.billingClient.isReady()) {
            this.billingClient.endConnection();
        }
    }

    private final void startServiceConnection(final Function0<Unit> task) {
        if (this.isBillingServiceConnected) {
            task.invoke();
        } else {
            this.billingClient.startConnection(new BillingClientStateListener() { // from class: tech.ula.library.utils.BillingManager.startServiceConnection.1
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult billingResult) {
                    Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                    BillingManager.this.log("onBillingSetupFinished(...), billingResult=" + billingResult);
                    if (billingResult.getResponseCode() == 0) {
                        BillingManager.this.setBillingServiceConnected(true);
                        task.invoke();
                    }
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                    BillingManager.this.log("onBillingServiceDisconnected()");
                    BillingManager.this.setBillingServiceConnected(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void querySubscriptionSkuDetails(List<String> skus, final Function1<? super List<? extends SkuDetails>, Unit> onSuccess, final Function2<? super Integer, ? super String, Unit> onError) {
        SkuDetailsParams.Builder type = SkuDetailsParams.newBuilder().setSkusList(skus).setType("subs");
        Intrinsics.checkNotNullExpressionValue(type, "setType(...)");
        this.billingClient.querySkuDetailsAsync(type.build(), new SkuDetailsResponseListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda0
            @Override // com.android.billingclient.api.SkuDetailsResponseListener
            public final void onSkuDetailsResponse(BillingResult billingResult, List list) {
                BillingManager.querySubscriptionSkuDetails$lambda$7(onSuccess, onError, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void querySubscriptionSkuDetails$lambda$7(Function1 onSuccess, Function2 onError, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(onError, "$onError");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        if (billingResult.getResponseCode() == 0 && list != null) {
            onSuccess.invoke(list);
            return;
        }
        Integer numValueOf = Integer.valueOf(billingResult.getResponseCode());
        String debugMessage = billingResult.getDebugMessage();
        Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
        onError.invoke(numValueOf, debugMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryInAppSkuDetails(List<String> skus, final Function1<? super List<? extends SkuDetails>, Unit> onSuccess, final Function2<? super Integer, ? super String, Unit> onError) {
        SkuDetailsParams.Builder type = SkuDetailsParams.newBuilder().setSkusList(skus).setType("inapp");
        Intrinsics.checkNotNullExpressionValue(type, "setType(...)");
        this.billingClient.querySkuDetailsAsync(type.build(), new SkuDetailsResponseListener() { // from class: tech.ula.library.utils.BillingManager$$ExternalSyntheticLambda1
            @Override // com.android.billingclient.api.SkuDetailsResponseListener
            public final void onSkuDetailsResponse(BillingResult billingResult, List list) {
                BillingManager.queryInAppSkuDetails$lambda$8(onSuccess, onError, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryInAppSkuDetails$lambda$8(Function1 onSuccess, Function2 onError, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(onSuccess, "$onSuccess");
        Intrinsics.checkNotNullParameter(onError, "$onError");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        if (billingResult.getResponseCode() == 0 && list != null) {
            onSuccess.invoke(list);
            return;
        }
        Integer numValueOf = Integer.valueOf(billingResult.getResponseCode());
        String debugMessage = billingResult.getDebugMessage();
        Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
        onError.invoke(numValueOf, debugMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSubscriptionPurchaseSupported() {
        BillingResult billingResultIsFeatureSupported = this.billingClient.isFeatureSupported(BillingClient.FeatureType.SUBSCRIPTIONS);
        Intrinsics.checkNotNullExpressionValue(billingResultIsFeatureSupported, "isFeatureSupported(...)");
        if (billingResultIsFeatureSupported.getResponseCode() != 0) {
            log("isSubscriptionPurchaseSupported(), not supported, error response: " + billingResultIsFeatureSupported);
        }
        return billingResultIsFeatureSupported.getResponseCode() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void log(String message) {
        Log.d("BillingManager", message);
    }

    /* JADX INFO: compiled from: BillingManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/ula/library/utils/BillingManager$Sku;", "", "()V", "PRO_FEATURES", "", "PRO_FEATURES_TEST", "US10_MONTHLY", "US10_ONETIME", "US10_YEARLY", "US1_MONTHLY", "US1_ONETIME", "US1_YEARLY", "US20_MONTHLY", "US20_ONETIME", "US20_YEARLY", "US5_MONTHLY", "US5_ONETIME", "US5_YEARLY", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Sku {
        public static final Sku INSTANCE = new Sku();
        public static final String PRO_FEATURES = "pro_features";
        public static final String PRO_FEATURES_TEST = "pro_features_test";
        public static final String US10_MONTHLY = "10us_monthly";
        public static final String US10_ONETIME = "10us_onetime";
        public static final String US10_YEARLY = "10us_yearly";
        public static final String US1_MONTHLY = "1us_monthly";
        public static final String US1_ONETIME = "1us_onetime";
        public static final String US1_YEARLY = "1us_yearly";
        public static final String US20_MONTHLY = "20us_monthly";
        public static final String US20_ONETIME = "20us_onetime";
        public static final String US20_YEARLY = "20us_yearly";
        public static final String US5_MONTHLY = "5us_monthly";
        public static final String US5_ONETIME = "5us_onetime";
        public static final String US5_YEARLY = "5us_yearly";

        private Sku() {
        }
    }
}
