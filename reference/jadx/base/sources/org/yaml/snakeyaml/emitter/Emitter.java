package org.yaml.snakeyaml.emitter;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Queue;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.apache.http.message.TokenParser;
import org.slf4j.Marker;
import org.yaml.snakeyaml.DumperOptions;
import org.yaml.snakeyaml.error.YAMLException;
import org.yaml.snakeyaml.events.AliasEvent;
import org.yaml.snakeyaml.events.CollectionEndEvent;
import org.yaml.snakeyaml.events.CollectionStartEvent;
import org.yaml.snakeyaml.events.DocumentEndEvent;
import org.yaml.snakeyaml.events.DocumentStartEvent;
import org.yaml.snakeyaml.events.Event;
import org.yaml.snakeyaml.events.MappingEndEvent;
import org.yaml.snakeyaml.events.MappingStartEvent;
import org.yaml.snakeyaml.events.NodeEvent;
import org.yaml.snakeyaml.events.ScalarEvent;
import org.yaml.snakeyaml.events.SequenceEndEvent;
import org.yaml.snakeyaml.events.SequenceStartEvent;
import org.yaml.snakeyaml.events.StreamEndEvent;
import org.yaml.snakeyaml.events.StreamStartEvent;
import org.yaml.snakeyaml.nodes.Tag;
import org.yaml.snakeyaml.reader.StreamReader;
import org.yaml.snakeyaml.scanner.Constant;
import org.yaml.snakeyaml.util.ArrayStack;

/* JADX INFO: loaded from: classes3.dex */
public final class Emitter implements Emitable {
    private static final Pattern ANCHOR_FORMAT;
    private static final Map<String, String> DEFAULT_TAG_PREFIXES;
    private static final Map<Character, String> ESCAPE_REPLACEMENTS;
    private static final Pattern HANDLE_FORMAT;
    public static final int MAX_INDENT = 10;
    public static final int MIN_INDENT = 1;
    private static final char[] SPACE;
    private boolean allowUnicode;
    private ScalarAnalysis analysis;
    private int bestIndent;
    private char[] bestLineBreak;
    private int bestWidth;
    private Boolean canonical;
    private int indicatorIndent;
    private String preparedAnchor;
    private String preparedTag;
    private Boolean prettyFlow;
    private boolean rootContext;
    private boolean splitLines;
    private final Writer stream;
    private DumperOptions.ScalarStyle style;
    private Map<String, String> tagPrefixes;
    private final ArrayStack<EmitterState> states = new ArrayStack<>(100);
    private EmitterState state = new ExpectStreamStart(this, null);
    private final Queue<Event> events = new ArrayBlockingQueue(100);
    private Event event = null;
    private final ArrayStack<Integer> indents = new ArrayStack<>(10);
    private Integer indent = null;
    private int flowLevel = 0;
    private boolean mappingContext = false;
    private boolean simpleKeyContext = false;
    private int column = 0;
    private boolean whitespace = true;
    private boolean indention = true;
    private boolean openEnded = false;

    void writeStreamStart() {
    }

    static /* synthetic */ int access$2010(Emitter emitter) {
        int i = emitter.flowLevel;
        emitter.flowLevel = i - 1;
        return i;
    }

    static {
        HashMap map = new HashMap();
        ESCAPE_REPLACEMENTS = map;
        SPACE = new char[]{TokenParser.SP};
        map.put((char) 0, "0");
        map.put((char) 7, "a");
        map.put('\b', "b");
        map.put('\t', "t");
        map.put('\n', "n");
        map.put((char) 11, "v");
        map.put('\f', "f");
        map.put('\r', "r");
        map.put((char) 27, "e");
        map.put('\"', "\"");
        map.put('\\', "\\");
        map.put((char) 133, "N");
        map.put(Character.valueOf(Typography.nbsp), "_");
        map.put((char) 8232, "L");
        map.put((char) 8233, "P");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DEFAULT_TAG_PREFIXES = linkedHashMap;
        linkedHashMap.put("!", "!");
        linkedHashMap.put(Tag.PREFIX, "!!");
        HANDLE_FORMAT = Pattern.compile("^![-_\\w]*!$");
        ANCHOR_FORMAT = Pattern.compile("^[-_\\w]*$");
    }

    public Emitter(Writer writer, DumperOptions dumperOptions) {
        this.stream = writer;
        this.canonical = Boolean.valueOf(dumperOptions.isCanonical());
        this.prettyFlow = Boolean.valueOf(dumperOptions.isPrettyFlow());
        this.allowUnicode = dumperOptions.isAllowUnicode();
        this.bestIndent = 2;
        if (dumperOptions.getIndent() > 1 && dumperOptions.getIndent() < 10) {
            this.bestIndent = dumperOptions.getIndent();
        }
        this.indicatorIndent = dumperOptions.getIndicatorIndent();
        this.bestWidth = 80;
        if (dumperOptions.getWidth() > this.bestIndent * 2) {
            this.bestWidth = dumperOptions.getWidth();
        }
        this.bestLineBreak = dumperOptions.getLineBreak().getString().toCharArray();
        this.splitLines = dumperOptions.getSplitLines();
        this.tagPrefixes = new LinkedHashMap();
        this.preparedAnchor = null;
        this.preparedTag = null;
        this.analysis = null;
        this.style = null;
    }

    @Override // org.yaml.snakeyaml.emitter.Emitable
    public void emit(Event event) throws IOException {
        this.events.add(event);
        while (!needMoreEvents()) {
            this.event = this.events.poll();
            this.state.expect();
            this.event = null;
        }
    }

    private boolean needMoreEvents() {
        if (this.events.isEmpty()) {
            return true;
        }
        Event eventPeek = this.events.peek();
        if (eventPeek instanceof DocumentStartEvent) {
            return needEvents(1);
        }
        if (eventPeek instanceof SequenceStartEvent) {
            return needEvents(2);
        }
        if (eventPeek instanceof MappingStartEvent) {
            return needEvents(3);
        }
        return false;
    }

    private boolean needEvents(int i) {
        Iterator<Event> it = this.events.iterator();
        it.next();
        int i2 = 0;
        while (it.hasNext()) {
            Event next = it.next();
            if ((next instanceof DocumentStartEvent) || (next instanceof CollectionStartEvent)) {
                i2++;
            } else if ((next instanceof DocumentEndEvent) || (next instanceof CollectionEndEvent)) {
                i2--;
            } else if (next instanceof StreamEndEvent) {
                i2 = -1;
            }
            if (i2 < 0) {
                return false;
            }
        }
        return this.events.size() < i + 1;
    }

