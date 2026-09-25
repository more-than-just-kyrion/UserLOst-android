package tech.ula.library.model.remote;

import com.google.android.gms.common.internal.ImagesContract;
import com.squareup.moshi.Json;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonClass;
import com.squareup.moshi.Moshi;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;
import tech.ula.library.utils.UlaFiles;

/* JADX INFO: compiled from: GithubApiClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0016\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\rH\u0082@¢\u0006\u0002\u0010\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u000b\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fj\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Ltech/ula/library/model/remote/GithubApiClient;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "urlProvider", "Ltech/ula/library/model/remote/UrlProvider;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/utils/UlaFiles;Ltech/ula/library/model/remote/UrlProvider;Ltech/ula/library/utils/Logger;)V", "client", "Lokhttp3/OkHttpClient;", "latestResults", "Ljava/util/HashMap;", "", "Ltech/ula/library/model/remote/GithubApiClient$ReleasesResponse;", "Lkotlin/collections/HashMap;", "getUlaFiles", "()Ltech/ula/library/utils/UlaFiles;", "getAssetEndpoint", "assetType", "repo", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAssetsListDownloadUrl", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLatestReleaseVersion", "getReleaseToUseForRepo", "queryLatestRelease", "GithubAsset", "ReleasesResponse", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GithubApiClient {
    private final OkHttpClient client;
    private final HashMap<String, ReleasesResponse> latestResults;
    private final Logger logger;
    private final UlaFiles ulaFiles;
    private final UrlProvider urlProvider;

    public GithubApiClient(UlaFiles ulaFiles, UrlProvider urlProvider, Logger logger) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(urlProvider, "urlProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.ulaFiles = ulaFiles;
        this.urlProvider = urlProvider;
        this.logger = logger;
        this.client = new OkHttpClient();
        this.latestResults = new HashMap<>();
    }

    public final UlaFiles getUlaFiles() {
        return this.ulaFiles;
    }

    public /* synthetic */ GithubApiClient(UlaFiles ulaFiles, UrlProvider urlProvider, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaFiles, (i & 2) != 0 ? new UrlProvider() : urlProvider, (i & 4) != 0 ? new SentryLogger() : sentryLogger);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getReleaseToUseForRepo(String repo) {
        if (!StringsKt.contains$default((CharSequence) BuildConfig.DEFAULT_RELEASE, (CharSequence) ":", false, 2, (Object) null)) {
            return BuildConfig.DEFAULT_RELEASE;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) BuildConfig.DEFAULT_RELEASE, new String[]{","}, false, 0, 6, (Object) null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10)), 16));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) it.next(), new String[]{":"}, false, 0, 6, (Object) null);
            Pair pair = TuplesKt.to(StringsKt.trim((CharSequence) listSplit$default2.get(0)).toString(), StringsKt.trim((CharSequence) listSplit$default2.get(1)).toString());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        if (linkedHashMap.containsKey(repo)) {
            Object obj = linkedHashMap.get(repo);
            Intrinsics.checkNotNull(obj);
            return (String) obj;
        }
        return "latest";
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubApiClient$getAssetsListDownloadUrl$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubApiClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubApiClient$getAssetsListDownloadUrl$2", f = "GithubApiClient.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    static final class C02382 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        final /* synthetic */ String $repo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02382(String str, Continuation<? super C02382> continuation) {
            super(2, continuation);
            this.$repo = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GithubApiClient.this.new C02382(this.$repo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((C02382) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0051  */
        /* JADX WARN: Code duplicated, block: B:24:0x007f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:? A[LOOP:0: B:15:0x004b->B:25:?, LOOP_END, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReleasesResponse releasesResponse;
            GithubApiClient githubApiClient;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                releasesResponse = (ReleasesResponse) GithubApiClient.this.latestResults.get(this.$repo);
                if (releasesResponse == null) {
                    this.label = 1;
                    obj = GithubApiClient.this.queryLatestRelease(this.$repo, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                Intrinsics.checkNotNull(releasesResponse);
                List<GithubAsset> assets = releasesResponse.getAssets();
                githubApiClient = GithubApiClient.this;
                for (Object obj2 : assets) {
                    if (Intrinsics.areEqual(((GithubAsset) obj2).getName(), githubApiClient.getUlaFiles().getArchType() + "-assets.txt")) {
                        Intrinsics.checkNotNull(obj2);
                        return ((GithubAsset) obj2).getDownloadUrl();
                    }
                }
                obj2 = null;
                Intrinsics.checkNotNull(obj2);
                return ((GithubAsset) obj2).getDownloadUrl();
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            releasesResponse = (ReleasesResponse) obj;
            Intrinsics.checkNotNull(releasesResponse);
            List<GithubAsset> assets2 = releasesResponse.getAssets();
            githubApiClient = GithubApiClient.this;
            while (r6.hasNext()) {
                if (Intrinsics.areEqual(((GithubAsset) obj2).getName(), githubApiClient.getUlaFiles().getArchType() + "-assets.txt")) {
                    Intrinsics.checkNotNull(obj2);
                    return ((GithubAsset) obj2).getDownloadUrl();
                }
            }
            obj2 = null;
            Intrinsics.checkNotNull(obj2);
            return ((GithubAsset) obj2).getDownloadUrl();
        }
    }

    public final Object getAssetsListDownloadUrl(String str, Continuation<? super String> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02382(str, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubApiClient$getLatestReleaseVersion$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubApiClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubApiClient$getLatestReleaseVersion$2", f = "GithubApiClient.kt", i = {}, l = {64}, m = "invokeSuspend", n = {}, s = {})
    static final class C02392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        final /* synthetic */ String $repo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02392(String str, Continuation<? super C02392> continuation) {
            super(2, continuation);
            this.$repo = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GithubApiClient.this.new C02392(this.$repo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((C02392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReleasesResponse releasesResponse;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                releasesResponse = (ReleasesResponse) GithubApiClient.this.latestResults.get(this.$repo);
                if (releasesResponse == null) {
                    this.label = 1;
                    obj = GithubApiClient.this.queryLatestRelease(this.$repo, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                Intrinsics.checkNotNull(releasesResponse);
                return releasesResponse.getTag();
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            releasesResponse = (ReleasesResponse) obj;
            Intrinsics.checkNotNull(releasesResponse);
            return releasesResponse.getTag();
        }
    }

    public final Object getLatestReleaseVersion(String str, Continuation<? super String> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02392(str, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubApiClient$getAssetEndpoint$2, reason: invalid class name */
    /* JADX INFO: compiled from: GithubApiClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubApiClient$getAssetEndpoint$2", f = "GithubApiClient.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        final /* synthetic */ String $assetType;
        final /* synthetic */ String $repo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$repo = str;
            this.$assetType = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GithubApiClient.this.new AnonymousClass2(this.$repo, this.$assetType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0072  */
        /* JADX WARN: Code duplicated, block: B:24:0x0085 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:? A[LOOP:0: B:15:0x006c->B:25:?, LOOP_END, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReleasesResponse releasesResponse;
            String str;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                releasesResponse = (ReleasesResponse) GithubApiClient.this.latestResults.get(this.$repo);
                if (releasesResponse == null) {
                    this.label = 1;
                    obj = GithubApiClient.this.queryLatestRelease(this.$repo, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                Intrinsics.checkNotNull(releasesResponse);
                str = GithubApiClient.this.getUlaFiles().getArchType() + "-" + this.$assetType;
                for (Object obj2 : releasesResponse.getAssets()) {
                    if (Intrinsics.areEqual(((GithubAsset) obj2).getName(), str)) {
                        Intrinsics.checkNotNull(obj2);
                        return ((GithubAsset) obj2).getDownloadUrl();
                    }
                }
                obj2 = null;
                Intrinsics.checkNotNull(obj2);
                return ((GithubAsset) obj2).getDownloadUrl();
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            releasesResponse = (ReleasesResponse) obj;
            Intrinsics.checkNotNull(releasesResponse);
            str = GithubApiClient.this.getUlaFiles().getArchType() + "-" + this.$assetType;
            while (r5.hasNext()) {
                if (Intrinsics.areEqual(((GithubAsset) obj2).getName(), str)) {
                    Intrinsics.checkNotNull(obj2);
                    return ((GithubAsset) obj2).getDownloadUrl();
                }
            }
            obj2 = null;
            Intrinsics.checkNotNull(obj2);
            return ((GithubAsset) obj2).getDownloadUrl();
        }
    }

    public final Object getAssetEndpoint(String str, String str2, Continuation<? super String> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(str2, str, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubApiClient$queryLatestRelease$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubApiClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/model/remote/GithubApiClient$ReleasesResponse;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubApiClient$queryLatestRelease$2", f = "GithubApiClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02402 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ReleasesResponse>, Object> {
        final /* synthetic */ String $repo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02402(String str, Continuation<? super C02402> continuation) {
            super(2, continuation);
            this.$repo = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GithubApiClient.this.new C02402(this.$repo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ReleasesResponse> continuation) {
            return ((C02402) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String releaseToUseForRepo = GithubApiClient.this.getReleaseToUseForRepo(this.$repo);
                String str = GithubApiClient.this.urlProvider.getBaseUrl() + "repos//UserLOst-Assets-" + this.$repo + "/releases/" + releaseToUseForRepo;
                JsonAdapter jsonAdapterAdapter = new Moshi.Builder().build().adapter(ReleasesResponse.class);
                try {
                    Response responseExecute = GithubApiClient.this.client.newCall(new Request.Builder().url(str).build()).execute();
                    if (!responseExecute.isSuccessful()) {
                        IOException iOException = new IOException("Unexpected code: " + responseExecute);
                        GithubApiClient.this.logger.addExceptionBreadcrumb(iOException);
                        throw iOException;
                    }
                    ResponseBody responseBodyBody = responseExecute.body();
                    Intrinsics.checkNotNull(responseBodyBody);
                    Object objFromJson = jsonAdapterAdapter.fromJson(responseBodyBody.getSource());
                    Intrinsics.checkNotNull(objFromJson);
                    ReleasesResponse releasesResponse = (ReleasesResponse) objFromJson;
                    GithubApiClient.this.latestResults.put(this.$repo, releasesResponse);
                    return releasesResponse;
                } catch (Exception e) {
                    GithubApiClient.this.logger.addExceptionBreadcrumb(e);
                    throw new IOException("Failure to communicate with github");
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object queryLatestRelease(String str, Continuation<? super ReleasesResponse> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02402(str, null), continuation);
    }

    /* JADX INFO: compiled from: GithubApiClient.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J7\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Ltech/ula/library/model/remote/GithubApiClient$ReleasesResponse;", "", ImagesContract.URL, "", "name", "tag", "assets", "", "Ltech/ula/library/model/remote/GithubApiClient$GithubAsset;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAssets", "()Ljava/util/List;", "getName", "()Ljava/lang/String;", "getTag", "getUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ReleasesResponse {
        private final List<GithubAsset> assets;
        private final String name;
        private final String tag;
        private final String url;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ReleasesResponse copy$default(ReleasesResponse releasesResponse, String str, String str2, String str3, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = releasesResponse.url;
            }
            if ((i & 2) != 0) {
                str2 = releasesResponse.name;
            }
            if ((i & 4) != 0) {
                str3 = releasesResponse.tag;
            }
            if ((i & 8) != 0) {
                list = releasesResponse.assets;
            }
            return releasesResponse.copy(str, str2, str3, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        public final List<GithubAsset> component4() {
            return this.assets;
        }

        public final ReleasesResponse copy(String url, String name, @Json(name = "tag_name") String tag, List<GithubAsset> assets) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(assets, "assets");
            return new ReleasesResponse(url, name, tag, assets);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ReleasesResponse)) {
                return false;
            }
            ReleasesResponse releasesResponse = (ReleasesResponse) other;
            return Intrinsics.areEqual(this.url, releasesResponse.url) && Intrinsics.areEqual(this.name, releasesResponse.name) && Intrinsics.areEqual(this.tag, releasesResponse.tag) && Intrinsics.areEqual(this.assets, releasesResponse.assets);
        }

        public int hashCode() {
            return (((((this.url.hashCode() * 31) + this.name.hashCode()) * 31) + this.tag.hashCode()) * 31) + this.assets.hashCode();
        }

        public String toString() {
            return "ReleasesResponse(url=" + this.url + ", name=" + this.name + ", tag=" + this.tag + ", assets=" + this.assets + ")";
        }

        public ReleasesResponse(String url, String name, @Json(name = "tag_name") String tag, List<GithubAsset> assets) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(assets, "assets");
            this.url = url;
            this.name = name;
            this.tag = tag;
            this.assets = assets;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getName() {
            return this.name;
        }

        public final String getTag() {
            return this.tag;
        }

        public final List<GithubAsset> getAssets() {
            return this.assets;
        }
    }

    /* JADX INFO: compiled from: GithubApiClient.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Ltech/ula/library/model/remote/GithubApiClient$GithubAsset;", "", ImagesContract.URL, "", "name", "downloadUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDownloadUrl", "()Ljava/lang/String;", "getName", "getUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class GithubAsset {
        private final String downloadUrl;
        private final String name;
        private final String url;

        public static /* synthetic */ GithubAsset copy$default(GithubAsset githubAsset, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = githubAsset.url;
            }
            if ((i & 2) != 0) {
                str2 = githubAsset.name;
            }
            if ((i & 4) != 0) {
                str3 = githubAsset.downloadUrl;
            }
            return githubAsset.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getDownloadUrl() {
            return this.downloadUrl;
        }

        public final GithubAsset copy(String url, String name, @Json(name = "browser_download_url") String downloadUrl) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(downloadUrl, "downloadUrl");
            return new GithubAsset(url, name, downloadUrl);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof GithubAsset)) {
                return false;
            }
            GithubAsset githubAsset = (GithubAsset) other;
            return Intrinsics.areEqual(this.url, githubAsset.url) && Intrinsics.areEqual(this.name, githubAsset.name) && Intrinsics.areEqual(this.downloadUrl, githubAsset.downloadUrl);
        }

        public int hashCode() {
            return (((this.url.hashCode() * 31) + this.name.hashCode()) * 31) + this.downloadUrl.hashCode();
        }

        public String toString() {
            return "GithubAsset(url=" + this.url + ", name=" + this.name + ", downloadUrl=" + this.downloadUrl + ")";
        }

        public GithubAsset(String url, String name, @Json(name = "browser_download_url") String downloadUrl) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(downloadUrl, "downloadUrl");
            this.url = url;
            this.name = name;
            this.downloadUrl = downloadUrl;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getName() {
            return this.name;
        }

        public final String getDownloadUrl() {
            return this.downloadUrl;
        }
    }
}
