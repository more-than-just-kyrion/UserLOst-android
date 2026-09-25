package tech.ula.library.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.customlibrary.R;
import tech.ula.library.MainActivity;
import tech.ula.library.ServerService;

/* JADX INFO: compiled from: NotificationConstructor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Ltech/ula/library/utils/NotificationConstructor;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "notificationManager", "Landroid/app/NotificationManager;", "getNotificationManager", "()Landroid/app/NotificationManager;", "notificationManager$delegate", "Lkotlin/Lazy;", "serviceNotificationDescription", "", "serviceNotificationTitle", "buildPersistentServiceNotification", "Landroid/app/Notification;", "createServiceNotificationChannel", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NotificationConstructor {
    public static final String GROUP_KEY_USERLAND = "tech.ula.userland";
    public static final String serviceNotificationChannelId = "UserLOst";
    public static final int serviceNotificationId = 1000;
    private final Context context;

    /* JADX INFO: renamed from: notificationManager$delegate, reason: from kotlin metadata */
    private final Lazy notificationManager;
    private final String serviceNotificationDescription;
    private final String serviceNotificationTitle;

    public NotificationConstructor(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        String string = context.getString(R.string.app_name);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this.serviceNotificationTitle = string;
        String string2 = context.getString(tech.ula.library.R.string.service_notification_description, context.getString(R.string.app_name));
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        this.serviceNotificationDescription = string2;
        this.notificationManager = LazyKt.lazy(new Function0<NotificationManager>() { // from class: tech.ula.library.utils.NotificationConstructor$notificationManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NotificationManager invoke() {
                Object systemService = this.this$0.getContext().getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                return (NotificationManager) systemService;
            }
        });
    }

    public final Context getContext() {
        return this.context;
    }

    private final NotificationManager getNotificationManager() {
        return (NotificationManager) this.notificationManager.getValue();
    }

    public final void createServiceNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            String string = this.context.getString(tech.ula.library.R.string.services_notification_channel_name);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = this.context.getString(tech.ula.library.R.string.services_notification_channel_description);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            NotificationChannel notificationChannel = new NotificationChannel("UserLOst", string, 2);
            notificationChannel.setDescription(string2);
            getNotificationManager().createNotificationChannel(notificationChannel);
        }
    }

    public final Notification buildPersistentServiceNotification() {
        Intent intent = new Intent(this.context, (Class<?>) MainActivity.class);
        intent.setType("sessionList");
        PendingIntent activity = PendingIntent.getActivity(this.context, 0, intent, 33554432);
        Intent intentPutExtra = new Intent(this.context, (Class<?>) ServerService.class).putExtra(PubkeyDatabase.FIELD_PUBKEY_TYPE, "stopAll");
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        PendingIntent service = PendingIntent.getService(this.context, 0, intentPutExtra, 167772160);
        Intent intent2 = new Intent(this.context, (Class<?>) MainActivity.class);
        intent2.setType("settings");
        PendingIntent activity2 = PendingIntent.getActivity(this.context, 0, intent2, 33554432);
        NotificationCompat.Builder builderAddAction = new NotificationCompat.Builder(this.context, "UserLOst").setSmallIcon(tech.ula.library.R.drawable.ic_stat_icon).setContentTitle(this.serviceNotificationTitle).setContentText(this.serviceNotificationDescription).setPriority(2).setGroup(GROUP_KEY_USERLAND).setGroupSummary(true).setAutoCancel(false).setContentIntent(activity).addAction(0, this.context.getString(tech.ula.library.R.string.notif_action_stop_sessions), service);
        Intrinsics.checkNotNullExpressionValue(builderAddAction, "addAction(...)");
        Context context = this.context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        if (!sharedPreferences.getBoolean("pref_hide_settings", false)) {
            builderAddAction.addAction(0, this.context.getString(tech.ula.library.R.string.settings), activity2);
        }
        Notification notificationBuild = builderAddAction.build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        return notificationBuild;
    }
}
