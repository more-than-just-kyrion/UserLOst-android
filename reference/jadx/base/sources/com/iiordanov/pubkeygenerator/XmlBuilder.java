package com.iiordanov.pubkeygenerator;

import com.trilead.ssh2.crypto.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class XmlBuilder {
    private StringBuilder sb = new StringBuilder();

    public XmlBuilder append(String str) {
        this.sb.append(str);
        return this;
    }

    public XmlBuilder append(String str, Object obj) {
        if (obj == null) {
            this.sb.append(String.format("<%s/>", str));
        } else if (obj instanceof String) {
            String str2 = (String) obj;
            boolean z = false;
            for (byte b : str2.getBytes()) {
                if (b < 32 || b > 126) {
                    z = true;
                    break;
                }
            }
            StringBuilder sb = this.sb;
            if (z) {
                str2 = new String(Base64.encode(str2.getBytes()));
            }
            sb.append(String.format("<%s>%s</%s>", str, str2, str));
        } else if (obj instanceof Integer) {
            this.sb.append(String.format("<%s>%d</%s>", str, (Integer) obj, str));
        } else if (obj instanceof Long) {
            this.sb.append(String.format("<%s>%d</%s>", str, (Long) obj, str));
        } else if (obj instanceof byte[]) {
            this.sb.append(String.format("<%s>%s</%s>", str, new String(Base64.encode((byte[]) obj)), str));
        } else if (obj instanceof Boolean) {
            this.sb.append(String.format("<%s>%s</%s>", str, (Boolean) obj, str));
        }
        return this;
    }

    public String toString() {
        return this.sb.toString();
    }
}
