package io.sentry.event;

import androidx.core.app.NotificationCompat;
import java.io.Serializable;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes2.dex */
public class Breadcrumb implements Serializable {
    private final String category;
    private final Map<String, String> data;
    private final Level level;
    private final String message;
    private final Date timestamp;
    private final Type type;

    public enum Level {
        DEBUG("debug"),
        INFO("info"),
        WARNING("warning"),
        ERROR("error"),
        CRITICAL("critical");

        private final String value;

        Level(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Type {
        DEFAULT("default"),
        HTTP(HttpHost.DEFAULT_SCHEME_NAME),
        NAVIGATION(NotificationCompat.CATEGORY_NAVIGATION),
        USER("user");

        private final String value;

        Type(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    Breadcrumb(Type type, Date date, Level level, String str, String str2, Map<String, String> map) {
        date = date == null ? new Date() : date;
        if (str == null && (map == null || map.size() < 1)) {
            throw new IllegalArgumentException("one of 'message' or 'data' must be set");
        }
        this.type = type;
        this.timestamp = date;
        this.level = level;
        this.message = str;
        this.category = str2;
        this.data = map;
    }

    public Type getType() {
        return this.type;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public Level getLevel() {
        return this.level;
    }

    public String getMessage() {
        return this.message;
    }

    public String getCategory() {
        return this.category;
    }

    public Map<String, String> getData() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Breadcrumb breadcrumb = (Breadcrumb) obj;
        return this.type == breadcrumb.type && Objects.equals(this.timestamp, breadcrumb.timestamp) && this.level == breadcrumb.level && Objects.equals(this.message, breadcrumb.message) && Objects.equals(this.category, breadcrumb.category) && Objects.equals(this.data, breadcrumb.data);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.timestamp, this.level, this.message, this.category, this.data);
    }
}
