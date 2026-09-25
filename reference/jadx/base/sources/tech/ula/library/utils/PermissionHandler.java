package tech.ula.library.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.sqlcipher.database.SQLiteDatabase;
import tech.ula.library.R;

/* JADX INFO: compiled from: PermissionHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Ltech/ula/library/utils/PermissionHandler;", "", "()V", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PermissionHandler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int directoryPickerID = 1;
    private static final int permissionRequestCode = 1234;

    /* JADX INFO: compiled from: PermissionHandler.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Ltech/ula/library/utils/PermissionHandler$Companion;", "", "()V", "directoryPickerID", "", "permissionRequestCode", "permissionsAreGranted", "", "context", "Landroid/content/Context;", "permissionsWereGranted", "requestCode", "grantResults", "", "showPermissionsNecessaryDialog", "", "activity", "Landroid/app/Activity;", "refused", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean permissionsAreGranted(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (Build.VERSION.SDK_INT >= 33) {
                return ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0;
            }
            return ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
        }

        public final boolean permissionsWereGranted(int requestCode, int[] grantResults) {
            Intrinsics.checkNotNullParameter(grantResults, "grantResults");
            if (requestCode != PermissionHandler.permissionRequestCode) {
                return false;
            }
            char c = Build.VERSION.SDK_INT >= 33 ? (char) 1 : (char) 2;
            if ((grantResults.length == 0) || grantResults[0] != 0) {
                return false;
            }
            if (c >= 2) {
                if (grantResults[1] != 0) {
                    return false;
                }
                if (c >= 3) {
                    if (grantResults[2] != 0) {
                        return false;
                    }
                    if (c >= 4 && grantResults[3] != 0) {
                        return false;
                    }
                }
            }
            return true;
        }

        public final void showPermissionsNecessaryDialog(final Activity activity, final boolean refused) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            String string = activity.getString(R.string.alert_permissions_necessary_message, new Object[]{activity.getString(tech.ula.customlibrary.R.string.app_name)});
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            if (Build.VERSION.SDK_INT >= 33) {
                string = activity.getString(R.string.alert_notification_permission_necessary_message, new Object[]{activity.getString(tech.ula.customlibrary.R.string.app_name)});
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            if (refused) {
                string = activity.getString(R.string.alert_permissions_refused_message);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            builder.setMessage(string).setTitle(activity.getString(R.string.alert_permissions_necessary_title, new Object[]{activity.getString(tech.ula.customlibrary.R.string.app_name)})).setPositiveButton(R.string.button_ok, new DialogInterface.OnClickListener() { // from class: tech.ula.library.utils.PermissionHandler$Companion$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PermissionHandler.Companion.showPermissionsNecessaryDialog$lambda$0(refused, activity, dialogInterface, i);
                }
            }).setNegativeButton(R.string.alert_permissions_necessary_cancel_button, new DialogInterface.OnClickListener() { // from class: tech.ula.library.utils.PermissionHandler$Companion$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.create().show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void showPermissionsNecessaryDialog$lambda$0(boolean z, Activity activity, DialogInterface dialogInterface, int i) {
            Intrinsics.checkNotNullParameter(activity, "$activity");
            if (z) {
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.addFlags(SQLiteDatabase.CREATE_IF_NECESSARY);
                intent.setData(Uri.fromParts("package", activity.getPackageName(), null));
                activity.startActivity(intent);
            } else {
                String[] strArr = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
                if (Build.VERSION.SDK_INT >= 33) {
                    strArr = new String[]{"android.permission.POST_NOTIFICATIONS"};
                }
                activity.requestPermissions(strArr, PermissionHandler.permissionRequestCode);
            }
            dialogInterface.dismiss();
        }
    }
}
