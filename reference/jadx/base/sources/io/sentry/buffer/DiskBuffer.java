package io.sentry.buffer;

import io.sentry.event.Event;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class DiskBuffer implements Buffer {
    public static final String FILE_SUFFIX = ".sentry-event";
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) DiskBuffer.class);
    private final File bufferDir;
    private int maxEvents;

    public DiskBuffer(File file, int i) {
        this.bufferDir = file;
        this.maxEvents = i;
        String str = "Could not create or write to disk buffer dir: " + file.getAbsolutePath();
        try {
            file.mkdirs();
            if (!file.isDirectory() || !file.canWrite()) {
                throw new RuntimeException(str);
            }
            logger.debug(Integer.toString(getNumStoredEvents()) + " stored events found in dir: " + file.getAbsolutePath());
        } catch (Exception e) {
            throw new RuntimeException(str, e);
        }
    }

    @Override // io.sentry.buffer.Buffer
    public void add(Event event) {
        if (getNumStoredEvents() >= this.maxEvents) {
            logger.warn("Not adding Event because at least " + Integer.toString(this.maxEvents) + " events are already stored: " + event.getId());
            return;
        }
        File file = new File(this.bufferDir.getAbsolutePath(), event.getId().toString() + FILE_SUFFIX);
        if (file.exists()) {
            logger.trace("Not adding Event to offline storage because it already exists: " + file.getAbsolutePath());
            return;
        }
        logger.debug("Adding Event to offline storage: " + file.getAbsolutePath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                try {
                    objectOutputStream.writeObject(event);
                    objectOutputStream.close();
                    fileOutputStream.close();
                    logger.debug(Integer.toString(getNumStoredEvents()) + " stored events are now in dir: " + this.bufferDir.getAbsolutePath());
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            objectOutputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (Exception e) {
            logger.error("Error writing Event to offline storage: " + event.getId(), (Throwable) e);
        }
    }

    @Override // io.sentry.buffer.Buffer
    public void discard(Event event) {
        File file = new File(this.bufferDir, event.getId().toString() + FILE_SUFFIX);
        if (file.exists()) {
            Logger logger2 = logger;
            logger2.debug("Discarding Event from offline storage: " + file.getAbsolutePath());
            if (file.delete()) {
                return;
            }
            logger2.warn("Failed to delete Event: " + file.getAbsolutePath());
        }
    }

    private Event fileToEvent(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(file.getAbsolutePath()));
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                try {
                    Object object = objectInputStream.readObject();
                    objectInputStream.close();
                    fileInputStream.close();
                    try {
                        return (Event) object;
                    } catch (Exception e) {
                        logger.error("Error casting Object to Event: " + file.getAbsolutePath(), (Throwable) e);
                        if (!file.delete()) {
                            logger.warn("Failed to delete Event: " + file.getAbsolutePath());
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            objectInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (FileNotFoundException unused) {
            return null;
        } catch (Exception e2) {
            Logger logger2 = logger;
            logger2.error("Error reading Event file: " + file.getAbsolutePath(), (Throwable) e2);
            if (!file.delete()) {
                logger2.warn("Failed to delete Event: " + file.getAbsolutePath());
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Event getNextEvent(Iterator<File> it) {
        Event eventFileToEvent;
        while (it.hasNext()) {
            File next = it.next();
            if (next.getAbsolutePath().endsWith(FILE_SUFFIX) && (eventFileToEvent = fileToEvent(next)) != null) {
                return eventFileToEvent;
            }
        }
        return null;
    }

    @Override // io.sentry.buffer.Buffer
    public Iterator<Event> getEvents() {
        return new Iterator<Event>(Arrays.asList(this.bufferDir.listFiles()).iterator()) { // from class: io.sentry.buffer.DiskBuffer.1
            private Event next;
            final /* synthetic */ Iterator val$files;

            {
                this.val$files = it;
                this.next = DiskBuffer.this.getNextEvent(it);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.next != null;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Event next() {
                Event event = this.next;
                this.next = DiskBuffer.this.getNextEvent(this.val$files);
                return event;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    private int getNumStoredEvents() {
        int i = 0;
        for (File file : this.bufferDir.listFiles()) {
            if (file.getAbsolutePath().endsWith(FILE_SUFFIX)) {
                i++;
            }
        }
        return i;
    }
}
