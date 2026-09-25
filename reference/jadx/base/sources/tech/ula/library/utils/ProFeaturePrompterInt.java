package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import tech.ula.library.RequestDirPermissionsActivity;

/* JADX INFO: compiled from: ProFeaturePrompter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Ltech/ula/library/utils/ProFeaturePrompterInt;", "", "finishedAction", "Lkotlin/Function0;", "", "getFinishedAction", "()Lkotlin/jvm/functions/Function0;", "savedActivity", "Ltech/ula/library/RequestDirPermissionsActivity;", "getSavedActivity", "()Ltech/ula/library/RequestDirPermissionsActivity;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ProFeaturePrompterInt {
    Function0<Unit> getFinishedAction();

    /* JADX INFO: renamed from: getSavedActivity */
    RequestDirPermissionsActivity getActivity();
}
