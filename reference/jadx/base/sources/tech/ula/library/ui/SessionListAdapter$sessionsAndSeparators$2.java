package tech.ula.library.ui;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import tech.ula.library.model.entities.Session;

/* JADX INFO: compiled from: SessionListAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ltech/ula/library/ui/SessionListItem;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class SessionListAdapter$sessionsAndSeparators$2 extends Lambda implements Function0<List<? extends SessionListItem>> {
    final /* synthetic */ SessionListAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SessionListAdapter$sessionsAndSeparators$2(SessionListAdapter sessionListAdapter) {
        super(0);
        this.this$0 = sessionListAdapter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends SessionListItem> invoke() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Session session : this.this$0.sessions) {
            if (Intrinsics.areEqual(session.getFilesystemName(), "apps")) {
                HashMap map2 = map;
                String str = this.this$0.appsString;
                Object arrayList2 = map2.get(str);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    map2.put(str, arrayList2);
                }
                ((ArrayList) arrayList2).add(session);
            } else {
                HashMap map3 = map;
                String str2 = this.this$0.customString;
                Object arrayList3 = map3.get(str2);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    map3.put(str2, arrayList3);
                }
                ((ArrayList) arrayList3).add(session);
            }
        }
        final SessionListAdapter sessionListAdapter = this.this$0;
        for (Map.Entry entry : MapsKt.toSortedMap(map, new Comparator() { // from class: tech.ula.library.ui.SessionListAdapter$sessionsAndSeparators$2$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SessionListAdapter$sessionsAndSeparators$2.invoke$lambda$2(sessionListAdapter, (String) obj, (String) obj2);
            }
        }).entrySet()) {
            String str3 = (String) entry.getKey();
            ArrayList arrayList4 = (ArrayList) entry.getValue();
            Intrinsics.checkNotNull(str3);
            arrayList.add(new SessionSeparatorItem(str3));
            Intrinsics.checkNotNull(arrayList4);
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                arrayList.add(new SessionItem((Session) it.next()));
            }
        }
        return CollectionsKt.toList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int invoke$lambda$2(SessionListAdapter this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(str, this$0.customString)) {
            return -1;
        }
        return Intrinsics.areEqual(str2, this$0.customString) ? 1 : 0;
    }
}
