.class Lcom/termux/app/TermuxActivity$6;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/terminal/TerminalSession$SessionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 7

    .line 524
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez p1, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget p1, p1, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, p1, Lcom/termux/app/TermuxActivity;->mBellSoundPool:Landroid/media/SoundPool;

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget v1, p1, Lcom/termux/app/TermuxActivity;->mBellSoundId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 531
    :cond_2
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/BellUtil;->getInstance(Landroid/content/Context;)Lcom/termux/app/BellUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/app/BellUtil;->doBell()V

    :goto_0
    return-void
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 4

    .line 517
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 519
    new-instance v0, Landroid/content/ClipData;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text/plain"

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    iget-boolean v0, v0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->finish()V

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 502
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_4

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 512
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    :cond_1
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v0, v0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 480
    :cond_1
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$6;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
