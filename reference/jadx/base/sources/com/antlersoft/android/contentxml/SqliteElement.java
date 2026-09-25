package com.antlersoft.android.contentxml;

import android.content.ContentValues;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.util.Xml;
import com.antlersoft.util.xml.IElement;
import com.antlersoft.util.xml.IHandlerStack;
import com.antlersoft.util.xml.SimpleAttributes;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Stack;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class SqliteElement implements IElement {
    static final String ROW_ELEMENT = "row";
    static final String[] TABLE_ARRAY = {"name"};
    static final String TABLE_ELEMENT = "table";
    static final String TABLE_NAME_ATTRIBUTE = "table_name";
    private String _databaseTag;
    SQLiteDatabase _db;
    private ArrayList<String> _tableNames = new ArrayList<>();
    private ReplaceStrategy _replaceStrategy = ReplaceStrategy.REPLACE_EXISTING;

    /* JADX INFO: renamed from: com.antlersoft.android.contentxml.SqliteElement$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$antlersoft$android$contentxml$SqliteElement$ReplaceStrategy;

        static {
            int[] iArr = new int[ReplaceStrategy.values().length];
            $SwitchMap$com$antlersoft$android$contentxml$SqliteElement$ReplaceStrategy = iArr;
            try {
                iArr[ReplaceStrategy.REPLACE_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$antlersoft$android$contentxml$SqliteElement$ReplaceStrategy[ReplaceStrategy.REPLACE_EXISTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum ReplaceStrategy {
        REPLACE_ALL,
        REPLACE_EXISTING,
        REPLACE_NONE
    }

    class SqliteElementHandler extends DefaultHandler {
        private static final long INSERT_FAILED = -1;
        private String _currentTable;
        private ContentValues _lastRow;
        private IHandlerStack _stack;

        public SqliteElementHandler(IHandlerStack iHandlerStack) {
            this._stack = iHandlerStack;
        }

        private void saveLastRow() {
            if (this._lastRow != null) {
                try {
                    if (this._currentTable != null && SqliteElement.this._db.insert(this._currentTable, null, this._lastRow) == -1) {
                        int i = AnonymousClass1.$SwitchMap$com$antlersoft$android$contentxml$SqliteElement$ReplaceStrategy[SqliteElement.this.getReplaceStrategy().ordinal()];
                        if (i == 1) {
                            throw new SQLException("Failed to insert row in " + this._currentTable + " after emptying");
                        }
                        if (i == 2) {
                            SqliteElement.this._db.delete(this._currentTable, "_id = ?", new String[]{this._lastRow.getAsString("_id")});
                            SqliteElement.this._db.insertOrThrow(this._currentTable, null, this._lastRow);
                        }
                    }
                    this._lastRow = null;
                } catch (Throwable th) {
                    this._lastRow = null;
                    throw th;
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            saveLastRow();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            saveLastRow();
            if (!str2.equals(SqliteElement.TABLE_ELEMENT)) {
                if (str2.equals(SqliteElement.ROW_ELEMENT)) {
                    this._lastRow = new ContentValues();
                    ContentValuesElement contentValuesElement = new ContentValuesElement(this._lastRow, SqliteElement.ROW_ELEMENT);
                    IHandlerStack iHandlerStack = this._stack;
                    iHandlerStack.startWithHandler(contentValuesElement.readFromXML(iHandlerStack), str, str2, str3, attributes);
                    return;
                }
                return;
            }
            String value = attributes.getValue(SqliteElement.TABLE_NAME_ATTRIBUTE);
            this._currentTable = value;
            if (value == null) {
                throw new SAXException("table_name not found in table element.");
            }
            if (!SqliteElement.this.getTableNames().contains(this._currentTable)) {
                this._currentTable = null;
            } else if (SqliteElement.this.getReplaceStrategy() == ReplaceStrategy.REPLACE_ALL) {
                SqliteElement.this._db.delete(this._currentTable, null, null);
            }
        }
    }

    public static class StackContentHandler implements ContentHandler, IHandlerStack {
        private Stack<ContentHandler> _stack = new Stack<>();

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this._stack.peek().characters(cArr, i, i2);
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
            this._stack.peek().endDocument();
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this._stack.peek().endElement(str, str2, str3);
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) throws SAXException {
            this._stack.peek().endPrefixMapping(str);
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            this._stack.peek().ignorableWhitespace(cArr, i, i2);
        }

        @Override // com.antlersoft.util.xml.IHandlerStack
        public void popHandlerStack() {
            this._stack.pop();
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) throws SAXException {
            this._stack.peek().processingInstruction(str, str2);
        }

        @Override // com.antlersoft.util.xml.IHandlerStack
        public void pushHandlerStack(DefaultHandler defaultHandler) {
            this._stack.push(defaultHandler);
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this._stack.peek().setDocumentLocator(locator);
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) throws SAXException {
            this._stack.peek().skippedEntity(str);
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            this._stack.peek().startDocument();
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            this._stack.peek().startElement(str, str2, str3, attributes);
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) throws SAXException {
            this._stack.peek().startPrefixMapping(str, str2);
        }

        @Override // com.antlersoft.util.xml.IHandlerStack
        public void startWithHandler(DefaultHandler defaultHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
            this._stack.push(defaultHandler);
            defaultHandler.startElement(str, str2, str3, attributes);
        }
    }

    static class XmlSerializerHandler extends DefaultHandler {
        boolean _first = true;
        XmlSerializer _serializer;

        XmlSerializerHandler(XmlSerializer xmlSerializer) {
            this._serializer = xmlSerializer;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            try {
                this._serializer.text(cArr, i, i2);
            } catch (IOException e) {
                throw new SAXException(e.getMessage(), e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            try {
                this._serializer.endTag(str, str3);
            } catch (IOException e) {
                throw new SAXException(e.getMessage(), e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            try {
                this._serializer.ignorableWhitespace(new String(cArr, i, i2));
            } catch (IOException e) {
                throw new SAXException(e.getMessage(), e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            try {
                if (this._first) {
                    this._first = false;
                } else {
                    this._serializer.ignorableWhitespace("\r\n");
                }
                this._serializer.startTag(str, str3);
                if (attributes != null) {
                    int length = attributes.getLength();
                    for (int i = 0; i < length; i++) {
                        this._serializer.attribute(attributes.getURI(i), attributes.getQName(i), attributes.getValue(i));
                    }
                }
            } catch (IOException e) {
                throw new SAXException(e.getMessage(), e);
            }
        }
    }

    public SqliteElement(SQLiteDatabase sQLiteDatabase, String str) {
        this._db = sQLiteDatabase;
        this._databaseTag = str;
    }

    public static void exportDbAsXmlToStream(SQLiteDatabase sQLiteDatabase, Writer writer) throws SAXException, IOException {
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(writer);
        new SqliteElement(sQLiteDatabase, "database").writeToXML(new XmlSerializerHandler(xmlSerializerNewSerializer));
        xmlSerializerNewSerializer.flush();
    }

    public static void importXmlStreamToDb(SQLiteDatabase sQLiteDatabase, Reader reader, ReplaceStrategy replaceStrategy) throws SAXException, IOException {
        SqliteElement sqliteElement = new SqliteElement(sQLiteDatabase, "database");
        sqliteElement.setReplaceStrategy(replaceStrategy);
        StackContentHandler stackContentHandler = new StackContentHandler();
        stackContentHandler.pushHandlerStack(sqliteElement.readFromXML(stackContentHandler));
        Xml.parse(reader, stackContentHandler);
    }

    public void addTable(String str) {
        if (this._tableNames.contains(str)) {
            return;
        }
        this._tableNames.add(str);
    }

    @Override // com.antlersoft.util.xml.IElement
    public String getElementTag() {
        return this._databaseTag;
    }

    public ReplaceStrategy getReplaceStrategy() {
        return this._replaceStrategy;
    }

    ArrayList<String> getTableNames() {
        if (this._tableNames.size() == 0) {
            Cursor cursorQuery = this._db.query("sqlite_master", TABLE_ARRAY, "type = 'table'", null, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    String string = cursorQuery.getString(0);
                    String lowerCase = string.toLowerCase();
                    if (!lowerCase.equals("android_metadata") && !lowerCase.equals("sqlite_sequence")) {
                        this._tableNames.add(string);
                    }
                } finally {
                    cursorQuery.close();
                }
            }
        }
        return this._tableNames;
    }

    @Override // com.antlersoft.util.xml.IElement
    public DefaultHandler readFromXML(IHandlerStack iHandlerStack) {
        return new SqliteElementHandler(iHandlerStack);
    }

    public void removeTable(String str) {
        getTableNames().remove(str);
    }

    public void setReplaceStrategy(ReplaceStrategy replaceStrategy) {
        this._replaceStrategy = replaceStrategy;
    }

    @Override // com.antlersoft.util.xml.IElement
    public void writeToXML(ContentHandler contentHandler) throws SAXException {
        contentHandler.startElement("", "", getElementTag(), null);
        for (String str : getTableNames()) {
            SimpleAttributes simpleAttributes = new SimpleAttributes();
            simpleAttributes.addValue(TABLE_NAME_ATTRIBUTE, str);
            contentHandler.startElement("", "", TABLE_ELEMENT, simpleAttributes.getAttributes());
            Cursor cursorQuery = this._db.query(str, null, null, null, null, null, null);
            try {
                if (cursorQuery.moveToFirst()) {
                    ContentValues contentValues = new ContentValues();
                    do {
                        DatabaseUtils.cursorRowToContentValues(cursorQuery, contentValues);
                        new ContentValuesElement(contentValues, ROW_ELEMENT).writeToXML(contentHandler);
                    } while (cursorQuery.moveToNext());
                }
                cursorQuery.close();
                contentHandler.endElement("", "", TABLE_ELEMENT);
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        contentHandler.endElement("", "", getElementTag());
    }
}
