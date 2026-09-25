package tech.ula.library.utils;

import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.message.TokenParser;
import tech.ula.library.R;
import tech.ula.library.model.repositories.DownloadMetadata;
import tech.ula.library.utils.preferences.AssetPreferences;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\rJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\rJ\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u000bJ\u0014\u0010\u0019\u001a\u00020\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010\u001c\u001a\u00020\u0013J&\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H\u0082@¢\u0006\u0002\u0010\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u000bJ\u0016\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\rH\u0082@¢\u0006\u0002\u0010(J\u0018\u0010)\u001a\u00020\u00162\b\b\u0002\u0010 \u001a\u00020!H\u0086@¢\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Ltech/ula/library/utils/AssetDownloader;", "", "assetPreferences", "Ltech/ula/library/utils/preferences/AssetPreferences;", "downloadManagerWrapper", "Ltech/ula/library/utils/DownloadManagerWrapper;", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "(Ltech/ula/library/utils/preferences/AssetPreferences;Ltech/ula/library/utils/DownloadManagerWrapper;Ltech/ula/library/utils/UlaFiles;)V", "completedDownloadIds", "", "", "downloadDirectory", "Ljava/io/File;", "enqueuedDownloadIds", "calculateMD5", "", "updateFile", "checkMD5", "", "md5", "clearPreviousDownloadsFromDownloadsDirectory", "", "downloadIsForUserland", "id", "downloadRequirements", "", "Ltech/ula/library/model/repositories/DownloadMetadata;", "downloadStateHasBeenCached", "extractAssets", "tarFile", "stagingDirectory", "archiverFactory", "Ltech/ula/library/utils/ArchiveFactoryWrapper;", "(Ljava/io/File;Ljava/io/File;Ltech/ula/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleDownloadComplete", "Ltech/ula/library/utils/AssetDownloadState;", "downloadId", "moveRootfsAssetInternal", "rootFsFile", "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prepareDownloadsForUse", "(Ltech/ula/library/utils/ArchiveFactoryWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "syncStateWithCache", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetDownloader {
    private final AssetPreferences assetPreferences;
    private final Set<Long> completedDownloadIds;
    private final File downloadDirectory;
    private final DownloadManagerWrapper downloadManagerWrapper;
    private final Set<Long> enqueuedDownloadIds;
    private final UlaFiles ulaFiles;

    public AssetDownloader(AssetPreferences assetPreferences, DownloadManagerWrapper downloadManagerWrapper, UlaFiles ulaFiles) {
        Intrinsics.checkNotNullParameter(assetPreferences, "assetPreferences");
        Intrinsics.checkNotNullParameter(downloadManagerWrapper, "downloadManagerWrapper");
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        this.assetPreferences = assetPreferences;
        this.downloadManagerWrapper = downloadManagerWrapper;
        this.ulaFiles = ulaFiles;
        File file = new File(ulaFiles.getEmulatedScopedDir(), "downloads");
        this.downloadDirectory = file;
        this.enqueuedDownloadIds = new LinkedHashSet();
        this.completedDownloadIds = new LinkedHashSet();
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public final boolean downloadStateHasBeenCached() {
        return this.assetPreferences.getDownloadsAreInProgress();
    }

    public final AssetDownloadState syncStateWithCache() {
        if (!downloadStateHasBeenCached()) {
            return CacheSyncAttemptedWhileCacheIsEmpty.INSTANCE;
        }
        this.enqueuedDownloadIds.addAll(this.assetPreferences.getEnqueuedDownloads());
        Iterator<Long> it = this.enqueuedDownloadIds.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (this.downloadManagerWrapper.downloadHasFailed(jLongValue) || this.downloadManagerWrapper.downloadHasSucceeded(jLongValue)) {
                AssetDownloadState assetDownloadStateHandleDownloadComplete = handleDownloadComplete(jLongValue);
                if (!(assetDownloadStateHandleDownloadComplete instanceof CompletedDownloadsUpdate)) {
                    return assetDownloadStateHandleDownloadComplete;
                }
            }
        }
        return new CompletedDownloadsUpdate(this.completedDownloadIds.size(), this.enqueuedDownloadIds.size());
    }

    public final void downloadRequirements(List<DownloadMetadata> downloadRequirements) {
        Intrinsics.checkNotNullParameter(downloadRequirements, "downloadRequirements");
        clearPreviousDownloadsFromDownloadsDirectory();
        this.assetPreferences.clearEnqueuedDownloadsCache();
        this.enqueuedDownloadIds.clear();
        this.completedDownloadIds.clear();
        Set<Long> set = this.enqueuedDownloadIds;
        List<DownloadMetadata> list = downloadRequirements;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (DownloadMetadata downloadMetadata : list) {
            arrayList.add(Long.valueOf(this.downloadManagerWrapper.enqueue(this.downloadManagerWrapper.generateDownloadRequest(downloadMetadata.getUrl(), new File(this.downloadDirectory, downloadMetadata.getDownloadTitle())))));
        }
        set.addAll(arrayList);
        this.assetPreferences.setDownloadsAreInProgress(true);
        this.assetPreferences.setEnqueuedDownloads(this.enqueuedDownloadIds);
    }

    public final AssetDownloadState handleDownloadComplete(long downloadId) {
        if (!downloadIsForUserland(downloadId)) {
            return NonUserlandDownloadFound.INSTANCE;
        }
        if (this.downloadManagerWrapper.downloadHasFailed(downloadId)) {
            DownloadFailureLocalizationData downloadFailureReason = this.downloadManagerWrapper.getDownloadFailureReason(downloadId);
            this.downloadManagerWrapper.cancelAllDownloads(this.enqueuedDownloadIds);
            return new AssetDownloadFailure(downloadFailureReason);
        }
        this.completedDownloadIds.add(Long.valueOf(downloadId));
        if (this.completedDownloadIds.size() != this.enqueuedDownloadIds.size()) {
            return new CompletedDownloadsUpdate(this.completedDownloadIds.size(), this.enqueuedDownloadIds.size());
        }
        if (!this.enqueuedDownloadIds.containsAll(this.completedDownloadIds)) {
            return new AssetDownloadFailure(new DownloadFailureLocalizationData(R.string.download_failure_finished_wrong_items, null, 2, null));
        }
        this.enqueuedDownloadIds.clear();
        this.completedDownloadIds.clear();
        this.assetPreferences.setDownloadsAreInProgress(false);
        this.assetPreferences.clearEnqueuedDownloadsCache();
        return AllDownloadsCompletedSuccessfully.INSTANCE;
    }

    public final boolean checkMD5(String md5, File updateFile) {
        Intrinsics.checkNotNullParameter(md5, "md5");
        if (TextUtils.isEmpty(md5) || updateFile == null) {
            Log.e(MessageDigestAlgorithms.MD5, "MD5 string empty or updateFile null");
            return false;
        }
        String strCalculateMD5 = calculateMD5(updateFile);
        if (strCalculateMD5 == null) {
            Log.e(MessageDigestAlgorithms.MD5, "calculatedDigest null");
            return false;
        }
        Log.v(MessageDigestAlgorithms.MD5, "Calculated digest: " + strCalculateMD5);
        Log.v(MessageDigestAlgorithms.MD5, "Provided digest: " + md5);
        return StringsKt.equals(strCalculateMD5, md5, true);
    }

    public final String calculateMD5(File updateFile) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            Intrinsics.checkNotNull(messageDigest);
            try {
                FileInputStream fileInputStream = new FileInputStream(updateFile);
                byte[] bArr = new byte[8192];
                while (true) {
                    try {
                        try {
                            try {
                                int i = fileInputStream.read(bArr);
                                if (i <= 0) {
                                    break;
                                }
                                messageDigest.update(bArr, 0, i);
                            } catch (IOException e) {
                                throw new RuntimeException("Unable to process file for MD5", e);
                            }
                        } catch (Throwable th) {
                            fileInputStream.close();
                            throw th;
                        }
                        fileInputStream.close();
                    } catch (IOException e2) {
                        Log.e(MessageDigestAlgorithms.MD5, "Exception on closing MD5 input stream", e2);
                    }
                    throw th;
                }
                byte[] bArrDigest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                String string = new BigInteger(1, bArrDigest).toString(16);
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format("%32s", Arrays.copyOf(new Object[]{string}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                String strReplace$default = StringsKt.replace$default(str, TokenParser.SP, '0', false, 4, (Object) null);
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                    Log.e(MessageDigestAlgorithms.MD5, "Exception on closing MD5 input stream", e3);
                }
                return strReplace$default;
            } catch (FileNotFoundException e4) {
                Log.e(MessageDigestAlgorithms.MD5, "Exception while getting FileInputStream", e4);
                return null;
            }
        } catch (NoSuchAlgorithmException e5) {
            Log.e(MessageDigestAlgorithms.MD5, "Exception while getting digest", e5);
            return null;
        }
    }

    public final boolean downloadIsForUserland(long id) {
        return this.enqueuedDownloadIds.contains(Long.valueOf(id));
    }

    private final void clearPreviousDownloadsFromDownloadsDirectory() {
        File[] fileArrListFiles = this.downloadDirectory.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetDownloader$prepareDownloadsForUse$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetDownloader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetDownloader$prepareDownloadsForUse$2", f = "AssetDownloader.kt", i = {0, 0, 1, 1}, l = {216, 219}, m = "invokeSuspend", n = {"stagingDirectory", "$this$forEach$iv", "stagingDirectory", "$this$forEach$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C02692 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ArchiveFactoryWrapper $archiverFactory;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02692(ArchiveFactoryWrapper archiveFactoryWrapper, Continuation<? super C02692> continuation) {
            super(2, continuation);
            this.$archiverFactory = archiveFactoryWrapper;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AssetDownloader.this.new C02692(this.$archiverFactory, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0078  */
        /* JADX WARN: Code duplicated, block: B:19:0x0091  */
        /* JADX WARN: Code duplicated, block: B:21:0x00a4  */
        /* JADX WARN: Code duplicated, block: B:23:0x00bb A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:24:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:26:0x00d3 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008e -> B:27:0x00d4). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00b9 -> B:27:0x00d4). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00d1 -> B:27:0x00d4). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:21:0x00a4
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tech.ula.library.utils.AssetDownloader.C02692.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ Object prepareDownloadsForUse$default(AssetDownloader assetDownloader, ArchiveFactoryWrapper archiveFactoryWrapper, Continuation continuation, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            archiveFactoryWrapper = new ArchiveFactoryWrapper();
        }
        return assetDownloader.prepareDownloadsForUse(archiveFactoryWrapper, continuation);
    }

    public final Object prepareDownloadsForUse(ArchiveFactoryWrapper archiveFactoryWrapper, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02692(archiveFactoryWrapper, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetDownloader$moveRootfsAssetInternal$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetDownloader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetDownloader$moveRootfsAssetInternal$2", f = "AssetDownloader.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02682 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ File $rootFsFile;
        int label;
        final /* synthetic */ AssetDownloader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02682(File file, AssetDownloader assetDownloader, Continuation<? super C02682> continuation) {
            super(2, continuation);
            this.$rootFsFile = file;
            this.this$0 = assetDownloader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02682(this.$rootFsFile, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02682) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String name = this.$rootFsFile.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            List listSplit$default = StringsKt.split$default((CharSequence) name, new String[]{"-"}, false, 4, 2, (Object) null);
            String str = (String) listSplit$default.get(0);
            String str2 = (String) listSplit$default.get(1);
            String str3 = (String) listSplit$default.get(2);
            File file = new File(this.this$0.ulaFiles.getFilesDir().getAbsolutePath() + "/" + str);
            File file2 = new File(file.getAbsolutePath() + "/" + str2);
            file.mkdirs();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file3 : fileArrListFiles) {
                    String name2 = file3.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (StringsKt.contains$default((CharSequence) name2, (CharSequence) "rootfs.tar.gz.part", false, 2, (Object) null)) {
                        file3.delete();
                    }
                }
            }
            FilesKt.copyTo$default(this.$rootFsFile, file2, true, 0, 4, null);
            this.$rootFsFile.delete();
            this.this$0.assetPreferences.setLatestDownloadFilesystemVersion(str, str3);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object moveRootfsAssetInternal(File file, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02682(file, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.AssetDownloader$extractAssets$2, reason: invalid class name */
    /* JADX INFO: compiled from: AssetDownloader.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.AssetDownloader$extractAssets$2", f = "AssetDownloader.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ArchiveFactoryWrapper $archiverFactory;
        final /* synthetic */ File $stagingDirectory;
        final /* synthetic */ File $tarFile;
        int label;
        final /* synthetic */ AssetDownloader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(File file, File file2, AssetDownloader assetDownloader, ArchiveFactoryWrapper archiveFactoryWrapper, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$tarFile = file;
            this.$stagingDirectory = file2;
            this.this$0 = assetDownloader;
            this.$archiverFactory = archiveFactoryWrapper;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$tarFile, this.$stagingDirectory, this.this$0, this.$archiverFactory, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String name = this.$tarFile.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            List listSplit$default = StringsKt.split$default((CharSequence) name, new String[]{"-"}, false, 3, 2, (Object) null);
            String str = (String) listSplit$default.get(0);
            String str2 = (String) listSplit$default.get(1);
            String str3 = (String) listSplit$default.get(2);
            File file = new File(this.$stagingDirectory.getAbsolutePath() + "/" + str2);
            File file2 = new File(this.this$0.ulaFiles.getFilesDir().getPath() + "/" + str);
            FilesKt.copyTo$default(this.$tarFile, file, true, 0, 4, null);
            this.$tarFile.delete();
            this.$archiverFactory.createArchiver(file).extract(file, file2);
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles == null) {
                return Unit.INSTANCE;
            }
            for (File file3 : fileArrListFiles) {
                UlaFiles ulaFiles = this.this$0.ulaFiles;
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                String name2 = file3.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                ulaFiles.makePermissionsUsable(absolutePath, name2);
            }
            this.this$0.assetPreferences.setLatestDownloadVersion(str, str3);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object extractAssets(File file, File file2, ArchiveFactoryWrapper archiveFactoryWrapper, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(file, file2, this, archiveFactoryWrapper, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
