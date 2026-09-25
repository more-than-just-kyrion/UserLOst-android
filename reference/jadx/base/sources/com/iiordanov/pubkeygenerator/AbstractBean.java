package com.iiordanov.pubkeygenerator;

import android.content.ContentValues;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractBean {
    public abstract String getBeanName();

    public abstract ContentValues getValues();

    AbstractBean() {
    }

    public String toXML() {
        XmlBuilder xmlBuilder = new XmlBuilder();
        xmlBuilder.append(String.format("<%s>", getBeanName()));
        for (Map.Entry<String, Object> entry : getValues().valueSet()) {
            Object value = entry.getValue();
            if (value != null) {
                xmlBuilder.append(entry.getKey(), value);
            }
        }
        xmlBuilder.append(String.format("</%s>", getBeanName()));
        return xmlBuilder.toString();
    }
}
