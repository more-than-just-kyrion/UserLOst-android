package tech.ula.library.utils;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import io.sentry.marshaller.json.JsonMarshaller;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import tech.ula.library.R;

/* JADX INFO: compiled from: Extensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a@\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t0\u00070\u0006\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\u001a*\u0010\f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u0013\u001a(\u0010\u0014\u001a\u0002H\u0015\"\n\b\u0000\u0010\u0015\u0018\u0001*\u00020\u0016*\u00020\u00172\b\b\u0001\u0010\u0018\u001a\u00020\u000fH\u0086\b¢\u0006\u0002\u0010\u0019\u001a(\u0010\u0014\u001a\u0002H\u0015\"\n\b\u0000\u0010\u0015\u0018\u0001*\u00020\u0016*\u00020\u00162\b\b\u0001\u0010\u0018\u001a\u00020\u000fH\u0086\b¢\u0006\u0002\u0010\u001a\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u001b"}, d2 = {"defaultSharedPreferences", "Landroid/content/SharedPreferences;", "Landroid/content/Context;", "getDefaultSharedPreferences", "(Landroid/content/Context;)Landroid/content/SharedPreferences;", "zipLiveData", "Landroidx/lifecycle/LiveData;", "Lkotlin/Pair;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "a", "b", "displayGenericErrorDialog", "", "titleId", "", JsonMarshaller.MESSAGE, "", "callback", "Lkotlin/Function0;", "find", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/View;", "Landroid/app/Dialog;", "id", "(Landroid/app/Dialog;I)Landroid/view/View;", "(Landroid/view/View;I)Landroid/view/View;", "UserLOstLibrary_UserLOstRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ExtensionsKt {
    public static final <A, B> LiveData<Pair<A, B>> zipLiveData(LiveData<A> a, LiveData<B> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Function1<A, Unit> function1 = new Function1<A, Unit>() { // from class: tech.ula.library.utils.ExtensionsKt$zipLiveData$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(A a2) {
                objectRef.element = a2;
                ExtensionsKt.zipLiveData$lambda$2$update(objectRef, objectRef2, mediatorLiveData);
            }
        };
        mediatorLiveData.addSource(a, new Observer() { // from class: tech.ula.library.utils.ExtensionsKt$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ExtensionsKt.zipLiveData$lambda$2$lambda$0(function1, obj);
            }
        });
        final Function1<B, Unit> function2 = new Function1<B, Unit>() { // from class: tech.ula.library.utils.ExtensionsKt$zipLiveData$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(B b2) {
                objectRef2.element = b2;
                ExtensionsKt.zipLiveData$lambda$2$update(objectRef, objectRef2, mediatorLiveData);
            }
        };
        mediatorLiveData.addSource(b, new Observer() { // from class: tech.ula.library.utils.ExtensionsKt$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ExtensionsKt.zipLiveData$lambda$2$lambda$1(function2, obj);
            }
        });
        return mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <A, B> void zipLiveData$lambda$2$update(Ref.ObjectRef<A> objectRef, Ref.ObjectRef<B> objectRef2, MediatorLiveData<Pair<A, B>> mediatorLiveData) {
        A a = objectRef.element;
        B b = objectRef2.element;
        if (a == null || b == null) {
            return;
        }
        mediatorLiveData.setValue(new Pair<>(a, b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zipLiveData$lambda$2$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zipLiveData$lambda$2$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static /* synthetic */ void displayGenericErrorDialog$default(Context context, int i, String str, Function0 function0, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: tech.ula.library.utils.ExtensionsKt.displayGenericErrorDialog.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        displayGenericErrorDialog(context, i, str, function0);
    }

    public static final void displayGenericErrorDialog(Context context, int i, String message, final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(callback, "callback");
        new AlertDialog.Builder(context).setTitle(i).setMessage(message).setPositiveButton(R.string.button_ok, new DialogInterface.OnClickListener() { // from class: tech.ula.library.utils.ExtensionsKt$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ExtensionsKt.displayGenericErrorDialog$lambda$3(callback, dialogInterface, i2);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void displayGenericErrorDialog$lambda$3(Function0 callback, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        callback.invoke();
        dialogInterface.dismiss();
    }

    public static final SharedPreferences getDefaultSharedPreferences(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public static final /* synthetic */ <T extends View> T find(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        T t = (T) view.findViewById(i);
        Intrinsics.checkNotNullExpressionValue(t, "findViewById(...)");
        return t;
    }

    public static final /* synthetic */ <T extends View> T find(Dialog dialog, int i) {
        Intrinsics.checkNotNullParameter(dialog, "<this>");
        T t = (T) dialog.findViewById(i);
        Intrinsics.checkNotNullExpressionValue(t, "findViewById(...)");
        return t;
    }
}
