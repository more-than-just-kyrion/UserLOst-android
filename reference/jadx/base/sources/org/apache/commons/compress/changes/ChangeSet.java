package org.apache.commons.compress.changes;

import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Pattern;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes3.dex */
public final class ChangeSet<E extends ArchiveEntry> {
    private final Set<Change<E>> changes = new LinkedHashSet();

    public void add(E e, InputStream inputStream) {
        add(e, inputStream, true);
    }

    public void add(E e, InputStream inputStream, boolean z) {
        addAddition(new Change<>(e, inputStream, z));
    }

    private void addAddition(Change<E> change) {
        if (Change.ChangeType.ADD != change.getType() || change.getInputStream() == null) {
            return;
        }
        if (!this.changes.isEmpty()) {
            Iterator<Change<E>> it = this.changes.iterator();
            while (it.hasNext()) {
                Change<E> next = it.next();
                if (next.getType() == Change.ChangeType.ADD && next.getEntry() != null && next.getEntry().equals(change.getEntry())) {
                    if (change.isReplaceMode()) {
                        it.remove();
                        this.changes.add(change);
                        return;
                    }
                    return;
                }
            }
        }
        this.changes.add(change);
    }

    private void addDeletion(Change<E> change) {
        String name;
        if ((Change.ChangeType.DELETE == change.getType() || Change.ChangeType.DELETE_DIR == change.getType()) && change.getTargetFileName() != null) {
            String targetFileName = change.getTargetFileName();
            Pattern patternCompile = Pattern.compile(targetFileName + "/.*");
            if (targetFileName != null && !this.changes.isEmpty()) {
                Iterator<Change<E>> it = this.changes.iterator();
                while (it.hasNext()) {
                    Change<E> next = it.next();
                    if (next.getType() == Change.ChangeType.ADD && next.getEntry() != null && (name = next.getEntry().getName()) != null && ((Change.ChangeType.DELETE == change.getType() && targetFileName.equals(name)) || (Change.ChangeType.DELETE_DIR == change.getType() && patternCompile.matcher(name).matches()))) {
                        it.remove();
                    }
                }
            }
            this.changes.add(change);
        }
    }

    public void delete(String str) {
        addDeletion(new Change<>(str, Change.ChangeType.DELETE));
    }

    public void deleteDir(String str) {
        addDeletion(new Change<>(str, Change.ChangeType.DELETE_DIR));
    }

    Set<Change<E>> getChanges() {
        return new LinkedHashSet(this.changes);
    }
}
