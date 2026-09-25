package io.sentry.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import io.sentry.DefaultSentryClientFactory;
import io.sentry.SentryClient;
import io.sentry.android.event.helper.AndroidEventBuilderHelper;
import io.sentry.buffer.Buffer;
import io.sentry.buffer.DiskBuffer;
import io.sentry.config.Lookup;
import io.sentry.context.ContextManager;
import io.sentry.context.SingletonContextManager;
import io.sentry.dsn.Dsn;
import io.sentry.util.Util;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidSentryClientFactory extends DefaultSentryClientFactory {
    private static final String DEFAULT_BUFFER_DIR = "sentry-buffered-events";
    public static final String TAG = "io.sentry.android.AndroidSentryClientFactory";
    private Context ctx;

    public AndroidSentryClientFactory(Context context) {
        Log.d(TAG, "Construction of Android Sentry.");
        this.ctx = context.getApplicationContext();
    }

    @Override // io.sentry.DefaultSentryClientFactory, io.sentry.SentryClientFactory
    public SentryClient createSentryClient(Dsn dsn) {
        if (!checkPermission("android.permission.INTERNET")) {
            Log.e(TAG, "android.permission.INTERNET is required to connect to the Sentry server, please add it to your AndroidManifest.xml");
        }
        String str = TAG;
        Log.d(str, "Sentry init with ctx='" + this.ctx.toString() + "'");
        String protocol = dsn.getProtocol();
        if (protocol.equalsIgnoreCase("noop")) {
            Log.w(str, "*** Couldn't find a suitable DSN, Sentry operations will do nothing! See documentation: https://docs.sentry.io/clients/java/modules/android/ ***");
        } else if (!protocol.equalsIgnoreCase(HttpHost.DEFAULT_SCHEME_NAME) && !protocol.equalsIgnoreCase("https")) {
            String strLookup = Lookup.lookup(DefaultSentryClientFactory.ASYNC_OPTION, dsn);
            if (strLookup != null && strLookup.equalsIgnoreCase("false")) {
                throw new IllegalArgumentException("Sentry Android cannot use synchronous connections, remove 'async=false' from your options.");
            }
            throw new IllegalArgumentException("Only 'http' or 'https' connections are supported in Sentry Android, but received: " + protocol);
        }
        SentryClient sentryClientCreateSentryClient = super.createSentryClient(dsn);
        sentryClientCreateSentryClient.addBuilderHelper(new AndroidEventBuilderHelper(this.ctx));
        return sentryClientCreateSentryClient;
    }

    @Override // io.sentry.DefaultSentryClientFactory
    protected Collection<String> getInAppFrames(Dsn dsn) {
        PackageInfo packageInfo;
        Collection<String> inAppFrames = super.getInAppFrames(dsn);
        if (!inAppFrames.isEmpty()) {
            return inAppFrames;
        }
        try {
            packageInfo = this.ctx.getPackageManager().getPackageInfo(this.ctx.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Error getting package information.", e);
            packageInfo = null;
        }
        if (packageInfo == null || Util.isNullOrEmpty(packageInfo.packageName)) {
            return inAppFrames;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(packageInfo.packageName);
        return arrayList;
    }

    @Override // io.sentry.DefaultSentryClientFactory
    protected Buffer getBuffer(Dsn dsn) {
        File file;
        String strLookup = Lookup.lookup(DefaultSentryClientFactory.BUFFER_DIR_OPTION, dsn);
        if (strLookup != null) {
            file = new File(strLookup);
        } else {
            file = new File(this.ctx.getCacheDir().getAbsolutePath(), DEFAULT_BUFFER_DIR);
        }
        Log.d(TAG, "Using buffer dir: " + file.getAbsolutePath());
        return new DiskBuffer(file, getBufferSize(dsn));
    }

    @Override // io.sentry.DefaultSentryClientFactory
    protected ContextManager getContextManager(Dsn dsn) {
        return new SingletonContextManager();
    }

    private boolean checkPermission(String str) {
        return this.ctx.checkCallingOrSelfPermission(str) == 0;
    }
}
