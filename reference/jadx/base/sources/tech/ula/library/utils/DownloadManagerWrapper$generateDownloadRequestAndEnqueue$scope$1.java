package tech.ula.library.utils;

import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import tech.ula.library.MainActivity;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.utils.DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1", f = "AssetDownloader.kt", i = {0}, l = {287, 290}, m = "invokeSuspend", n = {"httpStream"}, s = {"L$0"})
final class DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ File $destination;
    final /* synthetic */ long $index;
    final /* synthetic */ String $url;
    Object L$0;
    int label;
    final /* synthetic */ DownloadManagerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1(DownloadManagerWrapper downloadManagerWrapper, long j, String str, File file, Continuation<? super DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerWrapper;
        this.$index = j;
        this.$url = str;
        this.$destination = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1(this.this$0, this.$index, this.$url, this.$destination, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HttpStream httpStream;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    httpStream = (HttpStream) this.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.downloadQueue.put(Boxing.boxLong(this.$index), Boxing.boxInt(this.this$0.SUCCESS));
                MainActivity mainActivity = this.this$0.activity;
                final DownloadManagerWrapper downloadManagerWrapper = this.this$0;
                final long j = this.$index;
                mainActivity.runOnUiThread(new Runnable() { // from class: tech.ula.library.utils.DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1.invokeSuspend$lambda$0(downloadManagerWrapper, j);
                    }
                });
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            httpStream = new HttpStream();
            this.L$0 = httpStream;
            this.label = 1;
            if (DelayKt.delay(1L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.downloadQueue.put(Boxing.boxLong(this.$index), Boxing.boxInt(this.this$0.START));
            this.L$0 = null;
            this.label = 2;
            if (httpStream.toFile(this.$url, this.$destination, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.downloadQueue.put(Boxing.boxLong(this.$index), Boxing.boxInt(this.this$0.SUCCESS));
            MainActivity mainActivity2 = this.this$0.activity;
            final DownloadManagerWrapper downloadManagerWrapper2 = this.this$0;
            final long j2 = this.$index;
            mainActivity2.runOnUiThread(new Runnable() { // from class: tech.ula.library.utils.DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadManagerWrapper$generateDownloadRequestAndEnqueue$scope$1.invokeSuspend$lambda$0(downloadManagerWrapper2, j2);
                }
            });
            return Unit.INSTANCE;
        } catch (Exception unused) {
            this.this$0.downloadQueue.put(Boxing.boxLong(this.$index), Boxing.boxInt(this.this$0.FAIL));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(DownloadManagerWrapper downloadManagerWrapper, long j) {
        downloadManagerWrapper.activity.getViewModel().submitCompletedDownloadId(j);
    }
}
