package io.sentry.marshaller.json;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.iiordanov.pubkeygenerator.PubkeyDatabase;
import io.sentry.event.Breadcrumb;
import io.sentry.event.Event;
import io.sentry.event.Sdk;
import io.sentry.event.interfaces.SentryInterface;
import io.sentry.marshaller.Marshaller;
import io.sentry.util.Util;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class JsonMarshaller implements Marshaller {
    public static final String BREADCRUMBS = "breadcrumbs";
    public static final String CHECKSUM = "checksum";
    public static final String CONTEXTS = "contexts";
    public static final String CULPRIT = "culprit";
    public static final int DEFAULT_MAX_MESSAGE_LENGTH = 1000;
    public static final String DIST = "dist";
    public static final String ENVIRONMENT = "environment";
    public static final String EVENT_ID = "event_id";
    public static final String EXTRA = "extra";
    public static final String FINGERPRINT = "fingerprint";
    public static final String LEVEL = "level";
    public static final String LOGGER = "logger";
    public static final String MESSAGE = "message";
    public static final String MODULES = "modules";
    public static final String PLATFORM = "platform";
    public static final String RELEASE = "release";
    public static final String SDK = "sdk";
    public static final String SERVER_NAME = "server_name";
    public static final String TAGS = "tags";
    public static final String TIMESTAMP = "timestamp";
    public static final String TRANSACTION = "transaction";
    private boolean compression;
    private final Map<Class<? extends SentryInterface>, InterfaceBinding<?>> interfaceBindings;
    private final JsonFactory jsonFactory;
    private final int maxMessageLength;
    private static final ThreadLocal<DateFormat> ISO_FORMAT = new ThreadLocal<DateFormat>() { // from class: io.sentry.marshaller.json.JsonMarshaller.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    };
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) JsonMarshaller.class);

    public JsonMarshaller() {
        this(1000);
    }

    public JsonMarshaller(int i) {
        this.jsonFactory = new JsonFactory();
        this.interfaceBindings = new HashMap();
        this.compression = true;
        this.maxMessageLength = i;
    }

    @Override // io.sentry.marshaller.Marshaller
    public void marshall(Event event, OutputStream outputStream) throws IOException {
        OutputStream uncloseableOutputStream = new Marshaller.UncloseableOutputStream(outputStream);
        if (this.compression) {
            uncloseableOutputStream = new GZIPOutputStream(uncloseableOutputStream);
        }
        try {
            try {
                try {
                    JsonGenerator jsonGeneratorCreateJsonGenerator = createJsonGenerator(uncloseableOutputStream);
                    try {
                        writeContent(jsonGeneratorCreateJsonGenerator, event);
                        if (jsonGeneratorCreateJsonGenerator != null) {
                            jsonGeneratorCreateJsonGenerator.close();
                        }
                        uncloseableOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            if (jsonGeneratorCreateJsonGenerator != null) {
                                try {
                                    jsonGeneratorCreateJsonGenerator.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (IOException e) {
                    logger.error("An exception occurred while serialising the event.", (Throwable) e);
                    uncloseableOutputStream.close();
                }
            } catch (Throwable th4) {
                try {
                    uncloseableOutputStream.close();
                } catch (IOException e2) {
                    logger.error("An exception occurred while serialising the event.", (Throwable) e2);
                }
                throw th4;
            }
        } catch (IOException e3) {
            logger.error("An exception occurred while serialising the event.", (Throwable) e3);
        }
    }

    protected JsonGenerator createJsonGenerator(OutputStream outputStream) throws IOException {
        return new SentryJsonGenerator(this.jsonFactory.createGenerator(outputStream));
    }

    @Override // io.sentry.marshaller.Marshaller
    public String getContentType() {
        return "application/json";
    }

    @Override // io.sentry.marshaller.Marshaller
    public String getContentEncoding() {
        if (isCompressed()) {
            return "gzip";
        }
        return null;
    }

    private void writeContent(JsonGenerator jsonGenerator, Event event) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.writeStringField(EVENT_ID, formatId(event.getId()));
        jsonGenerator.writeStringField(MESSAGE, Util.trimString(event.getMessage(), this.maxMessageLength));
        jsonGenerator.writeStringField("timestamp", ISO_FORMAT.get().format(event.getTimestamp()));
        jsonGenerator.writeStringField(LEVEL, formatLevel(event.getLevel()));
        jsonGenerator.writeStringField(LOGGER, event.getLogger());
        jsonGenerator.writeStringField(PLATFORM, event.getPlatform());
        jsonGenerator.writeStringField(CULPRIT, event.getCulprit());
        jsonGenerator.writeStringField(TRANSACTION, event.getTransaction());
        writeSdk(jsonGenerator, event.getSdk());
        writeTags(jsonGenerator, event.getTags());
        writeBreadcumbs(jsonGenerator, event.getBreadcrumbs());
        writeContexts(jsonGenerator, event.getContexts());
        jsonGenerator.writeStringField(SERVER_NAME, event.getServerName());
        jsonGenerator.writeStringField("release", event.getRelease());
        jsonGenerator.writeStringField("dist", event.getDist());
        jsonGenerator.writeStringField("environment", event.getEnvironment());
        writeExtras(jsonGenerator, event.getExtra());
        writeCollection(jsonGenerator, FINGERPRINT, event.getFingerprint());
        jsonGenerator.writeStringField(CHECKSUM, event.getChecksum());
        writeInterfaces(jsonGenerator, event.getSentryInterfaces());
        jsonGenerator.writeEndObject();
    }

    private void writeInterfaces(JsonGenerator jsonGenerator, Map<String, SentryInterface> map) throws IOException {
        for (Map.Entry<String, SentryInterface> entry : map.entrySet()) {
            SentryInterface value = entry.getValue();
            if (this.interfaceBindings.containsKey(value.getClass())) {
                jsonGenerator.writeFieldName(entry.getKey());
                getInterfaceBinding(value).writeInterface(jsonGenerator, entry.getValue());
            } else {
                logger.error("Couldn't parse the content of '{}' provided in {}.", entry.getKey(), value);
            }
        }
    }

    private <T extends SentryInterface> InterfaceBinding<? super T> getInterfaceBinding(T t) {
        return (InterfaceBinding) this.interfaceBindings.get(t.getClass());
    }

    private void writeExtras(JsonGenerator jsonGenerator, Map<String, Object> map) throws IOException {
        jsonGenerator.writeObjectFieldStart("extra");
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            jsonGenerator.writeFieldName(entry.getKey());
            jsonGenerator.writeObject(entry.getValue());
        }
        jsonGenerator.writeEndObject();
    }

    private void writeCollection(JsonGenerator jsonGenerator, String str, Collection<String> collection) throws IOException {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        jsonGenerator.writeArrayFieldStart(str);
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            jsonGenerator.writeString(it.next());
        }
        jsonGenerator.writeEndArray();
    }

    private void writeSdk(JsonGenerator jsonGenerator, Sdk sdk) throws IOException {
        jsonGenerator.writeObjectFieldStart(SDK);
        jsonGenerator.writeStringField("name", sdk.getName());
        jsonGenerator.writeStringField("version", sdk.getVersion());
        if (sdk.getIntegrations() != null && !sdk.getIntegrations().isEmpty()) {
            jsonGenerator.writeArrayFieldStart("integrations");
            Iterator<String> it = sdk.getIntegrations().iterator();
            while (it.hasNext()) {
                jsonGenerator.writeString(it.next());
            }
            jsonGenerator.writeEndArray();
        }
        jsonGenerator.writeEndObject();
    }

    private void writeTags(JsonGenerator jsonGenerator, Map<String, String> map) throws IOException {
        jsonGenerator.writeObjectFieldStart("tags");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            jsonGenerator.writeStringField(entry.getKey(), entry.getValue());
        }
        jsonGenerator.writeEndObject();
    }

    private void writeBreadcumbs(JsonGenerator jsonGenerator, List<Breadcrumb> list) throws IOException {
        if (list.isEmpty()) {
            return;
        }
        jsonGenerator.writeObjectFieldStart(BREADCRUMBS);
        jsonGenerator.writeArrayFieldStart("values");
        for (Breadcrumb breadcrumb : list) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("timestamp", breadcrumb.getTimestamp().getTime() / 1000);
            if (breadcrumb.getType() != null) {
                jsonGenerator.writeStringField(PubkeyDatabase.FIELD_PUBKEY_TYPE, breadcrumb.getType().getValue());
            }
            if (breadcrumb.getLevel() != null) {
                jsonGenerator.writeStringField(LEVEL, breadcrumb.getLevel().getValue());
            }
            if (breadcrumb.getMessage() != null) {
                jsonGenerator.writeStringField(MESSAGE, breadcrumb.getMessage());
            }
            if (breadcrumb.getCategory() != null) {
                jsonGenerator.writeStringField("category", breadcrumb.getCategory());
            }
            if (breadcrumb.getData() != null && !breadcrumb.getData().isEmpty()) {
                jsonGenerator.writeObjectFieldStart("data");
                for (Map.Entry<String, String> entry : breadcrumb.getData().entrySet()) {
                    jsonGenerator.writeStringField(entry.getKey(), entry.getValue());
                }
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
        }
        jsonGenerator.writeEndArray();
        jsonGenerator.writeEndObject();
    }

    private void writeContexts(JsonGenerator jsonGenerator, Map<String, Map<String, Object>> map) throws IOException {
        if (map.isEmpty()) {
            return;
        }
        jsonGenerator.writeObjectFieldStart(CONTEXTS);
        for (Map.Entry<String, Map<String, Object>> entry : map.entrySet()) {
            jsonGenerator.writeObjectFieldStart(entry.getKey());
            for (Map.Entry<String, Object> entry2 : entry.getValue().entrySet()) {
                jsonGenerator.writeObjectField(entry2.getKey(), entry2.getValue());
            }
            jsonGenerator.writeEndObject();
        }
        jsonGenerator.writeEndObject();
    }

    private String formatId(UUID uuid) {
        return uuid.toString().replaceAll("-", "");
    }

    /* JADX INFO: renamed from: io.sentry.marshaller.json.JsonMarshaller$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$sentry$event$Event$Level;

        static {
            int[] iArr = new int[Event.Level.values().length];
            $SwitchMap$io$sentry$event$Event$Level = iArr;
            try {
                iArr[Event.Level.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$sentry$event$Event$Level[Event.Level.FATAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$sentry$event$Event$Level[Event.Level.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$sentry$event$Event$Level[Event.Level.INFO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$sentry$event$Event$Level[Event.Level.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private String formatLevel(Event.Level level) {
        if (level == null) {
            return null;
        }
        int i = AnonymousClass2.$SwitchMap$io$sentry$event$Event$Level[level.ordinal()];
        if (i == 1) {
            return "debug";
        }
        if (i == 2) {
            return "fatal";
        }
        if (i == 3) {
            return "warning";
        }
        if (i == 4) {
            return "info";
        }
        if (i == 5) {
            return "error";
        }
        logger.error("The level '{}' isn't supported, this should NEVER happen, contact Sentry developers", level.name());
        return null;
    }

    public <T extends SentryInterface, F extends T> void addInterfaceBinding(Class<F> cls, InterfaceBinding<T> interfaceBinding) {
        this.interfaceBindings.put(cls, interfaceBinding);
    }

    public void setCompression(boolean z) {
        this.compression = z;
    }

    public boolean isCompressed() {
        return this.compression;
    }
}
