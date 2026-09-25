package com.iiordanov.android.drawing;

import android.graphics.Rect;
import com.iiordanov.util.ObjectPool;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class RectList {
    static final int BOTTOM = 64;
    static final int BOTTOM_LEFT = 128;
    static final int BOTTOM_RIGHT = 32;
    static final int LEFT = 1;
    static final int MAXLEVELS = 20;
    static final int RIGHT = 16;
    static final int TOP = 4;
    static final int TOP_LEFT = 2;
    static final int TOP_RIGHT = 8;
    private ObjectPool<Rect> pool;
    private ObjectPool<NonOverlappingRects> nonOverlappingRectsPool = new ObjectPool<NonOverlappingRects>() { // from class: com.iiordanov.android.drawing.RectList.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.iiordanov.util.ObjectPool
        public NonOverlappingRects itemForPool() {
            return new NonOverlappingRects();
        }
    };
    private ObjectPool<ArrayList<ObjectPool.Entry<Rect>>> listRectsPool = new ObjectPool<ArrayList<ObjectPool.Entry<Rect>>>() { // from class: com.iiordanov.android.drawing.RectList.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.iiordanov.util.ObjectPool
        public ArrayList<ObjectPool.Entry<Rect>> itemForPool() {
            return new ArrayList<>(8);
        }
    };
    private ArrayList<ObjectPool.Entry<Rect>> list = new ArrayList<>();
    private NonOverlappingPortion nonOverlappingPortion = new NonOverlappingPortion();

    enum OverlapType {
        NONE,
        SAME,
        CONTAINS,
        CONTAINED_BY,
        COALESCIBLE,
        PARTIAL
    }

    static class NonOverlappingPortion {
        int adjacent;
        int common;
        boolean horizontalOverlap;
        int r1Owns;
        int r2Owns;
        boolean verticalOverlap;
        Rect leftPortion = new Rect();
        Rect topLeftPortion = new Rect();
        Rect topPortion = new Rect();
        Rect topRightPortion = new Rect();
        Rect rightPortion = new Rect();
        Rect bottomRightPortion = new Rect();
        Rect bottomPortion = new Rect();
        Rect bottomLeftPortion = new Rect();
        Rect coalesced = new Rect();

        NonOverlappingPortion() {
        }

        void setCornerOwnership(int i, int i2, int i3) {
            int i4 = i | i2;
            int i5 = this.r1Owns;
            if ((i5 & i4) == i4) {
                this.r1Owns = i5 | i3;
                return;
            }
            int i6 = this.r2Owns;
            if ((i6 & i4) == i4) {
                this.r2Owns = i6 | i3;
            }
        }

        void setCornerOwnership() {
            setCornerOwnership(1, 4, 2);
            setCornerOwnership(4, 16, 8);
            setCornerOwnership(64, 16, 32);
            setCornerOwnership(64, 1, 128);
        }

        OverlapType overlap(Rect rect, Rect rect2) {
            this.r1Owns = 0;
            this.r2Owns = 0;
            this.common = 0;
            this.adjacent = 0;
            OverlapType overlapType = OverlapType.NONE;
            this.horizontalOverlap = false;
            this.verticalOverlap = false;
            if (rect.left < rect2.left) {
                Rect rect3 = this.leftPortion;
                Rect rect4 = this.topLeftPortion;
                Rect rect5 = this.bottomLeftPortion;
                int i = rect.left;
                rect5.left = i;
                rect4.left = i;
                rect3.left = i;
                if (rect2.left < rect.right) {
                    Rect rect6 = this.leftPortion;
                    Rect rect7 = this.topLeftPortion;
                    Rect rect8 = this.bottomLeftPortion;
                    Rect rect9 = this.topPortion;
                    Rect rect10 = this.bottomPortion;
                    int i2 = rect2.left;
                    rect10.left = i2;
                    rect9.left = i2;
                    rect8.right = i2;
                    rect7.right = i2;
                    rect6.right = i2;
                    this.horizontalOverlap = true;
                } else {
                    Rect rect11 = this.leftPortion;
                    Rect rect12 = this.topLeftPortion;
                    Rect rect13 = this.bottomLeftPortion;
                    Rect rect14 = this.topPortion;
                    Rect rect15 = this.bottomPortion;
                    int i3 = rect.right;
                    rect15.left = i3;
                    rect14.left = i3;
                    rect13.right = i3;
                    rect12.right = i3;
                    rect11.right = i3;
                    if (rect2.left == rect.right) {
                        this.adjacent |= 1;
                    }
                }
                this.r1Owns |= 1;
            } else {
                Rect rect16 = this.leftPortion;
                Rect rect17 = this.topLeftPortion;
                Rect rect18 = this.bottomLeftPortion;
                int i4 = rect2.left;
                rect18.left = i4;
                rect17.left = i4;
                rect16.left = i4;
                if (rect.left < rect2.right) {
                    Rect rect19 = this.leftPortion;
                    Rect rect20 = this.topLeftPortion;
                    Rect rect21 = this.bottomLeftPortion;
                    Rect rect22 = this.topPortion;
                    Rect rect23 = this.bottomPortion;
                    int i5 = rect.left;
                    rect23.left = i5;
                    rect22.left = i5;
                    rect21.right = i5;
                    rect20.right = i5;
                    rect19.right = i5;
                    this.horizontalOverlap = true;
                } else {
                    Rect rect24 = this.leftPortion;
                    Rect rect25 = this.topLeftPortion;
                    Rect rect26 = this.bottomLeftPortion;
                    Rect rect27 = this.topPortion;
                    Rect rect28 = this.bottomPortion;
                    int i6 = rect2.right;
                    rect28.left = i6;
                    rect27.left = i6;
                    rect26.right = i6;
                    rect25.right = i6;
                    rect24.right = i6;
                    if (rect.left == rect2.right) {
                        this.adjacent |= 16;
                    }
                }
                if (rect2.left < rect.left) {
                    this.r2Owns |= 1;
                } else {
                    this.common |= 1;
                }
            }
            if (rect.top < rect2.top) {
                Rect rect29 = this.topPortion;
                Rect rect30 = this.topLeftPortion;
                Rect rect31 = this.topRightPortion;
                int i7 = rect.top;
                rect31.top = i7;
                rect30.top = i7;
                rect29.top = i7;
                if (rect2.top < rect.bottom) {
                    Rect rect32 = this.topPortion;
                    Rect rect33 = this.topLeftPortion;
                    Rect rect34 = this.topRightPortion;
                    Rect rect35 = this.leftPortion;
                    Rect rect36 = this.rightPortion;
                    int i8 = rect2.top;
                    rect36.top = i8;
                    rect35.top = i8;
                    rect34.bottom = i8;
                    rect33.bottom = i8;
                    rect32.bottom = i8;
                    this.verticalOverlap = true;
                } else {
                    Rect rect37 = this.topPortion;
                    Rect rect38 = this.topLeftPortion;
                    Rect rect39 = this.topRightPortion;
                    Rect rect40 = this.leftPortion;
                    Rect rect41 = this.rightPortion;
                    int i9 = rect.bottom;
                    rect41.top = i9;
                    rect40.top = i9;
                    rect39.bottom = i9;
                    rect38.bottom = i9;
                    rect37.bottom = i9;
                    if (rect2.top == rect.bottom) {
                        this.adjacent |= 4;
                    }
                }
                this.r1Owns |= 4;
            } else {
                Rect rect42 = this.topPortion;
                Rect rect43 = this.topLeftPortion;
                Rect rect44 = this.topRightPortion;
                int i10 = rect2.top;
                rect44.top = i10;
                rect43.top = i10;
                rect42.top = i10;
                if (rect.top < rect2.bottom) {
                    Rect rect45 = this.topPortion;
                    Rect rect46 = this.topLeftPortion;
                    Rect rect47 = this.topRightPortion;
                    Rect rect48 = this.leftPortion;
                    Rect rect49 = this.rightPortion;
                    int i11 = rect.top;
                    rect49.top = i11;
                    rect48.top = i11;
                    rect47.bottom = i11;
                    rect46.bottom = i11;
                    rect45.bottom = i11;
                    this.verticalOverlap = true;
                } else {
                    Rect rect50 = this.topPortion;
                    Rect rect51 = this.topLeftPortion;
                    Rect rect52 = this.topRightPortion;
                    Rect rect53 = this.leftPortion;
                    Rect rect54 = this.rightPortion;
                    int i12 = rect2.bottom;
                    rect54.top = i12;
                    rect53.top = i12;
                    rect52.bottom = i12;
                    rect51.bottom = i12;
                    rect50.bottom = i12;
                    if (rect.top == rect2.bottom) {
                        this.adjacent |= 64;
                    }
                }
                if (rect2.top < rect.top) {
                    this.r2Owns |= 4;
                } else {
                    this.common |= 4;
                }
            }
            if (rect.right > rect2.right) {
                Rect rect55 = this.rightPortion;
                Rect rect56 = this.topRightPortion;
                Rect rect57 = this.bottomRightPortion;
                int i13 = rect.right;
                rect57.right = i13;
                rect56.right = i13;
                rect55.right = i13;
                if (rect2.right > rect.left) {
                    Rect rect58 = this.rightPortion;
                    Rect rect59 = this.topRightPortion;
                    Rect rect60 = this.bottomRightPortion;
                    Rect rect61 = this.topPortion;
                    Rect rect62 = this.bottomPortion;
                    int i14 = rect2.right;
                    rect62.right = i14;
                    rect61.right = i14;
                    rect60.left = i14;
                    rect59.left = i14;
                    rect58.left = i14;
                    this.horizontalOverlap = true;
                } else {
                    Rect rect63 = this.rightPortion;
                    Rect rect64 = this.topRightPortion;
                    Rect rect65 = this.bottomRightPortion;
                    Rect rect66 = this.topPortion;
                    Rect rect67 = this.bottomPortion;
                    int i15 = rect.left;
                    rect67.right = i15;
                    rect66.right = i15;
                    rect65.left = i15;
                    rect64.left = i15;
                    rect63.left = i15;
                    if (rect2.right == rect.left) {
                        this.adjacent |= 16;
                    }
                }
                this.r1Owns |= 16;
            } else {
                Rect rect68 = this.rightPortion;
                Rect rect69 = this.topRightPortion;
                Rect rect70 = this.bottomRightPortion;
                int i16 = rect2.right;
                rect70.right = i16;
                rect69.right = i16;
                rect68.right = i16;
                if (rect.right > rect2.left) {
                    Rect rect71 = this.rightPortion;
                    Rect rect72 = this.topRightPortion;
                    Rect rect73 = this.bottomRightPortion;
                    Rect rect74 = this.topPortion;
                    Rect rect75 = this.bottomPortion;
                    int i17 = rect.right;
                    rect75.right = i17;
                    rect74.right = i17;
                    rect73.left = i17;
                    rect72.left = i17;
                    rect71.left = i17;
                    this.horizontalOverlap = true;
                } else {
                    Rect rect76 = this.rightPortion;
                    Rect rect77 = this.topRightPortion;
                    Rect rect78 = this.bottomRightPortion;
                    Rect rect79 = this.topPortion;
                    Rect rect80 = this.bottomPortion;
                    int i18 = rect2.left;
                    rect80.right = i18;
                    rect79.right = i18;
                    rect78.left = i18;
                    rect77.left = i18;
                    rect76.left = i18;
                    if (rect.right == rect2.left) {
                        this.adjacent |= 1;
                    }
                }
                if (rect2.right > rect.right) {
                    this.r2Owns |= 16;
                } else {
                    this.common |= 16;
                }
            }
            if (rect.bottom > rect2.bottom) {
                Rect rect81 = this.bottomPortion;
                Rect rect82 = this.bottomLeftPortion;
                Rect rect83 = this.bottomRightPortion;
                int i19 = rect.bottom;
                rect83.bottom = i19;
                rect82.bottom = i19;
                rect81.bottom = i19;
                if (rect2.bottom > rect.top) {
                    Rect rect84 = this.bottomPortion;
                    Rect rect85 = this.bottomLeftPortion;
                    Rect rect86 = this.bottomRightPortion;
                    Rect rect87 = this.leftPortion;
                    Rect rect88 = this.rightPortion;
                    int i20 = rect2.bottom;
                    rect88.bottom = i20;
                    rect87.bottom = i20;
                    rect86.top = i20;
                    rect85.top = i20;
                    rect84.top = i20;
                    this.verticalOverlap = true;
                } else {
                    Rect rect89 = this.bottomPortion;
                    Rect rect90 = this.bottomLeftPortion;
                    Rect rect91 = this.bottomRightPortion;
                    Rect rect92 = this.leftPortion;
                    Rect rect93 = this.rightPortion;
                    int i21 = rect.top;
                    rect93.bottom = i21;
                    rect92.bottom = i21;
                    rect91.top = i21;
                    rect90.top = i21;
                    rect89.top = i21;
                    if (rect2.bottom == rect.top) {
                        this.adjacent |= 64;
                    }
                }
                this.r1Owns |= 64;
            } else {
                Rect rect94 = this.bottomPortion;
                Rect rect95 = this.bottomLeftPortion;
                Rect rect96 = this.bottomRightPortion;
                int i22 = rect2.bottom;
                rect96.bottom = i22;
                rect95.bottom = i22;
                rect94.bottom = i22;
                if (rect.bottom > rect2.top) {
                    Rect rect97 = this.bottomPortion;
                    Rect rect98 = this.bottomLeftPortion;
                    Rect rect99 = this.bottomRightPortion;
                    Rect rect100 = this.leftPortion;
                    Rect rect101 = this.rightPortion;
                    int i23 = rect.bottom;
                    rect101.bottom = i23;
                    rect100.bottom = i23;
                    rect99.top = i23;
                    rect98.top = i23;
                    rect97.top = i23;
                    this.verticalOverlap = true;
                } else {
                    Rect rect102 = this.bottomPortion;
                    Rect rect103 = this.bottomLeftPortion;
                    Rect rect104 = this.bottomRightPortion;
                    Rect rect105 = this.leftPortion;
                    Rect rect106 = this.rightPortion;
                    int i24 = rect2.top;
                    rect106.bottom = i24;
                    rect105.bottom = i24;
                    rect104.top = i24;
                    rect103.top = i24;
                    rect102.top = i24;
                    if (rect.bottom == rect2.top) {
                        this.adjacent |= 4;
                    }
                }
                if (rect2.bottom > rect.bottom) {
                    this.r2Owns |= 64;
                } else {
                    this.common |= 64;
                }
            }
            int i25 = this.common;
            if (i25 == 85) {
                return OverlapType.SAME;
            }
            if ((i25 & 17) == 17 && (this.verticalOverlap || (this.adjacent & 68) != 0)) {
                OverlapType overlapType2 = OverlapType.COALESCIBLE;
                this.coalesced.left = rect.left;
                this.coalesced.right = rect.right;
                this.coalesced.top = this.topPortion.top;
                this.coalesced.bottom = this.bottomPortion.bottom;
                return overlapType2;
            }
            if ((i25 & 68) == 68 && (this.horizontalOverlap || (this.adjacent & 17) != 0)) {
                OverlapType overlapType3 = OverlapType.COALESCIBLE;
                this.coalesced.left = this.leftPortion.left;
                this.coalesced.right = this.rightPortion.right;
                this.coalesced.top = rect.top;
                this.coalesced.bottom = rect.bottom;
                return overlapType3;
            }
            if (!this.verticalOverlap || !this.horizontalOverlap) {
                return overlapType;
            }
            if (this.r2Owns == 0) {
                return OverlapType.CONTAINED_BY;
            }
            if (this.r1Owns == 0) {
                return OverlapType.CONTAINS;
            }
            OverlapType overlapType4 = OverlapType.PARTIAL;
            setCornerOwnership();
            return overlapType4;
        }
    }

    static class NonOverlappingRects {
        static final int MAX_RECTS = 8;
        int count;
        ObjectPool.Entry<Rect>[] rectEntries = new ObjectPool.Entry[8];

        NonOverlappingRects() {
        }

        private void addOwnedRect(int i, int i2, ObjectPool<Rect> objectPool, Rect rect) {
            if ((i & i2) == i2) {
                ObjectPool.Entry<Rect> entryReserve = objectPool.reserve();
                ObjectPool.Entry<Rect>[] entryArr = this.rectEntries;
                int i3 = this.count;
                this.count = i3 + 1;
                entryArr[i3] = entryReserve;
                entryReserve.get().set(rect);
            }
        }

        void Populate(NonOverlappingPortion nonOverlappingPortion, ObjectPool<Rect> objectPool, int i) {
            this.count = 0;
            for (int i2 = 0; i2 < 8; i2++) {
                this.rectEntries[i2] = null;
            }
            addOwnedRect(i, 128, objectPool, nonOverlappingPortion.bottomLeftPortion);
            addOwnedRect(i, 64, objectPool, nonOverlappingPortion.bottomPortion);
            addOwnedRect(i, 32, objectPool, nonOverlappingPortion.bottomRightPortion);
            addOwnedRect(i, 64, objectPool, nonOverlappingPortion.bottomPortion);
            addOwnedRect(i, 8, objectPool, nonOverlappingPortion.topRightPortion);
            addOwnedRect(i, 4, objectPool, nonOverlappingPortion.topPortion);
            addOwnedRect(i, 2, objectPool, nonOverlappingPortion.topLeftPortion);
            addOwnedRect(i, 1, objectPool, nonOverlappingPortion.leftPortion);
        }
    }

    public RectList(ObjectPool<Rect> objectPool) {
        this.pool = objectPool;
    }

    public int getSize() {
        return this.list.size();
    }

    public Rect get(int i) {
        return this.list.get(i).get();
    }

    public void clear() {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            this.pool.release(this.list.get(size));
        }
        this.list.clear();
    }

    private void recursiveAdd(ObjectPool.Entry<Rect> entry, int i) {
        if (i >= 20) {
        }
        if (i >= this.list.size()) {
            this.list.add(entry);
            return;
        }
        Rect rect = entry.get();
        ObjectPool.Entry<Rect> entry2 = this.list.get(i);
        switch (AnonymousClass3.$SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[this.nonOverlappingPortion.overlap(entry2.get(), rect).ordinal()]) {
            case 1:
                recursiveAdd(entry, i + 1);
                break;
            case 2:
            case 3:
                this.pool.release(entry);
                break;
            case 4:
                this.pool.release(entry2);
                this.list.remove(i);
                recursiveAdd(entry, i);
                break;
            case 5:
                this.pool.release(entry2);
                this.list.remove(i);
                rect.set(this.nonOverlappingPortion.coalesced);
                recursiveAdd(entry, 0);
                break;
            case 6:
                this.pool.release(entry);
                ObjectPool.Entry<NonOverlappingRects> entryReserve = this.nonOverlappingRectsPool.reserve();
                NonOverlappingRects nonOverlappingRects = entryReserve.get();
                NonOverlappingPortion nonOverlappingPortion = this.nonOverlappingPortion;
                nonOverlappingRects.Populate(nonOverlappingPortion, this.pool, nonOverlappingPortion.r2Owns);
                for (int i2 = 0; i2 < nonOverlappingRects.count; i2++) {
                    recursiveAdd(nonOverlappingRects.rectEntries[i2], 0);
                }
                this.nonOverlappingRectsPool.release(entryReserve);
                break;
        }
    }

    /* JADX INFO: renamed from: com.iiordanov.android.drawing.RectList$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType;

        static {
            int[] iArr = new int[OverlapType.values().length];
            $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType = iArr;
            try {
                iArr[OverlapType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[OverlapType.SAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[OverlapType.CONTAINS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[OverlapType.CONTAINED_BY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[OverlapType.COALESCIBLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[OverlapType.PARTIAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public void add(Rect rect) {
        ObjectPool.Entry<Rect> entryReserve = this.pool.reserve();
        entryReserve.get().set(rect);
        try {
            recursiveAdd(entryReserve, 0);
        } catch (StackOverflowError unused) {
        }
    }

    public void intersect(Rect rect) {
        int size = this.list.size();
        ObjectPool.Entry<ArrayList<ObjectPool.Entry<Rect>>> entryReserve = this.listRectsPool.reserve();
        ArrayList<ObjectPool.Entry<Rect>> arrayList = entryReserve.get();
        arrayList.clear();
        for (int i = 0; i < size; i++) {
            ObjectPool.Entry<Rect> entry = this.list.get(i);
            if (entry.get().intersect(rect)) {
                arrayList.add(entry);
            } else {
                this.pool.release(entry);
            }
        }
        this.list.clear();
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            try {
                recursiveAdd(arrayList.get(i2), 0);
            } catch (StackOverflowError unused) {
            }
        }
        this.listRectsPool.release(entryReserve);
    }

    public boolean testIntersect(Rect rect) {
        int size = this.list.size();
        for (int i = 0; i < size; i++) {
            if (this.list.get(i).get().intersects(rect.left, rect.top, rect.right, rect.bottom)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    /* JADX WARN: Code duplicated, block: B:25:0x008e A[LOOP:1: B:23:0x008a->B:25:0x008e, LOOP_END] */
    public void subtract(Rect rect) {
        NonOverlappingRects nonOverlappingRects;
        int i;
        int size = this.list.size();
        ObjectPool.Entry<ArrayList<ObjectPool.Entry<Rect>>> entryReserve = this.listRectsPool.reserve();
        ArrayList<ObjectPool.Entry<Rect>> arrayList = entryReserve.get();
        arrayList.clear();
        int i2 = 0;
        while (i2 < size) {
            ObjectPool.Entry<Rect> entry = this.list.get(i2);
            int i3 = AnonymousClass3.$SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType[this.nonOverlappingPortion.overlap(entry.get(), rect).ordinal()];
            if (i3 == 2) {
                this.pool.release(entry);
                arrayList.clear();
                this.list.remove(i2);
                return;
            }
            if (i3 == 3) {
                this.nonOverlappingPortion.setCornerOwnership();
                ObjectPool.Entry<NonOverlappingRects> entryReserve2 = this.nonOverlappingRectsPool.reserve();
                nonOverlappingRects = entryReserve2.get();
                NonOverlappingPortion nonOverlappingPortion = this.nonOverlappingPortion;
                nonOverlappingRects.Populate(nonOverlappingPortion, this.pool, nonOverlappingPortion.r1Owns);
                this.pool.release(entry);
                this.list.remove(i2);
                i2--;
                size--;
                for (i = 0; i < nonOverlappingRects.count; i++) {
                    arrayList.add(nonOverlappingRects.rectEntries[i]);
                }
                this.nonOverlappingRectsPool.release(entryReserve2);
            } else if (i3 == 4) {
                this.pool.release(entry);
                this.list.remove(i2);
                i2--;
                size--;
            } else if (i3 != 5) {
                if (i3 == 6) {
                    ObjectPool.Entry<NonOverlappingRects> entryReserve3 = this.nonOverlappingRectsPool.reserve();
                    nonOverlappingRects = entryReserve3.get();
                    NonOverlappingPortion nonOverlappingPortion2 = this.nonOverlappingPortion;
                    nonOverlappingRects.Populate(nonOverlappingPortion2, this.pool, nonOverlappingPortion2.r1Owns);
                    this.pool.release(entry);
                    this.list.remove(i2);
                    i2--;
                    size--;
                    while (i < nonOverlappingRects.count) {
                        arrayList.add(nonOverlappingRects.rectEntries[i]);
                    }
                    this.nonOverlappingRectsPool.release(entryReserve3);
                }
            } else if (this.nonOverlappingPortion.verticalOverlap && this.nonOverlappingPortion.horizontalOverlap) {
                this.nonOverlappingPortion.setCornerOwnership();
                ObjectPool.Entry<NonOverlappingRects> entryReserve4 = this.nonOverlappingRectsPool.reserve();
                nonOverlappingRects = entryReserve4.get();
                NonOverlappingPortion nonOverlappingPortion3 = this.nonOverlappingPortion;
                nonOverlappingRects.Populate(nonOverlappingPortion3, this.pool, nonOverlappingPortion3.r1Owns);
                this.pool.release(entry);
                this.list.remove(i2);
                i2--;
                size--;
                while (i < nonOverlappingRects.count) {
                    arrayList.add(nonOverlappingRects.rectEntries[i]);
                }
                this.nonOverlappingRectsPool.release(entryReserve4);
            }
            i2++;
        }
        int size2 = arrayList.size();
        for (int i4 = 0; i4 < size2; i4++) {
            try {
                recursiveAdd(arrayList.get(i4), 0);
            } catch (StackOverflowError unused) {
            }
        }
        this.listRectsPool.release(entryReserve);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{\n");
        for (int i = 0; i < getSize(); i++) {
            sb.append(get(i).toString());
            sb.append(StringUtils.LF);
        }
        sb.append("}");
        return sb.toString();
    }
}
