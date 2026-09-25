package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final class IntVector extends BaseVector {
    public IntVector __assign(int i, ByteBuffer byteBuffer) {
        __reset(i, 4, byteBuffer);
        return this;
    }

    public int get(int i) {
        return this.bb.getInt(__element(i));
    }

    public long getAsUnsigned(int i) {
        return ((long) get(i)) & BodyPartID.bodyIdMax;
    }
}
