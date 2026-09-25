package com.google.mlkit.md;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TaskExt.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u001a>\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0001\u0012\u0004\u0012\u00020\u00070\t\u001a<\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u00060\u000bj\u0002`\f\u0012\u0004\u0012\u00020\u00070\t\u001a8\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\t¨\u0006\u000e"}, d2 = {"addOnCanceledListener", "Lcom/google/android/gms/tasks/Task;", "TResult", "executor", "Ljava/util/concurrent/Executor;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/Function0;", "", "addOnCompleteListener", "Lkotlin/Function1;", "addOnFailureListener", "Ljava/lang/Exception;", "Lkotlin/Exception;", "addOnSuccessListener", "UserLOstLibrary_UserLOstRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TaskExtKt {
    public static final <TResult> Task<TResult> addOnSuccessListener(Task<TResult> task, Executor executor, final Function1<? super TResult, Unit> listener) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Task<TResult> taskAddOnSuccessListener = task.addOnSuccessListener(executor, new OnSuccessListener() { // from class: com.google.mlkit.md.TaskExtKt$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                TaskExtKt.addOnSuccessListener$lambda$0(listener, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(taskAddOnSuccessListener, "addOnSuccessListener(...)");
        return taskAddOnSuccessListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnSuccessListener$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final <TResult> Task<TResult> addOnFailureListener(Task<TResult> task, Executor executor, final Function1<? super Exception, Unit> listener) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Task<TResult> taskAddOnFailureListener = task.addOnFailureListener(executor, new OnFailureListener() { // from class: com.google.mlkit.md.TaskExtKt$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                TaskExtKt.addOnFailureListener$lambda$1(listener, exc);
            }
        });
        Intrinsics.checkNotNullExpressionValue(taskAddOnFailureListener, "addOnFailureListener(...)");
        return taskAddOnFailureListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnFailureListener$lambda$1(Function1 tmp0, Exception p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        tmp0.invoke(p0);
    }

    public static final <TResult> Task<TResult> addOnCompleteListener(Task<TResult> task, Executor executor, final Function1<? super Task<TResult>, Unit> listener) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Task<TResult> taskAddOnCompleteListener = task.addOnCompleteListener(executor, new OnCompleteListener() { // from class: com.google.mlkit.md.TaskExtKt$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                TaskExtKt.addOnCompleteListener$lambda$2(listener, task2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(taskAddOnCompleteListener, "addOnCompleteListener(...)");
        return taskAddOnCompleteListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnCompleteListener$lambda$2(Function1 tmp0, Task p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        tmp0.invoke(p0);
    }

    public static final <TResult> Task<TResult> addOnCanceledListener(Task<TResult> task, Executor executor, final Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Task<TResult> taskAddOnCanceledListener = task.addOnCanceledListener(executor, new OnCanceledListener() { // from class: com.google.mlkit.md.TaskExtKt$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnCanceledListener
            public final void onCanceled() {
                TaskExtKt.addOnCanceledListener$lambda$3(listener);
            }
        });
        Intrinsics.checkNotNullExpressionValue(taskAddOnCanceledListener, "addOnCanceledListener(...)");
        return taskAddOnCanceledListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addOnCanceledListener$lambda$3(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }
}
