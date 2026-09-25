package tech.ula.library.model.remote;

import android.content.SharedPreferences;
import android.content.res.AssetManager;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import tech.ula.customlibrary.BuildConfig;
import tech.ula.library.model.entities.App;
import tech.ula.library.utils.HttpStream;
import tech.ula.library.utils.Logger;
import tech.ula.library.utils.SentryLogger;

/* JADX INFO: compiled from: GithubAppsFetcher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\u0003H\u0002J\u0016\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016H\u0086@¢\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u0002H\u0019\"\u0004\b\u0000\u0010\u0019*\b\u0012\u0004\u0012\u0002H\u00190\u0016H\u0082\u0002¢\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u0002H\u0019\"\u0004\b\u0000\u0010\u0019*\b\u0012\u0004\u0012\u0002H\u00190\u0016H\u0082\u0002¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Ltech/ula/library/model/remote/GithubAppsFetcher;", "", "filesDirPath", "", "assets", "Landroid/content/res/AssetManager;", "sharedPreferences", "Landroid/content/SharedPreferences;", "httpStream", "Ltech/ula/library/utils/HttpStream;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/content/SharedPreferences;Ltech/ula/library/utils/HttpStream;Ltech/ula/library/utils/Logger;)V", "baseUrl", "fetchAppDescription", "app", "Ltech/ula/library/model/entities/App;", "(Ltech/ula/library/model/entities/App;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchAppFlavors", "fetchAppIcon", "fetchAppScript", "fetchAppsList", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component6", ExifInterface.GPS_DIRECTION_TRUE, "(Ljava/util/List;)Ljava/lang/Object;", "component7", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GithubAppsFetcher {
    private final AssetManager assets;
    private final String filesDirPath;
    private final HttpStream httpStream;
    private final Logger logger;
    private final SharedPreferences sharedPreferences;

    public GithubAppsFetcher(String filesDirPath, AssetManager assets, SharedPreferences sharedPreferences, HttpStream httpStream, Logger logger) {
        Intrinsics.checkNotNullParameter(filesDirPath, "filesDirPath");
        Intrinsics.checkNotNullParameter(assets, "assets");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(httpStream, "httpStream");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.filesDirPath = filesDirPath;
        this.assets = assets;
        this.sharedPreferences = sharedPreferences;
        this.httpStream = httpStream;
        this.logger = logger;
    }

    public /* synthetic */ GithubAppsFetcher(String str, AssetManager assetManager, SharedPreferences sharedPreferences, HttpStream httpStream, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, assetManager, sharedPreferences, (i & 8) != 0 ? new HttpStream() : httpStream, (i & 16) != 0 ? new SentryLogger() : sentryLogger);
    }

    private final <T> T component6(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.get(5);
    }

    private final <T> T component7(List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.get(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String baseUrl() {
        if (!this.sharedPreferences.getBoolean("pref_custom_apps_enabled", false)) {
            return BuildConfig.DEFAULT_APPS_URL;
        }
        String string = this.sharedPreferences.getString("pref_apps", BuildConfig.DEFAULT_APPS_URL);
        Intrinsics.checkNotNull(string);
        return string;
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubAppsFetcher$fetchAppsList$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubAppsFetcher.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Ltech/ula/library/model/entities/App;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubAppsFetcher$fetchAppsList$2", f = "GithubAppsFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02442 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends App>>, Object> {
        int label;

        C02442(Continuation<? super C02442> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GithubAppsFetcher.this.new C02442(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends App>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<App>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<App>> continuation) {
            return ((C02442) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    String str = GithubAppsFetcher.this.baseUrl() + "/apps.txt";
                    InputStream inputStreamOpen = GithubAppsFetcher.this.assets.open("apps/apps.txt");
                    Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
                    Reader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.UTF_8);
                    BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                    try {
                        String text = TextStreamsKt.readText(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        List<String> listDrop = CollectionsKt.drop(StringsKt.lines(StringsKt.trim((CharSequence) text).toString()), 1);
                        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listDrop, 10));
                        for (String str2 : listDrop) {
                            Locale ENGLISH = Locale.ENGLISH;
                            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                            String lowerCase = str2.toLowerCase(ENGLISH);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                            List listSplit$default = StringsKt.split$default((CharSequence) lowerCase, new String[]{", "}, false, 0, 6, (Object) null);
                            arrayList.add(new App((String) listSplit$default.get(0), (String) listSplit$default.get(1), (String) listSplit$default.get(2), Boolean.parseBoolean((String) listSplit$default.get(3)), Boolean.parseBoolean((String) listSplit$default.get(4)), (String) listSplit$default.get(5), Boolean.parseBoolean((String) listSplit$default.get(6)), Long.parseLong((String) listSplit$default.get(7))));
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception unused) {
                    IOException iOException = new IOException("Error getting apps list");
                    GithubAppsFetcher.this.logger.addExceptionBreadcrumb(iOException);
                    throw iOException;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object fetchAppsList(Continuation<? super List<App>> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02442(null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubAppsFetcher$fetchAppIcon$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubAppsFetcher.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubAppsFetcher$fetchAppIcon$2", f = "GithubAppsFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02422 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ App $app;
        int label;
        final /* synthetic */ GithubAppsFetcher this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02422(App app, GithubAppsFetcher githubAppsFetcher, Continuation<? super C02422> continuation) {
            super(2, continuation);
            this.$app = app;
            this.this$0 = githubAppsFetcher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02422(this.$app, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((C02422) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$app.getName() + "/" + this.$app.getName() + ".png";
            File file = new File(this.this$0.filesDirPath + "/apps/" + str);
            File parentFile = file.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            parentFile.mkdirs();
            InputStream inputStreamOpen = this.this$0.assets.open("apps/" + str);
            try {
                InputStream inputStream = inputStreamOpen;
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    Intrinsics.checkNotNull(inputStream);
                    long jCopyTo = ByteStreamsKt.copyTo(inputStream, fileOutputStream, 1024);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    Long lBoxLong = Boxing.boxLong(jCopyTo);
                    CloseableKt.closeFinally(inputStreamOpen, null);
                    return lBoxLong;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(inputStreamOpen, th3);
                    throw th4;
                }
            }
        }
    }

    public final Object fetchAppIcon(App app, Continuation<Object> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02422(app, this, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubAppsFetcher$fetchAppDescription$2, reason: invalid class name */
    /* JADX INFO: compiled from: GithubAppsFetcher.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubAppsFetcher$fetchAppDescription$2", f = "GithubAppsFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ App $app;
        int label;
        final /* synthetic */ GithubAppsFetcher this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(App app, GithubAppsFetcher githubAppsFetcher, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$app = app;
            this.this$0 = githubAppsFetcher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$app, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$app.getName() + "/" + this.$app.getName() + ".txt";
            File file = new File(this.this$0.filesDirPath + "/apps/" + str);
            File parentFile = file.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            parentFile.mkdirs();
            InputStream inputStreamOpen = this.this$0.assets.open("apps/" + str);
            try {
                InputStream inputStream = inputStreamOpen;
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    Intrinsics.checkNotNull(inputStream);
                    long jCopyTo = ByteStreamsKt.copyTo(inputStream, fileOutputStream, 1024);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    Long lBoxLong = Boxing.boxLong(jCopyTo);
                    CloseableKt.closeFinally(inputStreamOpen, null);
                    return lBoxLong;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(inputStreamOpen, th3);
                    throw th4;
                }
            }
        }
    }

    public final Object fetchAppDescription(App app, Continuation<Object> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(app, this, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubAppsFetcher$fetchAppFlavors$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubAppsFetcher.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubAppsFetcher$fetchAppFlavors$2", f = "GithubAppsFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02412 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ App $app;
        int label;
        final /* synthetic */ GithubAppsFetcher this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02412(App app, GithubAppsFetcher githubAppsFetcher, Continuation<? super C02412> continuation) {
            super(2, continuation);
            this.$app = app;
            this.this$0 = githubAppsFetcher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02412(this.$app, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((C02412) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$app.getName() + "/flavors.txt";
            File file = new File(this.this$0.filesDirPath + "/apps/" + str);
            try {
                File parentFile = file.getParentFile();
                Intrinsics.checkNotNull(parentFile);
                parentFile.mkdirs();
                InputStream inputStreamOpen = this.this$0.assets.open("apps/" + str);
                try {
                    InputStream inputStream = inputStreamOpen;
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        Intrinsics.checkNotNull(inputStream);
                        long jCopyTo = ByteStreamsKt.copyTo(inputStream, fileOutputStream, 1024);
                        CloseableKt.closeFinally(fileOutputStream, null);
                        Long lBoxLong = Boxing.boxLong(jCopyTo);
                        CloseableKt.closeFinally(inputStreamOpen, null);
                        return lBoxLong;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(inputStreamOpen, th3);
                        throw th4;
                    }
                }
            } catch (Exception unused) {
                return Unit.INSTANCE;
            }
        }
    }

    public final Object fetchAppFlavors(App app, Continuation<Object> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02412(app, this, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.model.remote.GithubAppsFetcher$fetchAppScript$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GithubAppsFetcher.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.model.remote.GithubAppsFetcher$fetchAppScript$2", f = "GithubAppsFetcher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02432 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ App $app;
        int label;
        final /* synthetic */ GithubAppsFetcher this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02432(App app, GithubAppsFetcher githubAppsFetcher, Continuation<? super C02432> continuation) {
            super(2, continuation);
            this.$app = app;
            this.this$0 = githubAppsFetcher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02432(this.$app, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((C02432) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$app.getName() + "/" + this.$app.getName() + ".sh";
            File file = new File(this.this$0.filesDirPath + "/apps/" + str);
            File parentFile = file.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            parentFile.mkdirs();
            InputStream inputStreamOpen = this.this$0.assets.open("apps/" + str);
            try {
                InputStream inputStream = inputStreamOpen;
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    Intrinsics.checkNotNull(inputStream);
                    long jCopyTo = ByteStreamsKt.copyTo(inputStream, fileOutputStream, 1024);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    Long lBoxLong = Boxing.boxLong(jCopyTo);
                    CloseableKt.closeFinally(inputStreamOpen, null);
                    return lBoxLong;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(inputStreamOpen, th3);
                    throw th4;
                }
            }
        }
    }

    public final Object fetchAppScript(App app, Continuation<Object> continuation) throws IOException {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02432(app, this, null), continuation);
    }
}
