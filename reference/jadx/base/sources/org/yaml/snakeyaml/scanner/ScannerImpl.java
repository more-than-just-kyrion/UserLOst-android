package org.yaml.snakeyaml.scanner;

import com.squareup.moshi.Json;
import com.undatech.opaque.input.RemoteKeyboard;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.TokenParser;
import org.spongycastle.pqc.math.linearalgebra.Matrix;
import org.yaml.snakeyaml.DumperOptions;
import org.yaml.snakeyaml.error.Mark;
import org.yaml.snakeyaml.error.YAMLException;
import org.yaml.snakeyaml.reader.StreamReader;
import org.yaml.snakeyaml.tokens.AliasToken;
import org.yaml.snakeyaml.tokens.AnchorToken;
import org.yaml.snakeyaml.tokens.BlockEndToken;
import org.yaml.snakeyaml.tokens.BlockEntryToken;
import org.yaml.snakeyaml.tokens.BlockMappingStartToken;
import org.yaml.snakeyaml.tokens.BlockSequenceStartToken;
import org.yaml.snakeyaml.tokens.DirectiveToken;
import org.yaml.snakeyaml.tokens.DocumentEndToken;
import org.yaml.snakeyaml.tokens.DocumentStartToken;
import org.yaml.snakeyaml.tokens.FlowEntryToken;
import org.yaml.snakeyaml.tokens.FlowMappingEndToken;
import org.yaml.snakeyaml.tokens.FlowMappingStartToken;
import org.yaml.snakeyaml.tokens.FlowSequenceEndToken;
import org.yaml.snakeyaml.tokens.FlowSequenceStartToken;
import org.yaml.snakeyaml.tokens.KeyToken;
import org.yaml.snakeyaml.tokens.ScalarToken;
import org.yaml.snakeyaml.tokens.StreamEndToken;
import org.yaml.snakeyaml.tokens.StreamStartToken;
import org.yaml.snakeyaml.tokens.TagToken;
import org.yaml.snakeyaml.tokens.TagTuple;
import org.yaml.snakeyaml.tokens.Token;
import org.yaml.snakeyaml.tokens.ValueToken;
import org.yaml.snakeyaml.util.ArrayStack;
import org.yaml.snakeyaml.util.UriEncoder;

/* JADX INFO: loaded from: classes3.dex */
public final class ScannerImpl implements Scanner {
    public static final Map<Character, Integer> ESCAPE_CODES;
    public static final Map<Character, String> ESCAPE_REPLACEMENTS;
    private static final Pattern NOT_HEXA = Pattern.compile("[^0-9A-Fa-f]");
    private final StreamReader reader;
    private boolean done = false;
    private int flowLevel = 0;
    private int tokensTaken = 0;
    private int indent = -1;
    private boolean allowSimpleKey = true;
    private List<Token> tokens = new ArrayList(100);
    private ArrayStack<Integer> indents = new ArrayStack<>(10);
    private Map<Integer, SimpleKey> possibleSimpleKeys = new LinkedHashMap();

