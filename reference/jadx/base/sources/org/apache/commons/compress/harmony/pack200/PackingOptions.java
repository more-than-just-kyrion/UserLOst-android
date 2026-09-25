package org.apache.commons.compress.harmony.pack200;

import java.nio.file.FileSystems;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.objectweb.asm.Attribute;

/* JADX INFO: loaded from: classes3.dex */
public class PackingOptions {
    private static final Attribute[] EMPTY_ATTRIBUTE_ARRAY = new Attribute[0];
    public static final String ERROR = "error";
    public static final String KEEP = "keep";
    public static final String PASS = "pass";
    public static final long SEGMENT_LIMIT = 1000000;
    public static final String STRIP = "strip";
    private String logFile;
    private boolean stripDebug;
    private Attribute[] unknownAttributeTypes;
    private boolean verbose;
    private boolean gzip = true;
    private boolean keepFileOrder = true;
    private long segmentLimit = SEGMENT_LIMIT;
    private int effort = 5;
    private String deflateHint = "keep";
    private String modificationTime = "keep";
    private final List<String> passFiles = new ArrayList();
    private String unknownAttributeAction = "pass";
    private final Map<String, String> classAttributeActions = new HashMap();
    private final Map<String, String> fieldAttributeActions = new HashMap();
    private final Map<String, String> methodAttributeActions = new HashMap();
    private final Map<String, String> codeAttributeActions = new HashMap();

    public void addClassAttributeAction(String str, String str2) {
        this.classAttributeActions.put(str, str2);
    }

    public void addCodeAttributeAction(String str, String str2) {
        this.codeAttributeActions.put(str, str2);
    }

    public void addFieldAttributeAction(String str, String str2) {
        this.fieldAttributeActions.put(str, str2);
    }

    public void addMethodAttributeAction(String str, String str2) {
        this.methodAttributeActions.put(str, str2);
    }

    private void addOrUpdateAttributeActions(List<Attribute> list, Map<String, String> map, int i) {
        NewAttribute newAttribute;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Iterator<Attribute> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    NewAttribute newAttribute2 = (NewAttribute) it.next();
                    if (newAttribute2.type.equals(key)) {
                        newAttribute2.addContext(i);
                        break;
                    }
                } else {
                    if ("error".equals(value)) {
                        newAttribute = new NewAttribute.ErrorAttribute(key, i);
                    } else if ("strip".equals(value)) {
                        newAttribute = new NewAttribute.StripAttribute(key, i);
                    } else if ("pass".equals(value)) {
                        newAttribute = new NewAttribute.PassAttribute(key, i);
                    } else {
                        newAttribute = new NewAttribute(key, value, i);
                    }
                    list.add(newAttribute);
                    break;
                }
            }
        }
    }

    public void addPassFile(String str) {
        String separator = FileSystems.getDefault().getSeparator();
        if (separator.equals("\\")) {
            separator = separator + "\\";
        }
        this.passFiles.add(str.replaceAll(separator, "/"));
    }

    public String getDeflateHint() {
        return this.deflateHint;
    }

    public int getEffort() {
        return this.effort;
    }

    public String getLogFile() {
        return this.logFile;
    }

    public String getModificationTime() {
        return this.modificationTime;
    }

    private String getOrDefault(Map<String, String> map, String str, String str2) {
        return map == null ? str2 : map.getOrDefault(str, str2);
    }

    public long getSegmentLimit() {
        return this.segmentLimit;
    }

    public String getUnknownAttributeAction() {
        return this.unknownAttributeAction;
    }

    public Attribute[] getUnknownAttributePrototypes() {
        if (this.unknownAttributeTypes == null) {
            ArrayList arrayList = new ArrayList();
            addOrUpdateAttributeActions(arrayList, this.classAttributeActions, 0);
            addOrUpdateAttributeActions(arrayList, this.methodAttributeActions, 2);
            addOrUpdateAttributeActions(arrayList, this.fieldAttributeActions, 1);
            addOrUpdateAttributeActions(arrayList, this.codeAttributeActions, 3);
            this.unknownAttributeTypes = (Attribute[]) arrayList.toArray(EMPTY_ATTRIBUTE_ARRAY);
        }
        return this.unknownAttributeTypes;
    }

    public String getUnknownClassAttributeAction(String str) {
        return getOrDefault(this.classAttributeActions, str, this.unknownAttributeAction);
    }

    public String getUnknownCodeAttributeAction(String str) {
        return getOrDefault(this.codeAttributeActions, str, this.unknownAttributeAction);
    }

    public String getUnknownFieldAttributeAction(String str) {
        return getOrDefault(this.fieldAttributeActions, str, this.unknownAttributeAction);
    }

    public String getUnknownMethodAttributeAction(String str) {
        return getOrDefault(this.methodAttributeActions, str, this.unknownAttributeAction);
    }

    public boolean isGzip() {
        return this.gzip;
    }

    public boolean isKeepDeflateHint() {
        return "keep".equals(this.deflateHint);
    }

    public boolean isKeepFileOrder() {
        return this.keepFileOrder;
    }

    public boolean isPassFile(String str) {
        Iterator<String> it = this.passFiles.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (str.equals(next)) {
                return true;
            }
            if (!next.endsWith(".class")) {
                if (!next.endsWith("/")) {
                    next = next + "/";
                }
                return str.startsWith(next);
            }
        }
        return false;
    }

    public boolean isStripDebug() {
        return this.stripDebug;
    }

    public boolean isVerbose() {
        return this.verbose;
    }

    public void removePassFile(String str) {
        this.passFiles.remove(str);
    }

    public void setDeflateHint(String str) {
        if (!"keep".equals(str) && !"true".equals(str) && !"false".equals(str)) {
            throw new IllegalArgumentException("Bad argument: -H " + str + " ? deflate hint should be either true, false or keep (default)");
        }
        this.deflateHint = str;
    }

    public void setEffort(int i) {
        this.effort = i;
    }

    public void setGzip(boolean z) {
        this.gzip = z;
    }

    public void setKeepFileOrder(boolean z) {
        this.keepFileOrder = z;
    }

    public void setLogFile(String str) {
        this.logFile = str;
    }

    public void setModificationTime(String str) {
        if (!"keep".equals(str) && !"latest".equals(str)) {
            throw new IllegalArgumentException("Bad argument: -m " + str + " ? transmit modtimes should be either latest or keep (default)");
        }
        this.modificationTime = str;
    }

    public void setQuiet(boolean z) {
        this.verbose = !z;
    }

    public void setSegmentLimit(long j) {
        this.segmentLimit = j;
    }

    public void setStripDebug(boolean z) {
        this.stripDebug = z;
    }

    public void setUnknownAttributeAction(String str) {
        this.unknownAttributeAction = str;
        if (!"pass".equals(str) && !"error".equals(str) && !"strip".equals(str)) {
            throw new IllegalArgumentException("Incorrect option for -U, " + str);
        }
    }

    public void setVerbose(boolean z) {
        this.verbose = z;
    }
}
