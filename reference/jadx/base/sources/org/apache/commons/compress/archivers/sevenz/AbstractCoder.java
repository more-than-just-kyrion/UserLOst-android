package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes3.dex */
abstract class AbstractCoder {
    private final Class<?>[] optionClasses;

    abstract InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr, int i) throws IOException;

    Object getOptionsFromCoder(Coder coder, InputStream inputStream) throws IOException {
        return null;
    }

    protected static int toInt(Object obj, int i) {
        return obj instanceof Number ? ((Number) obj).intValue() : i;
    }

    protected AbstractCoder(Class<?>... clsArr) {
        this.optionClasses = (Class[]) Objects.requireNonNull(clsArr, "optionClasses");
    }

    OutputStream encode(OutputStream outputStream, Object obj) throws IOException {
        throw new UnsupportedOperationException("Method doesn't support writing");
    }

    byte[] getOptionsAsProperties(Object obj) throws IOException {
        return ByteUtils.EMPTY_BYTE_ARRAY;
    }

    boolean isOptionInstance(final Object obj) {
        return Stream.of((Object[]) this.optionClasses).anyMatch(new Predicate() { // from class: org.apache.commons.compress.archivers.sevenz.AbstractCoder$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj2) {
                return ((Class) obj2).isInstance(obj);
            }
        });
    }
}
