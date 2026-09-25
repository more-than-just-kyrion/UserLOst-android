package tech.ula.library.model.repositories;

import android.content.SharedPreferences;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.apache.http.message.TokenParser;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.model.entities.Asset;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.remote.GithubApiClient;
import tech.ula.library.utils.HttpStream;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.UlaFiles;
import tech.ula.library.utils.preferences.AssetPreferences;

/* JADX INFO: compiled from: AssetRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0017\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010\u0018J2\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001e\u001a\u00020\u0012H\u0086@¢\u0006\u0002\u0010\u001fJ\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@¢\u0006\u0002\u0010!J\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010#\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cJ*\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00142\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010%\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010&J\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00142\u0006\u0010%\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010\u0018J\u0016\u0010(\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010\u0018J\u0016\u0010)\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Ltech/ula/library/model/repositories/AssetRepository;", "", "applicationFilesDirPath", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "assetPreferences", "Ltech/ula/library/utils/preferences/AssetPreferences;", "defaultSharedPreferences", "Landroid/content/SharedPreferences;", "githubApiClient", "Ltech/ula/library/model/remote/GithubApiClient;", "httpStream", "Ltech/ula/library/utils/HttpStream;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ljava/lang/String;Ltech/ula/library/utils/UlaFiles;Ltech/ula/library/utils/preferences/AssetPreferences;Landroid/content/SharedPreferences;Ltech/ula/library/model/remote/GithubApiClient;Ltech/ula/library/utils/HttpStream;Ltech/ula/library/utils/Logger;)V", "assetsArePresentInSupportDirectories", "", "assets", "", "Ltech/ula/library/model/entities/Asset;", "fetchAssetList", "assetType", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "generateDownloadRequirements", "Ltech/ula/library/model/repositories/DownloadMetadata;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "assetList", "filesystemNeedsExtraction", "(Ltech/ula/library/model/entities/Filesystem;Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAssetList", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDistributionAssetsForExistingFilesystem", "getLatestDistributionVersion", "getRegularAssetDownloadRequirements", "repo", "(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRootFsAssetDownloadRequirements", "lastDownloadedFilesystemVersionIsUpToDate", "lastDownloadedVersionIsUpToDate", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetRepository {
    private final String applicationFilesDirPath;
    private final AssetPreferences assetPreferences;
    private final SharedPreferences defaultSharedPreferences;
    private final GithubApiClient githubApiClient;
    private final HttpStream httpStream;
    private final Logger logger;
    private final UlaFiles ulaFiles;

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$generateDownloadRequirements$1, reason: invalid class name */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0, 0, 0, 0, 1}, l = {58, 61}, m = "generateDownloadRequirements", n = {"this", "downloadRequirements", "repo", "filesystemNeedsExtraction", "downloadRequirements"}, s = {"L$0", "L$1", "L$2", "Z$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.generateDownloadRequirements(null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$getAssetList$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0, 0}, l = {100}, m = "getAssetList", n = {"this", "repo"}, s = {"L$0", "L$1"})
    static final class C02451 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02451(Continuation<? super C02451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.getAssetList(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$getRegularAssetDownloadRequirements$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 188}, m = "getRegularAssetDownloadRequirements", n = {"this", "repo", "downloadRequirements", "this", "repo", "downloadRequirements", "filename", "repo", "downloadRequirements", "filename", "versionCode"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    static final class C02461 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02461(Continuation<? super C02461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.getRegularAssetDownloadRequirements(null, null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$getRootFsAssetDownloadRequirements$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 2}, l = {219, 228, 229}, m = "getRootFsAssetDownloadRequirements", n = {"this", "repo", "downloadRequirements", "filename", "rootFsIsDownloaded", "this", "repo", "filename", "repo", "filename", "versionCode"}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C02471 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02471(Continuation<? super C02471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.getRootFsAssetDownloadRequirements(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$lastDownloadedFilesystemVersionIsUpToDate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0}, l = {CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA}, m = "lastDownloadedFilesystemVersionIsUpToDate", n = {"latestCached"}, s = {"L$0"})
    static final class C02481 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02481(Continuation<? super C02481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.lastDownloadedFilesystemVersionIsUpToDate(null, this);
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$lastDownloadedVersionIsUpToDate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository", f = "AssetRepository.kt", i = {0}, l = {CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA}, m = "lastDownloadedVersionIsUpToDate", n = {"latestCached"}, s = {"L$0"})
    static final class C02491 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02491(Continuation<? super C02491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AssetRepository.this.lastDownloadedVersionIsUpToDate(null, this);
        }
    }

    public AssetRepository(String applicationFilesDirPath, UlaFiles ulaFiles, AssetPreferences assetPreferences, SharedPreferences defaultSharedPreferences, GithubApiClient githubApiClient, HttpStream httpStream, Logger logger) {
        Intrinsics.checkNotNullParameter(applicationFilesDirPath, "applicationFilesDirPath");
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(assetPreferences, "assetPreferences");
        Intrinsics.checkNotNullParameter(defaultSharedPreferences, "defaultSharedPreferences");
        Intrinsics.checkNotNullParameter(githubApiClient, "githubApiClient");
        Intrinsics.checkNotNullParameter(httpStream, "httpStream");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.applicationFilesDirPath = applicationFilesDirPath;
        this.ulaFiles = ulaFiles;
        this.assetPreferences = assetPreferences;
        this.defaultSharedPreferences = defaultSharedPreferences;
        this.githubApiClient = githubApiClient;
        this.httpStream = httpStream;
        this.logger = logger;
    }

    public /* synthetic */ AssetRepository(String str, UlaFiles ulaFiles, AssetPreferences assetPreferences, SharedPreferences sharedPreferences, GithubApiClient githubApiClient, HttpStream httpStream, Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, ulaFiles, assetPreferences, sharedPreferences, githubApiClient, (i & 32) != 0 ? new HttpStream() : httpStream, (i & 64) != 0 ? new SentryLogger() : logger);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object generateDownloadRequirements(Filesystem filesystem, List<Asset> list, boolean z, Continuation<? super List<DownloadMetadata>> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        ArrayList arrayList;
        String str;
        AssetRepository assetRepository;
        Object obj;
        String str2;
        List list2;
        List list3;
        List list4;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj2 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i != 0) {
            if (i == 1) {
                z = anonymousClass1.Z$0;
                list2 = (List) anonymousClass1.L$3;
                str2 = (String) anonymousClass1.L$2;
                List list5 = (List) anonymousClass1.L$1;
                assetRepository = (AssetRepository) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj2);
                obj = obj2;
                arrayList = list5;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list4 = (List) anonymousClass1.L$1;
                list3 = (List) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj2);
            }
            list4.addAll((Collection) obj2);
            return list3;
        }
        ResultKt.throwOnFailure(obj2);
        arrayList = new ArrayList();
        if (list.isEmpty()) {
            IllegalStateException illegalStateException = new IllegalStateException();
            this.logger.addExceptionBreadcrumb(illegalStateException);
            throw illegalStateException;
        }
        String distributionType = filesystem.getDistributionType();
        if (filesystem.getFlavor().equals("default")) {
            str = distributionType;
        } else {
            str = distributionType + "_" + filesystem.getFlavor();
        }
        anonymousClass1.L$0 = this;
        anonymousClass1.L$1 = arrayList;
        anonymousClass1.L$2 = str;
        anonymousClass1.L$3 = arrayList;
        anonymousClass1.Z$0 = z;
        anonymousClass1.label = 1;
        Object regularAssetDownloadRequirements = getRegularAssetDownloadRequirements(list, str, anonymousClass1);
        if (regularAssetDownloadRequirements == coroutine_suspended) {
            return coroutine_suspended;
        }
        assetRepository = this;
        obj = regularAssetDownloadRequirements;
        str2 = str;
        list2 = arrayList;
        list2.addAll((Collection) obj);
        if (!z) {
            return arrayList;
        }
        anonymousClass1.L$0 = arrayList;
        anonymousClass1.L$1 = arrayList;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.label = 2;
        Object rootFsAssetDownloadRequirements = assetRepository.getRootFsAssetDownloadRequirements(str2, anonymousClass1);
        if (rootFsAssetDownloadRequirements == coroutine_suspended) {
            return coroutine_suspended;
        }
        list3 = arrayList;
        obj2 = rootFsAssetDownloadRequirements;
        list4 = list3;
        list4.addAll((Collection) obj2);
        return list3;
    }

    public final List<Asset> getDistributionAssetsForExistingFilesystem(Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        String distributionType = filesystem.getDistributionType();
        if (!filesystem.getFlavor().equals("default")) {
            distributionType = distributionType + "_" + filesystem.getFlavor();
        }
        List<Asset> cachedAssetList = this.assetPreferences.getCachedAssetList(distributionType);
        ArrayList arrayList = new ArrayList();
        for (Object obj : cachedAssetList) {
            if (!StringsKt.contains$default((CharSequence) ((Asset) obj).getName(), (CharSequence) "rootfs", false, 2, (Object) null)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final String getLatestDistributionVersion(Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        String distributionType = filesystem.getDistributionType();
        if (!filesystem.getFlavor().equals("default")) {
            distributionType = distributionType + "_" + filesystem.getFlavor();
        }
        return this.assetPreferences.getLatestDownloadVersion(distributionType);
    }

    public final boolean assetsArePresentInSupportDirectories(List<Asset> assets) {
        Intrinsics.checkNotNullParameter(assets, "assets");
        for (Asset asset : assets) {
            if (!StringsKt.contains$default((CharSequence) asset.getName(), (CharSequence) "rootfs.tar.gz", false, 2, (Object) null)) {
                if (!new File(this.applicationFilesDirPath + "/" + asset.getPathName()).exists()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getAssetList(Filesystem filesystem, Continuation<? super List<Asset>> continuation) throws Throwable {
        C02451 c02451;
        String str;
        AssetRepository assetRepository;
        if (continuation instanceof C02451) {
            c02451 = (C02451) continuation;
            if ((c02451.label & Integer.MIN_VALUE) != 0) {
                c02451.label -= Integer.MIN_VALUE;
            } else {
                c02451 = new C02451(continuation);
            }
        } else {
            c02451 = new C02451(continuation);
        }
        Object objFetchAssetList = c02451.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02451.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objFetchAssetList);
            String distributionType = filesystem.getDistributionType();
            if (filesystem.getFlavor().equals("default")) {
                str = distributionType;
            } else {
                str = distributionType + "_" + filesystem.getFlavor();
            }
            try {
                c02451.L$0 = this;
                c02451.L$1 = str;
                c02451.label = 1;
                objFetchAssetList = fetchAssetList(str, c02451);
                if (objFetchAssetList == coroutine_suspended) {
                    return coroutine_suspended;
                }
                assetRepository = this;
            } catch (Exception unused) {
                assetRepository = this;
                return assetRepository.assetPreferences.getCachedAssetList(str);
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02451.L$1;
            assetRepository = (AssetRepository) c02451.L$0;
            try {
                ResultKt.throwOnFailure(objFetchAssetList);
            } catch (Exception unused2) {
                return assetRepository.assetPreferences.getCachedAssetList(str);
            }
        }
        List<Asset> list = (List) objFetchAssetList;
        assetRepository.assetPreferences.setAssetList(str, list);
        return list;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.repositories.AssetRepository$fetchAssetList$2, reason: invalid class name */
    /* JADX INFO: compiled from: AssetRepository.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Ltech/ula/library/model/entities/Asset;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.repositories.AssetRepository$fetchAssetList$2", f = "AssetRepository.kt", i = {}, l = {117}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<Asset>>, Object> {
        final /* synthetic */ String $assetType;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$assetType = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AssetRepository.this.new AnonymousClass2(this.$assetType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<Asset>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String str;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (AssetRepository.this.defaultSharedPreferences.getBoolean("pref_custom_filesystem_enabled", false)) {
                    String string = AssetRepository.this.defaultSharedPreferences.getString("pref_filesystem", BuildConfig.DEFAULT_FILESYSTEM_URL);
                    Intrinsics.checkNotNull(string);
                    str = string + "/" + AssetRepository.this.ulaFiles.getArchType() + "-assets.txt";
                } else {
                    this.label = 1;
                    obj = AssetRepository.this.githubApiClient.getAssetsListDownloadUrl(this.$assetType, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(AssetRepository.this.httpStream.fromUrl(str)));
                final ArrayList arrayList = new ArrayList();
                final String str2 = this.$assetType;
                TextStreamsKt.forEachLine(bufferedReader, new Function1<String, Unit>() { // from class: tech.ula.library.model.repositories.AssetRepository.fetchAssetList.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str3) {
                        invoke2(str3);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(String it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        String strSubstringBefore$default = StringsKt.substringBefore$default(it, TokenParser.SP, (String) null, 2, (Object) null);
                        if (Intrinsics.areEqual(strSubstringBefore$default, "assets.txt")) {
                            return;
                        }
                        arrayList.add(new Asset(strSubstringBefore$default, str2, null, 4, null));
                    }
                });
                bufferedReader.close();
                return arrayList;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            str = (String) obj;
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(AssetRepository.this.httpStream.fromUrl(str)));
            final List<Asset> arrayList2 = new ArrayList();
            final String str3 = this.$assetType;
            TextStreamsKt.forEachLine(bufferedReader2, new Function1<String, Unit>() { // from class: tech.ula.library.model.repositories.AssetRepository.fetchAssetList.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str4) {
                    invoke2(str4);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String strSubstringBefore$default = StringsKt.substringBefore$default(it, TokenParser.SP, (String) null, 2, (Object) null);
                    if (Intrinsics.areEqual(strSubstringBefore$default, "assets.txt")) {
                        return;
                    }
                    arrayList2.add(new Asset(strSubstringBefore$default, str3, null, 4, null));
                }
            });
            bufferedReader2.close();
            return arrayList2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fetchAssetList(String str, Continuation<? super List<Asset>> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(str, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object lastDownloadedVersionIsUpToDate(String str, Continuation<? super Boolean> continuation) throws Throwable {
        C02491 c02491;
        String str2;
        if (continuation instanceof C02491) {
            c02491 = (C02491) continuation;
            if ((c02491.label & Integer.MIN_VALUE) != 0) {
                c02491.label -= Integer.MIN_VALUE;
            } else {
                c02491 = new C02491(continuation);
            }
        } else {
            c02491 = new C02491(continuation);
        }
        Object obj = c02491.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02491.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String latestDownloadVersion = this.assetPreferences.getLatestDownloadVersion(str);
            GithubApiClient githubApiClient = this.githubApiClient;
            c02491.L$0 = latestDownloadVersion;
            c02491.label = 1;
            Object latestReleaseVersion = githubApiClient.getLatestReleaseVersion(str, c02491);
            if (latestReleaseVersion == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = latestReleaseVersion;
            str2 = latestDownloadVersion;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) c02491.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(str2.compareTo((String) obj) >= 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object lastDownloadedFilesystemVersionIsUpToDate(String str, Continuation<? super Boolean> continuation) throws Throwable {
        C02481 c02481;
        String str2;
        if (continuation instanceof C02481) {
            c02481 = (C02481) continuation;
            if ((c02481.label & Integer.MIN_VALUE) != 0) {
                c02481.label -= Integer.MIN_VALUE;
            } else {
                c02481 = new C02481(continuation);
            }
        } else {
            c02481 = new C02481(continuation);
        }
        Object obj = c02481.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02481.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String latestDownloadFilesystemVersion = this.assetPreferences.getLatestDownloadFilesystemVersion(str);
            GithubApiClient githubApiClient = this.githubApiClient;
            c02481.L$0 = latestDownloadFilesystemVersion;
            c02481.label = 1;
            Object latestReleaseVersion = githubApiClient.getLatestReleaseVersion(str, c02481);
            if (latestReleaseVersion == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = latestReleaseVersion;
            str2 = latestDownloadFilesystemVersion;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) c02481.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(str2.compareTo((String) obj) >= 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:43:0x0114 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0115  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getRegularAssetDownloadRequirements(List<Asset> list, String str, Continuation<? super List<DownloadMetadata>> continuation) throws Throwable {
        C02461 c02461;
        ArrayList arrayList;
        AssetRepository assetRepository;
        List list2;
        Object latestReleaseVersion;
        AssetRepository assetRepository2;
        String str2;
        String str3;
        List list3;
        String str4;
        String str5;
        String str6;
        String str7;
        List list4;
        String str8;
        Object assetEndpoint;
        List list5;
        String str9;
        String str10;
        if (continuation instanceof C02461) {
            c02461 = (C02461) continuation;
            if ((c02461.label & Integer.MIN_VALUE) != 0) {
                c02461.label -= Integer.MIN_VALUE;
            } else {
                c02461 = new C02461(continuation);
            }
        } else {
            c02461 = new C02461(continuation);
        }
        Object obj = c02461.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02461.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            arrayList = new ArrayList();
            if (assetsArePresentInSupportDirectories(list)) {
                try {
                    c02461.L$0 = this;
                    c02461.L$1 = str;
                    c02461.L$2 = arrayList;
                    c02461.label = 1;
                    Object objLastDownloadedVersionIsUpToDate = lastDownloadedVersionIsUpToDate(str, c02461);
                    if (objLastDownloadedVersionIsUpToDate == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    assetRepository = this;
                    obj = objLastDownloadedVersionIsUpToDate;
                    list2 = arrayList;
                } catch (IOException unused) {
                    return arrayList;
                }
            } else {
                assetRepository = this;
            }
            if (assetRepository.defaultSharedPreferences.getBoolean("pref_custom_filesystem_enabled", false)) {
                String string = assetRepository.defaultSharedPreferences.getString("pref_filesystem", BuildConfig.DEFAULT_FILESYSTEM_URL);
                Intrinsics.checkNotNull(string);
                str4 = string + "/" + assetRepository.ulaFiles.getArchType() + "-assets.tar.gz";
                str5 = str;
                str6 = "assets.tar.gz";
                str7 = "v9.9.9";
            } else {
                GithubApiClient githubApiClient = assetRepository.githubApiClient;
                c02461.L$0 = assetRepository;
                c02461.L$1 = str;
                c02461.L$2 = arrayList;
                c02461.L$3 = "assets.tar.gz";
                c02461.label = 2;
                latestReleaseVersion = githubApiClient.getLatestReleaseVersion(str, c02461);
                if (latestReleaseVersion == coroutine_suspended) {
                    return coroutine_suspended;
                }
                assetRepository2 = assetRepository;
                str2 = str;
                str3 = "assets.tar.gz";
                list3 = arrayList;
                obj = latestReleaseVersion;
                list4 = list3;
                str8 = (String) obj;
                GithubApiClient githubApiClient2 = assetRepository2.githubApiClient;
                c02461.L$0 = str2;
                c02461.L$1 = list4;
                c02461.L$2 = str3;
                c02461.L$3 = str8;
                c02461.label = 3;
                assetEndpoint = githubApiClient2.getAssetEndpoint(str3, str2, c02461);
                if (assetEndpoint == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list5 = list4;
                str9 = str8;
                obj = assetEndpoint;
                str10 = str2;
                str7 = str9;
                str6 = str3;
                str4 = (String) obj;
                str5 = str10;
                arrayList = list5;
            }
            arrayList.add(new DownloadMetadata(str6, str5, str7, str4, null, 16, null));
            return arrayList;
        }
        if (i == 1) {
            list2 = (List) c02461.L$2;
            str = (String) c02461.L$1;
            assetRepository = (AssetRepository) c02461.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (IOException unused2) {
                return list2;
            }
        } else if (i == 2) {
            String str11 = (String) c02461.L$3;
            List list6 = (List) c02461.L$2;
            str2 = (String) c02461.L$1;
            assetRepository2 = (AssetRepository) c02461.L$0;
            ResultKt.throwOnFailure(obj);
            list3 = list6;
            str3 = str11;
            list4 = list3;
            str8 = (String) obj;
            GithubApiClient githubApiClient3 = assetRepository2.githubApiClient;
            c02461.L$0 = str2;
            c02461.L$1 = list4;
            c02461.L$2 = str3;
            c02461.L$3 = str8;
            c02461.label = 3;
            assetEndpoint = githubApiClient3.getAssetEndpoint(str3, str2, c02461);
            if (assetEndpoint == coroutine_suspended) {
                return coroutine_suspended;
            }
            list5 = list4;
            str9 = str8;
            obj = assetEndpoint;
            str10 = str2;
        } else {
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str9 = (String) c02461.L$3;
            str3 = (String) c02461.L$2;
            list5 = (List) c02461.L$1;
            str10 = (String) c02461.L$0;
            ResultKt.throwOnFailure(obj);
        }
        str7 = str9;
        str6 = str3;
        str4 = (String) obj;
        str5 = str10;
        arrayList = list5;
        arrayList.add(new DownloadMetadata(str6, str5, str7, str4, null, 16, null));
        return arrayList;
        if (((Boolean) obj).booleanValue()) {
            return list2;
        }
        arrayList = list2;
        if (assetRepository.defaultSharedPreferences.getBoolean("pref_custom_filesystem_enabled", false)) {
            String string2 = assetRepository.defaultSharedPreferences.getString("pref_filesystem", BuildConfig.DEFAULT_FILESYSTEM_URL);
            Intrinsics.checkNotNull(string2);
            str4 = string2 + "/" + assetRepository.ulaFiles.getArchType() + "-assets.tar.gz";
            str5 = str;
            str6 = "assets.tar.gz";
            str7 = "v9.9.9";
        } else {
            GithubApiClient githubApiClient4 = assetRepository.githubApiClient;
            c02461.L$0 = assetRepository;
            c02461.L$1 = str;
            c02461.L$2 = arrayList;
            c02461.L$3 = "assets.tar.gz";
            c02461.label = 2;
            latestReleaseVersion = githubApiClient4.getLatestReleaseVersion(str, c02461);
            if (latestReleaseVersion == coroutine_suspended) {
                return coroutine_suspended;
            }
            assetRepository2 = assetRepository;
            str2 = str;
            str3 = "assets.tar.gz";
            list3 = arrayList;
            obj = latestReleaseVersion;
            list4 = list3;
            str8 = (String) obj;
            GithubApiClient githubApiClient5 = assetRepository2.githubApiClient;
            c02461.L$0 = str2;
            c02461.L$1 = list4;
            c02461.L$2 = str3;
            c02461.L$3 = str8;
            c02461.label = 3;
            assetEndpoint = githubApiClient5.getAssetEndpoint(str3, str2, c02461);
            if (assetEndpoint == coroutine_suspended) {
                return coroutine_suspended;
            }
            list5 = list4;
            str9 = str8;
            obj = assetEndpoint;
            str10 = str2;
            str7 = str9;
            str6 = str3;
            str4 = (String) obj;
            str5 = str10;
            arrayList = list5;
        }
        arrayList.add(new DownloadMetadata(str6, str5, str7, str4, null, 16, null));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x0157 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0158  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getRootFsAssetDownloadRequirements(String str, Continuation<? super List<DownloadMetadata>> continuation) throws Throwable {
        C02471 c02471;
        ArrayList arrayList;
        AssetRepository assetRepository;
        String str2;
        String str3;
        boolean z;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        AssetRepository assetRepository2;
        String str9;
        String str10;
        Object assetEndpoint;
        String str11;
        String str12;
        if (continuation instanceof C02471) {
            c02471 = (C02471) continuation;
            if ((c02471.label & Integer.MIN_VALUE) != 0) {
                c02471.label -= Integer.MIN_VALUE;
            } else {
                c02471 = new C02471(continuation);
            }
        } else {
            c02471 = new C02471(continuation);
        }
        Object obj = c02471.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02471.label;
        boolean zBooleanValue = true;
        if (i != 0) {
            if (i == 1) {
                z = c02471.Z$0;
                str2 = (String) c02471.L$3;
                arrayList = (List) c02471.L$2;
                str3 = (String) c02471.L$1;
                assetRepository = (AssetRepository) c02471.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (IOException unused) {
                }
            } else if (i == 2) {
                str9 = (String) c02471.L$2;
                str8 = (String) c02471.L$1;
                assetRepository2 = (AssetRepository) c02471.L$0;
                ResultKt.throwOnFailure(obj);
                str10 = (String) obj;
                GithubApiClient githubApiClient = assetRepository2.githubApiClient;
                c02471.L$0 = str8;
                c02471.L$1 = str9;
                c02471.L$2 = str10;
                c02471.label = 3;
                assetEndpoint = githubApiClient.getAssetEndpoint(str9, str8, c02471);
                if (assetEndpoint == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str11 = str9;
                str12 = str8;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str13 = (String) c02471.L$2;
                str11 = (String) c02471.L$1;
                String str14 = (String) c02471.L$0;
                ResultKt.throwOnFailure(obj);
                str10 = str13;
                str12 = str14;
                assetEndpoint = obj;
            }
            str4 = str12;
            str6 = str10;
            str5 = (String) assetEndpoint;
            str7 = str11;
            return CollectionsKt.listOf(new DownloadMetadata(str7, str4, str6, str5, null, 16, null));
        }
        ResultKt.throwOnFailure(obj);
        arrayList = new ArrayList();
        if (this.defaultSharedPreferences.getBoolean("pref_custom_filesystem_enabled", false)) {
            String string = this.defaultSharedPreferences.getString("pref_filesystem", BuildConfig.DEFAULT_FILESYSTEM_URL);
            Intrinsics.checkNotNull(string);
            String str15 = string + "/" + this.ulaFiles.getArchType() + "-rootfs.tar.gz";
            String string2 = this.defaultSharedPreferences.getString("pref_filesystem", BuildConfig.DEFAULT_FILESYSTEM_URL);
            Intrinsics.checkNotNull(string2);
            String str16 = string2 + "/MD5SUMS";
            str4 = str;
            str5 = str15;
            str6 = "v9.9.9";
            str7 = "rootfs.tar.gz";
        } else {
            boolean zExists = new File(this.applicationFilesDirPath + "/" + str + "/rootfs.tar.gz").exists();
            try {
                c02471.L$0 = this;
                c02471.L$1 = str;
                c02471.L$2 = arrayList;
                c02471.L$3 = "rootfs.tar.gz";
                c02471.Z$0 = zExists;
                c02471.label = 1;
                Object objLastDownloadedFilesystemVersionIsUpToDate = lastDownloadedFilesystemVersionIsUpToDate(str, c02471);
                if (objLastDownloadedFilesystemVersionIsUpToDate == coroutine_suspended) {
                    return coroutine_suspended;
                }
                assetRepository = this;
                str3 = str;
                z = zExists;
                obj = objLastDownloadedFilesystemVersionIsUpToDate;
                str2 = "rootfs.tar.gz";
            } catch (IOException unused2) {
                assetRepository = this;
                str2 = "rootfs.tar.gz";
                str3 = str;
                z = zExists;
            }
        }
        return CollectionsKt.listOf(new DownloadMetadata(str7, str4, str6, str5, null, 16, null));
        zBooleanValue = ((Boolean) obj).booleanValue();
        String str17 = str2;
        str8 = str3;
        if (z && zBooleanValue) {
            return arrayList;
        }
        GithubApiClient githubApiClient2 = assetRepository.githubApiClient;
        c02471.L$0 = assetRepository;
        c02471.L$1 = str8;
        c02471.L$2 = str17;
        c02471.L$3 = null;
        c02471.label = 2;
        Object latestReleaseVersion = githubApiClient2.getLatestReleaseVersion(str8, c02471);
        if (latestReleaseVersion == coroutine_suspended) {
            return coroutine_suspended;
        }
        assetRepository2 = assetRepository;
        obj = latestReleaseVersion;
        str9 = str17;
        str10 = (String) obj;
        GithubApiClient githubApiClient3 = assetRepository2.githubApiClient;
        c02471.L$0 = str8;
        c02471.L$1 = str9;
        c02471.L$2 = str10;
        c02471.label = 3;
        assetEndpoint = githubApiClient3.getAssetEndpoint(str9, str8, c02471);
        if (assetEndpoint == coroutine_suspended) {
            return coroutine_suspended;
        }
        str11 = str9;
        str12 = str8;
        str4 = str12;
        str6 = str10;
        str5 = (String) assetEndpoint;
        str7 = str11;
        return CollectionsKt.listOf(new DownloadMetadata(str7, str4, str6, str5, null, 16, null));
    }
}
