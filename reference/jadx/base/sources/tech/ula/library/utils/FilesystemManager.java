package tech.ula.library.utils;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.sentry.marshaller.json.JsonMarshaller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import tech.ula.library.model.entities.Asset;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: FilesystemManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001c\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J2\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001bH\u0086@¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0086@¢\u0006\u0002\u0010\"J*\u0010#\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001bH\u0086@¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0002J\u000e\u0010&\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nJ\u000e\u0010'\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nJ\u0016\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0017J\u000e\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Ltech/ula/library/utils/FilesystemManager;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "busyboxExecutor", "Ltech/ula/library/utils/BusyboxExecutor;", JsonMarshaller.LOGGER, "Ltech/ula/library/utils/Logger;", "(Ltech/ula/library/utils/UlaFiles;Ltech/ula/library/utils/BusyboxExecutor;Ltech/ula/library/utils/Logger;)V", "filesDirPath", "", "kotlin.jvm.PlatformType", "filesystemExtractionFailure", "filesystemExtractionSuccess", "areAllRequiredAssetsPresent", "", "targetDirectoryName", "distributionAssetList", "", "Ltech/ula/library/model/entities/Asset;", "compressFilesystem", "Ltech/ula/library/utils/ExecutionResult;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "scopedExternalDestination", "Ljava/io/File;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/Function1;", "(Ltech/ula/library/model/entities/Filesystem;Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "copyAssetsToFilesystem", "", "deleteFilesystem", "filesystemId", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractFilesystem", "(Ltech/ula/library/model/entities/Filesystem;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSupportDirectoryPath", "hasFilesystemBeenSuccessfullyExtracted", "isExtractionComplete", "moveAppScriptToRequiredLocation", "appName", "appFilesystem", "removeRootfsFilesFromFilesystem", "targetFilesystemName", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemManager {
    private final BusyboxExecutor busyboxExecutor;
    private final String filesDirPath;
    private final String filesystemExtractionFailure;
    private final String filesystemExtractionSuccess;
    private final Logger logger;
    private final UlaFiles ulaFiles;

    public FilesystemManager(UlaFiles ulaFiles, BusyboxExecutor busyboxExecutor, Logger logger) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        Intrinsics.checkNotNullParameter(busyboxExecutor, "busyboxExecutor");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.ulaFiles = ulaFiles;
        this.busyboxExecutor = busyboxExecutor;
        this.logger = logger;
        this.filesDirPath = ulaFiles.getFilesDir().getPath();
        this.filesystemExtractionSuccess = ".success_filesystem_extraction";
        this.filesystemExtractionFailure = ".failure_filesystem_extraction";
    }

    public /* synthetic */ FilesystemManager(UlaFiles ulaFiles, BusyboxExecutor busyboxExecutor, SentryLogger sentryLogger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ulaFiles, busyboxExecutor, (i & 4) != 0 ? new SentryLogger() : sentryLogger);
    }

    private final String getSupportDirectoryPath(String targetDirectoryName) {
        return this.filesDirPath + "/" + targetDirectoryName + "/support";
    }

    public final void copyAssetsToFilesystem(Filesystem filesystem) throws Exception {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        String distributionType = filesystem.getDistributionType();
        if (!filesystem.getFlavor().equals("default")) {
            distributionType = distributionType + "_" + filesystem.getFlavor();
        }
        String strValueOf = String.valueOf(filesystem.getId());
        File file = new File(this.filesDirPath + "/" + distributionType);
        File file2 = new File(this.filesDirPath + "/" + strValueOf + "/support");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                String name = file3.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (!StringsKt.contains$default((CharSequence) name, (CharSequence) "rootfs", false, 2, (Object) null) || !filesystem.isCreatedFromBackup()) {
                    File file4 = new File(file2.getAbsolutePath() + "/" + file3.getName());
                    Intrinsics.checkNotNull(file3);
                    FilesKt.copyTo$default(file3, file4, true, 0, 4, null);
                    UlaFiles ulaFiles = this.ulaFiles;
                    String absolutePath = file2.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                    String name2 = file3.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    ulaFiles.makePermissionsUsable(absolutePath, name2);
                }
            }
        }
    }

    public final void removeRootfsFilesFromFilesystem(String targetFilesystemName) {
        Intrinsics.checkNotNullParameter(targetFilesystemName, "targetFilesystemName");
        for (File file : FilesKt.walkBottomUp(new File(getSupportDirectoryPath(targetFilesystemName)))) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt.contains$default((CharSequence) name, (CharSequence) "rootfs.tar.gz", false, 2, (Object) null)) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.FilesystemManager$extractFilesystem$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FilesystemManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/utils/ExecutionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.FilesystemManager$extractFilesystem$2", f = "FilesystemManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02792 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ExecutionResult>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        final /* synthetic */ Function1<String, Object> $listener;
        int label;
        final /* synthetic */ FilesystemManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02792(Filesystem filesystem, FilesystemManager filesystemManager, Function1<? super String, ? extends Object> function1, Continuation<? super C02792> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
            this.this$0 = filesystemManager;
            this.$listener = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02792(this.$filesystem, this.this$0, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ExecutionResult> continuation) {
            return ((C02792) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(this.$filesystem.getId());
            HashMap map = new HashMap();
            HashMap map2 = map;
            map2.put("INITIAL_USERNAME", this.$filesystem.getDefaultUsername());
            map2.put("INITIAL_PASSWORD", this.$filesystem.getDefaultPassword());
            map2.put("INITIAL_VNC_PASSWORD", this.$filesystem.getDefaultVncPassword());
            map2.put("EXCLUDE_SUPPORT", "--exclude support");
            return BusyboxExecutor.executeProotCommand$default(this.this$0.busyboxExecutor, "/support/common/extractFilesystem.sh", strValueOf, true, map, this.$listener, null, 32, null);
        }
    }

    public final Object extractFilesystem(Filesystem filesystem, Function1<? super String, ? extends Object> function1, Continuation<? super ExecutionResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C02792(filesystem, this, function1, null), continuation);
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.FilesystemManager$compressFilesystem$2, reason: invalid class name */
    /* JADX INFO: compiled from: FilesystemManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Ltech/ula/library/utils/ExecutionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.FilesystemManager$compressFilesystem$2", f = "FilesystemManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ExecutionResult>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        final /* synthetic */ Function1<String, Object> $listener;
        final /* synthetic */ File $scopedExternalDestination;
        int label;
        final /* synthetic */ FilesystemManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Filesystem filesystem, File file, FilesystemManager filesystemManager, Function1<? super String, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
            this.$scopedExternalDestination = file;
            this.this$0 = filesystemManager;
            this.$listener = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$filesystem, this.$scopedExternalDestination, this.this$0, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ExecutionResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(this.$filesystem.getId());
            HashMap map = new HashMap();
            HashMap map2 = map;
            String absolutePath = this.$scopedExternalDestination.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            map2.put("TAR_PATH", absolutePath);
            map2.put("EXCLUDE_SUPPORT", "--exclude support");
            return BusyboxExecutor.executeProotCommand$default(this.this$0.busyboxExecutor, "/support/common/compressFilesystem.sh", strValueOf, true, map, this.$listener, null, 32, null);
        }
    }

    public final Object compressFilesystem(Filesystem filesystem, File file, Function1<? super String, ? extends Object> function1, Continuation<? super ExecutionResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(filesystem, file, this, function1, null), continuation);
    }

    public final boolean isExtractionComplete(String targetDirectoryName) {
        Intrinsics.checkNotNullParameter(targetDirectoryName, "targetDirectoryName");
        String supportDirectoryPath = getSupportDirectoryPath(targetDirectoryName);
        return new File(new StringBuilder().append(supportDirectoryPath).append("/").append(this.filesystemExtractionSuccess).toString()).exists() || new File(new StringBuilder().append(supportDirectoryPath).append("/").append(this.filesystemExtractionFailure).toString()).exists();
    }

    public final boolean hasFilesystemBeenSuccessfullyExtracted(String targetDirectoryName) {
        Intrinsics.checkNotNullParameter(targetDirectoryName, "targetDirectoryName");
        return new File(getSupportDirectoryPath(targetDirectoryName) + "/" + this.filesystemExtractionSuccess).exists();
    }

    public final boolean areAllRequiredAssetsPresent(String targetDirectoryName, List<Asset> distributionAssetList) {
        File[] fileArrListFiles;
        Intrinsics.checkNotNullParameter(targetDirectoryName, "targetDirectoryName");
        Intrinsics.checkNotNullParameter(distributionAssetList, "distributionAssetList");
        File file = new File(getSupportDirectoryPath(targetDirectoryName));
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file2 : fileArrListFiles) {
            arrayList.add(file2.getName());
        }
        ArrayList arrayList2 = arrayList;
        List<Asset> list = distributionAssetList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!arrayList2.contains(((Asset) it.next()).getName())) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: tech.ula.library.utils.FilesystemManager$deleteFilesystem$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FilesystemManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.utils.FilesystemManager$deleteFilesystem$2", f = "FilesystemManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02782 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $filesystemId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02782(long j, Continuation<? super C02782> continuation) {
            super(2, continuation);
            this.$filesystemId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemManager.this.new C02782(this.$filesystemId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02782) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                File file = new File(FilesystemManager.this.filesDirPath + "/" + this.$filesystemId);
                if (!file.exists() || !file.isDirectory()) {
                    return Unit.INSTANCE;
                }
                if (BusyboxExecutor.executeScript$default(FilesystemManager.this.busyboxExecutor, "support/deleteFilesystem.sh " + file.getPath(), null, 2, null) instanceof FailedExecution) {
                    IOException iOException = new IOException();
                    FilesystemManager.this.logger.addExceptionBreadcrumb(iOException);
                    throw iOException;
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object deleteFilesystem(long j, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02782(j, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final void moveAppScriptToRequiredLocation(String appName, Filesystem appFilesystem) throws IOException {
        Intrinsics.checkNotNullParameter(appName, "appName");
        Intrinsics.checkNotNullParameter(appFilesystem, "appFilesystem");
        File file = new File(this.filesDirPath + "/apps/" + appName + "/" + appName + ".sh");
        File file2 = new File(this.filesDirPath + "/" + appFilesystem.getId() + "/etc/profile.d");
        File file3 = new File(file2 + "/zzzzzzzzzzzzzzzz.sh");
        try {
            file2.mkdirs();
            FilesKt.copyTo$default(file, file3, true, 0, 4, null);
        } catch (Exception unused) {
            IOException iOException = new IOException();
            this.logger.addExceptionBreadcrumb(iOException);
            throw iOException;
        }
    }
}
