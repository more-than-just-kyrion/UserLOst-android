package tech.ula.library;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.DocumentsContract;
import androidx.appcompat.app.AppCompatActivity;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.utils.BillingManager;
import tech.ula.library.utils.ProFeaturePrompter;

/* JADX INFO: compiled from: RequestDirPermissionsActivity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0013H\u0014J\b\u0010\u001c\u001a\u00020\u0013H\u0014J\u0016\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0013J\u000e\u0010\"\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00132\u0006\u0010#\u001a\u00020$J\u000e\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020 R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\b\u001a\u0004\b\u000f\u0010\u0010¨\u0006("}, d2 = {"Ltech/ula/library/RequestDirPermissionsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "billingManager", "Ltech/ula/library/utils/BillingManager;", "getBillingManager", "()Ltech/ula/library/utils/BillingManager;", "billingManager$delegate", "Lkotlin/Lazy;", "directoryPickerID", "", "path", "", "proFeaturePrompter", "Ltech/ula/library/utils/ProFeaturePrompter;", "getProFeaturePrompter", "()Ltech/ula/library/utils/ProFeaturePrompter;", "proFeaturePrompter$delegate", "onActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "requestDirPermssions", "intent", "paymentRequired", "", "sendCancelledResult", "showDocumentsDirPermissionsNecessaryDialog", "activity", "Landroid/app/Activity;", "showProFeaturesRequiredDialog", "userHasCompletedPayment", "paid", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestDirPermissionsActivity extends AppCompatActivity {
    private final int directoryPickerID = 1;
    private String path = "";

    /* JADX INFO: renamed from: billingManager$delegate, reason: from kotlin metadata */
    private final Lazy billingManager = LazyKt.lazy(new Function0<BillingManager>() { // from class: tech.ula.library.RequestDirPermissionsActivity$billingManager$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final BillingManager invoke() {
            RequestDirPermissionsActivity requestDirPermissionsActivity = this.this$0;
            return new BillingManager(requestDirPermissionsActivity, requestDirPermissionsActivity.getProFeaturePrompter().getOnEntitledSubPurchases(), this.this$0.getProFeaturePrompter().getOnEntitledInAppPurchases(), this.this$0.getProFeaturePrompter().getOnPurchase(), this.this$0.getProFeaturePrompter().getOnFlowComplete(), this.this$0.getProFeaturePrompter().getOnSubscriptionSupportedChecked());
        }
    });

    /* JADX INFO: renamed from: proFeaturePrompter$delegate, reason: from kotlin metadata */
    private final Lazy proFeaturePrompter = LazyKt.lazy(new Function0<ProFeaturePrompter>() { // from class: tech.ula.library.RequestDirPermissionsActivity$proFeaturePrompter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ProFeaturePrompter invoke() {
            return new ProFeaturePrompter(this.this$0);
        }
    });

    public final BillingManager getBillingManager() {
        return (BillingManager) this.billingManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProFeaturePrompter getProFeaturePrompter() {
        return (ProFeaturePrompter) this.proFeaturePrompter.getValue();
    }

    public final void userHasCompletedPayment(boolean paid) {
        if (paid) {
            showDocumentsDirPermissionsNecessaryDialog(this);
        } else {
            sendCancelledResult();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.request_dir_permissions_activity);
    }

    public final void sendCancelledResult() {
        Intent intentPutExtra = new Intent(this, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "getDirPermsResult");
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        intentPutExtra.putExtra("path", this.path);
        intentPutExtra.putExtra("resultCode", 0);
        startService(intentPutExtra);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == this.directoryPickerID) {
            Intent intentPutExtra = new Intent(this, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "getDirPermsResult");
            Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
            if (resultCode == -1) {
                Intrinsics.checkNotNull(data);
                Uri data2 = data.getData();
                Intrinsics.checkNotNull(data2);
                intentPutExtra.putExtra("uri", data2.toString());
                getContentResolver().takePersistableUriPermission(data2, 3);
            }
            intentPutExtra.putExtra("path", this.path);
            intentPutExtra.putExtra("resultCode", resultCode);
            startService(intentPutExtra);
            finish();
        }
    }

    public final void showDocumentsDirPermissionsNecessaryDialog(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String string = activity.getString(R.string.alert_notification_documents_permission_necessary_message, new Object[]{activity.getString(tech.ula.customlibrary.R.string.app_name), this.path});
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        builder.setMessage(string).setTitle(activity.getString(R.string.alert_permissions_necessary_title, new Object[]{activity.getString(tech.ula.customlibrary.R.string.app_name)})).setPositiveButton(R.string.button_ok, new DialogInterface.OnClickListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestDirPermissionsActivity.showDocumentsDirPermissionsNecessaryDialog$lambda$2(activity, this, dialogInterface, i);
            }
        }).setNegativeButton(R.string.alert_permissions_necessary_cancel_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestDirPermissionsActivity.showDocumentsDirPermissionsNecessaryDialog$lambda$3(this.f$0, dialogInterface, i);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                RequestDirPermissionsActivity.showDocumentsDirPermissionsNecessaryDialog$lambda$4(this.f$0, dialogInterface);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDocumentsDirPermissionsNecessaryDialog$lambda$2(Activity activity, RequestDirPermissionsActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        if (Build.VERSION.SDK_INT >= 26) {
            intent.addFlags(CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256);
            intent.putExtra("android.provider.extra.INITIAL_URI", DocumentsContract.buildDocumentUri("com.android.externalstorage.documents", "primary:" + StringsKt.removePrefix(this$0.path, (CharSequence) "/sdcard/")));
        }
        activity.startActivityForResult(intent, this$0.directoryPickerID);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDocumentsDirPermissionsNecessaryDialog$lambda$3(RequestDirPermissionsActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.sendCancelledResult();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDocumentsDirPermissionsNecessaryDialog$lambda$4(RequestDirPermissionsActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.sendCancelledResult();
    }

    public final void showProFeaturesRequiredDialog(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        String string = activity.getString(R.string.alert_pro_features_required_message);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        builder.setMessage(string).setTitle(activity.getString(R.string.alert_pro_features_required_title)).setPositiveButton(R.string.button_yes, new DialogInterface.OnClickListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestDirPermissionsActivity.showProFeaturesRequiredDialog$lambda$5(this.f$0, dialogInterface, i);
            }
        }).setNegativeButton(R.string.button_refuse, new DialogInterface.OnClickListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                RequestDirPermissionsActivity.showProFeaturesRequiredDialog$lambda$6(this.f$0, dialogInterface, i);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: tech.ula.library.RequestDirPermissionsActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                RequestDirPermissionsActivity.showProFeaturesRequiredDialog$lambda$7(this.f$0, dialogInterface);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$5(RequestDirPermissionsActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBillingManager().startPurchaseFlow(BillingManager.Sku.PRO_FEATURES);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$6(RequestDirPermissionsActivity this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        dialogInterface.dismiss();
        this$0.sendCancelledResult();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProFeaturesRequiredDialog$lambda$7(RequestDirPermissionsActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.sendCancelledResult();
    }

    public final void requestDirPermssions(Intent intent, boolean paymentRequired) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        String stringExtra = intent.getStringExtra("path");
        Intrinsics.checkNotNull(stringExtra);
        this.path = stringExtra;
        if (!paymentRequired || getProFeaturePrompter().hasMadeInAppPurchase() || getProFeaturePrompter().hasMadeSubPurchase()) {
            showDocumentsDirPermissionsNecessaryDialog(this);
        } else {
            showProFeaturesRequiredDialog(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getBillingManager().querySubPurchases();
        getBillingManager().queryInAppPurchases();
        if (getIntent() != null) {
            Intent intent = getIntent();
            if (StringsKt.equals$default(intent != null ? intent.getType() : null, "get_dir", false, 2, null)) {
                Intent intent2 = getIntent();
                Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
                requestDirPermssions(intent2, true);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getBillingManager().destroy();
        super.onDestroy();
    }
}
