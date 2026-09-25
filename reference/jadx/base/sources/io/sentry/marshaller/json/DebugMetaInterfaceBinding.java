package io.sentry.marshaller.json;

import com.fasterxml.jackson.core.JsonGenerator;
import io.sentry.event.interfaces.DebugMetaInterface;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DebugMetaInterfaceBinding implements InterfaceBinding<DebugMetaInterface> {
    private static final String IMAGES = "images";
    private static final String TYPE = "type";
    private static final String UUID = "uuid";

    @Override // io.sentry.marshaller.json.InterfaceBinding
    public void writeInterface(JsonGenerator jsonGenerator, DebugMetaInterface debugMetaInterface) throws IOException {
        jsonGenerator.writeStartObject();
        writeDebugImages(jsonGenerator, debugMetaInterface);
        jsonGenerator.writeEndObject();
    }

    private void writeDebugImages(JsonGenerator jsonGenerator, DebugMetaInterface debugMetaInterface) throws IOException {
        jsonGenerator.writeArrayFieldStart(IMAGES);
        for (DebugMetaInterface.DebugImage debugImage : debugMetaInterface.getDebugImages()) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(UUID, debugImage.getUuid());
            jsonGenerator.writeStringField("type", debugImage.getType());
            jsonGenerator.writeEndObject();
        }
        jsonGenerator.writeEndArray();
    }
}
