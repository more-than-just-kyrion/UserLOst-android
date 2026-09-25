package com.google.mlkit.md.camera;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.google.mlkit.md.objectdetection.DetectedObjectInfo;
import com.google.mlkit.vision.barcode.common.Barcode;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WorkflowModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/google/mlkit/md/camera/WorkflowModel;", "Landroidx/lifecycle/AndroidViewModel;", "application", "Landroid/app/Application;", "(Landroid/app/Application;)V", "confirmedObject", "Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "detectedBarcode", "Landroidx/lifecycle/MutableLiveData;", "Lcom/google/mlkit/vision/barcode/common/Barcode;", "getDetectedBarcode", "()Landroidx/lifecycle/MutableLiveData;", "<set-?>", "", "isCameraLive", "()Z", "objectIdsToSearch", "Ljava/util/HashSet;", "", "workflowState", "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;", "getWorkflowState", "markCameraFrozen", "", "markCameraLive", "setWorkflowState", "WorkflowState", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WorkflowModel extends AndroidViewModel {
    private DetectedObjectInfo confirmedObject;
    private final MutableLiveData<Barcode> detectedBarcode;
    private boolean isCameraLive;
    private final HashSet<Integer> objectIdsToSearch;
    private final MutableLiveData<WorkflowState> workflowState;

    /* JADX INFO: compiled from: WorkflowModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;", "", "(Ljava/lang/String;I)V", "NOT_STARTED", "DETECTING", "DETECTED", "CONFIRMING", "CONFIRMED", "SEARCHING", "SEARCHED", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum WorkflowState {
        NOT_STARTED,
        DETECTING,
        DETECTED,
        CONFIRMING,
        CONFIRMED,
        SEARCHING,
        SEARCHED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<WorkflowState> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkflowModel(Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, "application");
        this.workflowState = new MutableLiveData<>();
        this.detectedBarcode = new MutableLiveData<>();
        this.objectIdsToSearch = new HashSet<>();
    }

    public final MutableLiveData<WorkflowState> getWorkflowState() {
        return this.workflowState;
    }

    public final MutableLiveData<Barcode> getDetectedBarcode() {
        return this.detectedBarcode;
    }

    /* JADX INFO: renamed from: isCameraLive, reason: from getter */
    public final boolean getIsCameraLive() {
        return this.isCameraLive;
    }

    private final Context getContext() {
        Context applicationContext = getApplication().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return applicationContext;
    }

    public final void setWorkflowState(WorkflowState workflowState) {
        Intrinsics.checkNotNullParameter(workflowState, "workflowState");
        if (workflowState != WorkflowState.CONFIRMED && workflowState != WorkflowState.SEARCHING && workflowState != WorkflowState.SEARCHED) {
            this.confirmedObject = null;
        }
        this.workflowState.setValue(workflowState);
    }

    public final void markCameraLive() {
        this.isCameraLive = true;
        this.objectIdsToSearch.clear();
    }

    public final void markCameraFrozen() {
        this.isCameraLive = false;
    }
}
