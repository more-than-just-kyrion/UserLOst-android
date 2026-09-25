.class public final Lcom/termux/app/TermuxActivity;
.super Landroid/app/Activity;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final BROADCAST_TERMUX_OPENED:Ljava/lang/String; = "com.termux.app.OPENED"

.field private static final CONTEXTMENU_AUTOFILL_ID:I = 0xa

.field private static final CONTEXTMENU_HELP_ID:I = 0x8

.field private static final CONTEXTMENU_KILL_PROCESS_ID:I = 0x4

.field private static final CONTEXTMENU_PASTE_ID:I = 0x3

.field private static final CONTEXTMENU_RESET_TERMINAL_ID:I = 0x5

.field private static final CONTEXTMENU_SELECT_URL_ID:I = 0x0

.field private static final CONTEXTMENU_SHARE_TRANSCRIPT_ID:I = 0x1

.field private static final CONTEXTMENU_STYLING_ID:I = 0x6

.field private static final CONTEXTMENU_TOGGLE_KEEP_SCREEN_ON:I = 0x9

.field private static final MAX_SESSIONS:I = 0x8

.field private static final RELOAD_STYLE_ACTION:Ljava/lang/String; = "com.termux.app.reload_style"

.field private static final REQUESTCODE_PERMISSION_STORAGE:I = 0x4d2

.field public static final TERMUX_FAILSAFE_SESSION_ACTION:Ljava/lang/String; = "com.termux.app.failsafe_session"

.field private static final USERLAND_CLOSE_TERMINAL_ACTION:Ljava/lang/String; = "tech.ulo.CLOSE_TERMINAL"


# instance fields
.field private hostname:Ljava/lang/String;

.field mBellSoundId:I

.field final mBellSoundPool:Landroid/media/SoundPool;

.field private final mBroadcastReceiever:Landroid/content/BroadcastReceiver;

.field private final mCloseReceiver:Landroid/content/BroadcastReceiver;

.field mExtraKeysView:Lcom/termux/app/ExtraKeysView;

.field mIsUsingBlackUI:Z

.field mIsVisible:Z

.field mLastToast:Landroid/widget/Toast;

.field mListViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field mSettings:Lcom/termux/app/TermuxPreferences;

.field mTermService:Lcom/termux/app/TermuxService;

