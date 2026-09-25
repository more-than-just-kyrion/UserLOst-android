package org.apache.commons.compress.harmony.unpack200;

import androidx.exifinterface.media.ExifInterface;
import com.iiordanov.bVNC.AbstractConnectionBean;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPDouble;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFieldRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFloat;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInteger;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInterfaceMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPLong;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPNameAndType;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPString;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute;
import org.apache.commons.compress.utils.ParsingUtils;

/* JADX INFO: loaded from: classes3.dex */
public class NewAttributeBands extends BandSet {
    private final AttributeLayout attributeLayout;
    protected List<AttributeLayoutElement> attributeLayoutElements;
    private int backwardsCallCount;

    private interface AttributeLayoutElement {
        void addToAttribute(int i, NewAttribute newAttribute);

        void readBands(InputStream inputStream, int i) throws IOException;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException {
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() throws IOException {
    }

    public class Call extends LayoutElement {
        private Callable callable;
        private final int callableIndex;

        public Call(int i) {
            super();
            this.callableIndex = i;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.callable.addNextToAttribute(newAttribute);
        }

        public Callable getCallable() {
            return this.callable;
        }

        public int getCallableIndex() {
            return this.callableIndex;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) {
            if (this.callableIndex > 0) {
                this.callable.addCount(i);
            }
        }

        public void setCallable(Callable callable) {
            this.callable = callable;
            if (this.callableIndex < 1) {
                callable.setBackwardsCallable();
            }
        }
    }

    public static class Callable implements AttributeLayoutElement {
        private final List<LayoutElement> body;
        private int count;
        private int index;
        private boolean isBackwardsCallable;
        private boolean isFirstCallable;

        public Callable(List<LayoutElement> list) {
            this.body = list;
        }

        public void addCount(int i) {
            this.count += i;
        }

        public void addNextToAttribute(NewAttribute newAttribute) {
            Iterator<LayoutElement> it = this.body.iterator();
            while (it.hasNext()) {
                it.next().addToAttribute(this.index, newAttribute);
            }
            this.index++;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            if (this.isFirstCallable) {
                Iterator<LayoutElement> it = this.body.iterator();
                while (it.hasNext()) {
                    it.next().addToAttribute(this.index, newAttribute);
                }
                this.index++;
            }
        }

        public List<LayoutElement> getBody() {
            return this.body;
        }

        public boolean isBackwardsCallable() {
            return this.isBackwardsCallable;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            int i2;
            if (this.isFirstCallable) {
                i2 = i + this.count;
            } else {
                i2 = this.count;
            }
            Iterator<LayoutElement> it = this.body.iterator();
            while (it.hasNext()) {
                it.next().readBands(inputStream, i2);
            }
        }

        public void setBackwardsCallable() {
            this.isBackwardsCallable = true;
        }

        public void setFirstCallable(boolean z) {
            this.isFirstCallable = z;
        }
    }

    public class Integral extends LayoutElement {
        private int[] band;
        private final String tag;

        public Integral(String str) {
            super();
            this.tag = str;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            int i2 = this.band[i];
            if (this.tag.equals("B") || this.tag.equals("FB")) {
                newAttribute.addInteger(1, i2);
                return;
            }
            if (this.tag.equals("SB")) {
                newAttribute.addInteger(1, (byte) i2);
                return;
            }
            if (this.tag.equals("H") || this.tag.equals("FH")) {
                newAttribute.addInteger(2, i2);
                return;
            }
            if (this.tag.equals("SH")) {
                newAttribute.addInteger(2, (short) i2);
                return;
            }
            if (this.tag.equals("I") || this.tag.equals("FI") || this.tag.equals("SI")) {
                newAttribute.addInteger(4, i2);
                return;
            }
            if (this.tag.equals(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) || this.tag.equals("FV") || this.tag.equals("SV")) {
                return;
            }
            if (this.tag.startsWith("PO")) {
                newAttribute.addBCOffset(getLength(this.tag.substring(2).toCharArray()[0]), i2);
                return;
            }
            if (this.tag.startsWith("P")) {
                newAttribute.addBCIndex(getLength(this.tag.substring(1).toCharArray()[0]), i2);
                return;
            }
            if (this.tag.startsWith("OS")) {
                int length = getLength(this.tag.substring(2).toCharArray()[0]);
                if (length == 1) {
                    i2 = (byte) i2;
                } else if (length == 2) {
                    i2 = (short) i2;
                }
                newAttribute.addBCLength(length, i2);
                return;
            }
            if (this.tag.startsWith("O")) {
                newAttribute.addBCLength(getLength(this.tag.substring(1).toCharArray()[0]), i2);
            }
        }

        public String getTag() {
            return this.tag;
        }

        int getValue(int i) {
            return this.band[i];
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            this.band = NewAttributeBands.this.decodeBandInt(NewAttributeBands.this.attributeLayout.getName() + "_" + this.tag, inputStream, NewAttributeBands.this.getCodec(this.tag), i);
        }
    }

    private static abstract class LayoutElement implements AttributeLayoutElement {
        protected int getLength(char c) {
            if (c == 'B') {
                return 1;
            }
            if (c == 'V') {
                return 0;
            }
            if (c != 'H') {
                return c != 'I' ? 0 : 4;
            }
            return 2;
        }

        private LayoutElement() {
        }
    }

    public class Reference extends LayoutElement {
        private Object band;
        private final int length;
        private final String tag;

        public Reference(String str) {
            super();
            this.tag = str;
            this.length = getLength(str.charAt(str.length() - 1));
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            if (this.tag.startsWith("KI")) {
                newAttribute.addToBody(this.length, ((CPInteger[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("KJ")) {
                newAttribute.addToBody(this.length, ((CPLong[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("KF")) {
                newAttribute.addToBody(this.length, ((CPFloat[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("KD")) {
                newAttribute.addToBody(this.length, ((CPDouble[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("KS")) {
                newAttribute.addToBody(this.length, ((CPString[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("RC")) {
                newAttribute.addToBody(this.length, ((CPClass[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("RS")) {
                newAttribute.addToBody(this.length, ((CPUTF8[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("RD")) {
                newAttribute.addToBody(this.length, ((CPNameAndType[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("RF")) {
                newAttribute.addToBody(this.length, ((CPFieldRef[]) this.band)[i]);
                return;
            }
            if (this.tag.startsWith("RM")) {
                newAttribute.addToBody(this.length, ((CPMethodRef[]) this.band)[i]);
            } else if (this.tag.startsWith("RI")) {
                newAttribute.addToBody(this.length, ((CPInterfaceMethodRef[]) this.band)[i]);
            } else if (this.tag.startsWith("RU")) {
                newAttribute.addToBody(this.length, ((CPUTF8[]) this.band)[i]);
            }
        }

        public String getTag() {
            return this.tag;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            if (this.tag.startsWith("KI")) {
                NewAttributeBands newAttributeBands = NewAttributeBands.this;
                this.band = newAttributeBands.parseCPIntReferences(newAttributeBands.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("KJ")) {
                NewAttributeBands newAttributeBands2 = NewAttributeBands.this;
                this.band = newAttributeBands2.parseCPLongReferences(newAttributeBands2.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("KF")) {
                NewAttributeBands newAttributeBands3 = NewAttributeBands.this;
                this.band = newAttributeBands3.parseCPFloatReferences(newAttributeBands3.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("KD")) {
                NewAttributeBands newAttributeBands4 = NewAttributeBands.this;
                this.band = newAttributeBands4.parseCPDoubleReferences(newAttributeBands4.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("KS")) {
                NewAttributeBands newAttributeBands5 = NewAttributeBands.this;
                this.band = newAttributeBands5.parseCPStringReferences(newAttributeBands5.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("RC")) {
                NewAttributeBands newAttributeBands6 = NewAttributeBands.this;
                this.band = newAttributeBands6.parseCPClassReferences(newAttributeBands6.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("RS")) {
                NewAttributeBands newAttributeBands7 = NewAttributeBands.this;
                this.band = newAttributeBands7.parseCPSignatureReferences(newAttributeBands7.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("RD")) {
                NewAttributeBands newAttributeBands8 = NewAttributeBands.this;
                this.band = newAttributeBands8.parseCPDescriptorReferences(newAttributeBands8.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("RF")) {
                NewAttributeBands newAttributeBands9 = NewAttributeBands.this;
                this.band = newAttributeBands9.parseCPFieldRefReferences(newAttributeBands9.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
                return;
            }
            if (this.tag.startsWith("RM")) {
                NewAttributeBands newAttributeBands10 = NewAttributeBands.this;
                this.band = newAttributeBands10.parseCPMethodRefReferences(newAttributeBands10.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
            } else if (this.tag.startsWith("RI")) {
                NewAttributeBands newAttributeBands11 = NewAttributeBands.this;
                this.band = newAttributeBands11.parseCPInterfaceMethodRefReferences(newAttributeBands11.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
            } else if (this.tag.startsWith("RU")) {
                NewAttributeBands newAttributeBands12 = NewAttributeBands.this;
                this.band = newAttributeBands12.parseCPUTF8References(newAttributeBands12.attributeLayout.getName(), inputStream, Codec.UNSIGNED5, i);
            }
        }
    }

    public class Replication extends LayoutElement {
        private final Integral countElement;
        private final List<LayoutElement> layoutElements;

        public Replication(String str, String str2) throws IOException {
            super();
            this.layoutElements = new ArrayList();
            this.countElement = NewAttributeBands.this.new Integral(str);
            StringReader stringReader = new StringReader(str2);
            while (true) {
                LayoutElement nextLayoutElement = NewAttributeBands.this.readNextLayoutElement(stringReader);
                if (nextLayoutElement == null) {
                    return;
                } else {
                    this.layoutElements.add(nextLayoutElement);
                }
            }
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.countElement.addToAttribute(i, newAttribute);
            int value = 0;
            for (int i2 = 0; i2 < i; i2++) {
                value += this.countElement.getValue(i2);
            }
            long value2 = this.countElement.getValue(i);
            for (int i3 = value; i3 < ((long) value) + value2; i3++) {
                Iterator<LayoutElement> it = this.layoutElements.iterator();
                while (it.hasNext()) {
                    it.next().addToAttribute(i3, newAttribute);
                }
            }
        }

        public Integral getCountElement() {
            return this.countElement;
        }

        public List<LayoutElement> getLayoutElements() {
            return this.layoutElements;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            this.countElement.readBands(inputStream, i);
            int value = 0;
            for (int i2 = 0; i2 < i; i2++) {
                value += this.countElement.getValue(i2);
            }
            Iterator<LayoutElement> it = this.layoutElements.iterator();
            while (it.hasNext()) {
                it.next().readBands(inputStream, value);
            }
        }
    }

    public class Union extends LayoutElement {
        private int[] caseCounts;
        private final List<LayoutElement> defaultCaseBody;
        private int defaultCount;
        private final List<UnionCase> unionCases;
        private final Integral unionTag;

        public Union(String str, List<UnionCase> list, List<LayoutElement> list2) {
            super();
            this.unionTag = NewAttributeBands.this.new Integral(str);
            this.unionCases = list;
            this.defaultCaseBody = list2;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            this.unionTag.addToAttribute(i, newAttribute);
            int[] iArr = this.unionTag.band;
            int value = this.unionTag.getValue(i);
            int i2 = 0;
            boolean z = true;
            for (UnionCase unionCase : this.unionCases) {
                if (unionCase.hasTag(value)) {
                    for (int i3 = 0; i3 < i; i3++) {
                        if (unionCase.hasTag(iArr[i3])) {
                            i2++;
                        }
                    }
                    unionCase.addToAttribute(i2, newAttribute);
                    z = false;
                }
            }
            if (z) {
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Iterator<UnionCase> it = this.unionCases.iterator();
                    boolean z2 = false;
                    while (it.hasNext()) {
                        if (it.next().hasTag(iArr[i5])) {
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        i4++;
                    }
                }
                List<LayoutElement> list = this.defaultCaseBody;
                if (list != null) {
                    Iterator<LayoutElement> it2 = list.iterator();
                    while (it2.hasNext()) {
                        it2.next().addToAttribute(i4, newAttribute);
                    }
                }
            }
        }

        public List<LayoutElement> getDefaultCaseBody() {
            return this.defaultCaseBody;
        }

        public List<UnionCase> getUnionCases() {
            return this.unionCases;
        }

        public Integral getUnionTag() {
            return this.unionTag;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            this.unionTag.readBands(inputStream, i);
            int[] iArr = this.unionTag.band;
            this.caseCounts = new int[this.unionCases.size()];
            for (int i2 = 0; i2 < this.caseCounts.length; i2++) {
                UnionCase unionCase = this.unionCases.get(i2);
                for (int i3 : iArr) {
                    if (unionCase.hasTag(i3)) {
                        int[] iArr2 = this.caseCounts;
                        iArr2[i2] = iArr2[i2] + 1;
                    }
                }
                unionCase.readBands(inputStream, this.caseCounts[i2]);
            }
            for (int i4 : iArr) {
                Iterator<UnionCase> it = this.unionCases.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    if (it.next().hasTag(i4)) {
                        z = true;
                    }
                }
                if (!z) {
                    this.defaultCount++;
                }
            }
            List<LayoutElement> list = this.defaultCaseBody;
            if (list != null) {
                Iterator<LayoutElement> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().readBands(inputStream, this.defaultCount);
                }
            }
        }
    }

    public class UnionCase extends LayoutElement {
        private List<LayoutElement> body;
        private final List<Integer> tags;

        public UnionCase(List<Integer> list) {
            super();
            this.tags = list;
        }

        public UnionCase(List<Integer> list, List<LayoutElement> list2) {
            super();
            this.tags = list;
            this.body = list2;
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void addToAttribute(int i, NewAttribute newAttribute) {
            List<LayoutElement> list = this.body;
            if (list != null) {
                Iterator<LayoutElement> it = list.iterator();
                while (it.hasNext()) {
                    it.next().addToAttribute(i, newAttribute);
                }
            }
        }

        public List<LayoutElement> getBody() {
            List<LayoutElement> list = this.body;
            return list == null ? Collections.EMPTY_LIST : list;
        }

        public boolean hasTag(int i) {
            return this.tags.contains(Integer.valueOf(i));
        }

        public boolean hasTag(long j) {
            return this.tags.contains(Integer.valueOf((int) j));
        }

        @Override // org.apache.commons.compress.harmony.unpack200.NewAttributeBands.AttributeLayoutElement
        public void readBands(InputStream inputStream, int i) throws IOException {
            List<LayoutElement> list = this.body;
            if (list != null) {
                Iterator<LayoutElement> it = list.iterator();
                while (it.hasNext()) {
                    it.next().readBands(inputStream, i);
                }
            }
        }
    }

    public NewAttributeBands(Segment segment, AttributeLayout attributeLayout) throws IOException {
        super(segment);
        this.attributeLayout = attributeLayout;
        parseLayout();
        attributeLayout.setBackwardsCallCount(this.backwardsCallCount);
    }

    public int getBackwardsCallCount() {
        return this.backwardsCallCount;
    }

    public BHSDCodec getCodec(String str) {
        if (str.indexOf(79) >= 0) {
            return Codec.BRANCH5;
        }
        if (str.indexOf(80) >= 0) {
            return Codec.BCI5;
        }
        if (str.indexOf(83) >= 0 && str.indexOf("KS") < 0 && str.indexOf("RS") < 0) {
            return Codec.SIGNED5;
        }
        if (str.indexOf(66) >= 0) {
            return Codec.BYTE1;
        }
        return Codec.UNSIGNED5;
    }

    private Attribute getOneAttribute(int i, List<AttributeLayoutElement> list) {
        NewAttribute newAttribute = new NewAttribute(this.segment.getCpBands().cpUTF8Value(this.attributeLayout.getName()), this.attributeLayout.getIndex());
        Iterator<AttributeLayoutElement> it = list.iterator();
        while (it.hasNext()) {
            it.next().addToAttribute(i, newAttribute);
        }
        return newAttribute;
    }

    private StringReader getStreamUpToMatchingBracket(StringReader stringReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        int i = -1;
        while (i != 0) {
            int i2 = stringReader.read();
            if (i2 == -1) {
                break;
            }
            char c = (char) i2;
            if (c == ']') {
                i++;
            }
            if (c == '[') {
                i--;
            }
            if (i != 0) {
                sb.append(c);
            }
        }
        return new StringReader(sb.toString());
    }

    public List<Attribute> parseAttributes(InputStream inputStream, int i) throws IOException {
        Iterator<AttributeLayoutElement> it = this.attributeLayoutElements.iterator();
        while (it.hasNext()) {
            it.next().readBands(inputStream, i);
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(getOneAttribute(i2, this.attributeLayoutElements));
        }
        return arrayList;
    }

    private void parseLayout() throws IOException {
        if (this.attributeLayoutElements != null) {
            return;
        }
        this.attributeLayoutElements = new ArrayList();
        StringReader stringReader = new StringReader(this.attributeLayout.getLayout());
        while (true) {
            AttributeLayoutElement nextAttributeElement = readNextAttributeElement(stringReader);
            if (nextAttributeElement != null) {
                this.attributeLayoutElements.add(nextAttributeElement);
            } else {
                resolveCalls();
                return;
            }
        }
    }

    private List<LayoutElement> readBody(StringReader stringReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            LayoutElement nextLayoutElement = readNextLayoutElement(stringReader);
            if (nextLayoutElement == null) {
                return arrayList;
            }
            arrayList.add(nextLayoutElement);
        }
    }

    private AttributeLayoutElement readNextAttributeElement(StringReader stringReader) throws IOException {
        stringReader.mark(1);
        int i = stringReader.read();
        if (i == -1) {
            return null;
        }
        if (i == 91) {
            return new Callable(readBody(getStreamUpToMatchingBracket(stringReader)));
        }
        stringReader.reset();
        return readNextLayoutElement(stringReader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LayoutElement readNextLayoutElement(StringReader stringReader) throws IOException {
        int i = stringReader.read();
        List<LayoutElement> body = null;
        if (i == -1) {
            return null;
        }
        if (i != 40) {
            if (i != 66) {
                if (i != 70) {
                    if (i != 75) {
                        if (i != 86 && i != 72 && i != 73) {
                            switch (i) {
                                case 78:
                                    char c = (char) stringReader.read();
                                    stringReader.read();
                                    return new Replication("" + c, readUpToMatchingBracket(stringReader));
                                case AbstractConnectionBean.GEN_ID_ENABLEGFX /* 79 */:
                                    stringReader.mark(1);
                                    if (stringReader.read() != 83) {
                                        stringReader.reset();
                                        return new Integral("O" + ((char) stringReader.read()));
                                    }
                                    return new Integral("OS" + ((char) stringReader.read()));
                                case 80:
                                    stringReader.mark(1);
                                    if (stringReader.read() != 79) {
                                        stringReader.reset();
                                        return new Integral("P" + ((char) stringReader.read()));
                                    }
                                    return new Integral("PO" + ((char) stringReader.read()));
                                default:
                                    switch (i) {
                                        case 82:
                                            break;
                                        case 83:
                                            break;
                                        case 84:
                                            String str = "" + ((char) stringReader.read());
                                            if (str.equals(ExifInterface.LATITUDE_SOUTH)) {
                                                str = str + ((char) stringReader.read());
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            while (true) {
                                                UnionCase nextUnionCase = readNextUnionCase(stringReader);
                                                if (nextUnionCase != null) {
                                                    arrayList.add(nextUnionCase);
                                                } else {
                                                    stringReader.read();
                                                    stringReader.read();
                                                    stringReader.read();
                                                    stringReader.mark(1);
                                                    if (((char) stringReader.read()) != ']') {
                                                        stringReader.reset();
                                                        body = readBody(getStreamUpToMatchingBracket(stringReader));
                                                    }
                                                    return new Union(str, arrayList, body);
                                                }
                                            }
                                            break;
                                        default:
                                            return null;
                                    }
                                    break;
                            }
                        }
                    }
                    StringBuilder sbAppend = new StringBuilder("").append((char) i).append((char) stringReader.read());
                    char c2 = (char) stringReader.read();
                    sbAppend.append(c2);
                    if (c2 == 'N') {
                        sbAppend.append((char) stringReader.read());
                    }
                    return new Reference(sbAppend.toString());
                }
                return new Integral(new String(new char[]{(char) i, (char) stringReader.read()}));
            }
            return new Integral(new String(new char[]{(char) i}));
        }
        int iIntValue = readNumber(stringReader).intValue();
        stringReader.read();
        return new Call(iIntValue);
    }

    private UnionCase readNextUnionCase(StringReader stringReader) throws IOException {
        Integer number;
        stringReader.mark(2);
        stringReader.read();
        int i = stringReader.read();
        if (((char) i) == ')' || i == -1) {
            stringReader.reset();
            return null;
        }
        stringReader.reset();
        stringReader.read();
        ArrayList arrayList = new ArrayList();
        do {
            number = readNumber(stringReader);
            if (number != null) {
                arrayList.add(number);
                stringReader.read();
            }
        } while (number != null);
        stringReader.read();
        stringReader.mark(1);
        if (((char) stringReader.read()) == ']') {
            return new UnionCase(arrayList);
        }
        stringReader.reset();
        return new UnionCase(arrayList, readBody(getStreamUpToMatchingBracket(stringReader)));
    }

    private Integer readNumber(StringReader stringReader) throws IOException {
        stringReader.mark(1);
        int i = 0;
        boolean z = ((char) stringReader.read()) == '-';
        if (!z) {
            stringReader.reset();
        }
        stringReader.mark(100);
        while (true) {
            int i2 = stringReader.read();
            if (i2 == -1 || !Character.isDigit((char) i2)) {
                break;
            }
            i++;
        }
        stringReader.reset();
        if (i == 0) {
            return null;
        }
        char[] cArr = new char[i];
        if (stringReader.read(cArr) == i) {
            return Integer.valueOf(ParsingUtils.parseIntValue((z ? "-" : "").concat(new String(cArr))));
        }
        throw new IOException("Error reading from the input stream");
    }

    private String readUpToMatchingBracket(StringReader stringReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        int i = -1;
        while (i != 0) {
            int i2 = stringReader.read();
            if (i2 == -1) {
                break;
            }
            char c = (char) i2;
            if (c == ']') {
                i++;
            }
            if (c == '[') {
                i--;
            }
            if (i != 0) {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private void resolveCalls() {
        int iResolveCallsForElement = 0;
        for (int i = 0; i < this.attributeLayoutElements.size(); i++) {
            AttributeLayoutElement attributeLayoutElement = this.attributeLayoutElements.get(i);
            if (attributeLayoutElement instanceof Callable) {
                Callable callable = (Callable) attributeLayoutElement;
                if (i == 0) {
                    callable.setFirstCallable(true);
                }
                Iterator it = callable.body.iterator();
                while (it.hasNext()) {
                    iResolveCallsForElement += resolveCallsForElement(i, callable, (LayoutElement) it.next());
                }
            }
        }
        this.backwardsCallCount = iResolveCallsForElement;
    }

    private int resolveCallsForElement(int i, Callable callable, LayoutElement layoutElement) {
        int iResolveCallsForElement = 0;
        if (layoutElement instanceof Call) {
            Call call = (Call) layoutElement;
            int i2 = call.callableIndex;
            if (i2 == 0) {
                call.setCallable(callable);
            } else {
                if (i2 > 0) {
                    for (int i3 = i + 1; i3 < this.attributeLayoutElements.size(); i3++) {
                        AttributeLayoutElement attributeLayoutElement = this.attributeLayoutElements.get(i3);
                        if ((attributeLayoutElement instanceof Callable) && (i2 = i2 - 1) == 0) {
                            call.setCallable((Callable) attributeLayoutElement);
                            return 0;
                        }
                    }
                    return 0;
                }
                for (int i4 = i - 1; i4 >= 0; i4--) {
                    AttributeLayoutElement attributeLayoutElement2 = this.attributeLayoutElements.get(i4);
                    if ((attributeLayoutElement2 instanceof Callable) && (i2 = i2 + 1) == 0) {
                        call.setCallable((Callable) attributeLayoutElement2);
                        break;
                    }
                }
            }
            return 1;
        }
        if (!(layoutElement instanceof Replication)) {
            return 0;
        }
        Iterator it = ((Replication) layoutElement).layoutElements.iterator();
        while (it.hasNext()) {
            iResolveCallsForElement += resolveCallsForElement(i, callable, (LayoutElement) it.next());
        }
        return iResolveCallsForElement;
    }

    public void setBackwardsCalls(int[] iArr) throws IOException {
        parseLayout();
        int i = 0;
        for (AttributeLayoutElement attributeLayoutElement : this.attributeLayoutElements) {
            if (attributeLayoutElement instanceof Callable) {
                Callable callable = (Callable) attributeLayoutElement;
                if (callable.isBackwardsCallable()) {
                    callable.addCount(iArr[i]);
                    i++;
                }
            }
        }
    }
}
