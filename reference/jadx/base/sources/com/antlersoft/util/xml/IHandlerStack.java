package com.antlersoft.util.xml;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public interface IHandlerStack {
    void popHandlerStack();

    void pushHandlerStack(DefaultHandler defaultHandler);

    void startWithHandler(DefaultHandler defaultHandler, String str, String str2, String str3, Attributes attributes) throws SAXException;
}
