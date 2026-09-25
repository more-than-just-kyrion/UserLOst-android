package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import org.apache.commons.compress.harmony.unpack200.Segment;

/* JADX INFO: loaded from: classes3.dex */
public class ClassConstantPool {
    protected Map<ClassFileEntry, Integer> indexCache;
    private boolean resolved;
    protected HashSet<ClassFileEntry> entriesContainsSet = new HashSet<>();
    protected HashSet<ClassFileEntry> othersContainsSet = new HashSet<>();
    private final HashSet<ClassFileEntry> mustStartClassPool = new HashSet<>();
    private final List<ClassFileEntry> others = new ArrayList(500);
    private final List<ClassFileEntry> entries = new ArrayList(500);

    public ClassFileEntry add(ClassFileEntry classFileEntry) {
        if (classFileEntry instanceof ByteCode) {
            return null;
        }
        if (classFileEntry instanceof ConstantPoolEntry) {
            if (this.entriesContainsSet.add(classFileEntry)) {
                this.entries.add(classFileEntry);
            }
        } else if (this.othersContainsSet.add(classFileEntry)) {
            this.others.add(classFileEntry);
        }
        return classFileEntry;
    }

    public void addNestedEntries() {
        ArrayList arrayList = new ArrayList(512);
        ArrayList arrayList2 = new ArrayList(512);
        arrayList.addAll(this.entries);
        arrayList.addAll(this.others);
        boolean z = true;
        while (true) {
            if (!z && arrayList.size() <= 0) {
                return;
            }
            arrayList2.clear();
            int size = this.entries.size();
            int size2 = this.others.size();
            for (int i = 0; i < arrayList.size(); i++) {
                ClassFileEntry classFileEntry = (ClassFileEntry) arrayList.get(i);
                ClassFileEntry[] nestedClassFileEntries = classFileEntry.getNestedClassFileEntries();
                arrayList2.addAll(Arrays.asList(nestedClassFileEntries));
                if ((classFileEntry instanceof ByteCode) && ((ByteCode) classFileEntry).nestedMustStartClassPool()) {
                    this.mustStartClassPool.addAll(Arrays.asList(nestedClassFileEntries));
                }
                add(classFileEntry);
            }
            z = (this.entries.size() == size && this.others.size() == size2) ? false : true;
            arrayList.clear();
            arrayList.addAll(arrayList2);
        }
    }

    public ClassFileEntry addWithNestedEntries(ClassFileEntry classFileEntry) {
        add(classFileEntry);
        for (ClassFileEntry classFileEntry2 : classFileEntry.getNestedClassFileEntries()) {
            addWithNestedEntries(classFileEntry2);
        }
        return classFileEntry;
    }

    public List<ClassFileEntry> entries() {
        return Collections.unmodifiableList(this.entries);
    }

    public ClassFileEntry get(int i) {
        if (!this.resolved) {
            throw new IllegalStateException("Constant pool is not yet resolved; this does not make any sense");
        }
        return this.entries.get(i - 1);
    }

    public int indexOf(ClassFileEntry classFileEntry) {
        if (!this.resolved) {
            throw new IllegalStateException("Constant pool is not yet resolved; this does not make any sense");
        }
        Map<ClassFileEntry, Integer> map = this.indexCache;
        if (map == null) {
            throw new IllegalStateException("Index cache is not initialized!");
        }
        Integer num = map.get(classFileEntry);
        if (num != null) {
            return num.intValue() + 1;
        }
        return -1;
    }

    private void initialSort() {
        TreeSet treeSet = new TreeSet(Comparator.comparingInt(new ToIntFunction() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool$$ExternalSyntheticLambda2
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((ConstantPoolEntry) ((ClassFileEntry) obj)).getGlobalIndex();
            }
        }));
        TreeSet treeSet2 = new TreeSet(Comparator.comparing(new Function() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CPUTF8) ((ClassFileEntry) obj)).underlyingString();
            }
        }));
        TreeSet treeSet3 = new TreeSet(Comparator.comparing(new Function() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CPClass) ((ClassFileEntry) obj)).getName();
            }
        }));
        Iterator<ClassFileEntry> it = this.entries.iterator();
        while (it.hasNext()) {
            ConstantPoolEntry constantPoolEntry = (ConstantPoolEntry) it.next();
            if (constantPoolEntry.getGlobalIndex() == -1) {
                if (constantPoolEntry instanceof CPUTF8) {
                    treeSet2.add(constantPoolEntry);
                } else if (constantPoolEntry instanceof CPClass) {
                    treeSet3.add(constantPoolEntry);
                } else {
                    throw new Error("error");
                }
            } else {
                treeSet.add(constantPoolEntry);
            }
        }
        this.entries.clear();
        this.entries.addAll(treeSet);
        this.entries.addAll(treeSet2);
        this.entries.addAll(treeSet3);
    }

    public void resolve(Segment segment) {
        initialSort();
        sortClassPool();
        this.resolved = true;
        this.entries.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2100xce19110a((ClassFileEntry) obj);
            }
        });
        this.others.forEach(new Consumer() { // from class: org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2101xe88a0a29((ClassFileEntry) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$resolve$3$org-apache-commons-compress-harmony-unpack200-bytecode-ClassConstantPool, reason: not valid java name */
    /* synthetic */ void m2100xce19110a(ClassFileEntry classFileEntry) {
        classFileEntry.resolve(this);
    }

    /* JADX INFO: renamed from: lambda$resolve$4$org-apache-commons-compress-harmony-unpack200-bytecode-ClassConstantPool, reason: not valid java name */
    /* synthetic */ void m2101xe88a0a29(ClassFileEntry classFileEntry) {
        classFileEntry.resolve(this);
    }

    public int size() {
        return this.entries.size();
    }

    protected void sortClassPool() {
        ArrayList<ClassFileEntry> arrayList = new ArrayList(this.entries.size());
        ArrayList<ClassFileEntry> arrayList2 = new ArrayList(this.entries.size());
        for (ClassFileEntry classFileEntry : this.entries) {
            if (this.mustStartClassPool.contains(classFileEntry)) {
                arrayList.add(classFileEntry);
            } else {
                arrayList2.add(classFileEntry);
            }
        }
        this.indexCache = new HashMap(this.entries.size());
        this.entries.clear();
        int i = 0;
        for (ClassFileEntry classFileEntry2 : arrayList) {
            this.indexCache.put(classFileEntry2, Integer.valueOf(i));
            if ((classFileEntry2 instanceof CPLong) || (classFileEntry2 instanceof CPDouble)) {
                this.entries.add(classFileEntry2);
                this.entries.add(classFileEntry2);
                i += 2;
            } else {
                this.entries.add(classFileEntry2);
                i++;
            }
        }
        for (ClassFileEntry classFileEntry3 : arrayList2) {
            this.indexCache.put(classFileEntry3, Integer.valueOf(i));
            if ((classFileEntry3 instanceof CPLong) || (classFileEntry3 instanceof CPDouble)) {
                this.entries.add(classFileEntry3);
                this.entries.add(classFileEntry3);
                i += 2;
            } else {
                this.entries.add(classFileEntry3);
                i++;
            }
        }
    }
}
