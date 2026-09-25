package org.apache.commons.compress.changes;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ChangeSetPerformer<I extends ArchiveInputStream<E>, O extends ArchiveOutputStream<E>, E extends ArchiveEntry> {
    private final Set<Change<E>> changes;

    private interface ArchiveEntryIterator<E extends ArchiveEntry> {
        InputStream getInputStream() throws IOException;

        boolean hasNext() throws IOException;

        E next();
    }

    private static final class ArchiveInputStreamIterator<E extends ArchiveEntry> implements ArchiveEntryIterator<E> {
        private final ArchiveInputStream<E> inputStream;
        private E next;

        ArchiveInputStreamIterator(ArchiveInputStream<E> archiveInputStream) {
            this.inputStream = archiveInputStream;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public InputStream getInputStream() {
            return this.inputStream;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public boolean hasNext() throws IOException {
            E e = (E) this.inputStream.getNextEntry();
            this.next = e;
            return e != null;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public E next() {
            return this.next;
        }
    }

    private static final class ZipFileIterator implements ArchiveEntryIterator<ZipArchiveEntry> {
        private ZipArchiveEntry currentEntry;
        private final Enumeration<ZipArchiveEntry> nestedEnumeration;
        private final ZipFile zipFile;

        ZipFileIterator(ZipFile zipFile) {
            this.zipFile = zipFile;
            this.nestedEnumeration = zipFile.getEntriesInPhysicalOrder();
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public InputStream getInputStream() throws IOException {
            return this.zipFile.getInputStream(this.currentEntry);
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public boolean hasNext() {
            return this.nestedEnumeration.hasMoreElements();
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.ArchiveEntryIterator
        public ZipArchiveEntry next() {
            ZipArchiveEntry zipArchiveEntryNextElement = this.nestedEnumeration.nextElement();
            this.currentEntry = zipArchiveEntryNextElement;
            return zipArchiveEntryNextElement;
        }
    }

    public ChangeSetPerformer(ChangeSet<E> changeSet) {
        this.changes = changeSet.getChanges();
    }

    private void copyStream(InputStream inputStream, O o, E e) throws IOException {
        o.putArchiveEntry(e);
        IOUtils.copy(inputStream, o);
        o.closeArchiveEntry();
    }

    private boolean isDeletedLater(Set<Change<E>> set, E e) {
        String name = e.getName();
        if (set.isEmpty()) {
            return false;
        }
        for (Change<E> change : set) {
            Change.ChangeType type = change.getType();
            String targetFileName = change.getTargetFileName();
            if (type == Change.ChangeType.DELETE && name.equals(targetFileName)) {
                return true;
            }
            if (type == Change.ChangeType.DELETE_DIR && name.startsWith(targetFileName + "/")) {
                return true;
            }
        }
        return false;
    }

    private ChangeSetResults perform(ArchiveEntryIterator<E> archiveEntryIterator, O o) throws IOException {
        ChangeSetResults changeSetResults = new ChangeSetResults();
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.changes);
        Iterator<Change<E>> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            Change<E> next = it.next();
            if (next.getType() == Change.ChangeType.ADD && next.isReplaceMode()) {
                copyStream(next.getInputStream(), o, next.getEntry());
                it.remove();
                changeSetResults.addedFromChangeSet(next.getEntry().getName());
            }
        }
        while (archiveEntryIterator.hasNext()) {
            ArchiveEntry next2 = archiveEntryIterator.next();
            Iterator<Change<E>> it2 = linkedHashSet.iterator();
            while (true) {
                if (it2.hasNext()) {
                    Change<E> next3 = it2.next();
                    Change.ChangeType type = next3.getType();
                    String name = next2.getName();
                    if (type == Change.ChangeType.DELETE && name != null) {
                        if (name.equals(next3.getTargetFileName())) {
                            it2.remove();
                            changeSetResults.deleted(name);
                            break;
                        }
                    } else if (type == Change.ChangeType.DELETE_DIR && name != null && name.startsWith(next3.getTargetFileName() + "/")) {
                        changeSetResults.deleted(name);
                        break;
                    }
                } else {
                    if (!isDeletedLater(linkedHashSet, next2) && !changeSetResults.hasBeenAdded(next2.getName())) {
                        copyStream(archiveEntryIterator.getInputStream(), o, next2);
                        changeSetResults.addedFromStream(next2.getName());
                        break;
                    }
                    break;
                }
            }
        }
        Iterator<Change<E>> it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            Change<E> next4 = it3.next();
            if (next4.getType() == Change.ChangeType.ADD && !next4.isReplaceMode() && !changeSetResults.hasBeenAdded(next4.getEntry().getName())) {
                copyStream(next4.getInputStream(), o, next4.getEntry());
                it3.remove();
                changeSetResults.addedFromChangeSet(next4.getEntry().getName());
            }
        }
        o.finish();
        return changeSetResults;
    }

    public ChangeSetResults perform(I i, O o) throws IOException {
        return perform(new ArchiveInputStreamIterator(i), o);
    }

    public ChangeSetResults perform(ZipFile zipFile, O o) throws IOException {
        return perform(new ZipFileIterator(zipFile), o);
    }
}
