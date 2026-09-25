.class public Lcom/undatech/opaque/MessageDialogs;
.super Ljava/lang/Object;
.source "MessageDialogs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageDialogs"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static showMessageRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayDialog(Landroid/content/Context;IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 76
    :try_start_0
    sget-object v0, Lcom/undatech/opaque/MessageDialogs;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/undatech/opaque/MessageDialogs;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 79
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 80
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_2
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 95
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 p0, 0x32

    .line 99
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 101
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 102
    const-string p0, "OK"

    invoke-virtual {v0, p0, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/undatech/opaque/MessageDialogs;->alertDialog:Landroid/app/AlertDialog;

    .line 104
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static displayMessage(Landroid/content/Context;II)V
    .locals 2

    .line 133
    new-instance v0, Lcom/undatech/opaque/MessageDialogs$2;

    invoke-direct {v0}, Lcom/undatech/opaque/MessageDialogs$2;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1, v0}, Lcom/undatech/opaque/MessageDialogs;->displayDialog(Landroid/content/Context;IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static displayMessage(Landroid/os/Handler;Landroid/content/Context;II)V
    .locals 2

    .line 118
    const-string v0, "MessageDialogs"

    const-string v1, "displayMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/undatech/opaque/MessageDialogs;->showMessageRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/undatech/opaque/MessageDialogs$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/undatech/opaque/MessageDialogs$1;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/undatech/opaque/MessageDialogs;->showMessageRunnable:Ljava/lang/Runnable;

    .line 127
    :cond_0
    sget-object p1, Lcom/undatech/opaque/MessageDialogs;->showMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    sget-object p1, Lcom/undatech/opaque/MessageDialogs;->showMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static displayMessageAndFinish(Landroid/content/Context;II)V
    .locals 2

    .line 149
    new-instance v0, Lcom/undatech/opaque/MessageDialogs$3;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/MessageDialogs$3;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1, v0}, Lcom/undatech/opaque/MessageDialogs;->displayDialog(Landroid/content/Context;IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static displayMessageAndFinish(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1

    .line 166
    new-instance v0, Lcom/undatech/opaque/MessageDialogs$4;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/MessageDialogs$4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, p1, p3, v0}, Lcom/undatech/opaque/MessageDialogs;->displayDialog(Landroid/content/Context;IILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 181
    new-instance v0, Lcom/undatech/opaque/MessageDialogs$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/undatech/opaque/MessageDialogs$5;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static displayToast2(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 191
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static justFinish(Landroid/content/Context;)V
    .locals 0

    .line 176
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    .line 50
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 52
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    .line 54
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 55
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v4, 0x3

    .line 56
    div-int/lit8 v7, v5, 0x10

    aget-char v7, v1, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    .line 57
    rem-int/2addr v5, v0

    aget-char v5, v1, v5

    aput-char v5, v2, v7

    add-int/lit8 v6, v6, 0x2

    .line 58
    const-string v5, ":"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_0
    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 v4, v4, 0x3

    .line 61
    div-int/lit8 v3, p0, 0x10

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 62
    rem-int/2addr p0, v0

    aget-char p0, v1, p0

    aput-char p0, v2, v4

    .line 63
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
