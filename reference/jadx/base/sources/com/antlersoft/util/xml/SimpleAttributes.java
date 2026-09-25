package com.antlersoft.util.xml;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.AttributesImpl;

/* JADX INFO: loaded from: classes.dex */
public class SimpleAttributes {
    private Attributes attr;
    public double defaultDouble;
    public int defaultInt;
    public String defaultString;

    public SimpleAttributes() {
        this.defaultInt = 0;
        this.defaultString = "";
        this.defaultDouble = 0.0d;
        this.attr = new AttributesImpl();
    }

    public SimpleAttributes(Attributes attributes) {
        this.defaultInt = 0;
        this.defaultString = "";
        this.defaultDouble = 0.0d;
        this.attr = attributes;
    }

    public void addValue(Object obj, Object obj2) {
        ((AttributesImpl) this.attr).addAttribute("", "", obj.toString(), "", obj2.toString());
    }

    public boolean booleanValue(Object obj) {
        return booleanValue(obj, false);
    }

    public boolean booleanValue(Object obj, boolean z) {
        String value = this.attr.getValue(obj.toString());
        return value != null ? Boolean.valueOf(value).booleanValue() : z;
    }

    public double doubleValue(Object obj) {
        return doubleValue(obj, this.defaultDouble);
    }

    public double doubleValue(Object obj, double d) {
        String value = this.attr.getValue(obj.toString());
        if (value != null) {
            try {
                return Double.valueOf(value).doubleValue();
            } catch (NumberFormatException unused) {
            }
        }
        return d;
    }

    public Attributes getAttributes() {
        return this.attr;
    }

    public int intValue(Object obj) {
        return intValue(obj, this.defaultInt);
    }

    public int intValue(Object obj, int i) {
        String value = this.attr.getValue(obj.toString());
        if (value != null) {
            try {
                return Integer.valueOf(value).intValue();
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public long longValue(Object obj) {
        return longValue(obj, this.defaultInt);
    }

    public long longValue(Object obj, long j) {
        String value = this.attr.getValue(obj.toString());
        if (value != null) {
            try {
                return Long.valueOf(value).longValue();
            } catch (NumberFormatException unused) {
            }
        }
        return j;
    }

    public void setDefaultInt(int i) {
        this.defaultInt = i;
    }

    public String stringValue(Object obj) {
        return stringValue(obj, this.defaultString);
    }

    public String stringValue(Object obj, String str) {
        String value = this.attr.getValue(obj.toString());
        return value == null ? str : value;
    }
}
