package tech.ula.library.utils;

import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.squareup.moshi.JsonClass;
import com.squareup.moshi.Moshi;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.apache.commons.compress.compressors.gzip.GzipCompressorInputStream;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpHost;
import org.spongycastle.cms.CMSAttributeTableGenerator;
import tech.ula.library.model.remote.GithubApiClient;

/* JADX INFO: compiled from: OciImageFetcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 O2\u00020\u0001:\tOPQRSTUVWB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\n\u001a\u00020\u000b2\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\rH\u0002J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J \u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J \u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002JX\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u000f2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b0$2$\u0010%\u001a \b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0'\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010&H\u0082@¢\u0006\u0002\u0010(J2\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u0014\u001a\u00020\u000f2\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0,H\u0002J\\\u0010-\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u000f2\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b0$2&\b\u0002\u0010%\u001a \b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0'\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010&H\u0086@¢\u0006\u0002\u0010(J$\u0010.\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020/0\u000e2\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0002J$\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u000e2\u0006\u00100\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0017H\u0002J\u0018\u00104\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u0017H\u0002J\u0010\u00106\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J$\u00107\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u0017082\u0006\u00109\u001a\u00020\u0017H\u0002J\u0010\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u0017H\u0002J\u001a\u0010<\u001a\u0004\u0018\u00010\u00172\u0006\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\u0017H\u0002J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u0017H\u0002J:\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010\u0014\u001a\u00020\u000f2\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0,H\u0002J2\u0010G\u001a\u00020@2\u0006\u00100\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u00172\u0006\u0010H\u001a\u00020\u00172\u0006\u0010I\u001a\u00020\u00172\b\u0010J\u001a\u0004\u0018\u00010\u0017H\u0002J\u0018\u0010K\u001a\u00020\u00172\u0006\u0010L\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0010\u0010M\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\f\u0010N\u001a\u00020\u0017*\u00020\u0017H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "(Ltech/ula/library/utils/UlaFiles;)V", HttpHost.DEFAULT_SCHEME_NAME, "Lokhttp3/OkHttpClient;", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "applyDeferredDirectoryModes", "", "dirModes", "", "Lkotlin/Pair;", "Ljava/io/File;", "", "applyFirstL2sLink", "originalHost", "newPathHost", "destination", "applyL2sHardLink", "linkTarget", "", "entryName", "applyPermissions", "file", "mode", "applySubsequentL2sLink", "clearDirectory", "dir", "deleteRecursively", "downloadAndExtractTarGz", "", "distributionType", "progressListener", "Lkotlin/Function1;", "tarGzExtractor", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractLayer", "inputStream", "Ljava/io/InputStream;", "", "fetchAndExtract", "fetchBlob", "", "imageName", CMSAttributeTableGenerator.DIGEST, "fetchManifestRaw", "tagOrDigest", "fetchToken", "wwwAuthenticate", "isL2sSymlink", "ociPlatformForArch", "Lkotlin/Triple;", "arch", "ociTagForDistro", "distro", "parseChallenge", "header", "key", "parseImageManifest", "Ltech/ula/library/utils/OciImageFetcher$ResolvedManifest;", "body", "processEntry", ArchiveStreamFactory.TAR, "Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;", "entry", "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;", "resolveManifest", "ociOs", "architecture", "variant", "toChrootPath", "hostFile", "writeRuntimeFiles", "urlEncode", "Companion", "OciDescriptor", "OciIndex", "OciLayer", "OciManifest", "OciPlatform", "ProgressInputStream", "ResolvedManifest", "TokenResponse", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OciImageFetcher {
    private final OkHttpClient http;
    private final Moshi moshi;
    private final UlaFiles ulaFiles;
    private static final Set<String> TAR_GZ_EXCLUDED_TOP_LEVEL = SetsKt.setOf((Object[]) new String[]{NotificationCompat.CATEGORY_SYSTEM, "dev", "proc", "data", "mnt", "host-rootfs", "support", "sdcard"});
    private static final Set<String> TAR_GZ_EXCLUDED_PATHS = SetsKt.setOf((Object[]) new String[]{"etc/mtab", "usr/local/bin/sudo", "etc/profile.d/userland_profile.sh", "etc/ld.so.preload"});

    /* JADX INFO: renamed from: tech.ula.library.utils.OciImageFetcher$downloadAndExtractTarGz$1, reason: invalid class name */
    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.OciImageFetcher", f = "OciImageFetcher.kt", i = {0, 0, 0, 0, 0, 1, 1}, l = {97, 116}, m = "downloadAndExtractTarGz", n = {"this", "distributionType", "destination", "progressListener", "tarGzExtractor", "distributionType", "progressListener"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OciImageFetcher.this.downloadAndExtractTarGz(null, null, null, null, this);
        }
    }

    public OciImageFetcher(UlaFiles ulaFiles) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        this.ulaFiles = ulaFiles;
        this.http = new OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).build();
        this.moshi = new Moshi.Builder().build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object fetchAndExtract$default(OciImageFetcher ociImageFetcher, String str, File file, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new Function1<String, Unit>() { // from class: tech.ula.library.utils.OciImageFetcher.fetchAndExtract.2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function3 = function1;
        if ((i & 8) != 0) {
            function2 = null;
        }
        return ociImageFetcher.fetchAndExtract(str, file, function3, function2, continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.OciImageFetcher$fetchAndExtract$3, reason: invalid class name */
    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.OciImageFetcher$fetchAndExtract$3", f = "OciImageFetcher.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ File $destination;
        final /* synthetic */ String $distributionType;
        final /* synthetic */ Function1<String, Unit> $progressListener;
        final /* synthetic */ Function2<File, Continuation<? super Boolean>, Object> $tarGzExtractor;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(String str, File file, Function1<? super String, Unit> function1, Function2<? super File, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$distributionType = str;
            this.$destination = file;
            this.$progressListener = function1;
            this.$tarGzExtractor = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OciImageFetcher.this.new AnonymousClass3(this.$distributionType, this.$destination, this.$progressListener, this.$tarGzExtractor, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            File[] fileArrListFiles;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            try {
                String archType = OciImageFetcher.this.ulaFiles.getArchType();
                String str = "/userland-" + this.$distributionType;
                Triple tripleOciPlatformForArch = OciImageFetcher.this.ociPlatformForArch(archType);
                ResolvedManifest resolvedManifestResolveManifest = OciImageFetcher.this.resolveManifest(str, OciImageFetcher.this.ociTagForDistro(this.$distributionType), (String) tripleOciPlatformForArch.component1(), (String) tripleOciPlatformForArch.component2(), (String) tripleOciPlatformForArch.component3());
                this.$destination.mkdirs();
                ArrayList arrayList = new ArrayList();
                final int size = resolvedManifestResolveManifest.getLayers().size();
                List<OciLayer> layers = resolvedManifestResolveManifest.getLayers();
                final Function1<String, Unit> function1 = this.$progressListener;
                OciImageFetcher ociImageFetcher = OciImageFetcher.this;
                File file = this.$destination;
                int i2 = 0;
                for (Object obj2 : layers) {
                    final int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    function1.invoke("Downloading layer " + i3 + "/" + size);
                    Pair pairFetchBlob = ociImageFetcher.fetchBlob(str, ((OciLayer) obj2).getDigest());
                    File file2 = file;
                    ProgressInputStream progressInputStream = new ProgressInputStream(ociImageFetcher, (InputStream) pairFetchBlob.component1(), ((Number) pairFetchBlob.component2()).longValue(), new Function1<Integer, Unit>() { // from class: tech.ula.library.utils.OciImageFetcher$fetchAndExtract$3$ociSuccess$1$tracked$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i4) {
                            function1.invoke("Extracting layer " + i3 + "/" + size + " (" + i4 + "%)");
                        }
                    });
                    try {
                        ociImageFetcher.extractLayer(progressInputStream, file2, arrayList);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(progressInputStream, null);
                        file = file2;
                        i2 = i3;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(progressInputStream, th);
                            throw th2;
                        }
                    }
                }
                OciImageFetcher.this.applyDeferredDirectoryModes(arrayList);
                OciImageFetcher.this.writeRuntimeFiles(this.$destination);
                return Boxing.boxBoolean(true);
            } catch (Throwable th3) {
                String str2 = th3.getClass().getSimpleName() + ": " + th3.getMessage();
                Log.w("OciImageFetcher", "OCI failed for " + this.$distributionType + " (" + str2 + "), falling back to tar.gz", th3);
                this.$progressListener.invoke("OCI failed (" + str2 + "), trying tar.gz");
                if (this.$destination.exists() && (fileArrListFiles = this.$destination.listFiles()) != null) {
                    OciImageFetcher ociImageFetcher2 = OciImageFetcher.this;
                    for (File file3 : fileArrListFiles) {
                        Intrinsics.checkNotNull(file3);
                        ociImageFetcher2.deleteRecursively(file3);
                    }
                }
                this.$destination.mkdirs();
                this.label = 1;
                Object objDownloadAndExtractTarGz = OciImageFetcher.this.downloadAndExtractTarGz(this.$distributionType, this.$destination, this.$progressListener, this.$tarGzExtractor, this);
                return objDownloadAndExtractTarGz == coroutine_suspended ? coroutine_suspended : objDownloadAndExtractTarGz;
            }
        }
    }

    public final Object fetchAndExtract(String str, File file, Function1<? super String, Unit> function1, Function2<? super File, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass3(str, file, function1, function2, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    public final Object downloadAndExtractTarGz(String str, File file, Function1<? super String, Unit> function1, Function2<? super File, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Boolean> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        String str2;
        File file2;
        Function2<? super File, ? super Continuation<? super Boolean>, ? extends Object> function3;
        OciImageFetcher ociImageFetcher;
        File file3;
        Response responseExecute;
        Function1<? super String, Unit> function4;
        final Function1<? super String, Unit> function5 = function1;
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
        Object assetEndpoint = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        boolean zBooleanValue = false;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(assetEndpoint);
                try {
                    function5.invoke("Downloading tar.gz (0%)");
                    GithubApiClient githubApiClient = new GithubApiClient(this.ulaFiles, null, null, 6, null);
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = str;
                    file2 = file;
                    anonymousClass1.L$2 = file2;
                    anonymousClass1.L$3 = function5;
                    function3 = function2;
                    anonymousClass1.L$4 = function3;
                    anonymousClass1.label = 1;
                    assetEndpoint = githubApiClient.getAssetEndpoint("rootfs.tar.gz", str, anonymousClass1);
                    if (assetEndpoint == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ociImageFetcher = this;
                    str2 = str;
                } catch (Throwable th) {
                    th = th;
                    str2 = str;
                    String str3 = th.getClass().getSimpleName() + ": " + th.getMessage();
                    Log.e("OciImageFetcher", "tar.gz fallback failed for " + str2 + " (" + str3 + ")", th);
                    function5.invoke("tar.gz fallback failed (" + str3 + ")");
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    function4 = (Function1) anonymousClass1.L$1;
                    String str4 = (String) anonymousClass1.L$0;
                    try {
                        ResultKt.throwOnFailure(assetEndpoint);
                        str2 = str4;
                        try {
                            zBooleanValue = ((Boolean) assetEndpoint).booleanValue();
                        } catch (Throwable th2) {
                            th = th2;
                            function5 = function4;
                            String str5 = th.getClass().getSimpleName() + ": " + th.getMessage();
                            Log.e("OciImageFetcher", "tar.gz fallback failed for " + str2 + " (" + str5 + ")", th);
                            function5.invoke("tar.gz fallback failed (" + str5 + ")");
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str2 = str4;
                        function5 = function4;
                        String str6 = th.getClass().getSimpleName() + ": " + th.getMessage();
                        Log.e("OciImageFetcher", "tar.gz fallback failed for " + str2 + " (" + str6 + ")", th);
                        function5.invoke("tar.gz fallback failed (" + str6 + ")");
                        return Boxing.boxBoolean(zBooleanValue);
                    }
                    return Boxing.boxBoolean(zBooleanValue);
                }
                Function2<? super File, ? super Continuation<? super Boolean>, ? extends Object> function6 = (Function2) anonymousClass1.L$4;
                function5 = (Function1) anonymousClass1.L$3;
                file2 = (File) anonymousClass1.L$2;
                str2 = (String) anonymousClass1.L$1;
                OciImageFetcher ociImageFetcher2 = (OciImageFetcher) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure(assetEndpoint);
                    ociImageFetcher = ociImageFetcher2;
                    function3 = function6;
                } catch (Throwable th4) {
                    th = th4;
                    String str7 = th.getClass().getSimpleName() + ": " + th.getMessage();
                    Log.e("OciImageFetcher", "tar.gz fallback failed for " + str2 + " (" + str7 + ")", th);
                    function5.invoke("tar.gz fallback failed (" + str7 + ")");
                }
            }
            Response response = responseExecute;
            if (!response.isSuccessful()) {
                throw new IllegalStateException(("HTTP " + response.code() + " downloading rootfs.tar.gz").toString());
            }
            ResponseBody responseBodyBody = response.body();
            Intrinsics.checkNotNull(responseBodyBody);
            long contentLength = responseBodyBody.getContentLength();
            ResponseBody responseBodyBody2 = response.body();
            Intrinsics.checkNotNull(responseBodyBody2);
            ProgressInputStream progressInputStream = new ProgressInputStream(ociImageFetcher, responseBodyBody2.byteStream(), contentLength, new Function1<Integer, Unit>() { // from class: tech.ula.library.utils.OciImageFetcher$downloadAndExtractTarGz$2$tracked$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i2) {
                    function5.invoke("Downloading tar.gz (" + i2 + "%)");
                }
            });
            try {
                ProgressInputStream progressInputStream2 = progressInputStream;
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    ByteStreamsKt.copyTo$default(progressInputStream2, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(progressInputStream, null);
                    CloseableKt.closeFinally(responseExecute, null);
                    if (function3 != null) {
                        anonymousClass1.L$0 = str2;
                        anonymousClass1.L$1 = function5;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.L$4 = null;
                        anonymousClass1.label = 2;
                        assetEndpoint = function3.invoke(file3, anonymousClass1);
                        if (assetEndpoint == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        function4 = function5;
                        zBooleanValue = ((Boolean) assetEndpoint).booleanValue();
                    } else {
                        Log.w("OciImageFetcher", "No tarGzExtractor provided; tar.gz downloaded but not extracted");
                    }
                    return Boxing.boxBoolean(zBooleanValue);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(fileOutputStream, th5);
                        throw th6;
                    }
                }
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    CloseableKt.closeFinally(progressInputStream, th7);
                    throw th8;
                }
            }
            return Boxing.boxBoolean(zBooleanValue);
        } catch (Throwable th9) {
            try {
                throw th9;
            } catch (Throwable th10) {
                CloseableKt.closeFinally(responseExecute, th9);
                throw th10;
            }
        }
        File file4 = new File(file2, "support");
        file4.mkdirs();
        file3 = new File(file4, "rootfs.tar.gz");
        responseExecute = ociImageFetcher.http.newCall(new Request.Builder().url((String) assetEndpoint).build()).execute();
        th = th4;
        String str8 = th.getClass().getSimpleName() + ": " + th.getMessage();
        Log.e("OciImageFetcher", "tar.gz fallback failed for " + str2 + " (" + str8 + ")", th);
        function5.invoke("tar.gz fallback failed (" + str8 + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String ociTagForDistro(String distro) {
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
            return "latest";
        }
        List<String> listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10)), 16));
        for (String str : listSplit$default) {
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, ':', 0, false, 6, (Object) null);
            String strSubstring = str.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            String string = StringsKt.trim((CharSequence) strSubstring).toString();
            String strSubstring2 = str.substring(iIndexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            Pair pair = TuplesKt.to(string, StringsKt.trim((CharSequence) strSubstring2).toString());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        String str2 = (String) linkedHashMap.get(distro);
        return str2 == null ? "latest" : str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Triple<String, String, String> ociPlatformForArch(String arch) {
        switch (arch.hashCode()) {
            case -806050265:
                if (arch.equals("x86_64")) {
                    return new Triple<>("linux", "amd64", null);
                }
                break;
            case 96860:
                if (arch.equals("arm")) {
                    return new Triple<>("linux", "arm", "v7");
                }
                break;
            case 117110:
                if (arch.equals("x86")) {
                    return new Triple<>("linux", "386", null);
                }
                break;
            case 93084186:
                if (arch.equals("arm64")) {
                    return new Triple<>("linux", "arm64", null);
                }
                break;
        }
        return new Triple<>("linux", "amd64", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResolvedManifest resolveManifest(String imageName, String tagOrDigest, String ociOs, String architecture, String variant) throws IOException {
        Object next;
        Pair<String, String> pairFetchManifestRaw = fetchManifestRaw(imageName, tagOrDigest);
        String strComponent1 = pairFetchManifestRaw.component1();
        String strComponent2 = pairFetchManifestRaw.component2();
        if (StringsKt.contains((CharSequence) strComponent2, (CharSequence) "application/vnd.docker.distribution.manifest.list.v2+json", true) || StringsKt.contains((CharSequence) strComponent2, (CharSequence) "application/vnd.oci.image.index.v1+json", true)) {
            Object objFromJson = this.moshi.adapter(OciIndex.class).fromJson(strComponent1);
            Intrinsics.checkNotNull(objFromJson);
            Iterator<T> it = ((OciIndex) objFromJson).getManifests().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                OciPlatform platform = ((OciDescriptor) next).getPlatform();
                if (platform != null && Intrinsics.areEqual(platform.getOs(), ociOs) && Intrinsics.areEqual(platform.getArchitecture(), architecture) && (variant == null || Intrinsics.areEqual(platform.getVariant(), variant))) {
                    break;
                }
            }
            OciDescriptor ociDescriptor = (OciDescriptor) next;
            if (ociDescriptor == null) {
                throw new IllegalStateException(("No manifest for platform " + ociOs + "/" + architecture + " in " + imageName).toString());
            }
            return parseImageManifest(fetchManifestRaw(imageName, ociDescriptor.getDigest()).component1());
        }
        return parseImageManifest(strComponent1);
    }

    private final ResolvedManifest parseImageManifest(String body) throws IOException {
        Object objFromJson = this.moshi.adapter(OciManifest.class).fromJson(body);
        Intrinsics.checkNotNull(objFromJson);
        return new ResolvedManifest(((OciManifest) objFromJson).getLayers());
    }

    private final Pair<String, String> fetchManifestRaw(String imageName, String tagOrDigest) throws IOException {
        Request requestBuild = new Request.Builder().url("https://ghcr.io/v2/" + imageName + "/manifests/" + tagOrDigest).header("Accept", CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) new String[]{"application/vnd.oci.image.index.v1+json", "application/vnd.oci.image.manifest.v1+json", "application/vnd.docker.distribution.manifest.list.v2+json", "application/vnd.docker.distribution.manifest.v2+json"}), ", ", null, null, 0, null, null, 62, null)).build();
        Response responseExecute = this.http.newCall(requestBuild).execute();
        try {
            Response response = responseExecute;
            String str = "";
            if (response.code() != 401) {
                if (!response.isSuccessful()) {
                    throw new IllegalStateException(("HTTP " + response.code() + " fetching manifest for " + imageName).toString());
                }
                ResponseBody responseBodyBody = response.body();
                Intrinsics.checkNotNull(responseBodyBody);
                String strString = responseBodyBody.string();
                String strHeader$default = Response.header$default(response, "Content-Type", null, 2, null);
                if (strHeader$default != null) {
                    str = strHeader$default;
                }
                Pair<String, String> pair = new Pair<>(strString, str);
                CloseableKt.closeFinally(responseExecute, null);
                return pair;
            }
            String strHeader$default2 = Response.header$default(response, "WWW-Authenticate", null, 2, null);
            if (strHeader$default2 == null) {
                strHeader$default2 = "";
            }
            Response responseExecute2 = this.http.newCall(requestBuild.newBuilder().header("Authorization", "Bearer " + fetchToken(imageName, strHeader$default2)).build()).execute();
            try {
                Response response2 = responseExecute2;
                if (!response2.isSuccessful()) {
                    throw new IllegalStateException(("HTTP " + response2.code() + " fetching manifest for " + imageName + " (authed)").toString());
                }
                ResponseBody responseBodyBody2 = response2.body();
                Intrinsics.checkNotNull(responseBodyBody2);
                String strString2 = responseBodyBody2.string();
                String strHeader$default3 = Response.header$default(response2, "Content-Type", null, 2, null);
                if (strHeader$default3 != null) {
                    str = strHeader$default3;
                }
                Pair<String, String> pair2 = new Pair<>(strString2, str);
                CloseableKt.closeFinally(responseExecute2, null);
                CloseableKt.closeFinally(responseExecute, null);
                return pair2;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(responseExecute2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(responseExecute, th3);
                throw th4;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<InputStream, Long> fetchBlob(String imageName, String digest) throws IOException {
        Request requestBuild = new Request.Builder().url("https://ghcr.io/v2/" + imageName + "/blobs/" + digest).build();
        Response responseExecute = this.http.newCall(requestBuild).execute();
        if (responseExecute.code() == 401) {
            String strHeader$default = Response.header$default(responseExecute, "WWW-Authenticate", null, 2, null);
            if (strHeader$default == null) {
                strHeader$default = "";
            }
            String strFetchToken = fetchToken(imageName, strHeader$default);
            responseExecute.close();
            Response responseExecute2 = this.http.newCall(requestBuild.newBuilder().header("Authorization", "Bearer " + strFetchToken).build()).execute();
            if (!responseExecute2.isSuccessful()) {
                throw new IllegalStateException(("HTTP " + responseExecute2.code() + " fetching blob " + digest).toString());
            }
            ResponseBody responseBodyBody = responseExecute2.body();
            Intrinsics.checkNotNull(responseBodyBody);
            InputStream inputStreamByteStream = responseBodyBody.byteStream();
            ResponseBody responseBodyBody2 = responseExecute2.body();
            Intrinsics.checkNotNull(responseBodyBody2);
            return new Pair<>(inputStreamByteStream, Long.valueOf(responseBodyBody2.getContentLength()));
        }
        if (!responseExecute.isSuccessful()) {
            throw new IllegalStateException(("HTTP " + responseExecute.code() + " fetching blob " + digest).toString());
        }
        ResponseBody responseBodyBody3 = responseExecute.body();
        Intrinsics.checkNotNull(responseBodyBody3);
        InputStream inputStreamByteStream2 = responseBodyBody3.byteStream();
        ResponseBody responseBodyBody4 = responseExecute.body();
        Intrinsics.checkNotNull(responseBodyBody4);
        return new Pair<>(inputStreamByteStream2, Long.valueOf(responseBodyBody4.getContentLength()));
    }

    private final String fetchToken(String imageName, String wwwAuthenticate) throws IOException {
        String challenge = parseChallenge(wwwAuthenticate, "realm");
        if (challenge == null) {
            challenge = "https://ghcr.io/token";
        }
        String challenge2 = parseChallenge(wwwAuthenticate, NotificationCompat.CATEGORY_SERVICE);
        if (challenge2 == null) {
            challenge2 = "ghcr.io";
        }
        String challenge3 = parseChallenge(wwwAuthenticate, "scope");
        if (challenge3 == null) {
            challenge3 = "repository:" + imageName + ":pull";
        }
        Response responseExecute = this.http.newCall(new Request.Builder().url(challenge + "?service=" + urlEncode(challenge2) + "&scope=" + urlEncode(challenge3)).build()).execute();
        try {
            Response response = responseExecute;
            if (!response.isSuccessful()) {
                throw new IllegalStateException(("HTTP " + response.code() + " fetching token").toString());
            }
            ResponseBody responseBodyBody = response.body();
            Intrinsics.checkNotNull(responseBodyBody);
            Object objFromJson = this.moshi.adapter(TokenResponse.class).fromJson(responseBodyBody.string());
            Intrinsics.checkNotNull(objFromJson);
            String token = ((TokenResponse) objFromJson).getToken();
            CloseableKt.closeFinally(responseExecute, null);
            return token;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(responseExecute, th);
                throw th2;
            }
        }
    }

    private final String parseChallenge(String header, String key) {
        List<String> groupValues;
        MatchResult matchResultFind$default = Regex.find$default(new Regex(key + "=\"([^\"]+)\""), header, 0, 2, null);
        if (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null) {
            return null;
        }
        return groupValues.get(1);
    }

    private final String urlEncode(String str) throws UnsupportedEncodingException {
        String strEncode = URLEncoder.encode(str, "UTF-8");
        Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
        return strEncode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void extractLayer(InputStream inputStream, File destination, List<Pair<File, Integer>> dirModes) throws IOException {
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
        bufferedInputStream.mark(2);
        int i = bufferedInputStream.read();
        int i2 = bufferedInputStream.read();
        bufferedInputStream.reset();
        TarArchiveInputStream tarArchiveInputStream = new TarArchiveInputStream((i == 31 && i2 == 139) ? new GzipCompressorInputStream(bufferedInputStream) : bufferedInputStream);
        try {
            TarArchiveInputStream tarArchiveInputStream2 = tarArchiveInputStream;
            for (TarArchiveEntry nextTarEntry = tarArchiveInputStream2.getNextTarEntry(); nextTarEntry != null; nextTarEntry = tarArchiveInputStream2.getNextTarEntry()) {
                if (tarArchiveInputStream2.canReadEntryData(nextTarEntry)) {
                    processEntry(tarArchiveInputStream2, nextTarEntry, destination, dirModes);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(tarArchiveInputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(tarArchiveInputStream, th);
                throw th2;
            }
        }
    }

    private final void processEntry(TarArchiveInputStream tar, TarArchiveEntry entry, File destination, List<Pair<File, Integer>> dirModes) {
        File file;
        String name = entry.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String strTrimStart = StringsKt.trimStart(name, IOUtils.DIR_SEPARATOR_UNIX);
        if (strTrimStart.length() == 0 || Intrinsics.areEqual(strTrimStart, ".")) {
            return;
        }
        String name2 = new File(strTrimStart).getName();
        String parent = new File(strTrimStart).getParent();
        if (Intrinsics.areEqual(name2, ".wh..wh..opq")) {
            if (parent != null) {
                destination = new File(destination, parent);
            }
            if (destination.isDirectory()) {
                clearDirectory(destination);
                return;
            }
            return;
        }
        Intrinsics.checkNotNull(name2);
        if (StringsKt.startsWith$default(name2, ".wh.", false, 2, (Object) null)) {
            String strRemovePrefix = StringsKt.removePrefix(name2, (CharSequence) ".wh.");
            if (parent != null) {
                file = new File(destination, parent + "/" + strRemovePrefix);
            } else {
                file = new File(destination, strRemovePrefix);
            }
            deleteRecursively(file);
            return;
        }
        File file2 = new File(destination, strTrimStart);
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        if (entry.isDirectory()) {
            file2.mkdirs();
            dirModes.add(new Pair<>(file2, Integer.valueOf(entry.getMode())));
            return;
        }
        if (entry.isSymbolicLink()) {
            file2.delete();
            try {
                Os.symlink(entry.getLinkName(), file2.getAbsolutePath());
                return;
            } catch (Exception e) {
                Log.w("OciImageFetcher", "symlink failed: " + entry.getName() + " -> " + entry.getLinkName() + ": " + e.getMessage());
                return;
            }
        }
        if (entry.isLink()) {
            String linkName = entry.getLinkName();
            Intrinsics.checkNotNullExpressionValue(linkName, "getLinkName(...)");
            applyL2sHardLink(StringsKt.trimStart(linkName, IOUtils.DIR_SEPARATOR_UNIX), strTrimStart, destination);
            return;
        }
        file2.delete();
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            ByteStreamsKt.copyTo$default(tar, fileOutputStream, 0, 2, null);
            CloseableKt.closeFinally(fileOutputStream, null);
            applyPermissions(file2, entry.getMode());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileOutputStream, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyDeferredDirectoryModes(List<? extends Pair<? extends File, Integer>> dirModes) {
        for (Pair pair : CollectionsKt.sortedWith(dirModes, new Comparator() { // from class: tech.ula.library.utils.OciImageFetcher$applyDeferredDirectoryModes$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((File) ((Pair) t2).getFirst()).getAbsolutePath().length()), Integer.valueOf(((File) ((Pair) t).getFirst()).getAbsolutePath().length()));
            }
        })) {
            applyPermissions((File) pair.component1(), ((Number) pair.component2()).intValue());
        }
    }

    private final void applyL2sHardLink(String linkTarget, String entryName, File destination) {
        File file = new File(destination, linkTarget);
        File file2 = new File(destination, entryName);
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        file2.delete();
        if (isL2sSymlink(file)) {
            applySubsequentL2sLink(file, file2, destination);
        } else if (file.exists()) {
            applyFirstL2sLink(file, file2, destination);
        } else {
            Log.w("OciImageFetcher", "Hard link target not found: " + linkTarget + " (for " + entryName + ")");
        }
    }

    private final void applyFirstL2sLink(File originalHost, File newPathHost, File destination) {
        File file;
        try {
            File parentFile = originalHost.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            String name = originalHost.getName();
            int i = 1;
            do {
                String str = String.format("%04d", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                file = new File(parentFile, ".proot.l2s." + name + str);
                i++;
                if (!file.exists()) {
                    break;
                }
            } while (i < 1000);
            String chrootPath = toChrootPath(file, destination);
            String str2 = chrootPath + ".0002";
            originalHost.renameTo(new File(destination, StringsKt.trimStart(str2, IOUtils.DIR_SEPARATOR_UNIX)));
            Os.symlink(str2, file.getAbsolutePath());
            Os.symlink(chrootPath, originalHost.getAbsolutePath());
            Os.symlink(chrootPath, newPathHost.getAbsolutePath());
        } catch (Exception e) {
            Log.w("OciImageFetcher", "L2S first link failed for " + newPathHost.getName() + ": " + e.getMessage());
        }
    }

    private final void applySubsequentL2sLink(File originalHost, File newPathHost, File destination) {
        try {
            String str = Os.readlink(originalHost.getAbsolutePath());
            Intrinsics.checkNotNull(str);
            File file = new File(destination, StringsKt.trimStart(str, IOUtils.DIR_SEPARATOR_UNIX));
            String str2 = Os.readlink(file.getAbsolutePath());
            Intrinsics.checkNotNull(str2);
            File file2 = new File(destination, StringsKt.trimStart(str2, IOUtils.DIR_SEPARATOR_UNIX));
            Integer intOrNull = StringsKt.toIntOrNull(StringsKt.takeLast(str2, 4));
            int iIntValue = intOrNull != null ? intOrNull.intValue() : 2;
            String strDropLast = StringsKt.dropLast(str2, 4);
            String str3 = String.format("%04d", Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue + 1)}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            String str4 = strDropLast + str3;
            file2.renameTo(new File(destination, StringsKt.trimStart(str4, IOUtils.DIR_SEPARATOR_UNIX)));
            file.delete();
            Os.symlink(str4, file.getAbsolutePath());
            Os.symlink(str, newPathHost.getAbsolutePath());
        } catch (Exception e) {
            Log.w("OciImageFetcher", "L2S subsequent link failed for " + newPathHost.getName() + ": " + e.getMessage());
        }
    }

    private final boolean isL2sSymlink(File file) {
        try {
            if (!OsConstants.S_ISLNK(Os.lstat(file.getAbsolutePath()).st_mode)) {
                return false;
            }
            String str = Os.readlink(file.getAbsolutePath());
            Intrinsics.checkNotNull(str);
            return StringsKt.startsWith$default(StringsKt.substringAfterLast$default(str, IOUtils.DIR_SEPARATOR_UNIX, (String) null, 2, (Object) null), ".proot.l2s.", false, 2, (Object) null);
        } catch (Exception unused) {
            return false;
        }
    }

    private final String toChrootPath(File hostFile, File destination) {
        String absolutePath = hostFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        String absolutePath2 = destination.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
        return "/" + StringsKt.trimStart(StringsKt.removePrefix(absolutePath, (CharSequence) absolutePath2), IOUtils.DIR_SEPARATOR_UNIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeRuntimeFiles(File destination) {
        File file = new File(destination, "etc");
        file.mkdirs();
        FilesKt.writeText$default(new File(file, "resolv.conf"), "nameserver 8.8.8.8\nnameserver 8.8.4.4\n", null, 2, null);
        FilesKt.writeText$default(new File(file, "hosts"), "127.0.0.1 localhost\n::1 localhost ip6-localhost ip6-loopback\n", null, 2, null);
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ\b\u0010\f\u001a\u00020\bH\u0016J\b\u0010\r\u001a\u00020\u0007H\u0016J \u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$ProgressInputStream;", "Ljava/io/InputStream;", "delegate", "totalBytes", "", "onProgress", "Lkotlin/Function1;", "", "", "(Ltech/ula/library/utils/OciImageFetcher;Ljava/io/InputStream;JLkotlin/jvm/functions/Function1;)V", "bytesRead", "lastPercent", "close", "read", "b", "", "off", "len", "track", "n", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class ProgressInputStream extends InputStream {
        private long bytesRead;
        private final InputStream delegate;
        private int lastPercent;
        private final Function1<Integer, Unit> onProgress;
        final /* synthetic */ OciImageFetcher this$0;
        private final long totalBytes;

        /* JADX WARN: Multi-variable type inference failed */
        public ProgressInputStream(OciImageFetcher ociImageFetcher, InputStream delegate, long j, Function1<? super Integer, Unit> onProgress) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            Intrinsics.checkNotNullParameter(onProgress, "onProgress");
            this.this$0 = ociImageFetcher;
            this.delegate = delegate;
            this.totalBytes = j;
            this.onProgress = onProgress;
            this.lastPercent = -1;
        }

        private final void track(long n) {
            long j = this.totalBytes;
            if (j <= 0 || n <= 0) {
                return;
            }
            long j2 = this.bytesRead + n;
            this.bytesRead = j2;
            int iCoerceIn = RangesKt.coerceIn((int) ((j2 * ((long) 100)) / j), 0, 100);
            if (iCoerceIn != this.lastPercent) {
                this.lastPercent = iCoerceIn;
                this.onProgress.invoke(Integer.valueOf(iCoerceIn));
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i = this.delegate.read();
            if (i >= 0) {
                track(1L);
            }
            return i;
        }

        @Override // java.io.InputStream
        public int read(byte[] b, int off, int len) throws IOException {
            Intrinsics.checkNotNullParameter(b, "b");
            int i = this.delegate.read(b, off, len);
            if (i > 0) {
                track(i);
            }
            return i;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.delegate.close();
        }
    }

    private final void applyPermissions(File file, int mode) {
        try {
            Os.chmod(file.getAbsolutePath(), mode & UnixStat.PERM_MASK);
        } catch (Exception unused) {
        }
    }

    private final void clearDirectory(File dir) {
        File[] fileArrListFiles = dir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                Intrinsics.checkNotNull(file);
                deleteRecursively(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteRecursively(File file) {
        if (file.isDirectory()) {
            try {
                Os.chmod(file.getAbsolutePath(), UnixStat.DEFAULT_DIR_PERM);
            } catch (Exception unused) {
            }
            clearDirectory(file);
        }
        file.delete();
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$OciIndex;", "", "manifests", "", "Ltech/ula/library/utils/OciImageFetcher$OciDescriptor;", "(Ljava/util/List;)V", "getManifests", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OciIndex {
        private final List<OciDescriptor> manifests;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OciIndex copy$default(OciIndex ociIndex, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = ociIndex.manifests;
            }
            return ociIndex.copy(list);
        }

        public final List<OciDescriptor> component1() {
            return this.manifests;
        }

        public final OciIndex copy(List<OciDescriptor> manifests) {
            Intrinsics.checkNotNullParameter(manifests, "manifests");
            return new OciIndex(manifests);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OciIndex) && Intrinsics.areEqual(this.manifests, ((OciIndex) other).manifests);
        }

        public int hashCode() {
            return this.manifests.hashCode();
        }

        public String toString() {
            return "OciIndex(manifests=" + this.manifests + ")";
        }

        public OciIndex(List<OciDescriptor> manifests) {
            Intrinsics.checkNotNullParameter(manifests, "manifests");
            this.manifests = manifests;
        }

        public final List<OciDescriptor> getManifests() {
            return this.manifests;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$OciDescriptor;", "", CMSAttributeTableGenerator.DIGEST, "", JsonMarshaller.PLATFORM, "Ltech/ula/library/utils/OciImageFetcher$OciPlatform;", "(Ljava/lang/String;Ltech/ula/library/utils/OciImageFetcher$OciPlatform;)V", "getDigest", "()Ljava/lang/String;", "getPlatform", "()Ltech/ula/library/utils/OciImageFetcher$OciPlatform;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OciDescriptor {
        private final String digest;
        private final OciPlatform platform;

        public static /* synthetic */ OciDescriptor copy$default(OciDescriptor ociDescriptor, String str, OciPlatform ociPlatform, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ociDescriptor.digest;
            }
            if ((i & 2) != 0) {
                ociPlatform = ociDescriptor.platform;
            }
            return ociDescriptor.copy(str, ociPlatform);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDigest() {
            return this.digest;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OciPlatform getPlatform() {
            return this.platform;
        }

        public final OciDescriptor copy(String digest, OciPlatform platform) {
            Intrinsics.checkNotNullParameter(digest, "digest");
            return new OciDescriptor(digest, platform);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OciDescriptor)) {
                return false;
            }
            OciDescriptor ociDescriptor = (OciDescriptor) other;
            return Intrinsics.areEqual(this.digest, ociDescriptor.digest) && Intrinsics.areEqual(this.platform, ociDescriptor.platform);
        }

        public int hashCode() {
            int iHashCode = this.digest.hashCode() * 31;
            OciPlatform ociPlatform = this.platform;
            return iHashCode + (ociPlatform == null ? 0 : ociPlatform.hashCode());
        }

        public String toString() {
            return "OciDescriptor(digest=" + this.digest + ", platform=" + this.platform + ")";
        }

        public OciDescriptor(String digest, OciPlatform ociPlatform) {
            Intrinsics.checkNotNullParameter(digest, "digest");
            this.digest = digest;
            this.platform = ociPlatform;
        }

        public /* synthetic */ OciDescriptor(String str, OciPlatform ociPlatform, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : ociPlatform);
        }

        public final String getDigest() {
            return this.digest;
        }

        public final OciPlatform getPlatform() {
            return this.platform;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$OciPlatform;", "", "os", "", "architecture", "variant", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getArchitecture", "()Ljava/lang/String;", "getOs", "getVariant", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OciPlatform {
        private final String architecture;
        private final String os;
        private final String variant;

        public static /* synthetic */ OciPlatform copy$default(OciPlatform ociPlatform, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ociPlatform.os;
            }
            if ((i & 2) != 0) {
                str2 = ociPlatform.architecture;
            }
            if ((i & 4) != 0) {
                str3 = ociPlatform.variant;
            }
            return ociPlatform.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getOs() {
            return this.os;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getArchitecture() {
            return this.architecture;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getVariant() {
            return this.variant;
        }

        public final OciPlatform copy(String os, String architecture, String variant) {
            Intrinsics.checkNotNullParameter(os, "os");
            Intrinsics.checkNotNullParameter(architecture, "architecture");
            return new OciPlatform(os, architecture, variant);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OciPlatform)) {
                return false;
            }
            OciPlatform ociPlatform = (OciPlatform) other;
            return Intrinsics.areEqual(this.os, ociPlatform.os) && Intrinsics.areEqual(this.architecture, ociPlatform.architecture) && Intrinsics.areEqual(this.variant, ociPlatform.variant);
        }

        public int hashCode() {
            int iHashCode = ((this.os.hashCode() * 31) + this.architecture.hashCode()) * 31;
            String str = this.variant;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "OciPlatform(os=" + this.os + ", architecture=" + this.architecture + ", variant=" + this.variant + ")";
        }

        public OciPlatform(String os, String architecture, String str) {
            Intrinsics.checkNotNullParameter(os, "os");
            Intrinsics.checkNotNullParameter(architecture, "architecture");
            this.os = os;
            this.architecture = architecture;
            this.variant = str;
        }

        public /* synthetic */ OciPlatform(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i & 4) != 0 ? null : str3);
        }

        public final String getOs() {
            return this.os;
        }

        public final String getArchitecture() {
            return this.architecture;
        }

        public final String getVariant() {
            return this.variant;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$OciManifest;", "", "layers", "", "Ltech/ula/library/utils/OciImageFetcher$OciLayer;", "(Ljava/util/List;)V", "getLayers", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OciManifest {
        private final List<OciLayer> layers;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OciManifest copy$default(OciManifest ociManifest, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = ociManifest.layers;
            }
            return ociManifest.copy(list);
        }

        public final List<OciLayer> component1() {
            return this.layers;
        }

        public final OciManifest copy(List<OciLayer> layers) {
            Intrinsics.checkNotNullParameter(layers, "layers");
            return new OciManifest(layers);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OciManifest) && Intrinsics.areEqual(this.layers, ((OciManifest) other).layers);
        }

        public int hashCode() {
            return this.layers.hashCode();
        }

        public String toString() {
            return "OciManifest(layers=" + this.layers + ")";
        }

        public OciManifest(List<OciLayer> layers) {
            Intrinsics.checkNotNullParameter(layers, "layers");
            this.layers = layers;
        }

        public final List<OciLayer> getLayers() {
            return this.layers;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$OciLayer;", "", CMSAttributeTableGenerator.DIGEST, "", "(Ljava/lang/String;)V", "getDigest", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OciLayer {
        private final String digest;

        public static /* synthetic */ OciLayer copy$default(OciLayer ociLayer, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ociLayer.digest;
            }
            return ociLayer.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDigest() {
            return this.digest;
        }

        public final OciLayer copy(String digest) {
            Intrinsics.checkNotNullParameter(digest, "digest");
            return new OciLayer(digest);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OciLayer) && Intrinsics.areEqual(this.digest, ((OciLayer) other).digest);
        }

        public int hashCode() {
            return this.digest.hashCode();
        }

        public String toString() {
            return "OciLayer(digest=" + this.digest + ")";
        }

        public OciLayer(String digest) {
            Intrinsics.checkNotNullParameter(digest, "digest");
            this.digest = digest;
        }

        public final String getDigest() {
            return this.digest;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @JsonClass(generateAdapter = true)
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$TokenResponse;", "", "token", "", "(Ljava/lang/String;)V", "getToken", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class TokenResponse {
        private final String token;

        public static /* synthetic */ TokenResponse copy$default(TokenResponse tokenResponse, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tokenResponse.token;
            }
            return tokenResponse.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getToken() {
            return this.token;
        }

        public final TokenResponse copy(String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            return new TokenResponse(token);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof TokenResponse) && Intrinsics.areEqual(this.token, ((TokenResponse) other).token);
        }

        public int hashCode() {
            return this.token.hashCode();
        }

        public String toString() {
            return "TokenResponse(token=" + this.token + ")";
        }

        public TokenResponse(String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            this.token = token;
        }

        public final String getToken() {
            return this.token;
        }
    }

    /* JADX INFO: compiled from: OciImageFetcher.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Ltech/ula/library/utils/OciImageFetcher$ResolvedManifest;", "", "layers", "", "Ltech/ula/library/utils/OciImageFetcher$OciLayer;", "(Ljava/util/List;)V", "getLayers", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ResolvedManifest {
        private final List<OciLayer> layers;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ResolvedManifest copy$default(ResolvedManifest resolvedManifest, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = resolvedManifest.layers;
            }
            return resolvedManifest.copy(list);
        }

        public final List<OciLayer> component1() {
            return this.layers;
        }

        public final ResolvedManifest copy(List<OciLayer> layers) {
            Intrinsics.checkNotNullParameter(layers, "layers");
            return new ResolvedManifest(layers);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ResolvedManifest) && Intrinsics.areEqual(this.layers, ((ResolvedManifest) other).layers);
        }

        public int hashCode() {
            return this.layers.hashCode();
        }

        public String toString() {
            return "ResolvedManifest(layers=" + this.layers + ")";
        }

        public ResolvedManifest(List<OciLayer> layers) {
            Intrinsics.checkNotNullParameter(layers, "layers");
            this.layers = layers;
        }

        public final List<OciLayer> getLayers() {
            return this.layers;
        }
    }
}
