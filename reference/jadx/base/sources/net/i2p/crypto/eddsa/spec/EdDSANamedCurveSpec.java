package net.i2p.crypto.eddsa.spec;

import net.i2p.crypto.eddsa.math.Curve;
import net.i2p.crypto.eddsa.math.GroupElement;
import net.i2p.crypto.eddsa.math.ScalarOps;

/* JADX INFO: loaded from: classes2.dex */
public class EdDSANamedCurveSpec extends EdDSAParameterSpec {
    private final String name;

    public EdDSANamedCurveSpec(String str, Curve curve, String str2, ScalarOps scalarOps, GroupElement groupElement) {
        super(curve, str2, scalarOps, groupElement);
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
