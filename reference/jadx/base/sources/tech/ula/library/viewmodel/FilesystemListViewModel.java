package tech.ula.library.viewmodel;

import android.content.ContentResolver;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.R;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.SessionDao;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.entities.Session;
import tech.ula.library.utils.ExecutionResult;
import tech.ula.library.utils.FailedExecution;
import tech.ula.library.utils.FilesystemManager;

/* JADX INFO: compiled from: FilesystemListViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0082@¢\u0006\u0002\u0010,J\u0018\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\b\b\u0002\u00101\u001a\u00020\u0002J\u0012\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000bJ\u0012\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\f0\u000bJ\u000e\u00104\u001a\u00020\u00182\u0006\u00105\u001a\u00020\u001bJ\f\u00106\u001a\b\u0012\u0004\u0012\u00020$0\u000bJ\u0018\u00107\u001a\u0002082\u0006\u00109\u001a\u00020'2\u0006\u0010:\u001a\u00020;H\u0002J\b\u0010<\u001a\u00020\u0019H\u0014J\u000e\u0010=\u001a\u00020\u00192\u0006\u00105\u001a\u00020\u001bJ(\u0010>\u001a\u00020.2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u00101\u001a\u00020\u0002R'\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R'\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\f0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0011\u001a\u0004\b\u001d\u0010\u000fR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemListViewModel;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/CoroutineScope;", "filesystemDao", "Ltech/ula/library/model/daos/FilesystemDao;", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "filesystemManager", "Ltech/ula/library/utils/FilesystemManager;", "(Ltech/ula/library/model/daos/FilesystemDao;Ltech/ula/library/model/daos/SessionDao;Ltech/ula/library/utils/FilesystemManager;)V", "activeSessions", "Landroidx/lifecycle/LiveData;", "", "Ltech/ula/library/model/entities/Session;", "getActiveSessions", "()Landroidx/lifecycle/LiveData;", "activeSessions$delegate", "Lkotlin/Lazy;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "exportUpdateListener", "Lkotlin/Function1;", "", "", "filesystemToBackup", "Ltech/ula/library/model/entities/Filesystem;", "filesystems", "getFilesystems", "filesystems$delegate", "job", "Lkotlinx/coroutines/CompletableJob;", "unselectedFilesystem", "viewState", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/viewmodel/FilesystemListViewState;", "compressFilesystemAndExportToStorage", "filesDir", "Ljava/io/File;", "publicExternalUri", "Landroid/net/Uri;", "contentResolver", "Landroid/content/ContentResolver;", "(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteFilesystemById", "Lkotlinx/coroutines/Job;", "id", "", "coroutineScope", "getAllActiveSessions", "getAllFilesystems", "getFilesystemBackupName", "filesystem", "getViewState", "localBackupFailed", "", "localBackup", "result", "Ltech/ula/library/utils/ExecutionResult;", "onCleared", "setFilesystemToBackup", "startExport", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemListViewModel extends ViewModel implements CoroutineScope {

    /* JADX INFO: renamed from: activeSessions$delegate, reason: from kotlin metadata */
    private final Lazy activeSessions;
    private final Function1<String, Unit> exportUpdateListener;
    private final FilesystemDao filesystemDao;
    private final FilesystemManager filesystemManager;
    private Filesystem filesystemToBackup;

    /* JADX INFO: renamed from: filesystems$delegate, reason: from kotlin metadata */
    private final Lazy filesystems;
    private final CompletableJob job;
    private final SessionDao sessionDao;
    private final Filesystem unselectedFilesystem;
    private final MutableLiveData<FilesystemListViewState> viewState;

    public FilesystemListViewModel(FilesystemDao filesystemDao, SessionDao sessionDao, FilesystemManager filesystemManager) {
        Intrinsics.checkNotNullParameter(filesystemDao, "filesystemDao");
        Intrinsics.checkNotNullParameter(sessionDao, "sessionDao");
        Intrinsics.checkNotNullParameter(filesystemManager, "filesystemManager");
        this.filesystemDao = filesystemDao;
        this.sessionDao = sessionDao;
        this.filesystemManager = filesystemManager;
        this.job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.viewState = new MutableLiveData<>();
        this.exportUpdateListener = new Function1<String, Unit>() { // from class: tech.ula.library.viewmodel.FilesystemListViewModel$exportUpdateListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String details) {
                Intrinsics.checkNotNullParameter(details, "details");
                this.this$0.viewState.postValue(new FilesystemExportState.Update(details));
            }
        };
        Filesystem filesystem = new Filesystem(-1L, "UNSELECTED", null, null, null, null, null, null, false, null, false, false, false, false, null, 32764, null);
        this.unselectedFilesystem = filesystem;
        this.filesystemToBackup = filesystem;
        this.filesystems = LazyKt.lazy(new Function0<LiveData<List<? extends Filesystem>>>() { // from class: tech.ula.library.viewmodel.FilesystemListViewModel$filesystems$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends Filesystem>> invoke() {
                return this.this$0.filesystemDao.getAllFilesystems();
            }
        });
        this.activeSessions = LazyKt.lazy(new Function0<LiveData<List<? extends Session>>>() { // from class: tech.ula.library.viewmodel.FilesystemListViewModel$activeSessions$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LiveData<List<? extends Session>> invoke() {
                return this.this$0.sessionDao.findActiveSessions();
            }
        });
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return Dispatchers.getMain().plus(this.job);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        Job.DefaultImpls.cancel$default((Job) this.job, (CancellationException) null, 1, (Object) null);
        super.onCleared();
    }

    public final void setFilesystemToBackup(Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        this.filesystemToBackup = filesystem;
    }

    public final LiveData<FilesystemListViewState> getViewState() {
        return this.viewState;
    }

    private final LiveData<List<Filesystem>> getFilesystems() {
        return (LiveData) this.filesystems.getValue();
    }

    public final LiveData<List<Filesystem>> getAllFilesystems() {
        return getFilesystems();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LiveData<List<Session>> getActiveSessions() {
        return (LiveData) this.activeSessions.getValue();
    }

    public final LiveData<List<Session>> getAllActiveSessions() {
        return getActiveSessions();
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemListViewModel$deleteFilesystemById$1, reason: invalid class name */
    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemListViewModel$deleteFilesystemById$1", f = "FilesystemListViewModel.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$id = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemListViewModel.this.new AnonymousClass1(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemListViewModel$deleteFilesystemById$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FilesystemListViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemListViewModel$deleteFilesystemById$1$1", f = "FilesystemListViewModel.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
        static final class C00591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ long $id;
            int label;
            final /* synthetic */ FilesystemListViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00591(FilesystemListViewModel filesystemListViewModel, long j, Continuation<? super C00591> continuation) {
                super(2, continuation);
                this.this$0 = filesystemListViewModel;
                this.$id = j;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00591(this.this$0, this.$id, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.this$0.viewState.postValue(FilesystemDeleteState.InProgress.INSTANCE);
                        this.label = 1;
                        if (this.this$0.filesystemManager.deleteFilesystem(this.$id, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    this.this$0.filesystemDao.deleteFilesystemById(this.$id);
                    this.this$0.viewState.postValue(FilesystemDeleteState.Success.INSTANCE);
                    return Unit.INSTANCE;
                } catch (IOException unused) {
                    this.this$0.viewState.postValue(FilesystemDeleteState.Failure.INSTANCE);
                    return Unit.INSTANCE;
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new C00591(FilesystemListViewModel.this, this.$id, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Job deleteFilesystemById$default(FilesystemListViewModel filesystemListViewModel, long j, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineScope = filesystemListViewModel;
        }
        return filesystemListViewModel.deleteFilesystemById(j, coroutineScope);
    }

    public final Job deleteFilesystemById(long id, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(id, null), 3, null);
    }

    public final String getFilesystemBackupName(Filesystem filesystem) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        String distributionType = filesystem.getDistributionType();
        if (!filesystem.getFlavor().equals("default")) {
            distributionType = distributionType + "_" + filesystem.getFlavor();
        }
        return filesystem.getName() + "-" + distributionType + "-rootfs.tar.gz";
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemListViewModel$startExport$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemListViewModel$startExport$1", f = "FilesystemListViewModel.kt", i = {}, l = {CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA}, m = "invokeSuspend", n = {}, s = {})
    static final class C02941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ContentResolver $contentResolver;
        final /* synthetic */ File $filesDir;
        final /* synthetic */ Uri $publicExternalUri;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02941(File file, Uri uri, ContentResolver contentResolver, Continuation<? super C02941> continuation) {
            super(2, continuation);
            this.$filesDir = file;
            this.$publicExternalUri = uri;
            this.$contentResolver = contentResolver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemListViewModel.this.new C02941(this.$filesDir, this.$publicExternalUri, this.$contentResolver, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object value = FilesystemListViewModel.this.getActiveSessions().getValue();
                Intrinsics.checkNotNull(value);
                if (((Collection) value).isEmpty()) {
                    if (!Intrinsics.areEqual(FilesystemListViewModel.this.filesystemToBackup, FilesystemListViewModel.this.unselectedFilesystem)) {
                        this.label = 1;
                        if (FilesystemListViewModel.this.compressFilesystemAndExportToStorage(this.$filesDir, this.$publicExternalUri, this.$contentResolver, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        FilesystemListViewModel.this.viewState.postValue(new FilesystemExportState.Failure(R.string.error_export_filesystem_not_found, null, 2, null));
                        return Unit.INSTANCE;
                    }
                } else {
                    FilesystemListViewModel.this.viewState.postValue(new FilesystemExportState.Failure(R.string.deactivate_sessions, null, 2, null));
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Job startExport$default(FilesystemListViewModel filesystemListViewModel, File file, Uri uri, ContentResolver contentResolver, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 8) != 0) {
            coroutineScope = filesystemListViewModel;
        }
        return filesystemListViewModel.startExport(file, uri, contentResolver, coroutineScope);
    }

    public final Job startExport(File filesDir, Uri publicExternalUri, ContentResolver contentResolver, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(publicExternalUri, "publicExternalUri");
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02941(filesDir, publicExternalUri, contentResolver, null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemListViewModel$compressFilesystemAndExportToStorage$2, reason: invalid class name */
    /* JADX INFO: compiled from: FilesystemListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemListViewModel$compressFilesystemAndExportToStorage$2", f = "FilesystemListViewModel.kt", i = {0}, l = {CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA}, m = "invokeSuspend", n = {"localBackup"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ContentResolver $contentResolver;
        final /* synthetic */ File $filesDir;
        final /* synthetic */ Uri $publicExternalUri;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(File file, ContentResolver contentResolver, Uri uri, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$filesDir = file;
            this.$contentResolver = contentResolver;
            this.$publicExternalUri = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemListViewModel.this.new AnonymousClass2(this.$filesDir, this.$contentResolver, this.$publicExternalUri, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            File file;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FilesystemListViewModel.this.viewState.postValue(new FilesystemExportState.Update("Starting export"));
                FilesystemListViewModel filesystemListViewModel = FilesystemListViewModel.this;
                File file2 = new File(this.$filesDir, filesystemListViewModel.getFilesystemBackupName(filesystemListViewModel.filesystemToBackup));
                this.L$0 = file2;
                this.label = 1;
                obj = FilesystemListViewModel.this.filesystemManager.compressFilesystem(FilesystemListViewModel.this.filesystemToBackup, file2, FilesystemListViewModel.this.exportUpdateListener, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                file = file2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                file = (File) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            if (FilesystemListViewModel.this.localBackupFailed(file, (ExecutionResult) obj)) {
                return Unit.INSTANCE;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    FileInputStream fileInputStream2 = fileInputStream;
                    OutputStream outputStreamOpenOutputStream = this.$contentResolver.openOutputStream(this.$publicExternalUri, "w");
                    if (outputStreamOpenOutputStream != null) {
                        OutputStream outputStream = outputStreamOpenOutputStream;
                        try {
                            OutputStream outputStream2 = outputStream;
                            Intrinsics.checkNotNull(outputStream2);
                            Boxing.boxLong(ByteStreamsKt.copyTo$default(fileInputStream2, outputStream2, 0, 2, null));
                            CloseableKt.closeFinally(outputStream, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(outputStream, th);
                                throw th2;
                            }
                        }
                    }
                    CloseableKt.closeFinally(fileInputStream, null);
                    FilesystemListViewModel filesystemListViewModel2 = FilesystemListViewModel.this;
                    filesystemListViewModel2.filesystemToBackup = filesystemListViewModel2.unselectedFilesystem;
                    file.delete();
                    FilesystemListViewModel.this.viewState.postValue(FilesystemExportState.Success.INSTANCE);
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(fileInputStream, th3);
                        throw th4;
                    }
                }
            } catch (Exception unused) {
                FilesystemListViewModel filesystemListViewModel3 = FilesystemListViewModel.this;
                filesystemListViewModel3.filesystemToBackup = filesystemListViewModel3.unselectedFilesystem;
                FilesystemListViewModel.this.viewState.postValue(new FilesystemExportState.Failure(R.string.error_export_copy_public_external_failure, null, 2, null));
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object compressFilesystemAndExportToStorage(File file, Uri uri, ContentResolver contentResolver, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(file, contentResolver, uri, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean localBackupFailed(File localBackup, ExecutionResult result) {
        if (result instanceof FailedExecution) {
            this.filesystemToBackup = this.unselectedFilesystem;
            this.viewState.postValue(new FilesystemExportState.Failure(R.string.error_export_execution_failure, ((FailedExecution) result).getReason()));
            return true;
        }
        if (localBackup.exists() && localBackup.length() > 0) {
            return false;
        }
        this.filesystemToBackup = this.unselectedFilesystem;
        this.viewState.postValue(new FilesystemExportState.Failure(R.string.error_export_local_failure, null, 2, null));
        return true;
    }
}
