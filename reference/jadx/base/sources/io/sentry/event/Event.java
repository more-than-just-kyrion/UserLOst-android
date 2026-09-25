package io.sentry.event;

import io.sentry.event.interfaces.SentryInterface;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class Event implements Serializable {
    private static final Logger _logger = LoggerFactory.getLogger((Class<?>) Event.class);
    private String checksum;
    private String culprit;
    private String dist;
    private String environment;
    private List<String> fingerprint;
    private final UUID id;
    private Level level;
    private String logger;
    private String message;
    private String platform;
    private String release;
    private Sdk sdk;
    private String serverName;
    private Date timestamp;
    private String transaction;
    private Map<String, String> tags = new HashMap();
    private List<Breadcrumb> breadcrumbs = new ArrayList();
    private Map<String, Map<String, Object>> contexts = new HashMap();
    private transient Map<String, Object> extra = new HashMap();
    private Map<String, SentryInterface> sentryInterfaces = new HashMap();

    public enum Level {
        FATAL,
        ERROR,
        WARNING,
        INFO,
        DEBUG
    }

    Event(UUID uuid) {
        if (uuid == null) {
            throw new IllegalArgumentException("The id can't be null");
        }
        this.id = uuid;
    }

    public UUID getId() {
        return this.id;
    }

    public String getMessage() {
        return this.message;
    }

    void setMessage(String str) {
        this.message = str;
    }

    public Date getTimestamp() {
        Date date = this.timestamp;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    void setTimestamp(Date date) {
        this.timestamp = date;
    }

    public Level getLevel() {
        return this.level;
    }

    void setLevel(Level level) {
        this.level = level;
    }

    public String getLogger() {
        return this.logger;
    }

    void setLogger(String str) {
        this.logger = str;
    }

    public String getPlatform() {
        return this.platform;
    }

    void setPlatform(String str) {
        this.platform = str;
    }

    public Sdk getSdk() {
        return this.sdk;
    }

    public void setSdk(Sdk sdk) {
        this.sdk = sdk;
    }

    public String getCulprit() {
        return this.culprit;
    }

    @Deprecated
    void setCulprit(String str) {
        this.culprit = str;
    }

    public String getTransaction() {
        return this.transaction;
    }

    void setTransaction(String str) {
        this.transaction = str;
    }

    public List<Breadcrumb> getBreadcrumbs() {
        return this.breadcrumbs;
    }

    void setBreadcrumbs(List<Breadcrumb> list) {
        this.breadcrumbs = list;
    }

    public Map<String, Map<String, Object>> getContexts() {
        return this.contexts;
    }

    public void setContexts(Map<String, Map<String, Object>> map) {
        this.contexts = map;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    void setTags(Map<String, String> map) {
        this.tags = map;
    }

    public String getServerName() {
        return this.serverName;
    }

    void setServerName(String str) {
        this.serverName = str;
    }

    public String getRelease() {
        return this.release;
    }

    void setRelease(String str) {
        this.release = str;
    }

    public String getDist() {
        return this.dist;
    }

    public void setDist(String str) {
        this.dist = str;
    }

    public String getEnvironment() {
        return this.environment;
    }

    void setEnvironment(String str) {
        this.environment = str;
    }

    public Map<String, Object> getExtra() {
        if (this.extra == null) {
            this.extra = new HashMap();
            _logger.warn("`extra` field was null, deserialization must not have been called, please check your ProGuard (or other obfuscation) configuration.");
        }
        return this.extra;
    }

    void setExtra(Map<String, Object> map) {
        this.extra = map;
    }

    public List<String> getFingerprint() {
        return this.fingerprint;
    }

    public void setFingerprint(List<String> list) {
        this.fingerprint = list;
    }

    public String getChecksum() {
        return this.checksum;
    }

    void setChecksum(String str) {
        this.checksum = str;
    }

    public Map<String, SentryInterface> getSentryInterfaces() {
        return this.sentryInterfaces;
    }

    void setSentryInterfaces(Map<String, SentryInterface> map) {
        this.sentryInterfaces = map;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.extra = (Map) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(convertToSerializable(this.extra));
    }

    private static HashMap<String, ? super Serializable> convertToSerializable(Map<String, Object> map) {
        HashMap<String, ? super Serializable> map2 = new HashMap<>(map.size());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() == null) {
                map2.put(entry.getKey(), null);
            } else if (entry.getValue() instanceof Serializable) {
                map2.put(entry.getKey(), (Serializable) entry.getValue());
            } else {
                map2.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return map2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.id.equals(((Event) obj).id);
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public String toString() {
        return "Event{level=" + this.level + ", message='" + this.message + "', logger='" + this.logger + "'}";
    }
}
