package tech.ula.library.viewmodel;

import android.content.ContentResolver;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import tech.ula.library.model.entities.Filesystem;
import tech.ula.library.model.repositories.UlaDatabase;

/* JADX INFO: compiled from: FilesystemEditViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u0002J(\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010\u001b\u001a\u00020\u0002J\b\u0010!\u001a\u00020\"H\u0014J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u0002R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Ltech/ula/library/viewmodel/FilesystemEditViewModel;", "Landroidx/lifecycle/ViewModel;", "Lkotlinx/coroutines/CoroutineScope;", "ulaDatabase", "Ltech/ula/library/model/repositories/UlaDatabase;", "(Ltech/ula/library/model/repositories/UlaDatabase;)V", "backupUri", "Landroid/net/Uri;", "getBackupUri", "()Landroid/net/Uri;", "setBackupUri", "(Landroid/net/Uri;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "importStatusLiveData", "Landroidx/lifecycle/MutableLiveData;", "Ltech/ula/library/viewmodel/FilesystemImportStatus;", "job", "Lkotlinx/coroutines/CompletableJob;", "getImportStatusLiveData", "Landroidx/lifecycle/LiveData;", "insertFilesystem", "Lkotlinx/coroutines/Job;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "coroutineScope", "insertFilesystemFromBackup", "contentResolver", "Landroid/content/ContentResolver;", "filesDir", "Ljava/io/File;", "onCleared", "", "updateFilesystem", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemEditViewModel extends ViewModel implements CoroutineScope {
    private Uri backupUri;
    private final MutableLiveData<FilesystemImportStatus> importStatusLiveData;
    private final CompletableJob job;
    private final UlaDatabase ulaDatabase;

    public FilesystemEditViewModel(UlaDatabase ulaDatabase) {
        Intrinsics.checkNotNullParameter(ulaDatabase, "ulaDatabase");
        this.ulaDatabase = ulaDatabase;
        this.job = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.importStatusLiveData = new MutableLiveData<>();
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

    public final Uri getBackupUri() {
        return this.backupUri;
    }

    public final void setBackupUri(Uri uri) {
        this.backupUri = uri;
    }

    public final LiveData<FilesystemImportStatus> getImportStatusLiveData() {
        return this.importStatusLiveData;
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystem$1, reason: invalid class name */
    /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystem$1", f = "FilesystemEditViewModel.kt", i = {}, l = {42}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Filesystem filesystem, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemEditViewModel.this.new AnonymousClass1(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystem$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystem$1$1", f = "FilesystemEditViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Filesystem $filesystem;
            int label;
            final /* synthetic */ FilesystemEditViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00561(FilesystemEditViewModel filesystemEditViewModel, Filesystem filesystem, Continuation<? super C00561> continuation) {
                super(2, continuation);
                this.this$0 = filesystemEditViewModel;
                this.$filesystem = filesystem;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00561(this.this$0, this.$filesystem, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.ulaDatabase.filesystemDao().insertFilesystem(this.$filesystem);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new C00561(FilesystemEditViewModel.this, this.$filesystem, null), this) == coroutine_suspended) {
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

    public static /* synthetic */ Job insertFilesystem$default(FilesystemEditViewModel filesystemEditViewModel, Filesystem filesystem, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineScope = filesystemEditViewModel;
        }
        return filesystemEditViewModel.insertFilesystem(filesystem, coroutineScope);
    }

    public final Job insertFilesystem(Filesystem filesystem, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(filesystem, null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystemFromBackup$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystemFromBackup$1", f = "FilesystemEditViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    static final class C02921 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ContentResolver $contentResolver;
        final /* synthetic */ File $filesDir;
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02921(Filesystem filesystem, File file, ContentResolver contentResolver, Continuation<? super C02921> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
            this.$filesDir = file;
            this.$contentResolver = contentResolver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemEditViewModel.this.new C02921(this.$filesystem, this.$filesDir, this.$contentResolver, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02921) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystemFromBackup$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$insertFilesystemFromBackup$1$1", f = "FilesystemEditViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ ContentResolver $contentResolver;
            final /* synthetic */ File $filesDir;
            final /* synthetic */ Filesystem $filesystem;
            int label;
            final /* synthetic */ FilesystemEditViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00571(FilesystemEditViewModel filesystemEditViewModel, Filesystem filesystem, File file, ContentResolver contentResolver, Continuation<? super C00571> continuation) {
                super(2, continuation);
                this.this$0 = filesystemEditViewModel;
                this.$filesystem = filesystem;
                this.$filesDir = file;
                this.$contentResolver = contentResolver;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00571(this.this$0, this.$filesystem, this.$filesDir, this.$contentResolver, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (this.this$0.getBackupUri() == null) {
                    this.this$0.importStatusLiveData.postValue(UriUnselected.INSTANCE);
                    return Unit.INSTANCE;
                }
                String name = this.$filesystem.getName();
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                String lowerCase = name.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (Intrinsics.areEqual(lowerCase, "apps")) {
                    this.$filesystem.setAppsFilesystem(true);
                }
                this.$filesystem.setCreatedFromBackup(true);
                this.$filesystem.setProtected(false);
                long jInsertFilesystem = this.this$0.ulaDatabase.filesystemDao().insertFilesystem(this.$filesystem);
                try {
                    File file = new File(this.$filesDir.getAbsolutePath() + "/" + jInsertFilesystem + "/support");
                    file.mkdirs();
                    File file2 = new File(file.getAbsolutePath() + "/rootfs.tar.gz");
                    ContentResolver contentResolver = this.$contentResolver;
                    Uri backupUri = this.this$0.getBackupUri();
                    Intrinsics.checkNotNull(backupUri);
                    InputStream inputStreamOpenInputStream = contentResolver.openInputStream(backupUri);
                    if (inputStreamOpenInputStream == null) {
                        this.this$0.ulaDatabase.filesystemDao().deleteFilesystemById(jInsertFilesystem);
                        this.this$0.importStatusLiveData.postValue(new ImportFailure("Could not open input stream"));
                        return Unit.INSTANCE;
                    }
                    InputStream inputStream = inputStreamOpenInputStream;
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        try {
                            ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                            CloseableKt.closeFinally(fileOutputStream, null);
                            CloseableKt.closeFinally(inputStream, null);
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
                            CloseableKt.closeFinally(inputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Exception e) {
                    this.this$0.ulaDatabase.filesystemDao().deleteFilesystemById(jInsertFilesystem);
                    this.this$0.importStatusLiveData.postValue(new ImportFailure(e.toString()));
                }
                this.this$0.setBackupUri(null);
                this.this$0.importStatusLiveData.postValue(ImportSuccess.INSTANCE);
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new C00571(FilesystemEditViewModel.this, this.$filesystem, this.$filesDir, this.$contentResolver, null), this) == coroutine_suspended) {
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

    public static /* synthetic */ Job insertFilesystemFromBackup$default(FilesystemEditViewModel filesystemEditViewModel, ContentResolver contentResolver, Filesystem filesystem, File file, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 8) != 0) {
            coroutineScope = filesystemEditViewModel;
        }
        return filesystemEditViewModel.insertFilesystemFromBackup(contentResolver, filesystem, file, coroutineScope);
    }

    public final Job insertFilesystemFromBackup(ContentResolver contentResolver, Filesystem filesystem, File filesDir, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02921(filesystem, filesDir, contentResolver, null), 3, null);
    }

    /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$updateFilesystem$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$updateFilesystem$1", f = "FilesystemEditViewModel.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    static final class C02931 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Filesystem $filesystem;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02931(Filesystem filesystem, Continuation<? super C02931> continuation) {
            super(2, continuation);
            this.$filesystem = filesystem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FilesystemEditViewModel.this.new C02931(this.$filesystem, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02931) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: tech.ula.library.viewmodel.FilesystemEditViewModel$updateFilesystem$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FilesystemEditViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "tech.ula.library.viewmodel.FilesystemEditViewModel$updateFilesystem$1$1", f = "FilesystemEditViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Filesystem $filesystem;
            int label;
            final /* synthetic */ FilesystemEditViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00581(FilesystemEditViewModel filesystemEditViewModel, Filesystem filesystem, Continuation<? super C00581> continuation) {
                super(2, continuation);
                this.this$0 = filesystemEditViewModel;
                this.$filesystem = filesystem;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00581(this.this$0, this.$filesystem, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0.ulaDatabase.filesystemDao().updateFilesystem(this.$filesystem);
                    this.this$0.ulaDatabase.sessionDao().updateFilesystemNamesForAllSessions();
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new C00581(FilesystemEditViewModel.this, this.$filesystem, null), this) == coroutine_suspended) {
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

    public static /* synthetic */ Job updateFilesystem$default(FilesystemEditViewModel filesystemEditViewModel, Filesystem filesystem, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineScope = filesystemEditViewModel;
        }
        return filesystemEditViewModel.updateFilesystem(filesystem, coroutineScope);
    }

    public final Job updateFilesystem(Filesystem filesystem, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02931(filesystem, null), 3, null);
    }
}
