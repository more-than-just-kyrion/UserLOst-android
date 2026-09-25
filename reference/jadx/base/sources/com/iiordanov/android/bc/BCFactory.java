package com.iiordanov.android.bc;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class BCFactory {
    private static BCFactory _theInstance = new BCFactory();
    private static Class[] scaleDetectorConstructorArgs = {Context.class, OnScaleGestureListener.class};
    private IBCActivityManager bcActivityManager;
    private IBCGestureDetector bcGestureDetector;
    private IBCHaptic bcHaptic;
    private IBCMotionEvent bcMotionEvent;
    private IBCStorageContext bcStorageContext;

    int getSdkVersion() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public IBCActivityManager getBCActivityManager() {
        if (this.bcActivityManager == null) {
            synchronized (this) {
                if (this.bcActivityManager == null) {
                    if (getSdkVersion() >= 5) {
                        try {
                            this.bcActivityManager = (IBCActivityManager) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCActivityManagerV5").newInstance();
                        } catch (Exception e) {
                            this.bcActivityManager = new BCActivityManagerDefault();
                            throw new RuntimeException("Error instantiating", e);
                        }
                    } else {
                        this.bcActivityManager = new BCActivityManagerDefault();
                    }
                }
            }
        }
        return this.bcActivityManager;
    }

    public IBCGestureDetector getBCGestureDetector() {
        if (this.bcGestureDetector == null) {
            synchronized (this) {
                if (this.bcGestureDetector == null) {
                    try {
                        this.bcGestureDetector = (IBCGestureDetector) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCGestureDetectorDefault").newInstance();
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating", e);
                    }
                }
            }
        }
        return this.bcGestureDetector;
    }

    public IBCHaptic getBCHaptic() {
        if (this.bcHaptic == null) {
            synchronized (this) {
                if (this.bcHaptic == null) {
                    try {
                        this.bcHaptic = (IBCHaptic) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCHapticDefault").newInstance();
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating", e);
                    }
                }
            }
        }
        return this.bcHaptic;
    }

    public IBCMotionEvent getBCMotionEvent() {
        if (this.bcMotionEvent == null) {
            synchronized (this) {
                if (this.bcMotionEvent == null) {
                    if (getSdkVersion() >= 5) {
                        try {
                            this.bcMotionEvent = (IBCMotionEvent) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCMotionEvent5").newInstance();
                        } catch (Exception e) {
                            throw new RuntimeException("Error instantiating", e);
                        }
                    } else {
                        try {
                            this.bcMotionEvent = (IBCMotionEvent) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCMotionEvent4").newInstance();
                        } catch (Exception e2) {
                            throw new RuntimeException("Error instantiating", e2);
                        }
                    }
                }
            }
        }
        return this.bcMotionEvent;
    }

    public IBCScaleGestureDetector getScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener) {
        if (getSdkVersion() >= 5) {
            try {
                return (IBCScaleGestureDetector) getClass().getClassLoader().loadClass("com.iiordanov.bVNC.input.MyScaleGestureDetector").getConstructor(scaleDetectorConstructorArgs).newInstance(context, onScaleGestureListener);
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating ScaleGestureDetector", e);
            }
        }
        return new DummyScaleGestureDetector();
    }

    public IBCStorageContext getStorageContext() {
        if (this.bcStorageContext == null) {
            synchronized (this) {
                if (this.bcStorageContext == null) {
                    if (getSdkVersion() >= 8) {
                        try {
                            this.bcStorageContext = (IBCStorageContext) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCStorageContext8").newInstance();
                        } catch (Exception e) {
                            throw new RuntimeException("Error instantiating", e);
                        }
                    } else {
                        try {
                            this.bcStorageContext = (IBCStorageContext) getClass().getClassLoader().loadClass("com.iiordanov.android.bc.BCStorageContext7").newInstance();
                        } catch (Exception e2) {
                            throw new RuntimeException("Error instantiating", e2);
                        }
                    }
                }
            }
        }
        return this.bcStorageContext;
    }

    public static BCFactory getInstance() {
        return _theInstance;
    }
}