    private void increaseIndent(boolean z, boolean z2) {
        this.indents.push(this.indent);
        Integer num = this.indent;
        if (num != null) {
            if (z2) {
                return;
            }
            this.indent = Integer.valueOf(num.intValue() + this.bestIndent);
        } else if (z) {
            this.indent = Integer.valueOf(this.bestIndent);
        } else {
            this.indent = 0;
        }
    }

    private class ExpectStreamStart implements EmitterState {
        private ExpectStreamStart() {
        }

        /* synthetic */ ExpectStreamStart(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (Emitter.this.event instanceof StreamStartEvent) {
                Emitter.this.writeStreamStart();
                Emitter.this.state = new ExpectFirstDocumentStart(Emitter.this, null);
                return;
            }
            throw new EmitterException("expected StreamStartEvent, but got " + Emitter.this.event);
        }
    }

    private class ExpectNothing implements EmitterState {
        private ExpectNothing() {
        }

        /* synthetic */ ExpectNothing(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            throw new EmitterException("expecting nothing, but got " + Emitter.this.event);
        }
    }

    private class ExpectFirstDocumentStart implements EmitterState {
        private ExpectFirstDocumentStart() {
        }

        /* synthetic */ ExpectFirstDocumentStart(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.new ExpectDocumentStart(true).expect();
        }
    }

    private class ExpectDocumentStart implements EmitterState {
        private boolean first;

        public ExpectDocumentStart(boolean z) {
            this.first = z;
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            AnonymousClass1 anonymousClass1 = null;
            if (Emitter.this.event instanceof DocumentStartEvent) {
                DocumentStartEvent documentStartEvent = (DocumentStartEvent) Emitter.this.event;
                if ((documentStartEvent.getVersion() != null || documentStartEvent.getTags() != null) && Emitter.this.openEnded) {
                    Emitter.this.writeIndicator("...", true, false, false);
                    Emitter.this.writeIndent();
                }
                if (documentStartEvent.getVersion() != null) {
                    Emitter.this.writeVersionDirective(Emitter.this.prepareVersion(documentStartEvent.getVersion()));
                }
                Emitter.this.tagPrefixes = new LinkedHashMap(Emitter.DEFAULT_TAG_PREFIXES);
                if (documentStartEvent.getTags() != null) {
                    for (String str : new TreeSet(documentStartEvent.getTags().keySet())) {
                        String str2 = documentStartEvent.getTags().get(str);
                        Emitter.this.tagPrefixes.put(str2, str);
                        Emitter.this.writeTagDirective(Emitter.this.prepareTagHandle(str), Emitter.this.prepareTagPrefix(str2));
                    }
                }
                if (!this.first || documentStartEvent.getExplicit() || Emitter.this.canonical.booleanValue() || documentStartEvent.getVersion() != null || ((documentStartEvent.getTags() != null && !documentStartEvent.getTags().isEmpty()) || Emitter.this.checkEmptyDocument())) {
                    Emitter.this.writeIndent();
                    Emitter.this.writeIndicator("---", true, false, false);
                    if (Emitter.this.canonical.booleanValue()) {
                        Emitter.this.writeIndent();
                    }
                }
                Emitter.this.state = new ExpectDocumentRoot(Emitter.this, anonymousClass1);
                return;
            }
            if (Emitter.this.event instanceof StreamEndEvent) {
                Emitter.this.writeStreamEnd();
                Emitter.this.state = new ExpectNothing(Emitter.this, anonymousClass1);
                return;
            }
            throw new EmitterException("expected DocumentStartEvent, but got " + Emitter.this.event);
        }
    }

    private class ExpectDocumentEnd implements EmitterState {
        private ExpectDocumentEnd() {
        }

        /* synthetic */ ExpectDocumentEnd(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (Emitter.this.event instanceof DocumentEndEvent) {
                Emitter.this.writeIndent();
                if (((DocumentEndEvent) Emitter.this.event).getExplicit()) {
                    Emitter.this.writeIndicator("...", true, false, false);
                    Emitter.this.writeIndent();
                }
                Emitter.this.flushStream();
                Emitter.this.state = Emitter.this.new ExpectDocumentStart(false);
                return;
            }
            throw new EmitterException("expected DocumentEndEvent, but got " + Emitter.this.event);
        }
    }

    private class ExpectDocumentRoot implements EmitterState {
        private ExpectDocumentRoot() {
        }

