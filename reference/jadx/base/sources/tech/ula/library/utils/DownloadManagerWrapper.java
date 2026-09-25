package tech.ula.library.utils;

import android.app.DownloadManager;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import tech.ula.library.MainActivity;
import tech.ula.library.R;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0016\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0016\u0010$\u001a\u00020\r2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\rH\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010\u0016\u001a\u00020\rR\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\fj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b`\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Ltech/ula/library/utils/DownloadManagerWrapper;", "", "downloadManager", "Landroid/app/DownloadManager;", "activity", "Ltech/ula/library/MainActivity;", "(Landroid/app/DownloadManager;Ltech/ula/library/MainActivity;)V", "FAIL", "", "START", "SUCCESS", "downloadQueue", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "nextQueueEntry", "cancelAllDownloads", "", "downloadIds", "", "downloadHasFailed", "", "id", "downloadHasSucceeded", "enqueue", "request", "Landroid/app/DownloadManager$Request;", "generateCursor", "Landroid/database/Cursor;", SearchIntents.EXTRA_QUERY, "Landroid/app/DownloadManager$Query;", "generateDownloadRequest", ImagesContract.URL, "", "destination", "Ljava/io/File;", "generateDownloadRequestAndEnqueue", "generateQuery", "getDownloadFailureReason", "Ltech/ula/library/utils/DownloadFailureLocalizationData;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadManagerWrapper {
    private final int FAIL;
    private final int START;
    private final int SUCCESS;
    private final MainActivity activity;
    private final DownloadManager downloadManager;
    private HashMap<Long, Integer> downloadQueue;
    private long nextQueueEntry;

    public DownloadManagerWrapper(DownloadManager downloadManager, MainActivity activity) {
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.downloadManager = downloadManager;
        this.activity = activity;
        this.downloadQueue = new HashMap<>();
        this.SUCCESS = 1;
        this.FAIL = 2;
    }

    public final DownloadManager.Request generateDownloadRequest(String url, File destination) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(destination, "destination");
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
        Uri uriFromFile = Uri.fromFile(destination);
        request.setAllowedNetworkTypes(3);
        request.setTitle(destination.getName());
        String name = destination.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        request.setDescription("Downloading " + StringsKt.substringAfterLast$default(name, "-", (String) null, 2, (Object) null) + ".");
        request.setNotificationVisibility(0);
        request.setDestinationUri(uriFromFile);
        return request;
    }

    public final long generateDownloadRequestAndEnqueue(String url, File destination) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(destination, "destination");
        long j = this.nextQueueEntry;
        this.nextQueueEntry = 1 + j;
        BuildersKt__Builders_commonKt.async$default(GlobalScope.INSTANCE, null, null, new DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1(this, j, url, destination, null), 3, null);
        return j;
    }

    public final long enqueue(DownloadManager.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return this.downloadManager.enqueue(request);
    }

    private final DownloadManager.Query generateQuery(long id) {
        DownloadManager.Query query = new DownloadManager.Query();
        query.setFilterById(id);
        return query;
    }

    private final Cursor generateCursor(DownloadManager.Query query) {
        Cursor cursorQuery = this.downloadManager.query(query);
        Intrinsics.checkNotNullExpressionValue(cursorQuery, "query(...)");
        return cursorQuery;
    }

    public final boolean downloadHasSucceeded(long id) {
        Cursor cursorGenerateCursor = generateCursor(generateQuery(id));
        return cursorGenerateCursor.moveToFirst() && cursorGenerateCursor.getInt(cursorGenerateCursor.getColumnIndex(NotificationCompat.CATEGORY_STATUS)) == 8;
    }

    public final boolean downloadHasFailed(long id) {
        Cursor cursorGenerateCursor = generateCursor(generateQuery(id));
        return cursorGenerateCursor.moveToFirst() && cursorGenerateCursor.getInt(cursorGenerateCursor.getColumnIndex(NotificationCompat.CATEGORY_STATUS)) == 16;
    }

    public final DownloadFailureLocalizationData getDownloadFailureReason(long id) {
        int i;
        Cursor cursorGenerateCursor = generateCursor(generateQuery(id));
        if (cursorGenerateCursor.moveToFirst()) {
            int i2 = cursorGenerateCursor.getInt(cursorGenerateCursor.getColumnIndex("reason"));
            if (100 <= i2 && i2 < 501) {
                i = R.string.download_failure_http_error;
            } else if (i2 == 1008) {
                i = R.string.download_failure_cannot_resume;
            } else if (i2 == 1007) {
                i = R.string.download_failure_no_external_devices;
            } else if (i2 == 1009) {
                i = R.string.download_failure_destination_exists;
            } else if (i2 == 1001) {
                i = R.string.download_failure_unknown_file_error;
            } else if (i2 == 1004) {
                i = R.string.download_failure_http_processing;
            } else if (i2 == 1006) {
                i = R.string.download_failure_insufficient_external_storage;
            } else if (i2 == 1005) {
                i = R.string.download_failure_too_many_redirects;
            } else if (i2 == 1002) {
                i = R.string.download_failure_unhandled_http_response;
            } else if (i2 == 1000) {
                i = R.string.download_failure_unknown_error;
            } else {
                i = R.string.download_failure_missing_error;
            }
            return new DownloadFailureLocalizationData(i, CollectionsKt.listOf(String.valueOf(i2)));
        }
        return new DownloadFailureLocalizationData(R.string.download_failure_reason_not_found, null, 2, null);
    }

    public final void cancelAllDownloads(Set<Long> downloadIds) {
        Intrinsics.checkNotNullParameter(downloadIds, "downloadIds");
        DownloadManager downloadManager = this.downloadManager;
        long[] longArray = CollectionsKt.toLongArray(downloadIds);
        downloadManager.remove(Arrays.copyOf(longArray, longArray.length));
    }
}
