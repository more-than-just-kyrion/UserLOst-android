package com.undatech.opaque;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.widget.Toast;
import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.util.GeneralUtils;
import io.sentry.marshaller.json.JsonMarshaller;
import java.util.ArrayList;
import java.util.HashMap;
import org.freedesktop.gstreamer.GStreamer;

/* JADX INFO: loaded from: classes2.dex */
public class SpiceCommunicator implements RfbConnectable {
    static final int LALT = 56;
    static final int LCONTROL = 29;
    static final int LSHIFT = 42;
    static final int LWIN = 347;
    static final int RALT = 312;
    static final int RCONTROL = 285;
    static final int RSHIFT = 54;
    static final int RWIN = 348;
    private static final String TAG = "SpiceCommunicator";
    private static SpiceCommunicator myself;
    private Viewable canvas;
    private Context context;
    private boolean debugLogging;
    private Handler handler;
    private boolean isRequestingNewDisplayResolution;
    UsbManager mUsbManager;
    private boolean usbEnabled;
    private HashMap<String, Integer> deviceToFdMap = new HashMap<>();
    private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() { // from class: com.undatech.opaque.SpiceCommunicator.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsbDevice usbDevice;
            if (!RemoteClientLibConstants.ACTION_USB_PERMISSION.equals(intent.getAction()) || (usbDevice = (UsbDevice) intent.getParcelableExtra("device")) == null) {
                return;
            }
            String str = Integer.toString(usbDevice.getVendorId()) + ":" + Integer.toString(usbDevice.getProductId());
            synchronized (((Integer) SpiceCommunicator.this.deviceToFdMap.get(str))) {
                ((Integer) SpiceCommunicator.this.deviceToFdMap.get(str)).notify();
            }
        }
    };
    int remoteMetaState = 0;
    private int width = 0;
    private int height = 0;
    boolean isInNormalProtocol = false;
    private Thread thread = null;
    private int resolutionRequests = -1;
    private int maxResolutionRequests = 5;
    private Bitmap bitmap = null;
    private ArrayList<String> vmNames = null;

    public native int CreateOvirtSession(String str, String str2, String str3, String str4, boolean z, boolean z2);

    public native int FetchVmNames(String str, String str2, String str3, String str4, boolean z);

    public native void SpiceButtonEvent(int i, int i2, int i3, int i4, boolean z);

    public native int SpiceClientConnect(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z);

    public native void SpiceClientDisconnect();

    public native void SpiceKeyEvent(boolean z, int i);

    public native void SpiceRequestResolution(int i, int i2);

    public native int StartSessionFromVvFile(String str, boolean z);

    public native void UpdateBitmap(Bitmap bitmap, int i, int i2, int i3, int i4);

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isCertificateAccepted() {
        return false;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestUpdate(boolean z) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setCertificateAccepted(boolean z) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeClientCutText(String str) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeFramebufferUpdateRequest(int i, int i2, int i3, int i4, boolean z) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeSetPixelFormat(int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z3) {
    }

    static {
        System.loadLibrary("gstreamer_android");
        System.loadLibrary("spice");
        myself = null;
    }

    public SpiceCommunicator(Context context, Handler handler, Viewable viewable, boolean z, boolean z2, boolean z3) {
        this.mUsbManager = null;
        this.context = context;
        this.canvas = viewable;
        this.isRequestingNewDisplayResolution = z;
        this.usbEnabled = z2;
        this.handler = handler;
        this.debugLogging = z3;
        myself = this;
        this.mUsbManager = (UsbManager) context.getSystemService("usb");
        try {
            GStreamer.init(context);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(context, e.getMessage(), 1).show();
        }
    }

    public void setHandler(Handler handler) {
        this.handler = handler;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public ArrayList<String> getVmNames() {
        return this.vmNames;
    }

    public void connectSpice(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z) {
        Log.d(TAG, "connectSpice: " + str + ", " + str2 + ", " + str3 + ", " + str5 + ", " + str7);
        SpiceThread spiceThread = new SpiceThread(str, str2, str3, str4, str5, str6, str7, z);
        this.thread = spiceThread;
        spiceThread.start();
    }

    public void connectOvirt(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        Log.d(TAG, "connectOvirt: " + str + ", " + str2 + ", " + str3);
        OvirtThread ovirtThread = new OvirtThread(str, str2, str3, str4, str5, z, z2);
        this.thread = ovirtThread;
        ovirtThread.start();
    }

    public int startSessionFromVvFile(String str, boolean z) {
        Log.d(TAG, "Starting connection from vv file: " + str);
        return StartSessionFromVvFile(str, z);
    }

    public int fetchOvirtVmNames(String str, String str2, String str3, String str4, boolean z) {
        this.vmNames = new ArrayList<>();
        return FetchVmNames("https://" + str + "//api", str2, str3, str4, z);
    }

    public void disconnect() {
        if (this.isInNormalProtocol) {
            SpiceClientDisconnect();
        }
        Thread thread = this.thread;
        if (thread == null || !thread.isAlive()) {
            return;
        }
        try {
            this.thread.join(3000L);
        } catch (InterruptedException unused) {
        }
    }

    class SpiceThread extends Thread {
        private String ca;
        private String cf;
        private String cs;
        private String ip;
        private String password;
        private String port;
        boolean sound;
        private String tport;

        public SpiceThread(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z) {
            this.ip = str;
            this.port = str2;
            this.tport = str3;
            this.password = str4;
            this.cf = str5;
            this.ca = str6;
            this.cs = str7;
            this.sound = z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SpiceCommunicator.this.SpiceClientConnect(this.ip, this.port, this.tport, this.password, this.cf, this.ca, this.cs, this.sound);
            Log.d(SpiceCommunicator.TAG, "SpiceClientConnect returned.");
            if (SpiceCommunicator.this.handler != null) {
                SpiceCommunicator.this.handler.sendEmptyMessage(5);
            }
        }
    }

    class OvirtThread extends Thread {
        private String ip;
        private String password;
        boolean sound;
        private String sslCaFile;
        boolean sslStrict;
        private String user;
        private String vmname;

        public OvirtThread(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
            this.ip = str;
            this.vmname = str2;
            this.user = str3;
            this.password = str4;
            this.sslCaFile = str5;
            this.sound = z;
            this.sslStrict = z2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SpiceCommunicator.this.CreateOvirtSession("ovirt://" + this.ip + "/" + this.vmname, this.user, this.password, this.sslCaFile, this.sound, this.sslStrict);
            Log.d(SpiceCommunicator.TAG, "CreateOvirtSession returned.");
            if (SpiceCommunicator.this.handler != null) {
                SpiceCommunicator.this.handler.sendEmptyMessage(5);
            }
        }
    }

    public void sendMouseEvent(int i, int i2, int i3, int i4, boolean z) {
        SpiceButtonEvent(i, i2, i3, i4, z);
    }

    public void sendSpiceKeyEvent(boolean z, int i) {
        GeneralUtils.debugLog(this.debugLogging, TAG, "sendSpiceKeyEvent: down: " + z + " code: " + i);
        SpiceKeyEvent(z, i);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferWidth() {
        return this.width;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferHeight() {
        return this.height;
    }

    public void setFramebufferWidth(int i) {
        this.width = i;
    }

    public void setFramebufferHeight(int i) {
        this.height = i;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String desktopName() {
        return "";
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setIsInNormalProtocol(boolean z) {
        this.isInNormalProtocol = z;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isInNormalProtocol() {
        return this.isInNormalProtocol;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String getEncoding() {
        return "";
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writePointerEvent(int i, int i2, int i3, int i4, boolean z) {
        this.remoteMetaState = i3;
        int i5 = 32768 & i4;
        if (i5 != 0) {
            sendModifierKeys(true);
        }
        sendMouseEvent(i, i2, i3, i4, z);
        if (i5 == 0) {
            sendModifierKeys(false);
        }
    }

    private void sendModifierKeys(boolean z) {
        if ((this.remoteMetaState & 4096) != 0) {
            GeneralUtils.debugLog(this.debugLogging, TAG, "sendModifierKeys: Sending CTRL: 29 down: " + z);
            sendSpiceKeyEvent(z, 29);
        }
        if ((this.remoteMetaState & 2) != 0) {
            GeneralUtils.debugLog(this.debugLogging, TAG, "sendModifierKeys: Sending LALT: 56 down: " + z);
            sendSpiceKeyEvent(z, 56);
        }
        if ((this.remoteMetaState & 32) != 0) {
            GeneralUtils.debugLog(this.debugLogging, TAG, "sendModifierKeys: Sending RALT: 312 down: " + z);
            sendSpiceKeyEvent(z, RALT);
        }
        if ((this.remoteMetaState & 131072) != 0) {
            GeneralUtils.debugLog(this.debugLogging, TAG, "sendModifierKeys: Sending LWIN: 347 down: " + z);
            sendSpiceKeyEvent(z, LWIN);
        }
        if ((this.remoteMetaState & 1) != 0) {
            GeneralUtils.debugLog(this.debugLogging, TAG, "sendModifierKeys: Sending SHIFT: 42 down: " + z);
            sendSpiceKeyEvent(z, 42);
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeKeyEvent(int i, int i2, boolean z) {
        if (z) {
            this.remoteMetaState = i2;
            sendModifierKeys(true);
        }
        GeneralUtils.debugLog(this.debugLogging, TAG, "writeKeyEvent: Sending scanCode: " + i + ". Is it down: " + z);
        sendSpiceKeyEvent(z, i);
        if (z) {
            return;
        }
        sendModifierKeys(false);
        this.remoteMetaState = 0;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void close() {
        disconnect();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestResolution(int i, int i2) {
        Log.d(TAG, "requestResolution()");
        if (!this.isRequestingNewDisplayResolution) {
            Log.d(TAG, "Requesting remote resolution is disabled");
            return;
        }
        if (this.isInNormalProtocol) {
            int i3 = this.width;
            int i4 = this.height;
            int i5 = this.resolutionRequests;
            if (!(i5 != -1 && i3 == i && i4 == i2) && i5 < this.maxResolutionRequests) {
                this.canvas.waitUntilInflated();
                Log.d(TAG, "Requesting new resolution: " + i + "x" + i2);
                SpiceRequestResolution(i, i2);
                this.resolutionRequests++;
                return;
            }
            if (i3 == i && i4 == i2) {
                Log.d(TAG, "Resolution request satisfied, resetting resolutionRequests count");
                this.resolutionRequests = 0;
            } else {
                Log.d(TAG, "Resolution request disabled or last request unsatisfied (resolution request loop?).");
                this.isRequestingNewDisplayResolution = false;
            }
        }
    }

    public static int openUsbDevice(int i, int i2) throws InterruptedException {
        int fileDescriptor;
        Log.i(TAG, "Attempting to open a USB device and return a file descriptor.");
        if (!myself.usbEnabled) {
            return -1;
        }
        String str = Integer.toString(i) + ":" + Integer.toString(i2);
        myself.deviceToFdMap.put(str, 0);
        UsbDevice usbDevice = null;
        int i3 = 5000;
        boolean z = false;
        while (!z && i3 > 0) {
            for (UsbDevice usbDevice2 : myself.mUsbManager.getDeviceList().values()) {
                Log.i(TAG, "DEVICE: " + usbDevice2.toString());
                if (usbDevice2.getVendorId() == i && usbDevice2.getProductId() == i2) {
                    Log.i(TAG, "USB device successfully matched.");
                    z = true;
                    usbDevice = usbDevice2;
                    break;
                }
            }
            i3 -= 100;
            SystemClock.sleep(100L);
        }
        if (usbDevice == null) {
            return -1;
        }
        UsbDeviceConnection usbDeviceConnectionOpenDevice = myself.mUsbManager.openDevice(usbDevice);
        if (usbDeviceConnectionOpenDevice != null) {
            return usbDeviceConnectionOpenDevice.getFileDescriptor();
        }
        synchronized (myself.deviceToFdMap.get(str)) {
            PendingIntent broadcast = PendingIntent.getBroadcast(myself.context, 0, new Intent(RemoteClientLibConstants.ACTION_USB_PERMISSION), 0);
            IntentFilter intentFilter = new IntentFilter(RemoteClientLibConstants.ACTION_USB_PERMISSION);
            SpiceCommunicator spiceCommunicator = myself;
            spiceCommunicator.context.registerReceiver(spiceCommunicator.mUsbReceiver, intentFilter);
            myself.mUsbManager.requestPermission(usbDevice, broadcast);
            myself.deviceToFdMap.get(str).wait(15000L);
            UsbDeviceConnection usbDeviceConnectionOpenDevice2 = myself.mUsbManager.openDevice(usbDevice);
            fileDescriptor = usbDeviceConnectionOpenDevice2 != null ? usbDeviceConnectionOpenDevice2.getFileDescriptor() : -1;
        }
        return fileDescriptor;
    }

    public static void sendMessage(int i) {
        Log.d(TAG, "sendMessage called with message: " + i);
        myself.handler.sendEmptyMessage(i);
    }

    public static void sendMessageWithText(int i, String str) {
        Log.d(TAG, "sendMessageWithText called with messageId: " + i + " and messageText: " + str);
        Bundle bundle = new Bundle();
        bundle.putString(JsonMarshaller.MESSAGE, str);
        Message messageObtainMessage = myself.handler.obtainMessage();
        messageObtainMessage.what = i;
        messageObtainMessage.setData(bundle);
        myself.handler.sendMessage(messageObtainMessage);
    }

    public static void LaunchVncViewer(String str, String str2, String str3) {
        Log.d(TAG, "LaunchVncViewer called");
        Bundle bundle = new Bundle();
        bundle.putString("address", str);
        bundle.putString("port", str2);
        bundle.putString(Constants.testpassword, str3);
        Message message = new Message();
        message.what = 23;
        message.setData(bundle);
        myself.handler.sendMessage(message);
    }

    private static void AddVm(String str) {
        Log.d(TAG, "Adding VM: " + str + "to list of VMs");
        myself.vmNames.add(str);
    }

    public void onSettingsChanged(int i, int i2, int i3) {
        Log.i(TAG, "onSettingsChanged called, wxh: " + i + "x" + i2);
        setFramebufferWidth(i);
        setFramebufferHeight(i2);
        this.canvas.reallocateDrawable(i, i2);
        setIsInNormalProtocol(true);
        this.handler.sendEmptyMessage(4);
        if (this.isRequestingNewDisplayResolution) {
            requestResolution(this.canvas.getDesiredWidth(), this.canvas.getDesiredHeight());
            this.handler.postDelayed(new Runnable() { // from class: com.undatech.opaque.SpiceCommunicator.2
                @Override // java.lang.Runnable
                public void run() {
                    SpiceCommunicator spiceCommunicator = SpiceCommunicator.this;
                    spiceCommunicator.requestResolution(spiceCommunicator.canvas.getDesiredWidth(), SpiceCommunicator.this.canvas.getDesiredHeight());
                }
            }, 2000L);
        }
    }

    private static void OnSettingsChanged(int i, int i2, int i3, int i4) {
        myself.onSettingsChanged(i2, i3, i4);
    }

    private static void OnGraphicsUpdate(int i, int i2, int i3, int i4, int i5) {
        Bitmap bitmap = myself.canvas.getBitmap();
        if (bitmap != null) {
            synchronized (myself.canvas) {
                myself.UpdateBitmap(bitmap, i2, i3, i4, i5);
            }
            myself.canvas.reDraw(i2, i3, i4, i5);
        }
    }

    private static void OnMouseUpdate(int i, int i2) {
        myself.canvas.setMousePointerPosition(i, i2);
    }

    private static void OnMouseMode(boolean z) {
        Log.i(TAG, "OnMouseMode called, relative: " + z);
        myself.canvas.mouseMode(z);
    }

    private static void ShowMessage(String str) {
        Log.i(TAG, "ShowMessage called, message: " + str);
        sendMessageWithText(47, str);
    }
}
