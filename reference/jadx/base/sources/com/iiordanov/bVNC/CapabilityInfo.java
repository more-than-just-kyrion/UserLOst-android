package com.iiordanov.bVNC;

/* JADX INFO: loaded from: classes2.dex */
class CapabilityInfo {
    protected int code;
    protected String description;
    protected boolean enabled;
    protected String nameSignature;
    protected String vendorSignature;

    public CapabilityInfo(int i, String str, String str2, String str3) {
        this.code = i;
        this.vendorSignature = str;
        this.nameSignature = str2;
        this.description = str3;
        this.enabled = false;
    }

    public CapabilityInfo(int i, byte[] bArr, byte[] bArr2) {
        this.code = i;
        this.vendorSignature = new String(bArr);
        this.nameSignature = new String(bArr2);
        this.description = null;
        this.enabled = false;
    }

    public int getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void enable() {
        this.enabled = true;
    }

    public boolean equals(CapabilityInfo capabilityInfo) {
        return capabilityInfo != null && this.code == capabilityInfo.code && this.vendorSignature.equals(capabilityInfo.vendorSignature) && this.nameSignature.equals(capabilityInfo.nameSignature);
    }

    public boolean enableIfEquals(CapabilityInfo capabilityInfo) {
        if (equals(capabilityInfo)) {
            enable();
        }
        return isEnabled();
    }
}
