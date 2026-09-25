package org.apache.commons.compress.harmony.pack200;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.IOException;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.commons.compress.java.util.jar.Pack200;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Pack200Adapter {
    protected static final int DEFAULT_BUFFER_SIZE = 8192;
    private final PropertyChangeSupport support = new PropertyChangeSupport(this);
    private final SortedMap<String, String> properties = new TreeMap();

    public void addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.support.addPropertyChangeListener(propertyChangeListener);
    }

    protected void completed(double d) throws IOException {
        firePropertyChange(Pack200.Packer.PROGRESS, null, String.valueOf((int) (d * 100.0d)));
    }

    protected void firePropertyChange(String str, Object obj, Object obj2) throws IOException {
        this.support.firePropertyChange(str, obj, obj2);
    }

    public SortedMap<String, String> properties() {
        return this.properties;
    }

    public void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.support.removePropertyChangeListener(propertyChangeListener);
    }
}
