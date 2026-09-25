package com.freerdp.freerdpcore.domain;

import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;
import com.freerdp.freerdpcore.application.GlobalApp;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class BookmarkBase implements Parcelable, Cloneable {
    public static final Parcelable.Creator<BookmarkBase> CREATOR = new Parcelable.Creator<BookmarkBase>() { // from class: com.freerdp.freerdpcore.domain.BookmarkBase.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BookmarkBase createFromParcel(Parcel parcel) {
            return new BookmarkBase(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BookmarkBase[] newArray(int i) {
            return new BookmarkBase[i];
        }
    };
    public static final int TYPE_CUSTOM_BASE = 1000;
    public static final int TYPE_INVALID = -1;
    public static final int TYPE_MANUAL = 1;
    public static final int TYPE_PLACEHOLDER = 3;
    public static final int TYPE_QUICKCONNECT = 2;
    private AdvancedSettings advancedSettings;
    private DebugSettings debugSettings;
    private String domain;
    private long id;
    private String label;
    private String password;
    private PerformanceFlags performanceFlags;
    private ScreenSettings screenSettings;
    protected int type;
    private String username;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends BookmarkBase> T get() {
        return this;
    }

    public BookmarkBase(Parcel parcel) {
        this.type = parcel.readInt();
        this.id = parcel.readLong();
        this.label = parcel.readString();
        this.username = parcel.readString();
        this.password = parcel.readString();
        this.domain = parcel.readString();
        this.screenSettings = (ScreenSettings) parcel.readParcelable(ScreenSettings.class.getClassLoader());
        this.performanceFlags = (PerformanceFlags) parcel.readParcelable(PerformanceFlags.class.getClassLoader());
        this.advancedSettings = (AdvancedSettings) parcel.readParcelable(AdvancedSettings.class.getClassLoader());
        this.debugSettings = (DebugSettings) parcel.readParcelable(DebugSettings.class.getClassLoader());
    }

    public BookmarkBase() {
        init();
    }

    private void init() {
        this.type = -1;
        this.id = -1L;
        this.label = "";
        this.username = "";
        this.password = "";
        this.domain = "";
        this.screenSettings = new ScreenSettings();
        this.performanceFlags = new PerformanceFlags();
        this.advancedSettings = new AdvancedSettings();
        this.debugSettings = new DebugSettings();
    }

    public int getType() {
        return this.type;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public String getDomain() {
        return this.domain;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public ScreenSettings getScreenSettings() {
        return this.screenSettings;
    }

    public void setScreenSettings(ScreenSettings screenSettings) {
        this.screenSettings = screenSettings;
    }

    public PerformanceFlags getPerformanceFlags() {
        return this.performanceFlags;
    }

    public void setPerformanceFlags(PerformanceFlags performanceFlags) {
        this.performanceFlags = performanceFlags;
    }

    public AdvancedSettings getAdvancedSettings() {
        return this.advancedSettings;
    }

    public void setAdvancedSettings(AdvancedSettings advancedSettings) {
        this.advancedSettings = advancedSettings;
    }

    public DebugSettings getDebugSettings() {
        return this.debugSettings;
    }

    public void setDebugSettings(DebugSettings debugSettings) {
        this.debugSettings = debugSettings;
    }

    public ScreenSettings getActiveScreenSettings() {
        if (GlobalApp.ConnectedTo3G && this.advancedSettings.getEnable3GSettings()) {
            return this.advancedSettings.getScreen3G();
        }
        return this.screenSettings;
    }

    public PerformanceFlags getActivePerformanceFlags() {
        if (GlobalApp.ConnectedTo3G && this.advancedSettings.getEnable3GSettings()) {
            return this.advancedSettings.getPerformance3G();
        }
        return this.performanceFlags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeLong(this.id);
        parcel.writeString(this.label);
        parcel.writeString(this.username);
        parcel.writeString(this.password);
        parcel.writeString(this.domain);
        parcel.writeParcelable(this.screenSettings, i);
        parcel.writeParcelable(this.performanceFlags, i);
        parcel.writeParcelable(this.advancedSettings, i);
        parcel.writeParcelable(this.debugSettings, i);
    }

    public void writeToSharedPreferences(SharedPreferences sharedPreferences) {
        Locale locale = Locale.ENGLISH;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.clear();
        editorEdit.putString("bookmark.label", this.label);
        editorEdit.putString("bookmark.username", this.username);
        editorEdit.putString("bookmark.password", this.password);
        editorEdit.putString("bookmark.domain", this.domain);
        editorEdit.putInt("bookmark.colors", this.screenSettings.getColors());
        editorEdit.putString("bookmark.resolution", this.screenSettings.getResolutionString().toLowerCase(locale));
        editorEdit.putInt("bookmark.width", this.screenSettings.getWidth());
        editorEdit.putInt("bookmark.height", this.screenSettings.getHeight());
        editorEdit.putBoolean("bookmark.perf_remotefx", this.performanceFlags.getRemoteFX());
        editorEdit.putBoolean("bookmark.perf_gfx", this.performanceFlags.getGfx());
        editorEdit.putBoolean("bookmark.perf_gfx_h264", this.performanceFlags.getH264());
        editorEdit.putBoolean("bookmark.perf_wallpaper", this.performanceFlags.getWallpaper());
        editorEdit.putBoolean("bookmark.perf_font_smoothing", this.performanceFlags.getFontSmoothing());
        editorEdit.putBoolean("bookmark.perf_desktop_composition", this.performanceFlags.getDesktopComposition());
        editorEdit.putBoolean("bookmark.perf_window_dragging", this.performanceFlags.getFullWindowDrag());
        editorEdit.putBoolean("bookmark.perf_menu_animation", this.performanceFlags.getMenuAnimations());
        editorEdit.putBoolean("bookmark.perf_themes", this.performanceFlags.getTheming());
        editorEdit.putBoolean("bookmark.enable_3g_settings", this.advancedSettings.getEnable3GSettings());
        editorEdit.putInt("bookmark.colors_3g", this.advancedSettings.getScreen3G().getColors());
        editorEdit.putString("bookmark.resolution_3g", this.advancedSettings.getScreen3G().getResolutionString().toLowerCase(locale));
        editorEdit.putInt("bookmark.width_3g", this.advancedSettings.getScreen3G().getWidth());
        editorEdit.putInt("bookmark.height_3g", this.advancedSettings.getScreen3G().getHeight());
        editorEdit.putBoolean("bookmark.perf_remotefx_3g", this.advancedSettings.getPerformance3G().getRemoteFX());
        editorEdit.putBoolean("bookmark.perf_gfx_3g", this.advancedSettings.getPerformance3G().getGfx());
        editorEdit.putBoolean("bookmark.perf_gfx_h264_3g", this.advancedSettings.getPerformance3G().getH264());
        editorEdit.putBoolean("bookmark.perf_wallpaper_3g", this.advancedSettings.getPerformance3G().getWallpaper());
        editorEdit.putBoolean("bookmark.perf_font_smoothing_3g", this.advancedSettings.getPerformance3G().getFontSmoothing());
        editorEdit.putBoolean("bookmark.perf_desktop_composition_3g", this.advancedSettings.getPerformance3G().getDesktopComposition());
        editorEdit.putBoolean("bookmark.perf_window_dragging_3g", this.advancedSettings.getPerformance3G().getFullWindowDrag());
        editorEdit.putBoolean("bookmark.perf_menu_animation_3g", this.advancedSettings.getPerformance3G().getMenuAnimations());
        editorEdit.putBoolean("bookmark.perf_themes_3g", this.advancedSettings.getPerformance3G().getTheming());
        editorEdit.putBoolean("bookmark.redirect_sdcard", this.advancedSettings.getRedirectSDCard());
        editorEdit.putInt("bookmark.redirect_sound", this.advancedSettings.getRedirectSound());
        editorEdit.putBoolean("bookmark.redirect_microphone", this.advancedSettings.getRedirectMicrophone());
        editorEdit.putInt("bookmark.security", this.advancedSettings.getSecurity());
        editorEdit.putString("bookmark.remote_program", this.advancedSettings.getRemoteProgram());
        editorEdit.putString("bookmark.work_dir", this.advancedSettings.getWorkDir());
        editorEdit.putBoolean("bookmark.console_mode", this.advancedSettings.getConsoleMode());
        editorEdit.putBoolean("bookmark.async_channel", this.debugSettings.getAsyncChannel());
        editorEdit.putBoolean("bookmark.async_input", this.debugSettings.getAsyncInput());
        editorEdit.putBoolean("bookmark.async_update", this.debugSettings.getAsyncUpdate());
        editorEdit.putString("bookmark.debug_level", this.debugSettings.getDebugLevel());
        editorEdit.apply();
    }

    public void readFromSharedPreferences(SharedPreferences sharedPreferences) {
        this.label = sharedPreferences.getString("bookmark.label", "");
        this.username = sharedPreferences.getString("bookmark.username", "");
        this.password = sharedPreferences.getString("bookmark.password", "");
        this.domain = sharedPreferences.getString("bookmark.domain", "");
        this.screenSettings.setColors(sharedPreferences.getInt("bookmark.colors", 16));
        this.screenSettings.setResolution(sharedPreferences.getString("bookmark.resolution", "automatic"), sharedPreferences.getInt("bookmark.width", 800), sharedPreferences.getInt("bookmark.height", 600));
        this.performanceFlags.setRemoteFX(sharedPreferences.getBoolean("bookmark.perf_remotefx", false));
        this.performanceFlags.setGfx(sharedPreferences.getBoolean("bookmark.perf_gfx", false));
        this.performanceFlags.setH264(sharedPreferences.getBoolean("bookmark.perf_gfx_h264", false));
        this.performanceFlags.setWallpaper(sharedPreferences.getBoolean("bookmark.perf_wallpaper", false));
        this.performanceFlags.setFontSmoothing(sharedPreferences.getBoolean("bookmark.perf_font_smoothing", false));
        this.performanceFlags.setDesktopComposition(sharedPreferences.getBoolean("bookmark.perf_desktop_composition", false));
        this.performanceFlags.setFullWindowDrag(sharedPreferences.getBoolean("bookmark.perf_window_dragging", false));
        this.performanceFlags.setMenuAnimations(sharedPreferences.getBoolean("bookmark.perf_menu_animation", false));
        this.performanceFlags.setTheming(sharedPreferences.getBoolean("bookmark.perf_themes", false));
        this.advancedSettings.setEnable3GSettings(sharedPreferences.getBoolean("bookmark.enable_3g_settings", false));
        this.advancedSettings.getScreen3G().setColors(sharedPreferences.getInt("bookmark.colors_3g", 16));
        this.advancedSettings.getScreen3G().setResolution(sharedPreferences.getString("bookmark.resolution_3g", "automatic"), sharedPreferences.getInt("bookmark.width_3g", 800), sharedPreferences.getInt("bookmark.height_3g", 600));
        this.advancedSettings.getPerformance3G().setRemoteFX(sharedPreferences.getBoolean("bookmark.perf_remotefx_3g", false));
        this.advancedSettings.getPerformance3G().setGfx(sharedPreferences.getBoolean("bookmark.perf_gfx_3g", false));
        this.advancedSettings.getPerformance3G().setH264(sharedPreferences.getBoolean("bookmark.perf_gfx_h264_3g", false));
        this.advancedSettings.getPerformance3G().setWallpaper(sharedPreferences.getBoolean("bookmark.perf_wallpaper_3g", false));
        this.advancedSettings.getPerformance3G().setFontSmoothing(sharedPreferences.getBoolean("bookmark.perf_font_smoothing_3g", false));
        this.advancedSettings.getPerformance3G().setDesktopComposition(sharedPreferences.getBoolean("bookmark.perf_desktop_composition_3g", false));
        this.advancedSettings.getPerformance3G().setFullWindowDrag(sharedPreferences.getBoolean("bookmark.perf_window_dragging_3g", false));
        this.advancedSettings.getPerformance3G().setMenuAnimations(sharedPreferences.getBoolean("bookmark.perf_menu_animation_3g", false));
        this.advancedSettings.getPerformance3G().setTheming(sharedPreferences.getBoolean("bookmark.perf_themes_3g", false));
        this.advancedSettings.setRedirectSDCard(sharedPreferences.getBoolean("bookmark.redirect_sdcard", false));
        this.advancedSettings.setRedirectSound(sharedPreferences.getInt("bookmark.redirect_sound", 0));
        this.advancedSettings.setRedirectMicrophone(sharedPreferences.getBoolean("bookmark.redirect_microphone", false));
        this.advancedSettings.setSecurity(sharedPreferences.getInt("bookmark.security", 0));
        this.advancedSettings.setRemoteProgram(sharedPreferences.getString("bookmark.remote_program", ""));
        this.advancedSettings.setWorkDir(sharedPreferences.getString("bookmark.work_dir", ""));
        this.advancedSettings.setConsoleMode(sharedPreferences.getBoolean("bookmark.console_mode", false));
        this.debugSettings.setAsyncChannel(sharedPreferences.getBoolean("bookmark.async_channel", true));
        this.debugSettings.setAsyncInput(sharedPreferences.getBoolean("bookmark.async_input", true));
        this.debugSettings.setAsyncUpdate(sharedPreferences.getBoolean("bookmark.async_update", true));
        this.debugSettings.setDebugLevel(sharedPreferences.getString("bookmark.debug_level", "INFO"));
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public static class PerformanceFlags implements Parcelable {
        public static final Parcelable.Creator<PerformanceFlags> CREATOR = new Parcelable.Creator<PerformanceFlags>() { // from class: com.freerdp.freerdpcore.domain.BookmarkBase.PerformanceFlags.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PerformanceFlags createFromParcel(Parcel parcel) {
                return new PerformanceFlags(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PerformanceFlags[] newArray(int i) {
                return new PerformanceFlags[i];
            }
        };
        private boolean desktopComposition;
        private boolean fontSmoothing;
        private boolean fullWindowDrag;
        private boolean gfx;
        private boolean h264;
        private boolean menuAnimations;
        private boolean remotefx;
        private boolean theming;
        private boolean wallpaper;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public PerformanceFlags() {
            this.remotefx = false;
            this.gfx = false;
            this.h264 = false;
            this.wallpaper = false;
            this.theming = false;
            this.fullWindowDrag = false;
            this.menuAnimations = false;
            this.fontSmoothing = false;
            this.desktopComposition = false;
        }

        public PerformanceFlags(Parcel parcel) {
            this.remotefx = parcel.readInt() == 1;
            this.gfx = parcel.readInt() == 1;
            this.h264 = parcel.readInt() == 1;
            this.wallpaper = parcel.readInt() == 1;
            this.theming = parcel.readInt() == 1;
            this.fullWindowDrag = parcel.readInt() == 1;
            this.menuAnimations = parcel.readInt() == 1;
            this.fontSmoothing = parcel.readInt() == 1;
            this.desktopComposition = parcel.readInt() == 1;
        }

        public boolean getRemoteFX() {
            return this.remotefx;
        }

        public void setRemoteFX(boolean z) {
            this.remotefx = z;
        }

        public boolean getGfx() {
            return this.gfx;
        }

        public void setGfx(boolean z) {
            this.gfx = z;
        }

        public boolean getH264() {
            return this.h264;
        }

        public void setH264(boolean z) {
            this.h264 = z;
        }

        public boolean getWallpaper() {
            return this.wallpaper;
        }

        public void setWallpaper(boolean z) {
            this.wallpaper = z;
        }

        public boolean getTheming() {
            return this.theming;
        }

        public void setTheming(boolean z) {
            this.theming = z;
        }

        public boolean getFullWindowDrag() {
            return this.fullWindowDrag;
        }

        public void setFullWindowDrag(boolean z) {
            this.fullWindowDrag = z;
        }

        public boolean getMenuAnimations() {
            return this.menuAnimations;
        }

        public void setMenuAnimations(boolean z) {
            this.menuAnimations = z;
        }

        public boolean getFontSmoothing() {
            return this.fontSmoothing;
        }

        public void setFontSmoothing(boolean z) {
            this.fontSmoothing = z;
        }

        public boolean getDesktopComposition() {
            return this.desktopComposition;
        }

        public void setDesktopComposition(boolean z) {
            this.desktopComposition = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.remotefx ? 1 : 0);
            parcel.writeInt(this.gfx ? 1 : 0);
            parcel.writeInt(this.h264 ? 1 : 0);
            parcel.writeInt(this.wallpaper ? 1 : 0);
            parcel.writeInt(this.theming ? 1 : 0);
            parcel.writeInt(this.fullWindowDrag ? 1 : 0);
            parcel.writeInt(this.menuAnimations ? 1 : 0);
            parcel.writeInt(this.fontSmoothing ? 1 : 0);
            parcel.writeInt(this.desktopComposition ? 1 : 0);
        }
    }

    public static class ScreenSettings implements Parcelable {
        public static final int AUTOMATIC = -1;
        public static final Parcelable.Creator<ScreenSettings> CREATOR = new Parcelable.Creator<ScreenSettings>() { // from class: com.freerdp.freerdpcore.domain.BookmarkBase.ScreenSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScreenSettings createFromParcel(Parcel parcel) {
                return new ScreenSettings(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ScreenSettings[] newArray(int i) {
                return new ScreenSettings[i];
            }
        };
        public static final int CUSTOM = 0;
        public static final int FITSCREEN = -2;
        public static final int PREDEFINED = 1;
        private int colors;
        private int height;
        private int resolution;
        private int width;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ScreenSettings() {
            init();
        }

        public ScreenSettings(Parcel parcel) {
            this.resolution = parcel.readInt();
            this.colors = parcel.readInt();
            this.width = parcel.readInt();
            this.height = parcel.readInt();
        }

        private void validate() {
            int i = this.colors;
            if (i != 8 && i != 24 && i != 32 && i != 15 && i != 16) {
                this.colors = 32;
            }
            int i2 = this.width;
            if (i2 <= 0 || i2 > 65536) {
                this.width = 1024;
            }
            int i3 = this.height;
            if (i3 <= 0 || i3 > 65536) {
                this.height = 768;
            }
            int i4 = this.resolution;
            if (i4 == -2 || i4 == -1 || i4 == 0 || i4 == 1) {
                return;
            }
            this.resolution = -1;
        }

        private void init() {
            this.resolution = -1;
            this.colors = 16;
            this.width = 0;
            this.height = 0;
        }

        public void setResolution(String str, int i, int i2) {
            if (str.contains("x")) {
                String[] strArrSplit = str.split("x");
                this.width = Integer.valueOf(strArrSplit[0]).intValue();
                this.height = Integer.valueOf(strArrSplit[1]).intValue();
                this.resolution = 1;
                return;
            }
            if (str.equalsIgnoreCase("custom")) {
                this.width = i;
                this.height = i2;
                this.resolution = 0;
            } else if (str.equalsIgnoreCase("fitscreen")) {
                this.height = 0;
                this.width = 0;
                this.resolution = -2;
            } else {
                this.height = 0;
                this.width = 0;
                this.resolution = -1;
            }
        }

        public int getResolution() {
            return this.resolution;
        }

        public void setResolution(int i) {
            this.resolution = i;
            if (i == -1 || i == -2) {
                this.width = 0;
                this.height = 0;
            }
        }

        public String getResolutionString() {
            if (isPredefined()) {
                return this.width + "x" + this.height;
            }
            if (isFitScreen()) {
                return "fitscreen";
            }
            return isAutomatic() ? "automatic" : "custom";
        }

        public boolean isPredefined() {
            validate();
            return this.resolution == 1;
        }

        public boolean isAutomatic() {
            validate();
            return this.resolution == -1;
        }

        public boolean isFitScreen() {
            validate();
            return this.resolution == -2;
        }

        public boolean isCustom() {
            validate();
            return this.resolution == 0;
        }

        public int getWidth() {
            validate();
            return this.width;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public int getHeight() {
            validate();
            return this.height;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public int getColors() {
            validate();
            return this.colors;
        }

        public void setColors(int i) {
            this.colors = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.resolution);
            parcel.writeInt(this.colors);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
        }
    }

    public static class DebugSettings implements Parcelable {
        public static final Parcelable.Creator<DebugSettings> CREATOR = new Parcelable.Creator<DebugSettings>() { // from class: com.freerdp.freerdpcore.domain.BookmarkBase.DebugSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DebugSettings createFromParcel(Parcel parcel) {
                return new DebugSettings(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DebugSettings[] newArray(int i) {
                return new DebugSettings[i];
            }
        };
        private boolean asyncChannel;
        private boolean asyncInput;
        private boolean asyncTransport;
        private boolean asyncUpdate;
        private String debug;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public DebugSettings() {
            init();
        }

        public DebugSettings(Parcel parcel) {
            this.asyncChannel = parcel.readInt() == 1;
            this.asyncTransport = parcel.readInt() == 1;
            this.asyncInput = parcel.readInt() == 1;
            this.asyncUpdate = parcel.readInt() == 1;
            this.debug = parcel.readString();
        }

        private void init() {
            this.debug = "INFO";
            this.asyncChannel = true;
            this.asyncTransport = false;
            this.asyncInput = true;
            this.asyncUpdate = true;
        }

        private void validate() {
            String[] strArr = {"OFF", "FATAL", "ERROR", "WARN", "INFO", "DEBUG", "TRACE"};
            for (int i = 0; i < 7; i++) {
                if (strArr[i].equalsIgnoreCase(this.debug)) {
                    return;
                }
            }
            this.debug = "INFO";
        }

        public String getDebugLevel() {
            validate();
            return this.debug;
        }

        public void setDebugLevel(String str) {
            this.debug = str;
        }

        public boolean getAsyncUpdate() {
            return this.asyncUpdate;
        }

        public void setAsyncUpdate(boolean z) {
            this.asyncUpdate = z;
        }

        public boolean getAsyncInput() {
            return this.asyncInput;
        }

        public void setAsyncInput(boolean z) {
            this.asyncInput = z;
        }

        public boolean getAsyncChannel() {
            return this.asyncChannel;
        }

        public void setAsyncChannel(boolean z) {
            this.asyncChannel = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.asyncChannel ? 1 : 0);
            parcel.writeInt(this.asyncTransport ? 1 : 0);
            parcel.writeInt(this.asyncInput ? 1 : 0);
            parcel.writeInt(this.asyncUpdate ? 1 : 0);
            parcel.writeString(this.debug);
        }
    }

    public static class AdvancedSettings implements Parcelable {
        public static final Parcelable.Creator<AdvancedSettings> CREATOR = new Parcelable.Creator<AdvancedSettings>() { // from class: com.freerdp.freerdpcore.domain.BookmarkBase.AdvancedSettings.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AdvancedSettings createFromParcel(Parcel parcel) {
                return new AdvancedSettings(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AdvancedSettings[] newArray(int i) {
                return new AdvancedSettings[i];
            }
        };
        private boolean consoleMode;
        private boolean enable3GSettings;
        private PerformanceFlags performance3G;
        private boolean redirectMicrophone;
        private boolean redirectSDCard;
        private int redirectSound;
        private String remoteProgram;
        private ScreenSettings screen3G;
        private int security;
        private String workDir;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public AdvancedSettings() {
            init();
        }

        public AdvancedSettings(Parcel parcel) {
            this.enable3GSettings = parcel.readInt() == 1;
            this.screen3G = (ScreenSettings) parcel.readParcelable(ScreenSettings.class.getClassLoader());
            this.performance3G = (PerformanceFlags) parcel.readParcelable(PerformanceFlags.class.getClassLoader());
            this.redirectSDCard = parcel.readInt() == 1;
            this.redirectSound = parcel.readInt();
            this.redirectMicrophone = parcel.readInt() == 1;
            this.security = parcel.readInt();
            this.consoleMode = parcel.readInt() == 1;
            this.remoteProgram = parcel.readString();
            this.workDir = parcel.readString();
        }

        private void init() {
            this.enable3GSettings = false;
            this.screen3G = new ScreenSettings();
            this.performance3G = new PerformanceFlags();
            this.redirectSDCard = false;
            this.redirectSound = 0;
            this.redirectMicrophone = false;
            this.security = 0;
            this.consoleMode = false;
            this.remoteProgram = "";
            this.workDir = "";
        }

        private void validate() {
            int i = this.redirectSound;
            if (i != 0 && i != 1 && i != 2) {
                this.redirectSound = 0;
            }
            int i2 = this.security;
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3) {
                return;
            }
            this.security = 0;
        }

        public boolean getEnable3GSettings() {
            return this.enable3GSettings;
        }

        public void setEnable3GSettings(boolean z) {
            this.enable3GSettings = z;
        }

        public ScreenSettings getScreen3G() {
            return this.screen3G;
        }

        public void setScreen3G(ScreenSettings screenSettings) {
            this.screen3G = screenSettings;
        }

        public PerformanceFlags getPerformance3G() {
            return this.performance3G;
        }

        public void setPerformance3G(PerformanceFlags performanceFlags) {
            this.performance3G = performanceFlags;
        }

        public boolean getRedirectSDCard() {
            return this.redirectSDCard;
        }

        public void setRedirectSDCard(boolean z) {
            this.redirectSDCard = z;
        }

        public int getRedirectSound() {
            validate();
            return this.redirectSound;
        }

        public void setRedirectSound(int i) {
            this.redirectSound = i;
        }

        public boolean getRedirectMicrophone() {
            return this.redirectMicrophone;
        }

        public void setRedirectMicrophone(boolean z) {
            this.redirectMicrophone = z;
        }

        public int getSecurity() {
            validate();
            return this.security;
        }

        public void setSecurity(int i) {
            this.security = i;
        }

        public boolean getConsoleMode() {
            return this.consoleMode;
        }

        public void setConsoleMode(boolean z) {
            this.consoleMode = z;
        }

        public String getRemoteProgram() {
            return this.remoteProgram;
        }

        public void setRemoteProgram(String str) {
            this.remoteProgram = str;
        }

        public String getWorkDir() {
            return this.workDir;
        }

        public void setWorkDir(String str) {
            this.workDir = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.enable3GSettings ? 1 : 0);
            parcel.writeParcelable(this.screen3G, i);
            parcel.writeParcelable(this.performance3G, i);
            parcel.writeInt(this.redirectSDCard ? 1 : 0);
            parcel.writeInt(this.redirectSound);
            parcel.writeInt(this.redirectMicrophone ? 1 : 0);
            parcel.writeInt(this.security);
            parcel.writeInt(this.consoleMode ? 1 : 0);
            parcel.writeString(this.remoteProgram);
            parcel.writeString(this.workDir);
        }
    }
}
