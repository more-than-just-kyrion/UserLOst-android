package com.trilead.ssh2.util;

import com.trilead.ssh2.log.Logger;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collections;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class TimeoutService {
    private static final Logger log = Logger.getLogger(TimeoutService.class);
    private static final LinkedList todolist = new LinkedList();
    private static Thread timeoutThread = null;

    public static class TimeoutToken implements Comparable {
        private Runnable handler;
        private long runTime;

        private TimeoutToken(long j, Runnable runnable) {
            this.runTime = j;
            this.handler = runnable;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            long j = this.runTime;
            long j2 = ((TimeoutToken) obj).runTime;
            if (j > j2) {
                return 1;
            }
            return j == j2 ? 0 : -1;
        }
    }

    private static class TimeoutThread extends Thread {
        private TimeoutThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (TimeoutService.todolist) {
                while (TimeoutService.todolist.size() != 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    TimeoutToken timeoutToken = (TimeoutToken) TimeoutService.todolist.getFirst();
                    if (timeoutToken.runTime > jCurrentTimeMillis) {
                        try {
                            TimeoutService.todolist.wait(timeoutToken.runTime - jCurrentTimeMillis);
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        TimeoutService.todolist.removeFirst();
                        try {
                            timeoutToken.handler.run();
                        } catch (Exception e) {
                            StringWriter stringWriter = new StringWriter();
                            e.printStackTrace(new PrintWriter(stringWriter));
                            TimeoutService.log.log(20, "Exeception in Timeout handler:" + e.getMessage() + "(" + stringWriter.toString() + ")");
                        }
                    }
                }
                TimeoutService.timeoutThread = null;
            }
        }
    }

    public static final TimeoutToken addTimeoutHandler(long j, Runnable runnable) {
        TimeoutToken timeoutToken = new TimeoutToken(j, runnable);
        LinkedList linkedList = todolist;
        synchronized (linkedList) {
            linkedList.add(timeoutToken);
            Collections.sort(linkedList);
            Thread thread = timeoutThread;
            if (thread != null) {
                thread.interrupt();
            } else {
                TimeoutThread timeoutThread2 = new TimeoutThread();
                timeoutThread = timeoutThread2;
                timeoutThread2.setDaemon(true);
                timeoutThread.start();
            }
        }
        return timeoutToken;
    }

    public static final void cancelTimeoutHandler(TimeoutToken timeoutToken) {
        LinkedList linkedList = todolist;
        synchronized (linkedList) {
            linkedList.remove(timeoutToken);
            Thread thread = timeoutThread;
            if (thread != null) {
                thread.interrupt();
            }
        }
    }
}
