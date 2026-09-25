.class public abstract Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;
.super Ljava/lang/Object;
.source "ClipboardManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$PreHCClipboardManager;,
        Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;,
        Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipboardManager(Landroid/content/Context;)Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy;
    .locals 1

    .line 18
    new-instance v0, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;

    invoke-direct {v0, p0}, Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$HCClipboardManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract addClipboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V
.end method

.method public abstract removeClipboardboardChangedListener(Lcom/freerdp/freerdpcore/utils/ClipboardManagerProxy$OnClipboardChangedListener;)V
.end method

.method public abstract setClipboardData(Ljava/lang/String;)V
.end method
