package com.google.mlkit.md.camera;

import android.os.SystemClock;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.mlkit.md.CameraInputInfo;
import com.google.mlkit.md.InputInfo;
import com.google.mlkit.md.ScopedExecutor;
import com.google.mlkit.md.TaskExtKt;
import com.google.mlkit.vision.common.InputImage;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: FrameProcessorBase.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 !*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001!B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00020\u000fH$J\u0014\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H$J%\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u001aH$¢\u0006\u0002\u0010\u001bJ \u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010 \u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/google/mlkit/md/camera/FrameProcessorBase;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/google/mlkit/md/camera/FrameProcessor;", "()V", "executor", "Lcom/google/mlkit/md/ScopedExecutor;", "latestFrame", "Ljava/nio/ByteBuffer;", "latestFrameMetaData", "Lcom/google/mlkit/md/camera/FrameMetadata;", "processingFrame", "processingFrameMetaData", "detectInImage", "Lcom/google/android/gms/tasks/Task;", "image", "Lcom/google/mlkit/vision/common/InputImage;", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "inputInfo", "Lcom/google/mlkit/md/InputInfo;", "results", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "(Lcom/google/mlkit/md/InputInfo;Ljava/lang/Object;Lcom/google/mlkit/md/camera/GraphicOverlay;)V", "process", "data", "frameMetadata", "processLatestFrame", "stop", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class FrameProcessorBase<T> implements FrameProcessor {
    private static final String TAG = "FrameProcessorBase";
    private final ScopedExecutor executor;
    private ByteBuffer latestFrame;
    private FrameMetadata latestFrameMetaData;
    private ByteBuffer processingFrame;
    private FrameMetadata processingFrameMetaData;

    protected abstract Task<T> detectInImage(InputImage image);

    protected abstract void onFailure(Exception e);

    protected abstract void onSuccess(InputInfo inputInfo, T results, GraphicOverlay graphicOverlay);

    public FrameProcessorBase() {
        Executor MAIN_THREAD = TaskExecutors.MAIN_THREAD;
        Intrinsics.checkNotNullExpressionValue(MAIN_THREAD, "MAIN_THREAD");
        this.executor = new ScopedExecutor(MAIN_THREAD);
    }

    @Override // com.google.mlkit.md.camera.FrameProcessor
    public synchronized void process(ByteBuffer data, FrameMetadata frameMetadata, GraphicOverlay graphicOverlay) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        Intrinsics.checkNotNullParameter(graphicOverlay, "graphicOverlay");
        this.latestFrame = data;
        this.latestFrameMetaData = frameMetadata;
        if (this.processingFrame == null && this.processingFrameMetaData == null) {
            processLatestFrame(graphicOverlay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void processLatestFrame(final GraphicOverlay graphicOverlay) {
        final ByteBuffer byteBuffer = this.latestFrame;
        this.processingFrame = byteBuffer;
        final FrameMetadata frameMetadata = this.latestFrameMetaData;
        this.processingFrameMetaData = frameMetadata;
        this.latestFrame = null;
        this.latestFrameMetaData = null;
        if (byteBuffer == null) {
            return;
        }
        if (frameMetadata == null) {
            return;
        }
        InputImage inputImageFromByteBuffer = InputImage.fromByteBuffer(byteBuffer, frameMetadata.getWidth(), frameMetadata.getHeight(), frameMetadata.getRotation(), 17);
        Intrinsics.checkNotNullExpressionValue(inputImageFromByteBuffer, "fromByteBuffer(...)");
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        TaskExtKt.addOnFailureListener(TaskExtKt.addOnSuccessListener(detectInImage(inputImageFromByteBuffer), this.executor, new Function1<T, Unit>() { // from class: com.google.mlkit.md.camera.FrameProcessorBase.processLatestFrame.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(T t) {
                Log.d(FrameProcessorBase.TAG, "Latency is: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                this.onSuccess(new CameraInputInfo(byteBuffer, frameMetadata), t, graphicOverlay);
                this.processLatestFrame(graphicOverlay);
            }
        }), this.executor, new AnonymousClass2(this));
    }

    /* JADX INFO: renamed from: com.google.mlkit.md.camera.FrameProcessorBase$processLatestFrame$2, reason: invalid class name */
    /* JADX INFO: compiled from: FrameProcessorBase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    static final class AnonymousClass2 extends Lambda implements Function1<Exception, Unit> {
        final /* synthetic */ FrameProcessorBase<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(FrameProcessorBase<T> frameProcessorBase) {
            super(1);
            this.this$0 = frameProcessorBase;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(FrameProcessorBase this$0, Exception it) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "it");
            this$0.onFailure(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Exception exc) {
            invoke2(exc);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            final FrameProcessorBase<T> frameProcessorBase = this.this$0;
            new OnFailureListener() { // from class: com.google.mlkit.md.camera.FrameProcessorBase$processLatestFrame$2$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    FrameProcessorBase.AnonymousClass2.invoke$lambda$0(frameProcessorBase, exc);
                }
            };
        }
    }

    @Override // com.google.mlkit.md.camera.FrameProcessor
    public void stop() {
        this.executor.shutdown();
    }
}
