package tech.ula.library.viewmodel;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppDetailsViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\bHÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003J\t\u0010%\u001a\u00020\bHÆ\u0003J\t\u0010&\u001a\u00020\bHÆ\u0003J\t\u0010'\u001a\u00020\bHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010)\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001aJv\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000f\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020\b2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\rHÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017¨\u00060"}, d2 = {"Ltech/ula/library/viewmodel/AppDetailsViewState;", "", "appIconUri", "Landroid/net/Uri;", "appTitle", "", "appDescription", "sshEnabled", "", "vncEnabled", "xsdlEnabled", "describeStateHintEnabled", "describeStateText", "", "selectedServiceTypeButton", "autoStartEnabled", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)V", "getAppDescription", "()Ljava/lang/String;", "getAppIconUri", "()Landroid/net/Uri;", "getAppTitle", "getAutoStartEnabled", "()Z", "getDescribeStateHintEnabled", "getDescribeStateText", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSelectedServiceTypeButton", "getSshEnabled", "getVncEnabled", "getXsdlEnabled", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Integer;Ljava/lang/Integer;Z)Ltech/ula/library/viewmodel/AppDetailsViewState;", "equals", "other", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppDetailsViewState {
    private final String appDescription;
    private final Uri appIconUri;
    private final String appTitle;
    private final boolean autoStartEnabled;
    private final boolean describeStateHintEnabled;
    private final Integer describeStateText;
    private final Integer selectedServiceTypeButton;
    private final boolean sshEnabled;
    private final boolean vncEnabled;
    private final boolean xsdlEnabled;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Uri getAppIconUri() {
        return this.appIconUri;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getAutoStartEnabled() {
        return this.autoStartEnabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAppTitle() {
        return this.appTitle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppDescription() {
        return this.appDescription;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getSshEnabled() {
        return this.sshEnabled;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getVncEnabled() {
        return this.vncEnabled;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getXsdlEnabled() {
        return this.xsdlEnabled;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getDescribeStateHintEnabled() {
        return this.describeStateHintEnabled;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getDescribeStateText() {
        return this.describeStateText;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getSelectedServiceTypeButton() {
        return this.selectedServiceTypeButton;
    }

    public final AppDetailsViewState copy(Uri appIconUri, String appTitle, String appDescription, boolean sshEnabled, boolean vncEnabled, boolean xsdlEnabled, boolean describeStateHintEnabled, Integer describeStateText, Integer selectedServiceTypeButton, boolean autoStartEnabled) {
        Intrinsics.checkNotNullParameter(appIconUri, "appIconUri");
        Intrinsics.checkNotNullParameter(appTitle, "appTitle");
        Intrinsics.checkNotNullParameter(appDescription, "appDescription");
        return new AppDetailsViewState(appIconUri, appTitle, appDescription, sshEnabled, vncEnabled, xsdlEnabled, describeStateHintEnabled, describeStateText, selectedServiceTypeButton, autoStartEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppDetailsViewState)) {
            return false;
        }
        AppDetailsViewState appDetailsViewState = (AppDetailsViewState) other;
        return Intrinsics.areEqual(this.appIconUri, appDetailsViewState.appIconUri) && Intrinsics.areEqual(this.appTitle, appDetailsViewState.appTitle) && Intrinsics.areEqual(this.appDescription, appDetailsViewState.appDescription) && this.sshEnabled == appDetailsViewState.sshEnabled && this.vncEnabled == appDetailsViewState.vncEnabled && this.xsdlEnabled == appDetailsViewState.xsdlEnabled && this.describeStateHintEnabled == appDetailsViewState.describeStateHintEnabled && Intrinsics.areEqual(this.describeStateText, appDetailsViewState.describeStateText) && Intrinsics.areEqual(this.selectedServiceTypeButton, appDetailsViewState.selectedServiceTypeButton) && this.autoStartEnabled == appDetailsViewState.autoStartEnabled;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.appIconUri.hashCode() * 31) + this.appTitle.hashCode()) * 31) + this.appDescription.hashCode()) * 31) + Boolean.hashCode(this.sshEnabled)) * 31) + Boolean.hashCode(this.vncEnabled)) * 31) + Boolean.hashCode(this.xsdlEnabled)) * 31) + Boolean.hashCode(this.describeStateHintEnabled)) * 31;
        Integer num = this.describeStateText;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.selectedServiceTypeButton;
        return ((iHashCode2 + (num2 != null ? num2.hashCode() : 0)) * 31) + Boolean.hashCode(this.autoStartEnabled);
    }

    public String toString() {
        return "AppDetailsViewState(appIconUri=" + this.appIconUri + ", appTitle=" + this.appTitle + ", appDescription=" + this.appDescription + ", sshEnabled=" + this.sshEnabled + ", vncEnabled=" + this.vncEnabled + ", xsdlEnabled=" + this.xsdlEnabled + ", describeStateHintEnabled=" + this.describeStateHintEnabled + ", describeStateText=" + this.describeStateText + ", selectedServiceTypeButton=" + this.selectedServiceTypeButton + ", autoStartEnabled=" + this.autoStartEnabled + ")";
    }

    public AppDetailsViewState(Uri appIconUri, String appTitle, String appDescription, boolean z, boolean z2, boolean z3, boolean z4, Integer num, Integer num2, boolean z5) {
        Intrinsics.checkNotNullParameter(appIconUri, "appIconUri");
        Intrinsics.checkNotNullParameter(appTitle, "appTitle");
        Intrinsics.checkNotNullParameter(appDescription, "appDescription");
        this.appIconUri = appIconUri;
        this.appTitle = appTitle;
        this.appDescription = appDescription;
        this.sshEnabled = z;
        this.vncEnabled = z2;
        this.xsdlEnabled = z3;
        this.describeStateHintEnabled = z4;
        this.describeStateText = num;
        this.selectedServiceTypeButton = num2;
        this.autoStartEnabled = z5;
    }

    public final Uri getAppIconUri() {
        return this.appIconUri;
    }

    public final String getAppTitle() {
        return this.appTitle;
    }

    public final String getAppDescription() {
        return this.appDescription;
    }

    public final boolean getSshEnabled() {
        return this.sshEnabled;
    }

    public final boolean getVncEnabled() {
        return this.vncEnabled;
    }

    public final boolean getXsdlEnabled() {
        return this.xsdlEnabled;
    }

    public final boolean getDescribeStateHintEnabled() {
        return this.describeStateHintEnabled;
    }

    public final Integer getDescribeStateText() {
        return this.describeStateText;
    }

    public final Integer getSelectedServiceTypeButton() {
        return this.selectedServiceTypeButton;
    }

    public final boolean getAutoStartEnabled() {
        return this.autoStartEnabled;
    }
}
