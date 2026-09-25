package org.rauschig.jarchivelib;

import java.io.IOException;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ar.ArArchiveEntry;
import org.apache.commons.compress.archivers.arj.ArjArchiveEntry;
import org.apache.commons.compress.archivers.cpio.CpioArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;

/* JADX INFO: loaded from: classes3.dex */
abstract class AttributeAccessor<E extends org.apache.commons.compress.archivers.ArchiveEntry> {
    private E entry;

    public abstract int getMode() throws IOException;

    public AttributeAccessor(E e) {
        this.entry = e;
    }

    public E getEntry() {
        return this.entry;
    }

    public static AttributeAccessor<?> create(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
        if (archiveEntry instanceof TarArchiveEntry) {
            return new TarAttributeAccessor((TarArchiveEntry) archiveEntry);
        }
        if (archiveEntry instanceof ZipArchiveEntry) {
            return new ZipAttributeAccessor((ZipArchiveEntry) archiveEntry);
        }
        if (archiveEntry instanceof CpioArchiveEntry) {
            return new CpioAttributeAccessor((CpioArchiveEntry) archiveEntry);
        }
        if (archiveEntry instanceof ArjArchiveEntry) {
            return new ArjAttributeAccessor((ArjArchiveEntry) archiveEntry);
        }
        if (archiveEntry instanceof ArArchiveEntry) {
            return new ArAttributeAccessor((ArArchiveEntry) archiveEntry);
        }
        return new FallbackAttributeAccessor(archiveEntry);
    }

    public static class FallbackAttributeAccessor extends AttributeAccessor<org.apache.commons.compress.archivers.ArchiveEntry> {
        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() {
            return 0;
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public /* bridge */ /* synthetic */ org.apache.commons.compress.archivers.ArchiveEntry getEntry() {
            return super.getEntry();
        }

        protected FallbackAttributeAccessor(org.apache.commons.compress.archivers.ArchiveEntry archiveEntry) {
            super(archiveEntry);
        }
    }

    public static class TarAttributeAccessor extends AttributeAccessor<TarArchiveEntry> {
        public TarAttributeAccessor(TarArchiveEntry tarArchiveEntry) {
            super(tarArchiveEntry);
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() {
            return getEntry().getMode();
        }
    }

    public static class ZipAttributeAccessor extends AttributeAccessor<ZipArchiveEntry> {
        public ZipAttributeAccessor(ZipArchiveEntry zipArchiveEntry) {
            super(zipArchiveEntry);
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() {
            return getEntry().getUnixMode();
        }
    }

    public static class CpioAttributeAccessor extends AttributeAccessor<CpioArchiveEntry> {
        public CpioAttributeAccessor(CpioArchiveEntry cpioArchiveEntry) {
            super(cpioArchiveEntry);
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() {
            return (int) getEntry().getMode();
        }
    }

    public static class ArjAttributeAccessor extends AttributeAccessor<ArjArchiveEntry> {
        public ArjAttributeAccessor(ArjArchiveEntry arjArchiveEntry) {
            super(arjArchiveEntry);
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() throws IOException {
            return getEntry().getMode();
        }
    }

    public static class ArAttributeAccessor extends AttributeAccessor<ArArchiveEntry> {
        public ArAttributeAccessor(ArArchiveEntry arArchiveEntry) {
            super(arArchiveEntry);
        }

        @Override // org.rauschig.jarchivelib.AttributeAccessor
        public int getMode() throws IOException {
            return getEntry().getMode();
        }
    }
}