        /* synthetic */ ExpectDocumentRoot(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.states.push(new ExpectDocumentEnd(Emitter.this, null));
            Emitter.this.expectNode(true, false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expectNode(boolean z, boolean z2, boolean z3) throws IOException {
        this.rootContext = z;
        this.mappingContext = z2;
        this.simpleKeyContext = z3;
        Event event = this.event;
        if (event instanceof AliasEvent) {
            expectAlias();
            return;
        }
        if ((event instanceof ScalarEvent) || (event instanceof CollectionStartEvent)) {
            processAnchor("&");
            processTag();
            Event event2 = this.event;
            if (event2 instanceof ScalarEvent) {
                expectScalar();
                return;
            }
            if (event2 instanceof SequenceStartEvent) {
                if (this.flowLevel != 0 || this.canonical.booleanValue() || ((SequenceStartEvent) this.event).isFlow() || checkEmptySequence()) {
                    expectFlowSequence();
                    return;
                } else {
                    expectBlockSequence();
                    return;
                }
            }
            if (this.flowLevel != 0 || this.canonical.booleanValue() || ((MappingStartEvent) this.event).isFlow() || checkEmptyMapping()) {
                expectFlowMapping();
                return;
            } else {
                expectBlockMapping();
                return;
            }
        }
        throw new EmitterException("expected NodeEvent, but got " + this.event);
    }

    private void expectAlias() throws IOException {
        if (((NodeEvent) this.event).getAnchor() == null) {
            throw new EmitterException("anchor is not specified for alias");
        }
        processAnchor(Marker.ANY_MARKER);
        this.state = this.states.pop();
    }

    private void expectScalar() throws IOException {
        increaseIndent(true, false);
        processScalar();
        this.indent = this.indents.pop();
        this.state = this.states.pop();
    }

    private void expectFlowSequence() throws IOException {
        writeIndicator("[", true, true, false);
        this.flowLevel++;
        increaseIndent(true, false);
        if (this.prettyFlow.booleanValue()) {
            writeIndent();
        }
        this.state = new ExpectFirstFlowSequenceItem(this, null);
    }

    private class ExpectFirstFlowSequenceItem implements EmitterState {
        private ExpectFirstFlowSequenceItem() {
        }

        /* synthetic */ ExpectFirstFlowSequenceItem(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (!(Emitter.this.event instanceof SequenceEndEvent)) {
                if (Emitter.this.canonical.booleanValue() || ((Emitter.this.column > Emitter.this.bestWidth && Emitter.this.splitLines) || Emitter.this.prettyFlow.booleanValue())) {
                    Emitter.this.writeIndent();
                }
                Emitter.this.states.push(new ExpectFlowSequenceItem(Emitter.this, null));
                Emitter.this.expectNode(false, false, false);
                return;
            }
            Emitter emitter = Emitter.this;
            emitter.indent = (Integer) emitter.indents.pop();
            Emitter.access$2010(Emitter.this);
            Emitter.this.writeIndicator("]", false, false, false);
            Emitter emitter2 = Emitter.this;
            emitter2.state = (EmitterState) emitter2.states.pop();
        }
    }

    private class ExpectFlowSequenceItem implements EmitterState {
        private ExpectFlowSequenceItem() {
        }

        /* synthetic */ ExpectFlowSequenceItem(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (Emitter.this.event instanceof SequenceEndEvent) {
                Emitter emitter = Emitter.this;
                emitter.indent = (Integer) emitter.indents.pop();
                Emitter.access$2010(Emitter.this);
                if (Emitter.this.canonical.booleanValue()) {
                    Emitter.this.writeIndicator(",", false, false, false);
                    Emitter.this.writeIndent();
                }
                Emitter.this.writeIndicator("]", false, false, false);
                if (Emitter.this.prettyFlow.booleanValue()) {
                    Emitter.this.writeIndent();
                }
                Emitter emitter2 = Emitter.this;
                emitter2.state = (EmitterState) emitter2.states.pop();
                return;
            }
            Emitter.this.writeIndicator(",", false, false, false);
            if (Emitter.this.canonical.booleanValue() || ((Emitter.this.column > Emitter.this.bestWidth && Emitter.this.splitLines) || Emitter.this.prettyFlow.booleanValue())) {
                Emitter.this.writeIndent();
            }
            Emitter.this.states.push(Emitter.this.new ExpectFlowSequenceItem());
            Emitter.this.expectNode(false, false, false);
        }
    }

    private void expectFlowMapping() throws IOException {
        writeIndicator("{", true, true, false);
        this.flowLevel++;
        increaseIndent(true, false);
        if (this.prettyFlow.booleanValue()) {
            writeIndent();
        }
        this.state = new ExpectFirstFlowMappingKey(this, null);
    }

    private class ExpectFirstFlowMappingKey implements EmitterState {
        private ExpectFirstFlowMappingKey() {
        }

        /* synthetic */ ExpectFirstFlowMappingKey(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (!(Emitter.this.event instanceof MappingEndEvent)) {
                if (Emitter.this.canonical.booleanValue() || ((Emitter.this.column > Emitter.this.bestWidth && Emitter.this.splitLines) || Emitter.this.prettyFlow.booleanValue())) {
                    Emitter.this.writeIndent();
                }
                AnonymousClass1 anonymousClass1 = null;
                if (!Emitter.this.canonical.booleanValue() && Emitter.this.checkSimpleKey()) {
                    Emitter.this.states.push(new ExpectFlowMappingSimpleValue(Emitter.this, anonymousClass1));
                    Emitter.this.expectNode(false, true, true);
                    return;
                } else {
                    Emitter.this.writeIndicator("?", true, false, false);
                    Emitter.this.states.push(new ExpectFlowMappingValue(Emitter.this, anonymousClass1));
                    Emitter.this.expectNode(false, true, false);
                    return;
                }
            }
            Emitter emitter = Emitter.this;
            emitter.indent = (Integer) emitter.indents.pop();
            Emitter.access$2010(Emitter.this);
            Emitter.this.writeIndicator("}", false, false, false);
            Emitter emitter2 = Emitter.this;
            emitter2.state = (EmitterState) emitter2.states.pop();
        }
    }

    private class ExpectFlowMappingKey implements EmitterState {
        private ExpectFlowMappingKey() {
        }

        /* synthetic */ ExpectFlowMappingKey(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (Emitter.this.event instanceof MappingEndEvent) {
                Emitter emitter = Emitter.this;
                emitter.indent = (Integer) emitter.indents.pop();
                Emitter.access$2010(Emitter.this);
                if (Emitter.this.canonical.booleanValue()) {
                    Emitter.this.writeIndicator(",", false, false, false);
                    Emitter.this.writeIndent();
                }
                if (Emitter.this.prettyFlow.booleanValue()) {
                    Emitter.this.writeIndent();
                }
                Emitter.this.writeIndicator("}", false, false, false);
                Emitter emitter2 = Emitter.this;
                emitter2.state = (EmitterState) emitter2.states.pop();
                return;
            }
            Emitter.this.writeIndicator(",", false, false, false);
            if (Emitter.this.canonical.booleanValue() || ((Emitter.this.column > Emitter.this.bestWidth && Emitter.this.splitLines) || Emitter.this.prettyFlow.booleanValue())) {
                Emitter.this.writeIndent();
            }
            AnonymousClass1 anonymousClass1 = null;
            if (!Emitter.this.canonical.booleanValue() && Emitter.this.checkSimpleKey()) {
                Emitter.this.states.push(new ExpectFlowMappingSimpleValue(Emitter.this, anonymousClass1));
                Emitter.this.expectNode(false, true, true);
            } else {
                Emitter.this.writeIndicator("?", true, false, false);
                Emitter.this.states.push(new ExpectFlowMappingValue(Emitter.this, anonymousClass1));
                Emitter.this.expectNode(false, true, false);
            }
        }
    }

    private class ExpectFlowMappingSimpleValue implements EmitterState {
        private ExpectFlowMappingSimpleValue() {
        }

        /* synthetic */ ExpectFlowMappingSimpleValue(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.writeIndicator(":", false, false, false);
            Emitter.this.states.push(new ExpectFlowMappingKey(Emitter.this, null));
            Emitter.this.expectNode(false, true, false);
        }
    }

    private class ExpectFlowMappingValue implements EmitterState {
        private ExpectFlowMappingValue() {
        }

        /* synthetic */ ExpectFlowMappingValue(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (Emitter.this.canonical.booleanValue() || Emitter.this.column > Emitter.this.bestWidth || Emitter.this.prettyFlow.booleanValue()) {
                Emitter.this.writeIndent();
            }
            Emitter.this.writeIndicator(":", true, false, false);
            Emitter.this.states.push(new ExpectFlowMappingKey(Emitter.this, null));
            Emitter.this.expectNode(false, true, false);
        }
    }

    private void expectBlockSequence() throws IOException {
        increaseIndent(false, this.mappingContext && !this.indention);
        this.state = new ExpectFirstBlockSequenceItem(this, null);
    }

    private class ExpectFirstBlockSequenceItem implements EmitterState {
        private ExpectFirstBlockSequenceItem() {
        }

        /* synthetic */ ExpectFirstBlockSequenceItem(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.new ExpectBlockSequenceItem(true).expect();
        }
    }

    private class ExpectBlockSequenceItem implements EmitterState {
        private boolean first;

        public ExpectBlockSequenceItem(boolean z) {
            this.first = z;
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (!this.first && (Emitter.this.event instanceof SequenceEndEvent)) {
                Emitter emitter = Emitter.this;
                emitter.indent = (Integer) emitter.indents.pop();
                Emitter emitter2 = Emitter.this;
                emitter2.state = (EmitterState) emitter2.states.pop();
                return;
            }
            Emitter.this.writeIndent();
            Emitter emitter3 = Emitter.this;
            emitter3.writeWhitespace(emitter3.indicatorIndent);
            Emitter.this.writeIndicator("-", true, false, true);
            Emitter.this.states.push(Emitter.this.new ExpectBlockSequenceItem(false));
            Emitter.this.expectNode(false, false, false);
        }
    }

    private void expectBlockMapping() throws IOException {
        increaseIndent(false, false);
        this.state = new ExpectFirstBlockMappingKey(this, null);
    }

    private class ExpectFirstBlockMappingKey implements EmitterState {
        private ExpectFirstBlockMappingKey() {
        }

        /* synthetic */ ExpectFirstBlockMappingKey(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.new ExpectBlockMappingKey(true).expect();
        }
    }

    private class ExpectBlockMappingKey implements EmitterState {
        private boolean first;

        public ExpectBlockMappingKey(boolean z) {
            this.first = z;
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            if (!this.first && (Emitter.this.event instanceof MappingEndEvent)) {
                Emitter emitter = Emitter.this;
                emitter.indent = (Integer) emitter.indents.pop();
                Emitter emitter2 = Emitter.this;
                emitter2.state = (EmitterState) emitter2.states.pop();
                return;
            }
            Emitter.this.writeIndent();
            AnonymousClass1 anonymousClass1 = null;
            if (Emitter.this.checkSimpleKey()) {
                Emitter.this.states.push(new ExpectBlockMappingSimpleValue(Emitter.this, anonymousClass1));
                Emitter.this.expectNode(false, true, true);
            } else {
                Emitter.this.writeIndicator("?", true, false, true);
                Emitter.this.states.push(new ExpectBlockMappingValue(Emitter.this, anonymousClass1));
                Emitter.this.expectNode(false, true, false);
            }
        }
    }

    private class ExpectBlockMappingSimpleValue implements EmitterState {
        private ExpectBlockMappingSimpleValue() {
        }

        /* synthetic */ ExpectBlockMappingSimpleValue(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.writeIndicator(":", false, false, false);
            Emitter.this.states.push(Emitter.this.new ExpectBlockMappingKey(false));
            Emitter.this.expectNode(false, true, false);
        }
    }

    private class ExpectBlockMappingValue implements EmitterState {
        private ExpectBlockMappingValue() {
        }

        /* synthetic */ ExpectBlockMappingValue(Emitter emitter, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // org.yaml.snakeyaml.emitter.EmitterState
        public void expect() throws IOException {
            Emitter.this.writeIndent();
            Emitter.this.writeIndicator(":", true, false, true);
            Emitter.this.states.push(Emitter.this.new ExpectBlockMappingKey(false));
            Emitter.this.expectNode(false, true, false);
        }
    }

    private boolean checkEmptySequence() {
        return (this.event instanceof SequenceStartEvent) && !this.events.isEmpty() && (this.events.peek() instanceof SequenceEndEvent);
    }

    private boolean checkEmptyMapping() {
        return (this.event instanceof MappingStartEvent) && !this.events.isEmpty() && (this.events.peek() instanceof MappingEndEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkEmptyDocument() {
        if (!(this.event instanceof DocumentStartEvent) || this.events.isEmpty()) {
            return false;
        }
        Event eventPeek = this.events.peek();
        if (!(eventPeek instanceof ScalarEvent)) {
            return false;
        }
        ScalarEvent scalarEvent = (ScalarEvent) eventPeek;
        return scalarEvent.getAnchor() == null && scalarEvent.getTag() == null && scalarEvent.getImplicit() != null && scalarEvent.getValue().length() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkSimpleKey() {
        int length;
        String tag;
        Event event = this.event;
        if (!(event instanceof NodeEvent) || ((NodeEvent) event).getAnchor() == null) {
            length = 0;
        } else {
            if (this.preparedAnchor == null) {
                this.preparedAnchor = prepareAnchor(((NodeEvent) this.event).getAnchor());
            }
            length = this.preparedAnchor.length();
        }
        Event event2 = this.event;
        if (event2 instanceof ScalarEvent) {
            tag = ((ScalarEvent) event2).getTag();
        } else {
            tag = event2 instanceof CollectionStartEvent ? ((CollectionStartEvent) event2).getTag() : null;
        }
        if (tag != null) {
            if (this.preparedTag == null) {
                this.preparedTag = prepareTag(tag);
            }
            length += this.preparedTag.length();
        }
        Event event3 = this.event;
        if (event3 instanceof ScalarEvent) {
            if (this.analysis == null) {
                this.analysis = analyzeScalar(((ScalarEvent) event3).getValue());
            }
            length += this.analysis.scalar.length();
        }
        if (length >= 128) {
            return false;
        }
        Event event4 = this.event;
        return (event4 instanceof AliasEvent) || !(!(event4 instanceof ScalarEvent) || this.analysis.empty || this.analysis.multiline) || checkEmptySequence() || checkEmptyMapping();
    }

    private void processAnchor(String str) throws IOException {
        NodeEvent nodeEvent = (NodeEvent) this.event;
        if (nodeEvent.getAnchor() == null) {
            this.preparedAnchor = null;
            return;
        }
        if (this.preparedAnchor == null) {
            this.preparedAnchor = prepareAnchor(nodeEvent.getAnchor());
        }
        writeIndicator(str + this.preparedAnchor, true, false, false);
        this.preparedAnchor = null;
    }

    private void processTag() throws IOException {
        String tag;
        Event event = this.event;
        if (event instanceof ScalarEvent) {
            ScalarEvent scalarEvent = (ScalarEvent) event;
            tag = scalarEvent.getTag();
            if (this.style == null) {
                this.style = chooseScalarStyle();
            }
            if ((!this.canonical.booleanValue() || tag == null) && ((this.style == null && scalarEvent.getImplicit().canOmitTagInPlainScalar()) || (this.style != null && scalarEvent.getImplicit().canOmitTagInNonPlainScalar()))) {
                this.preparedTag = null;
                return;
            } else if (scalarEvent.getImplicit().canOmitTagInPlainScalar() && tag == null) {
                this.preparedTag = null;
                tag = "!";
            }
        } else {
            CollectionStartEvent collectionStartEvent = (CollectionStartEvent) event;
            tag = collectionStartEvent.getTag();
            if ((!this.canonical.booleanValue() || tag == null) && collectionStartEvent.getImplicit()) {
                this.preparedTag = null;
                return;
            }
        }
        if (tag == null) {
            throw new EmitterException("tag is not specified");
        }
        if (this.preparedTag == null) {
            this.preparedTag = prepareTag(tag);
        }
        writeIndicator(this.preparedTag, true, false, false);
        this.preparedTag = null;
    }

    private DumperOptions.ScalarStyle chooseScalarStyle() {
        ScalarEvent scalarEvent = (ScalarEvent) this.event;
        if (this.analysis == null) {
            this.analysis = analyzeScalar(scalarEvent.getValue());
        }
        if ((!scalarEvent.isPlain() && scalarEvent.getScalarStyle() == DumperOptions.ScalarStyle.DOUBLE_QUOTED) || this.canonical.booleanValue()) {
            return DumperOptions.ScalarStyle.DOUBLE_QUOTED;
        }
        if (scalarEvent.isPlain() && scalarEvent.getImplicit().canOmitTagInPlainScalar() && (!this.simpleKeyContext || (!this.analysis.empty && !this.analysis.multiline))) {
            if (this.flowLevel != 0 && this.analysis.allowFlowPlain) {
                return null;
            }
            if (this.flowLevel == 0 && this.analysis.allowBlockPlain) {
                return null;
            }
        }
        if (!scalarEvent.isPlain() && ((scalarEvent.getScalarStyle() == DumperOptions.ScalarStyle.LITERAL || scalarEvent.getScalarStyle() == DumperOptions.ScalarStyle.FOLDED) && this.flowLevel == 0 && !this.simpleKeyContext && this.analysis.allowBlock)) {
            return scalarEvent.getScalarStyle();
        }
        if ((scalarEvent.isPlain() || scalarEvent.getScalarStyle() == DumperOptions.ScalarStyle.SINGLE_QUOTED) && this.analysis.allowSingleQuoted && (!this.simpleKeyContext || !this.analysis.multiline)) {
            return DumperOptions.ScalarStyle.SINGLE_QUOTED;
        }
        return DumperOptions.ScalarStyle.DOUBLE_QUOTED;
    }

    private void processScalar() throws IOException {
        ScalarEvent scalarEvent = (ScalarEvent) this.event;
        if (this.analysis == null) {
            this.analysis = analyzeScalar(scalarEvent.getValue());
        }
        if (this.style == null) {
            this.style = chooseScalarStyle();
        }
        boolean z = !this.simpleKeyContext && this.splitLines;
        if (this.style == null) {
            writePlain(this.analysis.scalar, z);
        } else {
            int i = AnonymousClass1.$SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle[this.style.ordinal()];
            if (i == 1) {
                writeDoubleQuoted(this.analysis.scalar, z);
            } else if (i == 2) {
                writeSingleQuoted(this.analysis.scalar, z);
            } else if (i == 3) {
                writeFolded(this.analysis.scalar, z);
            } else if (i == 4) {
                writeLiteral(this.analysis.scalar);
            } else {
                throw new YAMLException("Unexpected style: " + this.style);
            }
        }
        this.analysis = null;
        this.style = null;
    }

    /* JADX INFO: renamed from: org.yaml.snakeyaml.emitter.Emitter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle;

        static {
            int[] iArr = new int[DumperOptions.ScalarStyle.values().length];
            $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle = iArr;
            try {
                iArr[DumperOptions.ScalarStyle.DOUBLE_QUOTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle[DumperOptions.ScalarStyle.SINGLE_QUOTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle[DumperOptions.ScalarStyle.FOLDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle[DumperOptions.ScalarStyle.LITERAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String prepareVersion(DumperOptions.Version version) {
        if (version.major() != 1) {
            throw new EmitterException("unsupported YAML version: " + version);
        }
        return version.getRepresentation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String prepareTagHandle(String str) {
        if (str.length() == 0) {
            throw new EmitterException("tag handle must not be empty");
        }
        if (str.charAt(0) != '!' || str.charAt(str.length() - 1) != '!') {
            throw new EmitterException("tag handle must start and end with '!': " + str);
        }
        if ("!".equals(str) || HANDLE_FORMAT.matcher(str).matches()) {
            return str;
        }
        throw new EmitterException("invalid character in the tag handle: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String prepareTagPrefix(String str) {
        if (str.length() == 0) {
            throw new EmitterException("tag prefix must not be empty");
        }
        StringBuilder sb = new StringBuilder();
        int i = str.charAt(0) == '!' ? 1 : 0;
        while (i < str.length()) {
            i++;
        }
        if (i > 0) {
            sb.append(str.substring(0, i));
        }
        return sb.toString();
    }

    private String prepareTag(String str) {
        if (str.length() == 0) {
            throw new EmitterException("tag must not be empty");
        }
        if ("!".equals(str)) {
            return str;
        }
        String str2 = null;
        for (String str3 : this.tagPrefixes.keySet()) {
            if (str.startsWith(str3) && ("!".equals(str3) || str3.length() < str.length())) {
                str2 = str3;
            }
        }
        if (str2 != null) {
            str = str.substring(str2.length());
            str2 = this.tagPrefixes.get(str2);
        }
        int length = str.length();
        String strSubstring = length > 0 ? str.substring(0, length) : "";
        if (str2 != null) {
            return str2 + strSubstring;
        }
        return "!<" + strSubstring + ">";
    }

    static String prepareAnchor(String str) {
        if (str.length() == 0) {
            throw new EmitterException("anchor must not be empty");
        }
        if (ANCHOR_FORMAT.matcher(str).matches()) {
            return str;
        }
        throw new EmitterException("invalid character in the anchor: " + str);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0118  */
    /* JADX WARN: Code duplicated, block: B:104:0x0129 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x012e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0139  */
    /* JADX WARN: Code duplicated, block: B:117:0x0159  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:91:0x0100 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0102 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0104  */
    /* JADX WARN: Code duplicated, block: B:96:0x010f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0112  */
    private ScalarAnalysis analyzeScalar(String str) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i;
        boolean z8;
        int iCharCount;
        if (str.length() == 0) {
            return new ScalarAnalysis(str, true, false, false, true, true, false);
        }
        if (str.startsWith("---") || str.startsWith("...")) {
            z = true;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        boolean z9 = true;
        boolean z10 = str.length() == 1 || Constant.NULL_BL_T_LINEBR.has(str.codePointAt(1));
        int iCharCount2 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        boolean z20 = z2;
        boolean z21 = false;
        while (iCharCount2 < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount2);
            if (iCharCount2 == 0) {
                if ("#,[]{}&*!|>'\"%@`".indexOf(iCodePointAt) != -1) {
                    z = true;
                    z20 = true;
                }
                if (iCodePointAt == 63 || iCodePointAt == 58) {
                    if (z10) {
                        z = true;
                    }
                    z20 = true;
                }
                if (iCodePointAt == 45 && z10) {
                    z = true;
                    z20 = true;
                }
            } else {
                boolean z22 = z;
                if (",?[]{}".indexOf(iCodePointAt) != -1) {
                    i = 58;
                    z20 = true;
                } else {
                    i = 58;
                }
                if (iCodePointAt == i) {
                    z = z10 ? true : z22;
                    z20 = true;
                } else {
                    z = z22;
                }
                if (iCodePointAt == 35 && z9) {
                    z = true;
                    z20 = true;
                }
            }
            boolean zHas = Constant.LINEBR.has(iCodePointAt);
            if (zHas) {
                z21 = true;
            }
            int i2 = 32;
            if (iCodePointAt != 10 && (32 > iCodePointAt || iCodePointAt > 126)) {
                if (iCodePointAt != 133 && ((iCodePointAt < 160 || iCodePointAt > 55295) && ((iCodePointAt < 57344 || iCodePointAt > 65533) && (iCodePointAt < 65536 || iCodePointAt > 1114111)))) {
                    z17 = true;
                } else if (!this.allowUnicode) {
                    i2 = 32;
                    z17 = true;
                }
                if (iCodePointAt == i2) {
                    if (iCharCount2 == 0) {
                        z11 = true;
                    }
                    if (iCharCount2 == str.length() - 1) {
                        z13 = true;
                    }
                    if (z19) {
                        z15 = true;
                    }
                    z18 = true;
                } else {
                    if (zHas) {
                        if (iCharCount2 == 0) {
                            z12 = true;
                        }
                        if (iCharCount2 == str.length() - 1) {
                            z14 = true;
                        }
                        if (z18) {
                            z16 = true;
                        }
                        z18 = false;
                        z19 = true;
                    } else {
                        z18 = false;
                    }
                    iCharCount2 += Character.charCount(iCodePointAt);
                    if (!Constant.NULL_BL_T.has(iCodePointAt) || zHas) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    boolean z23 = z;
                    if (iCharCount2 + 1 < str.length() || (iCharCount = Character.charCount(str.codePointAt(iCharCount2)) + iCharCount2) >= str.length() || Constant.NULL_BL_T.has(str.codePointAt(iCharCount)) || zHas) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z10 = z8;
                    z = z23;
                }
                z19 = false;
                iCharCount2 += Character.charCount(iCodePointAt);
                if (Constant.NULL_BL_T.has(iCodePointAt)) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                boolean z24 = z;
                if (iCharCount2 + 1 < str.length()) {
                    z8 = true;
                } else {
                    z8 = true;
                }
                z10 = z8;
                z = z24;
            }
            i2 = 32;
            if (iCodePointAt == i2) {
                if (iCharCount2 == 0) {
                    z11 = true;
                }
                if (iCharCount2 == str.length() - 1) {
                    z13 = true;
                }
                if (z19) {
                    z15 = true;
                }
                z18 = true;
            } else {
                if (zHas) {
                    if (iCharCount2 == 0) {
                        z12 = true;
                    }
                    if (iCharCount2 == str.length() - 1) {
                        z14 = true;
                    }
                    if (z18) {
                        z16 = true;
                    }
                    z18 = false;
                    z19 = true;
                } else {
                    z18 = false;
                }
                iCharCount2 += Character.charCount(iCodePointAt);
                if (Constant.NULL_BL_T.has(iCodePointAt)) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                boolean z25 = z;
                if (iCharCount2 + 1 < str.length()) {
                    z8 = true;
                } else {
                    z8 = true;
                }
                z10 = z8;
                z = z25;
            }
            z19 = false;
            iCharCount2 += Character.charCount(iCodePointAt);
            if (Constant.NULL_BL_T.has(iCodePointAt)) {
                z9 = true;
            } else {
                z9 = true;
            }
            boolean z26 = z;
            if (iCharCount2 + 1 < str.length()) {
                z8 = true;
            } else {
                z8 = true;
            }
            z10 = z8;
            z = z26;
        }
        boolean z27 = z;
        if (z11 || z12 || z13 || z14) {
            z3 = true;
            z4 = false;
            z5 = false;
        } else {
            z3 = true;
            z4 = true;
            z5 = true;
        }
        boolean z28 = !z13;
        if (z15) {
            z4 = false;
            z5 = false;
        }
        boolean z29 = z3 ^ z15;
        if (z16 || z17) {
            z6 = false;
            z7 = false;
            z4 = false;
            z5 = false;
        } else {
            z6 = z29;
            z7 = z28;
        }
        if (z21) {
            z4 = false;
        }
        if (z20) {
            z4 = false;
        }
        return new ScalarAnalysis(str, false, z21, z4, z27 ? false : z5, z6, z7);
    }

    void flushStream() throws IOException {
        this.stream.flush();
    }

    void writeStreamEnd() throws IOException {
        flushStream();
    }

    void writeIndicator(String str, boolean z, boolean z2, boolean z3) throws IOException {
        if (!this.whitespace && z) {
            this.column++;
            this.stream.write(SPACE);
        }
        this.whitespace = z2;
        this.indention = this.indention && z3;
        this.column += str.length();
        this.openEnded = false;
        this.stream.write(str);
    }

    void writeIndent() throws IOException {
        int i;
        Integer num = this.indent;
        int iIntValue = num != null ? num.intValue() : 0;
        if (!this.indention || (i = this.column) > iIntValue || (i == iIntValue && !this.whitespace)) {
            writeLineBreak(null);
        }
        writeWhitespace(iIntValue - this.column);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeWhitespace(int i) throws IOException {
        if (i <= 0) {
            return;
        }
        this.whitespace = true;
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = TokenParser.SP;
        }
        this.column += i;
        this.stream.write(cArr);
    }

    private void writeLineBreak(String str) throws IOException {
        this.whitespace = true;
        this.indention = true;
        this.column = 0;
        if (str == null) {
            this.stream.write(this.bestLineBreak);
        } else {
            this.stream.write(str);
        }
    }

    void writeVersionDirective(String str) throws IOException {
        this.stream.write("%YAML ");
        this.stream.write(str);
        writeLineBreak(null);
    }

    void writeTagDirective(String str, String str2) throws IOException {
        this.stream.write("%TAG ");
        this.stream.write(str);
        this.stream.write(SPACE);
        this.stream.write(str2);
        writeLineBreak(null);
    }

    private void writeSingleQuoted(String str, boolean z) throws IOException {
        writeIndicator("'", true, false, false);
        int i = 0;
        boolean z2 = false;
        boolean zHas = false;
        int i2 = 0;
        while (i <= str.length()) {
            char cCharAt = i < str.length() ? str.charAt(i) : (char) 0;
            if (z2) {
                if (cCharAt == 0 || cCharAt != ' ') {
                    if (i2 + 1 == i && this.column > this.bestWidth && z && i2 != 0 && i != str.length()) {
                        writeIndent();
                    } else {
                        int i3 = i - i2;
                        this.column += i3;
                        this.stream.write(str, i2, i3);
                    }
                    i2 = i;
                }
            } else if (zHas) {
                if (cCharAt == 0 || Constant.LINEBR.hasNo(cCharAt)) {
                    if (str.charAt(i2) == '\n') {
                        writeLineBreak(null);
                    }
                    for (char c : str.substring(i2, i).toCharArray()) {
                        if (c == '\n') {
                            writeLineBreak(null);
                        } else {
                            writeLineBreak(String.valueOf(c));
                        }
                    }
                    writeIndent();
                    i2 = i;
                }
            } else if (Constant.LINEBR.has(cCharAt, "\u0000 '") && i2 < i) {
                int i4 = i - i2;
                this.column += i4;
                this.stream.write(str, i2, i4);
                i2 = i;
            }
            if (cCharAt == '\'') {
                this.column += 2;
                this.stream.write("''");
                i2 = i + 1;
            }
            if (cCharAt != 0) {
                z2 = cCharAt == ' ';
                zHas = Constant.LINEBR.has(cCharAt);
            }
            i++;
        }
        writeIndicator("'", false, false, false);
    }

    private void writeDoubleQuoted(String str, boolean z) throws IOException {
        String strValueOf;
        writeIndicator("\"", true, false, false);
        int i = 0;
        int i2 = 0;
        while (i <= str.length()) {
            Character chValueOf = i < str.length() ? Character.valueOf(str.charAt(i)) : null;
            if (chValueOf == null || "\"\\\u0085\u2028\u2029\ufeff".indexOf(chValueOf.charValue()) != -1 || ' ' > chValueOf.charValue() || chValueOf.charValue() > '~') {
                if (i2 < i) {
                    int i3 = i - i2;
                    this.column += i3;
                    this.stream.write(str, i2, i3);
                    i2 = i;
                }
                if (chValueOf != null) {
                    Map<Character, String> map = ESCAPE_REPLACEMENTS;
                    if (map.containsKey(chValueOf)) {
                        strValueOf = "\\" + map.get(chValueOf);
                    } else if (!this.allowUnicode || !StreamReader.isPrintable(chValueOf.charValue())) {
                        if (chValueOf.charValue() <= 255) {
                            String str2 = "0" + Integer.toString(chValueOf.charValue(), 16);
                            strValueOf = "\\x" + str2.substring(str2.length() - 2);
                        } else if (chValueOf.charValue() >= 55296 && chValueOf.charValue() <= 56319) {
                            int i4 = i + 1;
                            if (i4 < str.length()) {
                                String str3 = "000" + Long.toHexString(Character.toCodePoint(chValueOf.charValue(), Character.valueOf(str.charAt(i4)).charValue()));
                                strValueOf = "\\U" + str3.substring(str3.length() - 8);
                                i = i4;
                            } else {
                                String str4 = "000" + Integer.toString(chValueOf.charValue(), 16);
                                strValueOf = "\\u" + str4.substring(str4.length() - 4);
                            }
                        } else {
                            String str5 = "000" + Integer.toString(chValueOf.charValue(), 16);
                            strValueOf = "\\u" + str5.substring(str5.length() - 4);
                        }
                    } else {
                        strValueOf = String.valueOf(chValueOf);
                    }
                    this.column += strValueOf.length();
                    this.stream.write(strValueOf);
                    i2 = i + 1;
                }
            }
            if (i > 0 && i < str.length() - 1 && ((chValueOf.charValue() == ' ' || i2 >= i) && this.column + (i - i2) > this.bestWidth && z)) {
                String str6 = i2 >= i ? "\\" : str.substring(i2, i) + "\\";
                if (i2 < i) {
                    i2 = i;
                }
                this.column += str6.length();
                this.stream.write(str6);
                writeIndent();
                this.whitespace = false;
                this.indention = false;
                if (str.charAt(i2) == ' ') {
                    this.column += "\\".length();
                    this.stream.write("\\");
                }
            }
            i++;
        }
        writeIndicator("\"", false, false, false);
    }

    private String determineBlockHints(String str) {
        StringBuilder sb = new StringBuilder();
        if (Constant.LINEBR.has(str.charAt(0), " ")) {
            sb.append(this.bestIndent);
        }
        if (Constant.LINEBR.hasNo(str.charAt(str.length() - 1))) {
            sb.append("-");
        } else if (str.length() == 1 || Constant.LINEBR.has(str.charAt(str.length() - 2))) {
            sb.append(Marker.ANY_NON_NULL_MARKER);
        }
        return sb.toString();
    }

    void writeFolded(String str, boolean z) throws IOException {
        String strDetermineBlockHints = determineBlockHints(str);
        writeIndicator(">" + strDetermineBlockHints, true, false, false);
        if (strDetermineBlockHints.length() > 0 && strDetermineBlockHints.charAt(strDetermineBlockHints.length() - 1) == '+') {
            this.openEnded = true;
        }
        writeLineBreak(null);
        boolean zHas = true;
        boolean z2 = true;
        int i = 0;
        boolean z3 = false;
        int i2 = 0;
        while (i <= str.length()) {
            char cCharAt = i < str.length() ? str.charAt(i) : (char) 0;
            if (zHas) {
                if (cCharAt == 0 || Constant.LINEBR.hasNo(cCharAt)) {
                    if (!z2 && cCharAt != 0 && cCharAt != ' ' && str.charAt(i2) == '\n') {
                        writeLineBreak(null);
                    }
                    z2 = cCharAt == ' ';
                    for (char c : str.substring(i2, i).toCharArray()) {
                        if (c == '\n') {
                            writeLineBreak(null);
                        } else {
                            writeLineBreak(String.valueOf(c));
                        }
                    }
                    if (cCharAt != 0) {
                        writeIndent();
                    }
                    i2 = i;
                }
            } else if (z3) {
                if (cCharAt != ' ') {
                    if (i2 + 1 == i && this.column > this.bestWidth && z) {
                        writeIndent();
                    } else {
                        int i3 = i - i2;
                        this.column += i3;
                        this.stream.write(str, i2, i3);
                    }
                    i2 = i;
                }
            } else if (Constant.LINEBR.has(cCharAt, "\u0000 ")) {
                int i4 = i - i2;
                this.column += i4;
                this.stream.write(str, i2, i4);
                if (cCharAt == 0) {
                    writeLineBreak(null);
                }
                i2 = i;
            }
            if (cCharAt != 0) {
                zHas = Constant.LINEBR.has(cCharAt);
                z3 = cCharAt == ' ';
            }
            i++;
        }
    }

    void writeLiteral(String str) throws IOException {
        String strDetermineBlockHints = determineBlockHints(str);
        boolean zHas = true;
        writeIndicator("|" + strDetermineBlockHints, true, false, false);
        if (strDetermineBlockHints.length() > 0 && strDetermineBlockHints.charAt(strDetermineBlockHints.length() - 1) == '+') {
            this.openEnded = true;
        }
        writeLineBreak(null);
        int i = 0;
        int i2 = 0;
        while (i <= str.length()) {
            char cCharAt = i < str.length() ? str.charAt(i) : (char) 0;
            if (zHas) {
                if (cCharAt == 0 || Constant.LINEBR.hasNo(cCharAt)) {
                    for (char c : str.substring(i2, i).toCharArray()) {
                        if (c == '\n') {
                            writeLineBreak(null);
                        } else {
                            writeLineBreak(String.valueOf(c));
                        }
                    }
                    if (cCharAt != 0) {
                        writeIndent();
                    }
                    i2 = i;
                }
            } else if (cCharAt == 0 || Constant.LINEBR.has(cCharAt)) {
                this.stream.write(str, i2, i - i2);
                if (cCharAt == 0) {
                    writeLineBreak(null);
                }
                i2 = i;
            }
            if (cCharAt != 0) {
                zHas = Constant.LINEBR.has(cCharAt);
            }
            i++;
        }
    }

    void writePlain(String str, boolean z) throws IOException {
        if (this.rootContext) {
            this.openEnded = true;
        }
        if (str.length() == 0) {
            return;
        }
        if (!this.whitespace) {
            this.column++;
            this.stream.write(SPACE);
        }
        this.whitespace = false;
        this.indention = false;
        int i = 0;
        boolean z2 = false;
        boolean zHas = false;
        int i2 = 0;
        while (i <= str.length()) {
            char cCharAt = i < str.length() ? str.charAt(i) : (char) 0;
            if (z2) {
                if (cCharAt != ' ') {
                    if (i2 + 1 == i && this.column > this.bestWidth && z) {
                        writeIndent();
                        this.whitespace = false;
                        this.indention = false;
                    } else {
                        int i3 = i - i2;
                        this.column += i3;
                        this.stream.write(str, i2, i3);
                    }
                    i2 = i;
                }
            } else if (zHas) {
                if (Constant.LINEBR.hasNo(cCharAt)) {
                    if (str.charAt(i2) == '\n') {
                        writeLineBreak(null);
                    }
                    for (char c : str.substring(i2, i).toCharArray()) {
                        if (c == '\n') {
                            writeLineBreak(null);
                        } else {
                            writeLineBreak(String.valueOf(c));
                        }
                    }
                    writeIndent();
                    this.whitespace = false;
                    this.indention = false;
                    i2 = i;
                }
            } else if (Constant.LINEBR.has(cCharAt, "\u0000 ")) {
                int i4 = i - i2;
                this.column += i4;
                this.stream.write(str, i2, i4);
                i2 = i;
            }
            if (cCharAt != 0) {
                z2 = cCharAt == ' ';
                zHas = Constant.LINEBR.has(cCharAt);
            }
            i++;
        }
    }
}
