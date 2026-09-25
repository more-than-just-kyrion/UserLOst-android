package org.apache.commons.lang3.reflect;

import java.lang.reflect.Method;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class MethodUtils$$ExternalSyntheticLambda8 implements Consumer {
    public final /* synthetic */ List f$0;

    public /* synthetic */ MethodUtils$$ExternalSyntheticLambda8(List list) {
        this.f$0 = list;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f$0.add((Method) obj);
    }
}