    static {
        HashMap map = new HashMap();
        ESCAPE_REPLACEMENTS = map;
        HashMap map2 = new HashMap();
        ESCAPE_CODES = map2;
        map.put('0', Json.UNSET_NAME);
        map.put('a', "\u0007");
        map.put('b', "\b");
        map.put('t', "\t");
        map.put('n', StringUtils.LF);
        map.put('v', "\u000b");
        map.put('f', "\f");
        map.put('r', StringUtils.CR);
        map.put('e', "\u001b");
        map.put(Character.valueOf(TokenParser.SP), " ");
        map.put('\"', "\"");
        map.put('\\', "\\");
        map.put('N', "\u0085");
        map.put('_', " ");
        map.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_LT), "\u2028");
        map.put('P', "\u2029");
        map2.put('x', 2);
        map2.put('u', 4);
        map2.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_UT), 8);
    }

    public ScannerImpl(StreamReader streamReader) {
        this.reader = streamReader;
        fetchStreamStart();
    }

    @Override // org.yaml.snakeyaml.scanner.Scanner
    public boolean checkToken(Token.ID... idArr) {
        while (needMoreTokens()) {
            fetchMoreTokens();
        }
        if (!this.tokens.isEmpty()) {
            if (idArr.length == 0) {
                return true;
            }
            Token.ID tokenId = this.tokens.get(0).getTokenId();
            for (Token.ID id : idArr) {
                if (tokenId == id) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.yaml.snakeyaml.scanner.Scanner
    public Token peekToken() {
        while (needMoreTokens()) {
            fetchMoreTokens();
        }
        return this.tokens.get(0);
    }

    @Override // org.yaml.snakeyaml.scanner.Scanner
    public Token getToken() {
        this.tokensTaken++;
        return this.tokens.remove(0);
    }

    private boolean needMoreTokens() {
        if (this.done) {
            return false;
        }
        if (this.tokens.isEmpty()) {
            return true;
        }
        stalePossibleSimpleKeys();
        return nextPossibleSimpleKey() == this.tokensTaken;
    }

    /* JADX WARN: Code duplicated, block: B:86:0x00fa  */
    private void fetchMoreTokens() {
        scanToNextToken();
        stalePossibleSimpleKeys();
        unwindIndent(this.reader.getColumn());
        int iPeek = this.reader.peek();
        if (iPeek == 0) {
            fetchStreamEnd();
            return;
        }
        if (iPeek == 42) {
            fetchAlias();
            return;
        }
        if (iPeek != 58) {
            if (iPeek == 91) {
                fetchFlowSequenceStart();
                return;
            }
            if (iPeek == 93) {
                fetchFlowSequenceEnd();
                return;
            }
            if (iPeek == 33) {
                fetchTag();
                return;
            }
            if (iPeek == 34) {
                fetchDouble();
                return;
            }
            if (iPeek != 62) {
                if (iPeek != 63) {
                    switch (iPeek) {
                        case 37:
                            if (checkDirective()) {
                                fetchDirective();
                                return;
                            }
                            break;
                        case 38:
                            fetchAnchor();
                            return;
                        case 39:
                            fetchSingle();
                            return;
                        default:
                            switch (iPeek) {
                                case 44:
                                    fetchFlowEntry();
                                    return;
                                case 45:
                                    if (checkDocumentStart()) {
                                        fetchDocumentStart();
                                        return;
                                    } else if (checkBlockEntry()) {
                                        fetchBlockEntry();
                                        return;
                                    }
                                case 46:
                                    if (checkDocumentEnd()) {
                                        fetchDocumentEnd();
                                        return;
                                    }
                                    break;
                                default:
                                    switch (iPeek) {
                                        case 123:
                                            fetchFlowMappingStart();
                                            return;
                                        case 124:
                                            if (this.flowLevel == 0) {
                                                fetchLiteral();
                                                return;
                                            }
                                            break;
                                        case RemoteKeyboard.SCAN_LEFTSUPER /* 125 */:
                                            fetchFlowMappingEnd();
                                            return;
                                    }
                                    break;
                            }
                            break;
                    }
                } else if (checkKey()) {
                    fetchKey();
                    return;
                }
            } else if (this.flowLevel == 0) {
                fetchFolded();
                return;
            }
        } else if (checkValue()) {
            fetchValue();
            return;
        }
        if (checkPlain()) {
            fetchPlain();
            return;
        }
        String strValueOf = String.valueOf(Character.toChars(iPeek));
        for (Character ch : ESCAPE_REPLACEMENTS.keySet()) {
            if (ESCAPE_REPLACEMENTS.get(ch).equals(strValueOf)) {
                strValueOf = "\\" + ch;
                if (iPeek == 9) {
                    strValueOf = strValueOf + "(TAB)";
                }
                throw new ScannerException("while scanning for the next token", null, String.format("found character '%s' that cannot start any token. (Do not use %s for indentation)", strValueOf, strValueOf), this.reader.getMark());
            }
        }
        if (iPeek == 9) {
            strValueOf = strValueOf + "(TAB)";
        }
        throw new ScannerException("while scanning for the next token", null, String.format("found character '%s' that cannot start any token. (Do not use %s for indentation)", strValueOf, strValueOf), this.reader.getMark());
    }

    private int nextPossibleSimpleKey() {
        if (this.possibleSimpleKeys.isEmpty()) {
            return -1;
        }
        return this.possibleSimpleKeys.values().iterator().next().getTokenNumber();
    }

    private void stalePossibleSimpleKeys() {
        if (this.possibleSimpleKeys.isEmpty()) {
            return;
        }
        Iterator<SimpleKey> it = this.possibleSimpleKeys.values().iterator();
        while (it.hasNext()) {
            SimpleKey next = it.next();
            if (next.getLine() != this.reader.getLine() || this.reader.getIndex() - next.getIndex() > 1024) {
                if (next.isRequired()) {
                    throw new ScannerException("while scanning a simple key", next.getMark(), "could not find expected ':'", this.reader.getMark());
                }
                it.remove();
            }
        }
    }

    private void savePossibleSimpleKey() {
        boolean z = this.flowLevel == 0 && this.indent == this.reader.getColumn();
        boolean z2 = this.allowSimpleKey;
        if (!z2 && z) {
            throw new YAMLException("A simple key is required only if it is the first token in the current line");
        }
        if (z2) {
            removePossibleSimpleKey();
            this.possibleSimpleKeys.put(Integer.valueOf(this.flowLevel), new SimpleKey(this.tokensTaken + this.tokens.size(), z, this.reader.getIndex(), this.reader.getLine(), this.reader.getColumn(), this.reader.getMark()));
        }
    }

    private void removePossibleSimpleKey() {
        SimpleKey simpleKeyRemove = this.possibleSimpleKeys.remove(Integer.valueOf(this.flowLevel));
        if (simpleKeyRemove != null && simpleKeyRemove.isRequired()) {
            throw new ScannerException("while scanning a simple key", simpleKeyRemove.getMark(), "could not find expected ':'", this.reader.getMark());
        }
    }

    private void unwindIndent(int i) {
        if (this.flowLevel != 0) {
            return;
        }
        while (this.indent > i) {
            Mark mark = this.reader.getMark();
            this.indent = this.indents.pop().intValue();
            this.tokens.add(new BlockEndToken(mark, mark));
        }
    }

    private boolean addIndent(int i) {
        int i2 = this.indent;
        if (i2 >= i) {
            return false;
        }
        this.indents.push(Integer.valueOf(i2));
        this.indent = i;
        return true;
    }

    private void fetchStreamStart() {
        Mark mark = this.reader.getMark();
        this.tokens.add(new StreamStartToken(mark, mark));
    }

    private void fetchStreamEnd() {
        unwindIndent(-1);
        removePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.possibleSimpleKeys.clear();
        Mark mark = this.reader.getMark();
        this.tokens.add(new StreamEndToken(mark, mark));
        this.done = true;
    }

    private void fetchDirective() {
        unwindIndent(-1);
        removePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanDirective());
    }

    private void fetchDocumentStart() {
        fetchDocumentIndicator(true);
    }

    private void fetchDocumentEnd() {
        fetchDocumentIndicator(false);
    }

    private void fetchDocumentIndicator(boolean z) {
        Token documentEndToken;
        unwindIndent(-1);
        removePossibleSimpleKey();
        this.allowSimpleKey = false;
        Mark mark = this.reader.getMark();
        this.reader.forward(3);
        Mark mark2 = this.reader.getMark();
        if (z) {
            documentEndToken = new DocumentStartToken(mark, mark2);
        } else {
            documentEndToken = new DocumentEndToken(mark, mark2);
        }
        this.tokens.add(documentEndToken);
    }

    private void fetchFlowSequenceStart() {
        fetchFlowCollectionStart(false);
    }

    private void fetchFlowMappingStart() {
        fetchFlowCollectionStart(true);
    }

    private void fetchFlowCollectionStart(boolean z) {
        Token flowSequenceStartToken;
        savePossibleSimpleKey();
        this.flowLevel++;
        this.allowSimpleKey = true;
        Mark mark = this.reader.getMark();
        this.reader.forward(1);
        Mark mark2 = this.reader.getMark();
        if (z) {
            flowSequenceStartToken = new FlowMappingStartToken(mark, mark2);
        } else {
            flowSequenceStartToken = new FlowSequenceStartToken(mark, mark2);
        }
        this.tokens.add(flowSequenceStartToken);
    }

    private void fetchFlowSequenceEnd() {
        fetchFlowCollectionEnd(false);
    }

    private void fetchFlowMappingEnd() {
        fetchFlowCollectionEnd(true);
    }

    private void fetchFlowCollectionEnd(boolean z) {
        Token flowSequenceEndToken;
        removePossibleSimpleKey();
        this.flowLevel--;
        this.allowSimpleKey = false;
        Mark mark = this.reader.getMark();
        this.reader.forward();
        Mark mark2 = this.reader.getMark();
        if (z) {
            flowSequenceEndToken = new FlowMappingEndToken(mark, mark2);
        } else {
            flowSequenceEndToken = new FlowSequenceEndToken(mark, mark2);
        }
        this.tokens.add(flowSequenceEndToken);
    }

    private void fetchFlowEntry() {
        this.allowSimpleKey = true;
        removePossibleSimpleKey();
        Mark mark = this.reader.getMark();
        this.reader.forward();
        this.tokens.add(new FlowEntryToken(mark, this.reader.getMark()));
    }

    private void fetchBlockEntry() {
        if (this.flowLevel == 0) {
            if (!this.allowSimpleKey) {
                throw new ScannerException(null, null, "sequence entries are not allowed here", this.reader.getMark());
            }
            if (addIndent(this.reader.getColumn())) {
                Mark mark = this.reader.getMark();
                this.tokens.add(new BlockSequenceStartToken(mark, mark));
            }
        }
        this.allowSimpleKey = true;
        removePossibleSimpleKey();
        Mark mark2 = this.reader.getMark();
        this.reader.forward();
        this.tokens.add(new BlockEntryToken(mark2, this.reader.getMark()));
    }

    private void fetchKey() {
        if (this.flowLevel == 0) {
            if (!this.allowSimpleKey) {
                throw new ScannerException(null, null, "mapping keys are not allowed here", this.reader.getMark());
            }
            if (addIndent(this.reader.getColumn())) {
                Mark mark = this.reader.getMark();
                this.tokens.add(new BlockMappingStartToken(mark, mark));
            }
        }
        this.allowSimpleKey = this.flowLevel == 0;
        removePossibleSimpleKey();
        Mark mark2 = this.reader.getMark();
        this.reader.forward();
        this.tokens.add(new KeyToken(mark2, this.reader.getMark()));
    }

    private void fetchValue() {
        SimpleKey simpleKeyRemove = this.possibleSimpleKeys.remove(Integer.valueOf(this.flowLevel));
        if (simpleKeyRemove != null) {
            this.tokens.add(simpleKeyRemove.getTokenNumber() - this.tokensTaken, new KeyToken(simpleKeyRemove.getMark(), simpleKeyRemove.getMark()));
            if (this.flowLevel == 0 && addIndent(simpleKeyRemove.getColumn())) {
                this.tokens.add(simpleKeyRemove.getTokenNumber() - this.tokensTaken, new BlockMappingStartToken(simpleKeyRemove.getMark(), simpleKeyRemove.getMark()));
            }
            this.allowSimpleKey = false;
        } else {
            int i = this.flowLevel;
            if (i == 0 && !this.allowSimpleKey) {
                throw new ScannerException(null, null, "mapping values are not allowed here", this.reader.getMark());
            }
            if (i == 0 && addIndent(this.reader.getColumn())) {
                Mark mark = this.reader.getMark();
                this.tokens.add(new BlockMappingStartToken(mark, mark));
            }
            this.allowSimpleKey = this.flowLevel == 0;
            removePossibleSimpleKey();
        }
        Mark mark2 = this.reader.getMark();
        this.reader.forward();
        this.tokens.add(new ValueToken(mark2, this.reader.getMark()));
    }

    private void fetchAlias() {
        savePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanAnchor(false));
    }

    private void fetchAnchor() {
        savePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanAnchor(true));
    }

    private void fetchTag() {
        savePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanTag());
    }

    private void fetchLiteral() {
        fetchBlockScalar('|');
    }

    private void fetchFolded() {
        fetchBlockScalar(Typography.greater);
    }

    private void fetchBlockScalar(char c) {
        this.allowSimpleKey = true;
        removePossibleSimpleKey();
        this.tokens.add(scanBlockScalar(c));
    }

    private void fetchSingle() {
        fetchFlowScalar('\'');
    }

    private void fetchDouble() {
        fetchFlowScalar('\"');
    }

    private void fetchFlowScalar(char c) {
        savePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanFlowScalar(c));
    }

    private void fetchPlain() {
        savePossibleSimpleKey();
        this.allowSimpleKey = false;
        this.tokens.add(scanPlain());
    }

    private boolean checkDirective() {
        return this.reader.getColumn() == 0;
    }

    private boolean checkDocumentStart() {
        return this.reader.getColumn() == 0 && "---".equals(this.reader.prefix(3)) && Constant.NULL_BL_T_LINEBR.has(this.reader.peek(3));
    }

    private boolean checkDocumentEnd() {
        return this.reader.getColumn() == 0 && "...".equals(this.reader.prefix(3)) && Constant.NULL_BL_T_LINEBR.has(this.reader.peek(3));
    }

    private boolean checkBlockEntry() {
        return Constant.NULL_BL_T_LINEBR.has(this.reader.peek(1));
    }

    private boolean checkKey() {
        if (this.flowLevel != 0) {
            return true;
        }
        return Constant.NULL_BL_T_LINEBR.has(this.reader.peek(1));
    }

    private boolean checkValue() {
        if (this.flowLevel != 0) {
            return true;
        }
        return Constant.NULL_BL_T_LINEBR.has(this.reader.peek(1));
    }

    private boolean checkPlain() {
        int iPeek = this.reader.peek();
        if (Constant.NULL_BL_T_LINEBR.hasNo(iPeek, "-?:,[]{}#&*!|>'\"%@`")) {
            return true;
        }
        if (Constant.NULL_BL_T_LINEBR.hasNo(this.reader.peek(1))) {
            if (iPeek == 45) {
                return true;
            }
            if (this.flowLevel == 0 && "?:".indexOf(iPeek) != -1) {
                return true;
            }
        }
        return false;
    }

    private void scanToNextToken() {
        if (this.reader.getIndex() == 0 && this.reader.peek() == 65279) {
            this.reader.forward();
        }
        boolean z = false;
        while (!z) {
            int i = 0;
            while (this.reader.peek(i) == 32) {
                i++;
            }
            if (i > 0) {
                this.reader.forward(i);
            }
            if (this.reader.peek() == 35) {
                int i2 = 0;
                while (Constant.NULL_OR_LINEBR.hasNo(this.reader.peek(i2))) {
                    i2++;
                }
                if (i2 > 0) {
                    this.reader.forward(i2);
                }
            }
            if (scanLineBreak().length() == 0) {
                z = true;
            } else if (this.flowLevel == 0) {
                this.allowSimpleKey = true;
            }
        }
    }

    private Token scanDirective() {
        Mark mark;
        List listScanTagDirectiveValue;
        Mark mark2 = this.reader.getMark();
        this.reader.forward();
        String strScanDirectiveName = scanDirectiveName(mark2);
        if ("YAML".equals(strScanDirectiveName)) {
            listScanTagDirectiveValue = scanYamlDirectiveValue(mark2);
            mark = this.reader.getMark();
        } else if ("TAG".equals(strScanDirectiveName)) {
            listScanTagDirectiveValue = scanTagDirectiveValue(mark2);
            mark = this.reader.getMark();
        } else {
            mark = this.reader.getMark();
            int i = 0;
            while (Constant.NULL_OR_LINEBR.hasNo(this.reader.peek(i))) {
                i++;
            }
            if (i > 0) {
                this.reader.forward(i);
            }
            listScanTagDirectiveValue = null;
        }
        scanDirectiveIgnoredLine(mark2);
        return new DirectiveToken(strScanDirectiveName, listScanTagDirectiveValue, mark2, mark);
    }

    private String scanDirectiveName(Mark mark) {
        int i = 0;
        int iPeek = this.reader.peek(0);
        while (Constant.ALPHA.has(iPeek)) {
            i++;
            iPeek = this.reader.peek(i);
        }
        if (i == 0) {
            throw new ScannerException("while scanning a directive", mark, "expected alphabetic or numeric character, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        String strPrefixForward = this.reader.prefixForward(i);
        int iPeek2 = this.reader.peek();
        if (!Constant.NULL_BL_LINEBR.hasNo(iPeek2)) {
            return strPrefixForward;
        }
        throw new ScannerException("while scanning a directive", mark, "expected alphabetic or numeric character, but found " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
    }

    private List<Integer> scanYamlDirectiveValue(Mark mark) {
        while (this.reader.peek() == 32) {
            this.reader.forward();
        }
        Integer numScanYamlDirectiveNumber = scanYamlDirectiveNumber(mark);
        int iPeek = this.reader.peek();
        if (iPeek != 46) {
            throw new ScannerException("while scanning a directive", mark, "expected a digit or '.', but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        this.reader.forward();
        Integer numScanYamlDirectiveNumber2 = scanYamlDirectiveNumber(mark);
        int iPeek2 = this.reader.peek();
        if (Constant.NULL_BL_LINEBR.hasNo(iPeek2)) {
            throw new ScannerException("while scanning a directive", mark, "expected a digit or ' ', but found " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
        }
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(numScanYamlDirectiveNumber);
        arrayList.add(numScanYamlDirectiveNumber2);
        return arrayList;
    }

    private Integer scanYamlDirectiveNumber(Mark mark) {
        int iPeek = this.reader.peek();
        if (!Character.isDigit(iPeek)) {
            throw new ScannerException("while scanning a directive", mark, "expected a digit, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        int i = 0;
        while (Character.isDigit(this.reader.peek(i))) {
            i++;
        }
        return Integer.valueOf(Integer.parseInt(this.reader.prefixForward(i)));
    }

    private List<String> scanTagDirectiveValue(Mark mark) {
        while (this.reader.peek() == 32) {
            this.reader.forward();
        }
        String strScanTagDirectiveHandle = scanTagDirectiveHandle(mark);
        while (this.reader.peek() == 32) {
            this.reader.forward();
        }
        String strScanTagDirectivePrefix = scanTagDirectivePrefix(mark);
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(strScanTagDirectiveHandle);
        arrayList.add(strScanTagDirectivePrefix);
        return arrayList;
    }

    private String scanTagDirectiveHandle(Mark mark) {
        String strScanTagHandle = scanTagHandle("directive", mark);
        int iPeek = this.reader.peek();
        if (iPeek == 32) {
            return strScanTagHandle;
        }
        throw new ScannerException("while scanning a directive", mark, "expected ' ', but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
    }

    private String scanTagDirectivePrefix(Mark mark) {
        String strScanTagUri = scanTagUri("directive", mark);
        int iPeek = this.reader.peek();
        if (!Constant.NULL_BL_LINEBR.hasNo(iPeek)) {
            return strScanTagUri;
        }
        throw new ScannerException("while scanning a directive", mark, "expected ' ', but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
    }

    private void scanDirectiveIgnoredLine(Mark mark) {
        while (this.reader.peek() == 32) {
            this.reader.forward();
        }
        if (this.reader.peek() == 35) {
            while (Constant.NULL_OR_LINEBR.hasNo(this.reader.peek())) {
                this.reader.forward();
            }
        }
        int iPeek = this.reader.peek();
        if (scanLineBreak().length() != 0 || iPeek == 0) {
            return;
        }
        throw new ScannerException("while scanning a directive", mark, "expected a comment or a line break, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
    }

    private Token scanAnchor(boolean z) {
        Mark mark = this.reader.getMark();
        String str = this.reader.peek() == 42 ? "alias" : "anchor";
        this.reader.forward();
        int i = 0;
        int iPeek = this.reader.peek(0);
        while (Constant.ALPHA.has(iPeek)) {
            i++;
            iPeek = this.reader.peek(i);
        }
        if (i == 0) {
            throw new ScannerException("while scanning an ".concat(str), mark, "expected alphabetic or numeric character, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        String strPrefixForward = this.reader.prefixForward(i);
        int iPeek2 = this.reader.peek();
        if (Constant.NULL_BL_T_LINEBR.hasNo(iPeek2, "?:,]}%@`")) {
            throw new ScannerException("while scanning an ".concat(str), mark, "expected alphabetic or numeric character, but found " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
        }
        Mark mark2 = this.reader.getMark();
        if (z) {
            return new AnchorToken(strPrefixForward, mark, mark2);
        }
        return new AliasToken(strPrefixForward, mark, mark2);
    }

    private Token scanTag() {
        String strScanTagUri;
        Mark mark = this.reader.getMark();
        int iPeek = this.reader.peek(1);
        String strScanTagHandle = null;
        if (iPeek == 60) {
            this.reader.forward(2);
            strScanTagUri = scanTagUri("tag", mark);
            int iPeek2 = this.reader.peek();
            if (iPeek2 != 62) {
                throw new ScannerException("while scanning a tag", mark, "expected '>', but found '" + String.valueOf(Character.toChars(iPeek2)) + "' (" + iPeek2 + ")", this.reader.getMark());
            }
            this.reader.forward();
        } else if (Constant.NULL_BL_T_LINEBR.has(iPeek)) {
            this.reader.forward();
            strScanTagUri = "!";
        } else {
            int i = 1;
            while (true) {
                if (!Constant.NULL_BL_LINEBR.hasNo(iPeek)) {
                    this.reader.forward();
                    strScanTagHandle = "!";
                    break;
                }
                if (iPeek != 33) {
                    i++;
                    iPeek = this.reader.peek(i);
                } else {
                    strScanTagHandle = scanTagHandle("tag", mark);
                    break;
                }
            }
            strScanTagUri = scanTagUri("tag", mark);
        }
        int iPeek3 = this.reader.peek();
        if (Constant.NULL_BL_LINEBR.hasNo(iPeek3)) {
            throw new ScannerException("while scanning a tag", mark, "expected ' ', but found '" + String.valueOf(Character.toChars(iPeek3)) + "' (" + iPeek3 + ")", this.reader.getMark());
        }
        return new TagToken(new TagTuple(strScanTagHandle, strScanTagUri), mark, this.reader.getMark());
    }

    private Token scanBlockScalar(char c) {
        int iMax;
        String str;
        Mark mark;
        Mark mark2;
        boolean z = c == '>';
        StringBuilder sb = new StringBuilder();
        Mark mark3 = this.reader.getMark();
        this.reader.forward();
        Chomping chompingScanBlockScalarIndicators = scanBlockScalarIndicators(mark3);
        int increment = chompingScanBlockScalarIndicators.getIncrement();
        scanBlockScalarIgnoredLine(mark3);
        int i = this.indent + 1;
        if (i < 1) {
            i = 1;
        }
        if (increment == -1) {
            Object[] objArrScanBlockScalarIndentation = scanBlockScalarIndentation();
            str = (String) objArrScanBlockScalarIndentation[0];
            int iIntValue = ((Integer) objArrScanBlockScalarIndentation[1]).intValue();
            mark = (Mark) objArrScanBlockScalarIndentation[2];
            iMax = Math.max(i, iIntValue);
        } else {
            iMax = (i + increment) - 1;
            Object[] objArrScanBlockScalarBreaks = scanBlockScalarBreaks(iMax);
            str = (String) objArrScanBlockScalarBreaks[0];
            mark = (Mark) objArrScanBlockScalarBreaks[1];
        }
        String strScanLineBreak = "";
        while (true) {
            if (this.reader.getColumn() != iMax || this.reader.peek() == 0) {
                mark2 = mark;
            } else {
                sb.append(str);
                boolean z2 = " \t".indexOf(this.reader.peek()) == -1;
                int i2 = 0;
                while (Constant.NULL_OR_LINEBR.hasNo(this.reader.peek(i2))) {
                    i2++;
                }
                sb.append(this.reader.prefixForward(i2));
                strScanLineBreak = scanLineBreak();
                Object[] objArrScanBlockScalarBreaks2 = scanBlockScalarBreaks(iMax);
                String str2 = (String) objArrScanBlockScalarBreaks2[0];
                mark2 = (Mark) objArrScanBlockScalarBreaks2[1];
                if (this.reader.getColumn() != iMax || this.reader.peek() == 0) {
                    str = str2;
                } else {
                    if (z && StringUtils.LF.equals(strScanLineBreak) && z2 && " \t".indexOf(this.reader.peek()) == -1) {
                        if (str2.length() == 0) {
                            sb.append(" ");
                        }
                    } else {
                        sb.append(strScanLineBreak);
                    }
                    mark = mark2;
                    str = str2;
                }
            }
            if (chompingScanBlockScalarIndicators.chompTailIsNotFalse()) {
                sb.append(strScanLineBreak);
            }
            if (chompingScanBlockScalarIndicators.chompTailIsTrue()) {
                sb.append(str);
            }
            return new ScalarToken(sb.toString(), false, mark3, mark2, DumperOptions.ScalarStyle.createStyle(Character.valueOf(c)));
        }
    }

    private Chomping scanBlockScalarIndicators(Mark mark) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        int iPeek = this.reader.peek();
        int i = -1;
        if (iPeek == 45 || iPeek == 43) {
            if (iPeek == 43) {
                bool = Boolean.TRUE;
            } else {
                bool = Boolean.FALSE;
            }
            bool2 = bool;
            this.reader.forward();
            int iPeek2 = this.reader.peek();
            if (Character.isDigit(iPeek2)) {
                i = Integer.parseInt(String.valueOf(Character.toChars(iPeek2)));
                if (i == 0) {
                    throw new ScannerException("while scanning a block scalar", mark, "expected indentation indicator in the range 1-9, but found 0", this.reader.getMark());
                }
                this.reader.forward();
            }
        } else {
            bool2 = null;
            if (Character.isDigit(iPeek)) {
                i = Integer.parseInt(String.valueOf(Character.toChars(iPeek)));
                if (i == 0) {
                    throw new ScannerException("while scanning a block scalar", mark, "expected indentation indicator in the range 1-9, but found 0", this.reader.getMark());
                }
                this.reader.forward();
                int iPeek3 = this.reader.peek();
                if (iPeek3 == 45 || iPeek3 == 43) {
                    if (iPeek3 == 43) {
                        bool3 = Boolean.TRUE;
                    } else {
                        bool3 = Boolean.FALSE;
                    }
                    bool2 = bool3;
                    this.reader.forward();
                }
            }
        }
        int iPeek4 = this.reader.peek();
        if (Constant.NULL_BL_LINEBR.hasNo(iPeek4)) {
            throw new ScannerException("while scanning a block scalar", mark, "expected chomping or indentation indicators, but found " + String.valueOf(Character.toChars(iPeek4)) + "(" + iPeek4 + ")", this.reader.getMark());
        }
        return new Chomping(bool2, i);
    }

    private String scanBlockScalarIgnoredLine(Mark mark) {
        while (this.reader.peek() == 32) {
            this.reader.forward();
        }
        if (this.reader.peek() == 35) {
            while (Constant.NULL_OR_LINEBR.hasNo(this.reader.peek())) {
                this.reader.forward();
            }
        }
        int iPeek = this.reader.peek();
        String strScanLineBreak = scanLineBreak();
        if (strScanLineBreak.length() != 0 || iPeek == 0) {
            return strScanLineBreak;
        }
        throw new ScannerException("while scanning a block scalar", mark, "expected a comment or a line break, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
    }

    private Object[] scanBlockScalarIndentation() {
        StringBuilder sb = new StringBuilder();
        Mark mark = this.reader.getMark();
        int column = 0;
        while (Constant.LINEBR.has(this.reader.peek(), " \r")) {
            if (this.reader.peek() != 32) {
                sb.append(scanLineBreak());
                mark = this.reader.getMark();
            } else {
                this.reader.forward();
                if (this.reader.getColumn() > column) {
                    column = this.reader.getColumn();
                }
            }
        }
        return new Object[]{sb.toString(), Integer.valueOf(column), mark};
    }

    private Object[] scanBlockScalarBreaks(int i) {
        StringBuilder sb = new StringBuilder();
        Mark mark = this.reader.getMark();
        for (int column = this.reader.getColumn(); column < i && this.reader.peek() == 32; column++) {
            this.reader.forward();
        }
        while (true) {
            String strScanLineBreak = scanLineBreak();
            if (strScanLineBreak.length() != 0) {
                sb.append(strScanLineBreak);
                mark = this.reader.getMark();
                for (int column2 = this.reader.getColumn(); column2 < i && this.reader.peek() == 32; column2++) {
                    this.reader.forward();
                }
            } else {
                return new Object[]{sb.toString(), mark};
            }
        }
    }

    private Token scanFlowScalar(char c) {
        boolean z = c == '\"';
        StringBuilder sb = new StringBuilder();
        Mark mark = this.reader.getMark();
        int iPeek = this.reader.peek();
        this.reader.forward();
        sb.append(scanFlowScalarNonSpaces(z, mark));
        while (this.reader.peek() != iPeek) {
            sb.append(scanFlowScalarSpaces(mark));
            sb.append(scanFlowScalarNonSpaces(z, mark));
        }
        this.reader.forward();
        return new ScalarToken(sb.toString(), false, mark, this.reader.getMark(), DumperOptions.ScalarStyle.createStyle(Character.valueOf(c)));
    }

    private String scanFlowScalarNonSpaces(boolean z, Mark mark) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = 0;
            while (Constant.NULL_BL_T_LINEBR.hasNo(this.reader.peek(i), "'\"\\")) {
                i++;
            }
            if (i != 0) {
                sb.append(this.reader.prefixForward(i));
            }
            int iPeek = this.reader.peek();
            if (!z && iPeek == 39 && this.reader.peek(1) == 39) {
                sb.append("'");
                this.reader.forward(2);
            } else if ((z && iPeek == 39) || (!z && BasicHeaderValueFormatter.UNSAFE_CHARS.indexOf(iPeek) != -1)) {
                sb.appendCodePoint(iPeek);
                this.reader.forward();
            } else {
                if (!z || iPeek != 92) {
                    break;
                }
                this.reader.forward();
                int iPeek2 = this.reader.peek();
                if (!Character.isSupplementaryCodePoint(iPeek2)) {
                    Map<Character, String> map = ESCAPE_REPLACEMENTS;
                    char c = (char) iPeek2;
                    if (map.containsKey(Character.valueOf(c))) {
                        sb.append(map.get(Character.valueOf(c)));
                        this.reader.forward();
                    }
                }
                if (!Character.isSupplementaryCodePoint(iPeek2)) {
                    Map<Character, Integer> map2 = ESCAPE_CODES;
                    char c2 = (char) iPeek2;
                    if (map2.containsKey(Character.valueOf(c2))) {
                        int iIntValue = map2.get(Character.valueOf(c2)).intValue();
                        this.reader.forward();
                        String strPrefix = this.reader.prefix(iIntValue);
                        if (NOT_HEXA.matcher(strPrefix).find()) {
                            throw new ScannerException("while scanning a double-quoted scalar", mark, "expected escape sequence of " + iIntValue + " hexadecimal numbers, but found: " + strPrefix, this.reader.getMark());
                        }
                        sb.append(new String(Character.toChars(Integer.parseInt(strPrefix, 16))));
                        this.reader.forward(iIntValue);
                    }
                }
                if (scanLineBreak().length() != 0) {
                    sb.append(scanFlowScalarBreaks(mark));
                } else {
                    throw new ScannerException("while scanning a double-quoted scalar", mark, "found unknown escape character " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
                }
            }
        }
        return sb.toString();
    }

    private String scanFlowScalarSpaces(Mark mark) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (" \t".indexOf(this.reader.peek(i)) != -1) {
            i++;
        }
        String strPrefixForward = this.reader.prefixForward(i);
        if (this.reader.peek() == 0) {
            throw new ScannerException("while scanning a quoted scalar", mark, "found unexpected end of stream", this.reader.getMark());
        }
        String strScanLineBreak = scanLineBreak();
        if (strScanLineBreak.length() != 0) {
            String strScanFlowScalarBreaks = scanFlowScalarBreaks(mark);
            if (!StringUtils.LF.equals(strScanLineBreak)) {
                sb.append(strScanLineBreak);
            } else if (strScanFlowScalarBreaks.length() == 0) {
                sb.append(" ");
            }
            sb.append(strScanFlowScalarBreaks);
        } else {
            sb.append(strPrefixForward);
        }
        return sb.toString();
    }

    private String scanFlowScalarBreaks(Mark mark) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String strPrefix = this.reader.prefix(3);
            if (("---".equals(strPrefix) || "...".equals(strPrefix)) && Constant.NULL_BL_T_LINEBR.has(this.reader.peek(3))) {
                throw new ScannerException("while scanning a quoted scalar", mark, "found unexpected document separator", this.reader.getMark());
            }
            while (" \t".indexOf(this.reader.peek()) != -1) {
                this.reader.forward();
            }
            String strScanLineBreak = scanLineBreak();
            if (strScanLineBreak.length() != 0) {
                sb.append(strScanLineBreak);
            } else {
                return sb.toString();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004b  */
    private Token scanPlain() {
        StringBuilder sb = new StringBuilder();
        Mark mark = this.reader.getMark();
        int i = this.indent + 1;
        Mark mark2 = mark;
        String strScanPlainSpaces = "";
        while (this.reader.peek() != 35) {
            int i2 = 0;
            while (true) {
                int iPeek = this.reader.peek(i2);
                if (Constant.NULL_BL_T_LINEBR.has(iPeek)) {
                    break;
                }
                if (iPeek == 58) {
                    if (!Constant.NULL_BL_T_LINEBR.has(this.reader.peek(i2 + 1), this.flowLevel != 0 ? ",[]{}" : "")) {
                        if (this.flowLevel == 0 && ",?[]{}".indexOf(iPeek) != -1) {
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                } else {
                    if (this.flowLevel == 0) {
                    }
                    i2++;
                }
            }
            if (i2 == 0) {
                break;
            }
            this.allowSimpleKey = false;
            sb.append(strScanPlainSpaces);
            sb.append(this.reader.prefixForward(i2));
            mark2 = this.reader.getMark();
            strScanPlainSpaces = scanPlainSpaces();
            if (strScanPlainSpaces.length() == 0 || this.reader.peek() == 35 || (this.flowLevel == 0 && this.reader.getColumn() < i)) {
                break;
            }
        }
        return new ScalarToken(sb.toString(), mark, mark2, true);
    }

    private String scanPlainSpaces() {
        int i = 0;
        while (true) {
            if (this.reader.peek(i) != 32 && this.reader.peek(i) != 9) {
                break;
            }
            i++;
        }
        String strPrefixForward = this.reader.prefixForward(i);
        String strScanLineBreak = scanLineBreak();
        if (strScanLineBreak.length() == 0) {
            return strPrefixForward;
        }
        this.allowSimpleKey = true;
        String strPrefix = this.reader.prefix(3);
        if ("---".equals(strPrefix) || ("...".equals(strPrefix) && Constant.NULL_BL_T_LINEBR.has(this.reader.peek(3)))) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (this.reader.peek() == 32) {
                this.reader.forward();
            } else {
                String strScanLineBreak2 = scanLineBreak();
                if (strScanLineBreak2.length() != 0) {
                    sb.append(strScanLineBreak2);
                    String strPrefix2 = this.reader.prefix(3);
                    if ("---".equals(strPrefix2) || ("...".equals(strPrefix2) && Constant.NULL_BL_T_LINEBR.has(this.reader.peek(3)))) {
                        return "";
                    }
                } else {
                    if (!StringUtils.LF.equals(strScanLineBreak)) {
                        return strScanLineBreak + ((Object) sb);
                    }
                    if (sb.length() == 0) {
                        return " ";
                    }
                    return sb.toString();
                }
            }
        }
    }

    private String scanTagHandle(String str, Mark mark) {
        int iPeek = this.reader.peek();
        if (iPeek != 33) {
            throw new ScannerException("while scanning a " + str, mark, "expected '!', but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        int i = 1;
        int iPeek2 = this.reader.peek(1);
        if (iPeek2 != 32) {
            int i2 = 1;
            while (Constant.ALPHA.has(iPeek2)) {
                i2++;
                iPeek2 = this.reader.peek(i2);
            }
            if (iPeek2 != 33) {
                this.reader.forward(i2);
                throw new ScannerException("while scanning a " + str, mark, "expected '!', but found " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
            }
            i = 1 + i2;
        }
        return this.reader.prefixForward(i);
    }

    private String scanTagUri(String str, Mark mark) {
        StringBuilder sb = new StringBuilder();
        int iPeek = this.reader.peek(0);
        int i = 0;
        while (Constant.URI_CHARS.has(iPeek)) {
            if (iPeek == 37) {
                sb.append(this.reader.prefixForward(i));
                sb.append(scanUriEscapes(str, mark));
                i = 0;
            } else {
                i++;
            }
            iPeek = this.reader.peek(i);
        }
        if (i != 0) {
            sb.append(this.reader.prefixForward(i));
        }
        if (sb.length() == 0) {
            throw new ScannerException("while scanning a " + str, mark, "expected URI, but found " + String.valueOf(Character.toChars(iPeek)) + "(" + iPeek + ")", this.reader.getMark());
        }
        return sb.toString();
    }

    private String scanUriEscapes(String str, Mark mark) {
        int i = 1;
        while (this.reader.peek(i * 3) == 37) {
            i++;
        }
        Mark mark2 = this.reader.getMark();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        while (this.reader.peek() == 37) {
            this.reader.forward();
            try {
                byteBufferAllocate.put((byte) Integer.parseInt(this.reader.prefix(2), 16));
                this.reader.forward(2);
            } catch (NumberFormatException unused) {
                int iPeek = this.reader.peek();
                String strValueOf = String.valueOf(Character.toChars(iPeek));
                int iPeek2 = this.reader.peek(1);
                throw new ScannerException("while scanning a " + str, mark, "expected URI escape sequence of 2 hexadecimal numbers, but found " + strValueOf + "(" + iPeek + ") and " + String.valueOf(Character.toChars(iPeek2)) + "(" + iPeek2 + ")", this.reader.getMark());
            }
        }
        byteBufferAllocate.flip();
        try {
            return UriEncoder.decode(byteBufferAllocate);
        } catch (CharacterCodingException e) {
            throw new ScannerException("while scanning a " + str, mark, "expected URI in UTF-8: " + e.getMessage(), mark2);
        }
    }

    private String scanLineBreak() {
        int iPeek = this.reader.peek();
        if (iPeek != 13 && iPeek != 10 && iPeek != 133) {
            if (iPeek == 8232 || iPeek == 8233) {
                this.reader.forward();
                return String.valueOf(Character.toChars(iPeek));
            }
            return "";
        }
        if (iPeek == 13 && 10 == this.reader.peek(1)) {
            this.reader.forward(2);
            return StringUtils.LF;
        }
        this.reader.forward();
        return StringUtils.LF;
    }

    private static class Chomping {
        private final int increment;
        private final Boolean value;

        public Chomping(Boolean bool, int i) {
            this.value = bool;
            this.increment = i;
        }

        public boolean chompTailIsNotFalse() {
            Boolean bool = this.value;
            return bool == null || bool.booleanValue();
        }

        public boolean chompTailIsTrue() {
            Boolean bool = this.value;
            return bool != null && bool.booleanValue();
        }

        public int getIncrement() {
            return this.increment;
        }
    }
}
