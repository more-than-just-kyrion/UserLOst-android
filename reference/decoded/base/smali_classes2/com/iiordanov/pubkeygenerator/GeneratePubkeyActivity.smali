.class public Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;
.super Landroid/app/Activity;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;


# static fields
.field static final DEFAULT_BITS_DSA:I = 0x400

.field static final DEFAULT_BITS_RSA:I = 0x800

.field static final MAX_BITS_DSA:I = 0x400

.field static final MAX_BITS_RSA:I = 0x1000

.field static final MIN_BITS_DSA:I = 0x200

.field static final MIN_BITS_RSA:I = 0x300

.field public static final TAG:Ljava/lang/String; = "GeneratePubkeyActivity"


# instance fields
.field private bits:I

.field private bitsSlider:Landroid/widget/SeekBar;

.field private bitsText:Landroid/widget/EditText;

.field cm:Landroid/text/ClipboardManager;

.field private copy:Landroid/widget/Button;

.field private decrypt:Landroid/widget/Button;

.field private entropy:[B

.field private entropyDialog:Landroid/app/Dialog;

.field private file_name:Landroid/widget/EditText;

.field private generate:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private importKey:Landroid/widget/Button;

.field private inflater:Landroid/view/LayoutInflater;

.field private keyType:Ljava/lang/String;

.field private keyTypeGroup:Landroid/widget/RadioGroup;

.field private kp:Ljava/security/KeyPair;

.field private final mKeyGen:Ljava/lang/Runnable;

.field private minBits:I

.field private passphrase:Ljava/lang/String;

.field private password1:Landroid/widget/EditText;

.field private progress:Landroid/app/ProgressDialog;

.field private publicKeySSHFormat:Ljava/lang/String;

.field private recovered:Z

.field private save:Landroid/widget/Button;

.field private share:Landroid/widget/Button;

.field private sshPrivKey:Ljava/lang/String;

.field private sshPubKey:Ljava/lang/String;

.field private final textChecker:Landroid/text/TextWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bits:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbitsSlider(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbitsText(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentropy(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)[B
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->entropy:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfile_name(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->file_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyType(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->minBits:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpassphrase(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->passphrase:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpassword1(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogress(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpublicKeySSHFormat(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->publicKeySSHFormat:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bits:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyType(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputminBits(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;I)V
    .locals 0

    iput p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->minBits:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpassphrase(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->passphrase:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEntries(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->checkEntries()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconverToBase64AndSendIntent(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/security/KeyPair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->converToBase64AndSendIntent(Ljava/security/KeyPair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartEntropyGather(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->startEntropyGather()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    .line 94
    const-string v1, "RSA"

    iput-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    const/16 v1, 0x300

    .line 95
    iput v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->minBits:I

    const/16 v1, 0x800

    .line 96
    iput v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bits:I

    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->recovered:Z

    .line 106
    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->kp:Ljava/security/KeyPair;

    .line 425
    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$10;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$10;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->handler:Landroid/os/Handler;

    .line 434
    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$11;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->mKeyGen:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$12;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$12;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    return-void
.end method

.method private checkEntries()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->recovered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->share:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->copy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decrypt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->share:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->copy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decrypt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private converToBase64AndSendIntent(Ljava/security/KeyPair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 500
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 502
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "private: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeneratePubkeyActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "public: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {v0, v1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    .line 506
    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->getEncodedPublic(Ljava/security/PublicKey;)[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPubKey:Ljava/lang/String;

    .line 509
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 510
    const-string v0, "PrivateKey"

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v0, "PublicKey"

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPubKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 513
    invoke-virtual {p0, v0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private measureNumberOfSetBits(B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    shr-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 483
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 484
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 486
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 490
    throw p0
.end method

.method private startEntropyGather()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/iiordanov/pubkeygenerator/R$layout;->dia_gatherentropy:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 389
    sget v1, Lcom/iiordanov/pubkeygenerator/R$id;->entropy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/pubkeygenerator/EntropyView;

    invoke-virtual {v1, p0}, Lcom/iiordanov/pubkeygenerator/EntropyView;->addOnEntropyGatheredListener(Lcom/iiordanov/pubkeygenerator/OnEntropyGatheredListener;)V

    .line 390
    new-instance v1, Lcom/iiordanov/pubkeygenerator/EntropyDialog;

    invoke-direct {v1, p0, v0}, Lcom/iiordanov/pubkeygenerator/EntropyDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->entropyDialog:Landroid/app/Dialog;

    .line 391
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startKeyGen()V
    .locals 3

    .line 414
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    .line 415
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/iiordanov/pubkeygenerator/R$string;->generating:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 417
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 418
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 420
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->mKeyGen:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 421
    const-string v1, "KeyGen"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public decryptAndRecoverKey()Z
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->passphrase:Ljava/lang/String;

    .line 344
    iget-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->recovered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decryptAndRecoverKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->kp:Ljava/security/KeyPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->convertToOpenSSHFormat(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->publicKeySSHFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_2

    .line 357
    iput-boolean v2, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->recovered:Z

    goto :goto_1

    :cond_1
    move v1, v2

    .line 360
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->recovered:Z

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/iiordanov/pubkeygenerator/R$string;->success_decrypting:I

    invoke-virtual {p0, v3}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/iiordanov/pubkeygenerator/R$string;->error_decrypting_key:I

    invoke-virtual {p0, v3}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    :goto_2
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->checkEntries()V

    return v1
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 332
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget p1, Lcom/iiordanov/pubkeygenerator/R$layout;->act_generatepubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->setContentView(I)V

    .line 117
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/ClipboardManager;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->cm:Landroid/text/ClipboardManager;

    .line 119
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->key_type:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->keyTypeGroup:Landroid/widget/RadioGroup;

    .line 121
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->bits:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    .line 122
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->bits_slider:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    .line 124
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->file_name:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->file_name:Landroid/widget/EditText;

    .line 125
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->password:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    .line 127
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->generate:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->generate:Landroid/widget/Button;

    .line 128
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->share:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->share:Landroid/widget/Button;

    .line 129
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->decrypt:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decrypt:Landroid/widget/Button;

    .line 130
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->copy:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->copy:Landroid/widget/Button;

    .line 131
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->save:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    .line 132
    sget p1, Lcom/iiordanov/pubkeygenerator/R$id;->importKey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->importKey:Landroid/widget/Button;

    .line 134
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    .line 136
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PrivateKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->passphrase:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->sshPrivKey:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decryptAndRecoverKey()Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/iiordanov/pubkeygenerator/R$string;->key_not_generated_yet:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->keyTypeGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$1;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 176
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$2;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$3;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->generate:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$4;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->decrypt:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$5;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->share:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$6;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$6;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->copy:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$8;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$8;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->importKey:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;

    invoke-direct {v0, p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;-><init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEntropyGathered([B)V
    .locals 5

    if-nez p1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->finish()V

    return-void

    .line 401
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->entropy:[B

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x14

    if-ge p1, v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->entropy:[B

    aget-byte v1, v1, p1

    invoke-direct {p0, v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->measureNumberOfSetBits(B)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Entropy distribution="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide/high16 v0, 0x4064000000000000L    # 160.0

    div-double/2addr v3, v0

    double-to-int v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeneratePubkeyActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string p1, "entropy gathered; attemping to generate key..."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->startKeyGen()V

    return-void
.end method
