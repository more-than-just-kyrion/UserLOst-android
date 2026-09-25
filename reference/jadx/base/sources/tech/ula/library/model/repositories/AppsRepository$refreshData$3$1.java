package tech.ula.library.model.repositories;

import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import tech.ula.library.model.entities.App;

/* JADX INFO: compiled from: AppsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.ula.library.model.repositories.AppsRepository$refreshData$3$1", f = "AppsRepository.kt", i = {}, l = {73, 74, 75, 76}, m = "invokeSuspend", n = {}, s = {})
final class AppsRepository$refreshData$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ App $app;
    final /* synthetic */ Set<String> $distributionsList;
    final /* synthetic */ Ref.ObjectRef<String> $failMessage;
    final /* synthetic */ Ref.BooleanRef $failed;
    int label;
    final /* synthetic */ AppsRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppsRepository$refreshData$3$1(App app, Set<String> set, AppsRepository appsRepository, Ref.BooleanRef booleanRef, Ref.ObjectRef<String> objectRef, Continuation<? super AppsRepository$refreshData$3$1> continuation) {
        super(2, continuation);
        this.$app = app;
        this.$distributionsList = set;
        this.this$0 = appsRepository;
        this.$failed = booleanRef;
        this.$failMessage = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppsRepository$refreshData$3$1(this.$app, this.$distributionsList, this.this$0, this.$failed, this.$failMessage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AppsRepository$refreshData$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0097 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ab A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 3;
                    if (this.this$0.remoteAppsSource.fetchAppScript(this.$app, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.label = 4;
                    if (this.this$0.remoteAppsSource.fetchAppFlavors(this.$app, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 4;
                    if (this.this$0.remoteAppsSource.fetchAppFlavors(this.$app, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.appsDao.insertApp(this.$app);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            String category = this.$app.getCategory();
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String lowerCase = category.toLowerCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (Intrinsics.areEqual(lowerCase, "distribution")) {
                this.$distributionsList.add(this.$app.getName());
            }
            this.label = 1;
            if (this.this$0.remoteAppsSource.fetchAppIcon(this.$app, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 2;
            if (this.this$0.remoteAppsSource.fetchAppDescription(this.$app, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 3;
            if (this.this$0.remoteAppsSource.fetchAppScript(this.$app, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.label = 4;
            if (this.this$0.remoteAppsSource.fetchAppFlavors(this.$app, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } catch (Exception e) {
            this.this$0.logger.addExceptionBreadcrumb(e);
            this.$failed.element = true;
            this.$failMessage.element = this.$app.getName();
        }
        this.this$0.appsDao.insertApp(this.$app);
        return Unit.INSTANCE;
    }
}
