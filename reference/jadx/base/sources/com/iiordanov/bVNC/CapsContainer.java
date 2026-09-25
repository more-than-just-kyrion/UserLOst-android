package com.iiordanov.bVNC;

import java.util.Hashtable;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
class CapsContainer {
    protected Hashtable<Integer, CapabilityInfo> infoMap = new Hashtable<>(64, 0.25f);
    protected Vector<Integer> orderedList = new Vector<>(32, 8);

    public void add(CapabilityInfo capabilityInfo) {
        this.infoMap.put(new Integer(capabilityInfo.getCode()), capabilityInfo);
    }

    public void add(int i, String str, String str2, String str3) {
        this.infoMap.put(new Integer(i), new CapabilityInfo(i, str, str2, str3));
    }

    public boolean isKnown(int i) {
        return this.infoMap.containsKey(new Integer(i));
    }

    public CapabilityInfo getInfo(int i) {
        return this.infoMap.get(new Integer(i));
    }

    public String getDescription(int i) {
        CapabilityInfo capabilityInfo = this.infoMap.get(new Integer(i));
        if (capabilityInfo == null) {
            return null;
        }
        return capabilityInfo.getDescription();
    }

    public boolean enable(CapabilityInfo capabilityInfo) {
        Integer num = new Integer(capabilityInfo.getCode());
        CapabilityInfo capabilityInfo2 = this.infoMap.get(num);
        if (capabilityInfo2 == null) {
            return false;
        }
        boolean zEnableIfEquals = capabilityInfo2.enableIfEquals(capabilityInfo);
        if (zEnableIfEquals) {
            this.orderedList.addElement(num);
        }
        return zEnableIfEquals;
    }

    public boolean isEnabled(int i) {
        CapabilityInfo capabilityInfo = this.infoMap.get(new Integer(i));
        if (capabilityInfo == null) {
            return false;
        }
        return capabilityInfo.isEnabled();
    }

    public int numEnabled() {
        return this.orderedList.size();
    }

    public int getByOrder(int i) {
        try {
            return this.orderedList.elementAt(i).intValue();
        } catch (ArrayIndexOutOfBoundsException unused) {
            return 0;
        }
    }
}
