package com.iiordanov.bVNC.input;

/* JADX INFO: loaded from: classes2.dex */
public class MetaKeyBase implements Comparable<MetaKeyBase> {
    int keyEvent;
    int keySym;
    int mouseButtons;
    String name;
    boolean isMouse = true;
    boolean isKeyEvent = false;

    MetaKeyBase(int i, String str) {
        this.mouseButtons = i;
        this.name = str;
    }

    MetaKeyBase(String str, int i, int i2) {
        this.name = str;
        this.keySym = i;
        this.keyEvent = i2;
    }

    MetaKeyBase(String str, int i) {
        this.name = str;
        this.keySym = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(MetaKeyBase metaKeyBase) {
        return this.name.compareTo(metaKeyBase.name);
    }
}
