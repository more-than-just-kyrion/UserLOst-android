package net.i2p.crypto.eddsa.math;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FieldElement implements Serializable {
    private static final long serialVersionUID = 1239527465875676L;
    protected final Field f;

    public abstract FieldElement add(FieldElement fieldElement);

    public abstract FieldElement cmov(FieldElement fieldElement, int i);

    public abstract FieldElement invert();

    public abstract boolean isNonZero();

    public abstract FieldElement multiply(FieldElement fieldElement);

    public abstract FieldElement negate();

    public abstract FieldElement pow22523();

    public abstract FieldElement square();

    public abstract FieldElement squareAndDouble();

    public abstract FieldElement subtract(FieldElement fieldElement);

    public FieldElement(Field field) {
        if (field == null) {
            throw new IllegalArgumentException("field cannot be null");
        }
        this.f = field;
    }

    public byte[] toByteArray() {
        return this.f.getEncoding().encode(this);
    }

    public boolean isNegative() {
        return this.f.getEncoding().isNegative(this);
    }

    public FieldElement addOne() {
        return add(this.f.ONE);
    }

    public FieldElement subtractOne() {
        return subtract(this.f.ONE);
    }

    public FieldElement divide(FieldElement fieldElement) {
        return multiply(fieldElement.invert());
    }
}