.field mTerminalView:Lcom/termux/view/TerminalView;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private sessionName:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0gJigiuzslomu-m4KwQxB932Hec(Lcom/termux/app/TermuxActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2WG_gLifsrUkxGbtfd77reJkWx4(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/termux/app/TermuxActivity;->lambda$showUrlSelection$10(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3JsTjOwQQUaRPXbidoOuP_k-SiM(Lcom/termux/app/TermuxActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/termux/app/TermuxActivity;->lambda$onServiceConnected$6(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNmoYFimpp7yernpEjpt1Y3WVOs(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$renameSession$8(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HODL0gwQA--2Qjp1fKG7_0Ue3Jk(Lcom/termux/app/TermuxActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$onContextItemSelected$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jusqmf1pRIVSaHQBVfLYNxvitP8(Lcom/termux/app/TermuxActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$5(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XElBeYqnltP1sVXTkJPV9Uuj3lc(Lcom/termux/app/TermuxActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Yv8h_iSMS7ngEAP7shu95W_3-9s(Lcom/termux/app/TermuxActivity;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/TermuxActivity;->lambda$showUrlSelection$9([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJ23jGXZ0tnKh5pbUZ77kOlNeaw(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pPq4OmiKDWG3-jMhSt3Qmzj9Yd4(Lcom/termux/app/TermuxActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$onContextItemSelected$13(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rTBQ1crdPUdYWpdjm-Dt0AZHEqw(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sQylct0aVqFGJav30SEaNRG-WHM(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/TermuxActivity;->lambda$showUrlSelection$11(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sq9OUXPlGGaeH1-fQu_S0--1gqM(Lcom/termux/app/TermuxActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uBNUF0XS6GnAVl9LO0F891iflKk(Lcom/termux/app/TermuxActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/termux/app/TermuxActivity;->lambda$onServiceConnected$7(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    new-instance v0, Lcom/termux/app/TermuxActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$1;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    .line 155
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0xd

    .line 156
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mBellSoundPool:Landroid/media/SoundPool;

    .line 159
    new-instance v0, Lcom/termux/app/TermuxActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$2;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->username:Ljava/lang/String;

    .line 381
    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->password:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->hostname:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->port:Ljava/lang/String;

    .line 384
    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->sessionName:Ljava/lang/String;

    return-void
.end method

.method static extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 870
    const-string v0, "((?:dav|dict|dns|file|finger|ftp(?:s?)|git|gopher|http(?:s?)|imap(?:s?)|irc(?:[6s]?)|ip[fn]s|ldap(?:s?)|pop3(?:s?)|redis(?:s?)|rsync|rtsp(?:[su]?)|sftp|smb(?:s?)|smtp(?:s?)|svn(?:(?:\\+ssh)?)|tcp|telnet|tftp|udp|vnc|ws(?:s?))://)((?:\\S+(?::\\S*)?@)?(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)|(?:(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)(?:(?:\\.(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)*(?:\\.(?:[a-z\\u00a1-\\uffff]{2,})))?|/(?:(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+))(?::\\d{1,5})?(?:/[a-zA-Z0-9:@%\\-._~!$&()*+,;=?/]*)?(?:#[a-zA-Z0-9:@%\\-._~!$&()*+,;=?/]*)?)"

    const/16 v1, 0x2a

    .line 869
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 874
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 876
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 877
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    .line 878
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 879
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private synthetic lambda$onContextItemSelected$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 961
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 962
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    return-void
.end method

.method private synthetic lambda$onContextItemSelected$13(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 983
    new-instance p1, Landroid/content/Intent;

    const-string p2, "https://f-droid.org/en/packages/com.termux.styling/"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0, p1}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p0, v0, p1}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)Z
    .locals 10

    .line 319
    sget v1, Lcom/termux/R$string;->session_new_named_title:I

    sget v3, Lcom/termux/R$string;->session_new_named_positive_button:I

    new-instance v4, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda8;-><init>(Lcom/termux/app/TermuxActivity;)V

    sget v5, Lcom/termux/R$string;->new_session_failsafe:I

    new-instance v6, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda9;-><init>(Lcom/termux/app/TermuxActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$4(Landroid/view/View;)V
    .locals 2

    .line 326
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 328
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/view/View;)Z
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onServiceConnected$6(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 596
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    .line 597
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 598
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$7(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 601
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    .line 602
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$renameSession$8(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    .line 649
    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 650
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$showUrlSelection$10(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 909
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 910
    aget-object p1, p2, p5

    check-cast p1, Ljava/lang/String;

    .line 911
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 913
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    :catch_0
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$showUrlSelection$11(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V
    .locals 1

    .line 907
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p3

    .line 908
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;-><init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$showUrlSelection$9([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 899
    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/String;

    .line 900
    const-string p2, "clipboard"

    invoke-virtual {p0, p2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    .line 901
    new-instance p3, Landroid/content/ClipData;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/plain"

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-direct {p3, p1, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p2, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 902
    sget p1, Lcom/termux/R$string;->select_url_copied_to_clipboard:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private parseUserlandIntent(Ljava/lang/String;)V
    .locals 2

    .line 387
    const-string v0, "ssh://([\\w\\W]+)@([\\w\\W]+):([\\d]+)/#([\\w\\W]+)/([\\w\\W]+)"

    .line 388
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 391
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->username:Ljava/lang/String;

    const/4 v0, 0x2

    .line 398
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->hostname:Ljava/lang/String;

    const/4 v0, 0x3

    .line 399
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->port:Ljava/lang/String;

    const/4 v0, 0x4

    .line 400
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->sessionName:Ljava/lang/String;

    .line 401
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    sget v0, Lcom/termux/R$string;->error_regex_parsing:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/termux/app/TermuxActivity;->showErrorAndGoBackToUserland(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addNewSession(ZLjava/lang/String;)V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 724
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/termux/R$string;->max_terminals_reached_title:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/termux/R$string;->max_terminals_reached_message:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    .line 725
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 728
    :cond_1
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getCwd()Ljava/lang/String;

    move-result-object v0

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1, v2, v2, v0, p1}, Lcom/termux/app/TermuxService;->createTermSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 731
    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 733
    :cond_2
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 734
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :goto_1
    return-void
.end method

.method changeFontSize(Z)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0, p0, p1}, Lcom/termux/app/TermuxPreferences;->changeFontSize(Landroid/content/Context;Z)V

    .line 1022
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    return-void
.end method

.method checkForFontAndColors()V
    .locals 5

    .line 181
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/font.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/.termux/colors.properties"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 186
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    .line 191
    :cond_0
    :goto_1
    sget-object v1, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalColorScheme;->updateWith(Ljava/util/Properties;)V

    .line 192
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 199
    :goto_2
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 201
    const-string v1, "termux"

    const-string v2, "Error in checkForFontAndColors()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method doPaste()V
    .locals 2

    .line 1026
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1027
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1029
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1030
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ensureStoragePermissionGranted()Z
    .locals 3

    .line 214
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 217
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x4d2

    invoke-virtual {p0, v1, v0}, Lcom/termux/app/TermuxActivity;->requestPermissions([Ljava/lang/String;I)V

    return v2
.end method

.method getCurrentTermSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0
.end method

.method getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 719
    sget v0, Lcom/termux/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;
    .locals 2

    .line 1036
    invoke-static {p0}, Lcom/termux/app/TermuxPreferences;->getCurrentSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    :goto_0
    return-object v0
.end method

.method noteSessionInfo()V
    .locals 3

    .line 762
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 765
    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 766
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 767
    sget v0, Lcom/termux/R$id;->left_drawer_list:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x1

    .line 768
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 769
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 699
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 927
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 929
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1001
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    .line 1002
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_5

    .line 1003
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1004
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    goto/16 :goto_2

    .line 991
    :pswitch_2
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getKeepScreenOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 992
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 993
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {p1, p0, v0}, Lcom/termux/app/TermuxPreferences;->setScreenAlwaysOn(Landroid/content/Context;Z)V

    goto :goto_0

    .line 995
    :cond_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1, v3}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 996
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {p1, p0, v3}, Lcom/termux/app/TermuxPreferences;->setScreenAlwaysOn(Landroid/content/Context;Z)V

    :goto_0
    return v3

    .line 988
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 975
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 976
    const-string v0, "com.termux.styling"

    const-string v1, "com.termux.styling.TermuxStyleActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 982
    :catch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/termux/R$string;->styling_not_installed:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/termux/R$string;->styling_install:I

    new-instance v1, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 983
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return v3

    :pswitch_5
    if-eqz v0, :cond_1

    .line 969
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 970
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/termux/R$string;->reset_toast_notification:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    :cond_1
    return v3

    .line 957
    :pswitch_6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080027

    .line 958
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 959
    sget v0, Lcom/termux/R$string;->confirm_kill_process:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 960
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/TermuxActivity;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    .line 964
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 965
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v3

    .line 954
    :pswitch_7
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->doPaste()V

    return v3

    :pswitch_8
    if-eqz v0, :cond_4

    .line 935
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    const-string v1, "text/plain"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithoutJoinedLines()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    if-le v1, v2, :cond_3

    .line 941
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    .line 942
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 943
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 946
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 948
    :cond_3
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    sget v0, Lcom/termux/R$string;->share_transcript_title:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    sget v0, Lcom/termux/R$string;->share_transcript_chooser_title:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return v3

    .line 931
    :pswitch_9
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    return v3

    .line 1009
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 224
    new-instance v0, Lcom/termux/app/TermuxPreferences;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    .line 225
    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isUsingBlackUI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsUsingBlackUI:Z

    if-eqz v0, :cond_0

    .line 227
    sget v0, Lcom/termux/R$style;->Theme_Termux_Black:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setTheme(I)V

    goto :goto_0

    .line 229
    :cond_0
    sget v0, Lcom/termux/R$style;->Theme_Termux:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->setTheme(I)V

    .line 232
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    sget p1, Lcom/termux/R$layout;->drawer_layout:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->setContentView(I)V

    .line 236
    iget-boolean p1, p0, Lcom/termux/app/TermuxActivity;->mIsUsingBlackUI:Z

    if-eqz p1, :cond_1

    .line 237
    sget p1, Lcom/termux/R$id;->left_drawer:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 238
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    :cond_1
    sget p1, Lcom/termux/R$id;->terminal_view:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/termux/view/TerminalView;

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 243
    new-instance v0, Lcom/termux/app/TermuxViewClient;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxViewClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V

    .line 245
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 246
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v0}, Lcom/termux/app/TermuxPreferences;->isScreenAlwaysOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setKeepScreenOn(Z)V

    .line 247
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 249
    sget p1, Lcom/termux/R$id;->viewpager:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 250
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 253
    :cond_2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v3, v3, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v3, v3, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;

    invoke-virtual {v3}, Lcom/termux/app/ExtraKeysInfos;->getMatrix()[[Lcom/termux/app/ExtraKeyButton;

    move-result-object v3

    array-length v3, v3

    :goto_1
    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v0, Lcom/termux/app/TermuxActivity$3;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$3;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 304
    new-instance v0, Lcom/termux/app/TermuxActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/TermuxActivity$4;-><init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 316
    sget p1, Lcom/termux/R$id;->new_session_button:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 317
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda13;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    sget p1, Lcom/termux/R$id;->toggle_keyboard_button:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    sget p1, Lcom/termux/R$id;->toggle_keyboard_button:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda3;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 336
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 338
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 341
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->parseUserlandIntent(Ljava/lang/String;)V

    .line 344
    :cond_4
    const-string v0, "username"

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v0, "password"

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v0, "hostname"

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v0, "port"

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->port:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v0, "sessionName"

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->sessionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v0, "android.intent.action.EXECUTE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    invoke-virtual {p0, p1, p0, v1}, Lcom/termux/app/TermuxActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 356
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->checkForFontAndColors()V

    .line 358
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mBellSoundPool:Landroid/media/SoundPool;

    sget v0, Lcom/termux/R$raw;->bell:I

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/termux/app/TermuxActivity;->mBellSoundId:I

    .line 370
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const-string v1, "tech.ulo.CLOSE_TERMINAL"

    if-lt p1, v0, :cond_5

    .line 371
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    .line 373
    :cond_5
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    :goto_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->sendOpenedBroadcast()V

    return-void

    .line 354
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bindService() failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 774
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 777
    :cond_0
    sget p3, Lcom/termux/R$string;->select_url:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 778
    sget p3, Lcom/termux/R$string;->select_all_and_share:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 779
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p3, v2, :cond_1

    .line 780
    const-class p3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p3}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/autofill/AutofillManager;

    if-eqz p3, :cond_1

    .line 781
    invoke-virtual {p3}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0xa

    .line 782
    sget v2, Lcom/termux/R$string;->autofill_password:I

    invoke-interface {p1, v0, p3, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/4 p3, 0x5

    .line 785
    sget v2, Lcom/termux/R$string;->reset_terminal:I

    invoke-interface {p1, v0, p3, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 786
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/termux/R$string;->kill_process:I

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x4

    invoke-interface {p1, v0, v2, v0, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p3

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    invoke-interface {p3, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 p2, 0x9

    .line 788
    sget p3, Lcom/termux/R$string;->toggle_keep_screen_on:I

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {p2}, Lcom/termux/app/TermuxPreferences;->isScreenAlwaysOn()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 795
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 708
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 709
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 711
    iput-object v1, v0, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 712
    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 714
    :cond_0
    invoke-virtual {p0, p0}, Lcom/termux/app/TermuxActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 715
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x4d2

    if-ne p1, p2, :cond_0

    .line 1015
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1016
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 462
    check-cast p2, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object p1, p2, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 464
    new-instance p2, Lcom/termux/app/TermuxActivity$6;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$6;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object p2, p1, Lcom/termux/app/TermuxService;->mSessionChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 546
    sget p1, Lcom/termux/R$id;->left_drawer_list:I

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 547
    new-instance p2, Lcom/termux/app/TermuxActivity$7;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/R$layout;->line_in_drawer:I

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/termux/app/TermuxActivity$7;-><init>(Lcom/termux/app/TermuxActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    .line 594
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    new-instance p2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda6;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 600
    new-instance p2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 606
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    const-string v0, "com.termux.app.failsafe_session"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 607
    iget-boolean p1, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz p1, :cond_2

    .line 608
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-nez p1, :cond_0

    return-void

    .line 610
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 615
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 625
    const-string v2, "android.intent.action.RUN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 627
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_4
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 657
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 668
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 670
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getStoredCurrentSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 673
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 676
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "com.termux.app.reload_style"

    if-lt v0, v1, :cond_1

    .line 677
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/termux/app/TermuxActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 689
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 691
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {p0, v0}, Lcom/termux/app/TermuxPreferences;->storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mBroadcastReceiever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 694
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 1054
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->removeTermSession(Lcom/termux/terminal/TerminalSession;)I

    move-result p1

    .line 1055
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1056
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finish()V

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1061
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 1063
    :cond_1
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    :goto_0
    return-void
.end method

.method renameSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 10

    .line 648
    sget v1, Lcom/termux/R$string;->session_rename_title:I

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    sget v3, Lcom/termux/R$string;->session_rename_positive_button:I

    new-instance v4, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p1}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda12;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method sendOpenedBroadcast()V
    .locals 6

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 437
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 438
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v3}, Lcom/termux/app/TermuxActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method showErrorAndGoBackToUserland(ILjava/lang/String;)V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 410
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 413
    sget v0, Lcom/termux/R$string;->dialog_error_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 415
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/termux/R$string;->button_exit:I

    new-instance v0, Lcom/termux/app/TermuxActivity$5;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$5;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 416
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method showToast(Ljava/lang/String;Z)V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1045
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    const/16 p2, 0x30

    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 1047
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showUrlSelection()V
    .locals 3

    .line 887
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptTextWithFullLinesJoined()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Lcom/termux/app/TermuxActivity;->extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/termux/R$string;->select_url_no_found:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 894
    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 895
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 898
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/app/TermuxActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/termux/R$string;->select_url_dialog_title:I

    .line 903
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 906
    new-instance v2, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;-><init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 922
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method switchToSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->noteSessionInfo()V

    .line 742
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public switchToSession(Z)V
    .locals 2

    .line 636
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 639
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 641
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 643
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, " "

    if-nez v0, :cond_0

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_0
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method toggleShowExtraKeys()V
    .locals 3

    .line 446
    sget v0, Lcom/termux/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 447
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    invoke-virtual {v1, p0}, Lcom/termux/app/TermuxPreferences;->toggleShowExtraKeys(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 448
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 451
    sget v0, Lcom/termux/R$id;->text_input:I

    invoke-virtual {p0, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method updateBackgroundColor()V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v2, 0x101

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
