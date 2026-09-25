package org.apache.commons.compress.harmony.unpack200;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes3.dex */
public class SegmentConstantPoolArrayCache {
    protected IdentityHashMap<String[], CachedArray> knownArrays = new IdentityHashMap<>(1000);
    protected String[] lastArray;
    protected List<Integer> lastIndexes;
    protected String lastKey;

    protected class CachedArray {
        int lastKnownSize;
        String[] primaryArray;
        HashMap<String, List<Integer>> primaryTable;

        public CachedArray(String[] strArr) {
            this.primaryArray = strArr;
            this.lastKnownSize = strArr.length;
            this.primaryTable = new HashMap<>(this.lastKnownSize);
            cacheIndexes();
        }

        protected void cacheIndexes() {
            int i = 0;
            while (true) {
                String[] strArr = this.primaryArray;
                if (i >= strArr.length) {
                    return;
                }
                this.primaryTable.computeIfAbsent(strArr[i], new Function() { // from class: org.apache.commons.compress.harmony.unpack200.SegmentConstantPoolArrayCache$CachedArray$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return SegmentConstantPoolArrayCache.CachedArray.lambda$cacheIndexes$0((String) obj);
                    }
                }).add(Integer.valueOf(i));
                i++;
            }
        }

        static /* synthetic */ List lambda$cacheIndexes$0(String str) {
            return new ArrayList();
        }

        public List<Integer> indexesForKey(String str) {
            List<Integer> list = this.primaryTable.get(str);
            return list != null ? list : Collections.emptyList();
        }

        public int lastKnownSize() {
            return this.lastKnownSize;
        }
    }

    protected boolean arrayIsCached(String[] strArr) {
        CachedArray cachedArray = this.knownArrays.get(strArr);
        return cachedArray != null && cachedArray.lastKnownSize() == strArr.length;
    }

    protected void cacheArray(String[] strArr) {
        if (arrayIsCached(strArr)) {
            throw new IllegalArgumentException("Trying to cache an array that already exists");
        }
        this.knownArrays.put(strArr, new CachedArray(strArr));
        this.lastArray = null;
    }

    public List<Integer> indexesForArrayKey(String[] strArr, String str) {
        if (!arrayIsCached(strArr)) {
            cacheArray(strArr);
        }
        if (this.lastArray == strArr && this.lastKey == str) {
            return this.lastIndexes;
        }
        this.lastArray = strArr;
        this.lastKey = str;
        List<Integer> listIndexesForKey = this.knownArrays.get(strArr).indexesForKey(str);
        this.lastIndexes = listIndexesForKey;
        return listIndexesForKey;
    }
}
