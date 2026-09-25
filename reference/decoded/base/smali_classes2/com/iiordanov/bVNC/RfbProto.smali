.class Lcom/iiordanov/bVNC/RfbProto;
.super Ljava/lang/Object;
.source "RfbProto.java"

# interfaces
.implements Lcom/undatech/opaque/RfbConnectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/RfbProto$RfbUsernameRequiredException;,
        Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;,
        Lcom/iiordanov/bVNC/RfbProto$RfbUltraVncColorMapException;
    }
.end annotation


# static fields
.field static final AuthNone:I = 0x1

.field static final AuthPlain:I = 0x100

.field static final AuthTLSNone:I = 0x101

.field static final AuthTLSPlain:I = 0x103

.field static final AuthTLSVnc:I = 0x102

.field static final AuthUltra:I = 0x11

.field static final AuthUnixLogin:I = 0x81

.field static final AuthVNC:I = 0x2

.field static final AuthX509None:I = 0x104

.field static final AuthX509Plain:I = 0x106

.field static final AuthX509Vnc:I = 0x105

.field static final Bell:I = 0x2

.field static final CHAT_CLOSE:I = -0x2

.field static final CHAT_FINISHED:I = -0x3

.field static final CHAT_OPEN:I = -0x1

.field static final ClientCutText:I = 0x6

.field static final EncodingClientRedirect:I = -0x137

.field static final EncodingCoRRE:I = 0x4

.field static final EncodingCompressLevel0:I = -0x100

.field static final EncodingCopyRect:I = 0x1

.field static final EncodingExtendedDesktopSize:I = -0x134

.field static final EncodingHextile:I = 0x5

.field static final EncodingLastRect:I = -0xe0

.field static final EncodingNewFBSize:I = -0xdf

.field static final EncodingPointerPos:I = -0xe8

.field static final EncodingQualityLevel0:I = -0x20

.field static final EncodingRRE:I = 0x2

.field static final EncodingRaw:I = 0x0

.field static final EncodingRichCursor:I = -0xef

.field static final EncodingTight:I = 0x7

.field static final EncodingTightZstd:I = 0x1a

.field static final EncodingXCursor:I = -0xf0

.field static final EncodingZRLE:I = 0x10

.field static final EncodingZlib:I = 0x6

.field static final FixColourMapEntries:I = 0x1

.field static final FramebufferUpdate:I = 0x0

.field static final FramebufferUpdateRequest:I = 0x3

.field static final HextileAnySubrects:I = 0x8

.field static final HextileBackgroundSpecified:I = 0x2

.field static final HextileForegroundSpecified:I = 0x4

.field static final HextileRaw:I = 0x1

.field static final HextileSubrectsColoured:I = 0x10

.field static final KeyboardEvent:I = 0x4

.field static final MaxNormalEncoding:I = 0xff

.field static final NoTunneling:I = 0x0

.field static final PlainAuthFailed:I = 0xd

.field static final PointerEvent:I = 0x5

.field static final SecTypeArd:I = 0x1e

.field static final SecTypeInvalid:I = 0x0

.field static final SecTypeNone:I = 0x1

.field static final SecTypeTLS:I = 0x12

.field static final SecTypeTight:I = 0x10

.field static final SecTypeUltra34:I = -0x6

.field static final SecTypeUltraVnc1:I = 0x11

.field static final SecTypeUltraVnc2:I = 0x71

.field static final SecTypeUltraVnc3:I = 0x72

.field static final SecTypeUltraVnc4:I = 0x73

.field static final SecTypeVeNCrypt:I = 0x13

.field static final SecTypeVncAuth:I = 0x2

.field static final ServerCutText:I = 0x3

.field static final SetColourMapEntries:I = 0x1

.field static final SetEncodings:I = 0x2

.field static final SetPixelFormat:I = 0x0

.field static final SigAuthNone:Ljava/lang/String; = "NOAUTH__"

.field static final SigAuthUnixLogin:Ljava/lang/String; = "ULGNAUTH"

.field static final SigAuthVNC:Ljava/lang/String; = "VNCAUTH_"

.field static final SigEncodingCoRRE:Ljava/lang/String; = "CORRE___"

.field static final SigEncodingCompressLevel0:Ljava/lang/String; = "COMPRLVL"

.field static final SigEncodingCopyRect:Ljava/lang/String; = "COPYRECT"

.field static final SigEncodingHextile:Ljava/lang/String; = "HEXTILE_"

.field static final SigEncodingLastRect:Ljava/lang/String; = "LASTRECT"

.field static final SigEncodingNewFBSize:Ljava/lang/String; = "NEWFBSIZ"

.field static final SigEncodingPointerPos:Ljava/lang/String; = "POINTPOS"

.field static final SigEncodingQualityLevel0:Ljava/lang/String; = "JPEGQLVL"

.field static final SigEncodingRRE:Ljava/lang/String; = "RRE_____"

.field static final SigEncodingRaw:Ljava/lang/String; = "RAW_____"

.field static final SigEncodingRichCursor:Ljava/lang/String; = "RCHCURSR"

.field static final SigEncodingTight:Ljava/lang/String; = "TIGHT___"

.field static final SigEncodingTightZstd:Ljava/lang/String; = "TIGHTZSTD___"

.field static final SigEncodingXCursor:Ljava/lang/String; = "X11CURSR"

.field static final SigEncodingZRLE:Ljava/lang/String; = "ZRLE____"

.field static final SigEncodingZlib:Ljava/lang/String; = "ZLIB____"

.field static final SigNoTunneling:Ljava/lang/String; = "NOTUNNEL"

.field static final StandardVendor:Ljava/lang/String; = "STDV"

.field static final TAG:Ljava/lang/String; = "RfbProto"

.field static final TextChat:I = 0xb

.field static final TightExplicitFilter:I = 0x4

.field static final TightFill:I = 0x8

.field static final TightFilterCopy:I = 0x0

.field static final TightFilterGradient:I = 0x2

.field static final TightFilterPalette:I = 0x1

.field static final TightJpeg:I = 0x9

.field static final TightMaxSubencoding:I = 0x9

.field static final TightMinToCompress:I = 0xc

.field static final TightVncVendor:Ljava/lang/String; = "TGHT"

.field static final TridiaVncVendor:Ljava/lang/String; = "TRDV"

.field static final VncAuthFailed:I = 0x1

.field static final VncAuthOK:I = 0x0

.field static final VncAuthTooMany:I = 0x2

.field public static maxStringLength:I = 0xffff

.field public static final secTypeIdent:I = 0x109

.field public static final secTypePlain:I = 0x100

.field public static final secTypeTLSIdent:I = 0x10a

.field public static final secTypeTLSNone:I = 0x101

.field public static final secTypeTLSPlain:I = 0x103

.field public static final secTypeTLSVnc:I = 0x102

.field public static final secTypeX509Ident:I = 0x10b

.field public static final secTypeX509None:I = 0x104

.field public static final secTypeX509Plain:I = 0x106

.field public static final secTypeX509Vnc:I = 0x105

.field static final versionMsg_3_3:Ljava/lang/String; = "RFB 003.003\n"

.field static final versionMsg_3_7:Ljava/lang/String; = "RFB 003.007\n"

.field static final versionMsg_3_8:Ljava/lang/String; = "RFB 003.008\n"


# instance fields
.field authCaps:Lcom/iiordanov/bVNC/CapsContainer;

.field bigEndian:Z

.field bitsPerPixel:I

.field blueMax:I

.field blueShift:I

.field brokenKeyPressed:Z

.field canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

.field private cert:Ljava/lang/String;

.field private certificateAccepted:Z

.field clientMajor:I

.field clientMinor:I

.field clientMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

.field private closed:Z

.field private compressLevel:I

.field copyRectSrcX:I

.field copyRectSrcY:I

.field private decoder:Lcom/iiordanov/bVNC/Decoder;

.field depth:I

.field desktopName:Ljava/lang/String;

.field dh:Lcom/iiordanov/bVNC/DH;

.field dh_resp:J

.field encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

.field private encodingsSaved:[I

.field eventBuf:[B

.field eventBufLen:I

.field framebufferHeight:I

.field framebufferUpdateRequest:[B

.field framebufferWidth:I

.field greenMax:I

.field greenShift:I

.field private hash:Ljava/lang/String;

.field private hashAlgorithm:I

.field host:Ljava/lang/String;

.field inNormalProtocol:Z

.field is:Ljava/io/DataInputStream;

.field private isExtendedDesktopSizeSupported:Z

.field private jpegQuality:I

.field private maintainConnection:Z

.field private nEncodingsSaved:I

.field oldModifiers:I

.field os:Ljava/io/OutputStream;

.field port:I

.field private preferredEncoding:I

.field preferredFramebufferHeight:I

.field preferredFramebufferWidth:I

.field protocolTightVNC:Z

.field recordFromBeginning:Z

.field redMax:I

.field redShift:I

.field private screenFlags:I

.field private screenId:I

.field serverMajor:I

.field serverMinor:I

.field serverMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

.field private shareDesktop:I

.field sock:Ljava/net/Socket;

.field private sslTunneled:Z

.field tightWarningShown:Z

.field timeWaitedIn100us:J

.field timedKbits:J

.field timing:Z

.field trueColour:Z

.field tunnelCaps:Lcom/iiordanov/bVNC/CapsContainer;

.field updateNRects:I

.field updateRectEncoding:I

.field updateRectH:I

.field updateRectW:I

.field updateRectX:I

.field updateRectY:I

.field private viewOnly:Z

.field writeIntBuffer:[B

.field zlibWarningShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/iiordanov/bVNC/Decoder;Lcom/iiordanov/bVNC/RemoteCanvas;IZZILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    .line 253
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->brokenKeyPressed:Z

    const/4 v1, 0x1

    .line 262
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RfbProto;->recordFromBeginning:Z

    .line 294
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RfbProto;->maintainConnection:Z

    const/4 v2, 0x6

    .line 299
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->compressLevel:I

    const/4 v2, 0x7

    .line 300
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->jpegQuality:I

    const/4 v2, 0x0

    .line 303
    iput-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingsSaved:[I

    .line 304
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->nEncodingsSaved:I

    .line 310
    iput v1, p0, Lcom/iiordanov/bVNC/RfbProto;->shareDesktop:I

    .line 327
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->isExtendedDesktopSizeSupported:Z

    .line 332
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->certificateAccepted:Z

    const/4 v1, 0x4

    .line 1004
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->writeIntBuffer:[B

    .line 1036
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferWidth:I

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferHeight:I

    const/16 v1, 0xa

    .line 1317
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferUpdateRequest:[B

    const/16 v1, 0x48

    .line 1457
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    .line 1604
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    .line 345
    iput-boolean p5, p0, Lcom/iiordanov/bVNC/RfbProto;->sslTunneled:Z

    .line 346
    iput-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    .line 347
    iput-boolean p4, p0, Lcom/iiordanov/bVNC/RfbProto;->viewOnly:Z

    .line 348
    iput-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 349
    iput p3, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredEncoding:I

    .line 350
    iput p6, p0, Lcom/iiordanov/bVNC/RfbProto;->hashAlgorithm:I

    .line 351
    iput-object p7, p0, Lcom/iiordanov/bVNC/RfbProto;->hash:Ljava/lang/String;

    .line 352
    iput-object p8, p0, Lcom/iiordanov/bVNC/RfbProto;->cert:Ljava/lang/String;

    .line 353
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timing:Z

    const-wide/16 p1, 0x5

    .line 354
    iput-wide p1, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    const-wide/16 p1, 0x0

    .line 355
    iput-wide p1, p0, Lcom/iiordanov/bVNC/RfbProto;->timedKbits:J

    return-void
.end method

.method private handleExtendedDesktopSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2076
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->isExtendedDesktopSizeSupported:Z

    const/4 v1, 0x1

    .line 2078
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RfbProto;->isExtendedDesktopSizeSupported:Z

    .line 2081
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x3

    .line 2084
    new-array v2, v2, [B

    .line 2085
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    if-nez v2, :cond_0

    .line 2092
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/iiordanov/bVNC/RfbProto;->screenId:I

    .line 2095
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 2098
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 2101
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 2104
    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 2107
    iget-object v5, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/iiordanov/bVNC/RfbProto;->screenFlags:I

    goto :goto_1

    :cond_0
    const/16 v5, 0x10

    .line 2110
    new-array v5, v5, [B

    .line 2111
    invoke-virtual {p0, v5}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleExtendedDesktopSize, wxh: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RfbProto"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferWidth:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferHeight:I

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 2119
    invoke-virtual {p0, v3, v4}, Lcom/iiordanov/bVNC/RfbProto;->setFramebufferSize(II)V

    .line 2120
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/RemoteCanvas;->updateFBSize()V

    :cond_2
    if-nez v0, :cond_3

    .line 2124
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferWidth:I

    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/RfbProto;->requestResolution(II)V

    :cond_3
    return-void
.end method

.method private initSocket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->sslTunneled:Z

    if-eqz v0, :cond_1

    .line 364
    const-string v0, "RfbProto"

    const-string v1, "Creating secure tunnel."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Lcom/iiordanov/bVNC/SecureTunnel;

    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    iget v4, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    iget v5, p0, Lcom/iiordanov/bVNC/RfbProto;->hashAlgorithm:I

    iget-object v6, p0, Lcom/iiordanov/bVNC/RfbProto;->hash:Ljava/lang/String;

    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->cert:Ljava/lang/String;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v8, v1, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/iiordanov/bVNC/SecureTunnel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 366
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SecureTunnel;->setup()V

    .line 367
    monitor-enter p0

    .line 368
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/RfbProto;->certificateAccepted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 370
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 372
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 375
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/SecureTunnel;->getSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 375
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 381
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    iget v2, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 382
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 385
    :cond_2
    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->sock:Ljava/net/Socket;

    .line 386
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->setStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private setEncodings()V
    .locals 9

    .line 1874
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    .line 1877
    new-array v0, v0, [I

    .line 1880
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredEncoding:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x7

    .line 1881
    aput v3, v0, v1

    const/4 v4, 0x2

    const/16 v5, 0x10

    .line 1882
    aput v5, v0, v4

    const/4 v6, 0x3

    const/4 v7, 0x5

    .line 1883
    aput v7, v0, v6

    const/4 v6, 0x4

    const/4 v8, 0x6

    .line 1884
    aput v8, v0, v6

    .line 1885
    aput v6, v0, v7

    .line 1886
    aput v4, v0, v8

    .line 1888
    aput v1, v0, v3

    .line 1890
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->compressLevel:I

    add-int/lit16 v1, v1, -0x100

    const/16 v3, 0x8

    aput v1, v0, v3

    .line 1891
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->jpegQuality:I

    add-int/lit8 v1, v1, -0x20

    const/16 v3, 0x9

    aput v1, v0, v3

    const/16 v1, -0xf0

    const/16 v3, 0xa

    .line 1893
    aput v1, v0, v3

    const/16 v1, -0xef

    const/16 v3, 0xb

    .line 1894
    aput v1, v0, v3

    const/16 v1, -0xe8

    const/16 v3, 0xc

    .line 1896
    aput v1, v0, v3

    const/16 v1, -0xe0

    const/16 v3, 0xd

    .line 1897
    aput v1, v0, v3

    const/16 v1, -0xdf

    const/16 v3, 0xe

    .line 1898
    aput v1, v0, v3

    const/16 v1, -0x134

    const/16 v3, 0xf

    .line 1899
    aput v1, v0, v3

    .line 1908
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->nEncodingsSaved:I

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v2, v5, :cond_3

    .line 1912
    aget v1, v0, v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingsSaved:[I

    aget v3, v3, v2

    if-eq v1, v3, :cond_2

    .line 1921
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/iiordanov/bVNC/RfbProto;->writeSetEncodings([II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1923
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1925
    :goto_2
    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingsSaved:[I

    .line 1926
    iput v5, p0, Lcom/iiordanov/bVNC/RfbProto;->nEncodingsSaved:I

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private writeKeyEvent(IZ)V
    .locals 4

    .line 1559
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->viewOnly:Z

    if-eqz v0, :cond_0

    return-void

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    const/4 v3, 0x4

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 1563
    iput v3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    add-int/lit8 p2, v1, 0x3

    .line 1564
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    const/4 v2, 0x0

    aput-byte v2, v0, v3

    add-int/lit8 v3, v1, 0x4

    .line 1565
    iput v3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x5

    .line 1566
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v1, 0x6

    .line 1567
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x7

    .line 1568
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x8

    .line 1569
    iput v1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method


# virtual methods
.method authenticateDH(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->dh:Lcom/iiordanov/bVNC/DH;

    iget-wide v1, p0, Lcom/iiordanov/bVNC/RfbProto;->dh_resp:J

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/DH;->createEncryptionKey(J)J

    move-result-wide v0

    .line 872
    new-instance v2, Lcom/iiordanov/bVNC/DesCipher;

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/DH;->longToBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iiordanov/bVNC/DesCipher;-><init>([B)V

    const/16 v3, 0x100

    .line 874
    new-array v4, v3, [B

    const/16 v5, 0x40

    .line 875
    new-array v6, v5, [B

    .line 877
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v3, :cond_0

    .line 879
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    if-ge p1, v3, :cond_0

    .line 880
    aput-byte v9, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v9, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_1

    .line 885
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    :goto_1
    if-ge p1, v5, :cond_1

    .line 886
    aput-byte v9, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 890
    :cond_1
    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/DH;->longToBytes(J)[B

    move-result-object p1

    invoke-virtual {v2, v4, v4, p1}, Lcom/iiordanov/bVNC/DesCipher;->encryptText([B[B[B)V

    .line 891
    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/DH;->longToBytes(J)[B

    move-result-object p1

    invoke-virtual {v2, v6, v6, p1}, Lcom/iiordanov/bVNC/DesCipher;->encryptText([B[B[B)V

    .line 893
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 894
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 896
    const-string p1, "VNC authentication"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RfbProto;->readSecurityResult(Ljava/lang/String;)V

    return-void
.end method

.method authenticateNone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 760
    const-string v0, "No authentication"

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readSecurityResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method authenticatePlain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 803
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 805
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    .line 806
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    .line 807
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 808
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 810
    const-string p1, "Plain authentication"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RfbProto;->readSecurityResult(Ljava/lang/String;)V

    return-void
.end method

.method authenticateTLS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 793
    new-instance v0, Lcom/iiordanov/bVNC/TLSTunnel;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->sock:Ljava/net/Socket;

    invoke-direct {v0, v1}, Lcom/iiordanov/bVNC/TLSTunnel;-><init>(Ljava/net/Socket;)V

    .line 794
    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/TLSTunnel;->setup(Lcom/iiordanov/bVNC/RfbProto;)V

    return-void
.end method

.method authenticateVNC(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x10

    .line 768
    new-array v0, v0, [B

    .line 769
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    .line 772
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 775
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 777
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 779
    :cond_1
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    .line 780
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v4, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    new-instance p1, Lcom/iiordanov/bVNC/DesCipher;

    invoke-direct {p1, v1}, Lcom/iiordanov/bVNC/DesCipher;-><init>([B)V

    .line 784
    invoke-virtual {p1, v0, v2, v0, v2}, Lcom/iiordanov/bVNC/DesCipher;->encrypt([BI[BI)V

    .line 785
    invoke-virtual {p1, v0, v3, v0, v3}, Lcom/iiordanov/bVNC/DesCipher;->encrypt([BI[BI)V

    .line 787
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 789
    const-string p1, "VNC authentication"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RfbProto;->readSecurityResult(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method authenticateVeNCrypt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 711
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    .line 718
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 719
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 720
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 723
    new-array v3, v0, [I

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 725
    iget-object v5, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_3

    .line 729
    aget v4, v3, v1

    const-string v5, "Selecting VeNCrypt subtype: "

    const-string v6, "RfbProto"

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    if-eq v4, v2, :cond_2

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 742
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readU8()I

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    aget v0, v3, v1

    return v0

    .line 745
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "VeNCrypt setup on the server failed. Please check your certificate if applicable."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_2
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    aget v0, v3, v1

    return v0

    .line 751
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No valid VeNCrypt sub-type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Server reported it could not support the VeNCrypt version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 715
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 716
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Server reported an unsupported VeNCrypt version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method authenticateX509(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 798
    new-instance v0, Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->sock:Ljava/net/Socket;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-object v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/iiordanov/bVNC/X509Tunnel;-><init>(Ljava/net/Socket;Ljava/lang/String;Landroid/os/Handler;Lcom/undatech/opaque/RfbConnectable;)V

    .line 799
    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/X509Tunnel;->setup(Lcom/iiordanov/bVNC/RfbProto;)V

    return-void
.end method

.method final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public clientRedirect(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1586
    const-string p3, "RfbProto"

    const-string v0, "clientRedirect"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    .line 1589
    iput-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    .line 1590
    iput p1, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    .line 1591
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RfbProto;->initSocket()V

    .line 1592
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->writeClientInit()V

    .line 1593
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readServerInit()V

    .line 1594
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->processProtocol()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1596
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    .line 404
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->maintainConnection:Z

    .line 405
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    return-void
.end method

.method public declared-synchronized closeSocket()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 390
    :try_start_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->closed:Z

    .line 396
    const-string v0, "RfbProto"

    const-string v1, "RFB socket closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 398
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method declared-synchronized closed()Z
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public desktopName()Ljava/lang/String;
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->desktopName:Ljava/lang/String;

    return-object v0
.end method

.method public framebufferHeight()I
    .locals 1

    .line 1818
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferHeight:I

    return v0
.end method

.method public framebufferWidth()I
    .locals 1

    .line 1813
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferWidth:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .line 1852
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredEncoding:I

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1870
    const-string v0, ""

    return-object v0

    .line 1856
    :cond_0
    const-string v0, "TIGHT"

    return-object v0

    .line 1866
    :cond_1
    const-string v0, "ZLIB"

    return-object v0

    .line 1862
    :cond_2
    const-string v0, "HEXTILE"

    return-object v0

    .line 1860
    :cond_3
    const-string v0, "CoRRE"

    return-object v0

    .line 1858
    :cond_4
    const-string v0, "TIGHTZSTD"

    return-object v0

    .line 1868
    :cond_5
    const-string v0, "ZRLE"

    return-object v0

    .line 1864
    :cond_6
    const-string v0, "RRE"

    return-object v0

    .line 1854
    :cond_7
    const-string v0, "RAW"

    return-object v0
.end method

.method initCapabilities()V
    .locals 6

    .line 903
    new-instance v0, Lcom/iiordanov/bVNC/CapsContainer;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/CapsContainer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->tunnelCaps:Lcom/iiordanov/bVNC/CapsContainer;

    .line 904
    new-instance v0, Lcom/iiordanov/bVNC/CapsContainer;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/CapsContainer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    .line 905
    new-instance v0, Lcom/iiordanov/bVNC/CapsContainer;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/CapsContainer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

    .line 906
    new-instance v0, Lcom/iiordanov/bVNC/CapsContainer;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/CapsContainer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

    .line 907
    new-instance v0, Lcom/iiordanov/bVNC/CapsContainer;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/CapsContainer;-><init>()V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    .line 910
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "NOAUTH__"

    const-string v2, "No authentication"

    const/4 v3, 0x1

    const-string v4, "STDV"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "VNCAUTH_"

    const-string v2, "Standard VNC password authentication"

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "COPYRECT"

    const-string v2, "Standard CopyRect encoding"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "RRE_____"

    const-string v2, "Standard RRE encoding"

    invoke-virtual {v0, v5, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "CORRE___"

    const-string v2, "Standard CoRRE encoding"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "HEXTILE_"

    const-string v2, "Standard Hextile encoding"

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "ZRLE____"

    const-string v2, "Standard ZRLE encoding"

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "ZLIB____"

    const-string v2, "Zlib encoding"

    const/4 v3, 0x6

    const-string v4, "TRDV"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "TIGHT___"

    const-string v2, "Tight encoding"

    const/4 v3, 0x7

    const-string v4, "TGHT"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "TIGHTZSTD___"

    const-string v2, "Tight Zstd encoding"

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "COMPRLVL"

    const-string v2, "Compression level"

    const/16 v3, -0x100

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "JPEGQLVL"

    const-string v2, "JPEG quality level"

    const/16 v3, -0x20

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "X11CURSR"

    const-string v2, "X-style cursor shape update"

    const/16 v3, -0xf0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "RCHCURSR"

    const-string v2, "Rich-color cursor shape update"

    const/16 v3, -0xef

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "POINTPOS"

    const-string v2, "Pointer position update"

    const/16 v3, -0xe8

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "LASTRECT"

    const-string v2, "LastRect protocol extension"

    const/16 v3, -0xe0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    const-string v1, "NEWFBSIZ"

    const-string v2, "Framebuffer size change"

    const/16 v3, -0xdf

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/iiordanov/bVNC/CapsContainer;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method initializeAndAuthenticate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    .line 426
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Connecting to server: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " at port: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RfbProto"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RfbProto;->initSocket()V

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 431
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_0

    .line 432
    const-string p5, "Negotiating repeater/proxy connection"

    invoke-static {p2, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p5, 0xc

    .line 433
    new-array p5, p5, [B

    .line 434
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0, p5}, Ljava/io/DataInputStream;->read([B)I

    const/16 p5, 0xfa

    .line 435
    new-array p5, p5, [B

    .line 436
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    invoke-static {v0, p1, p5, p1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object p6, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p6, p5}, Ljava/io/OutputStream;->write([B)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readVersionMsg()V

    .line 442
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "RFB server supports protocol version "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p6, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMajor:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "."

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMinor:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->writeVersionMsg()V

    .line 445
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Using RFB protocol version "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMajor:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget p6, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    const/4 p6, 0x1

    if-lez p5, :cond_1

    move p5, p6

    goto :goto_0

    :cond_1
    move p5, p1

    .line 450
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bitPref = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, p5, p7}, Lcom/iiordanov/bVNC/RfbProto;->negotiateSecurity(II)I

    move-result p7

    const/16 v0, 0x10

    const/16 v1, 0x11

    if-ne p7, v0, :cond_2

    .line 454
    const-string p1, "secType == RfbProto.SecTypeTight"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->initCapabilities()V

    .line 456
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->setupTunneling()V

    .line 457
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->negotiateAuthenticationTight()I

    move-result p7

    goto :goto_2

    :cond_2
    const/16 v0, 0x13

    if-ne p7, v0, :cond_3

    .line 459
    const-string p1, "secType == RfbProto.SecTypeVeNCrypt"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateVeNCrypt()I

    move-result p7

    goto :goto_2

    :cond_3
    const/16 v0, 0x12

    if-ne p7, v0, :cond_4

    .line 462
    const-string p7, "secType == RfbProto.SecTypeTLS"

    invoke-static {p2, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateTLS()V

    .line 464
    invoke-virtual {p0, p5, p1}, Lcom/iiordanov/bVNC/RfbProto;->negotiateSecurity(II)I

    move-result p7

    goto :goto_2

    :cond_4
    const/4 p1, -0x6

    if-eq p7, p1, :cond_7

    const/16 p1, 0x71

    if-ne p7, p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x1e

    if-ne p7, p1, :cond_8

    .line 470
    const-string p1, "secType == RfbProto.SecTypeArd"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance p1, Lcom/iiordanov/bVNC/RFBSecurityARD;

    invoke-direct {p1, p3, p4}, Lcom/iiordanov/bVNC/RFBSecurityARD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1, p0}, Lcom/iiordanov/bVNC/RFBSecurityARD;->perform(Lcom/iiordanov/bVNC/RfbProto;)Z

    .line 473
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-eq p1, p6, :cond_6

    return-void

    .line 474
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error from VNC server: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_7
    :goto_1
    const-string p1, "secType == RfbProto.SecTypeUltra34 or SecTypeUltraVnc2"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p7, v1

    :cond_8
    :goto_2
    if-eq p7, p6, :cond_b

    const/4 p1, 0x2

    if-eq p7, p1, :cond_a

    if-eq p7, v1, :cond_9

    packed-switch p7, :pswitch_data_0

    .line 530
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown authentication scheme "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :pswitch_0
    const-string p1, "authType == RfbProto.AuthX509Plain, Plain authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0, p8}, Lcom/iiordanov/bVNC/RfbProto;->authenticateX509(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, p3, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticatePlain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 525
    :pswitch_1
    const-string p1, "authType == RfbProto.AuthX509Vnc,VNC authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0, p8}, Lcom/iiordanov/bVNC/RfbProto;->authenticateX509(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticateVNC(Ljava/lang/String;)V

    goto :goto_3

    .line 515
    :pswitch_2
    const-string p1, "authType == RfbProto.AuthX509None, No authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0, p8}, Lcom/iiordanov/bVNC/RfbProto;->authenticateX509(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateNone()V

    goto :goto_3

    .line 505
    :pswitch_3
    const-string p1, "authType == RfbProto.AuthTLSPlain, Plain authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateTLS()V

    .line 507
    invoke-virtual {p0, p3, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticatePlain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 510
    :pswitch_4
    const-string p1, "authType == RfbProto.AuthTLSVnc, VNC authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateTLS()V

    .line 512
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticateVNC(Ljava/lang/String;)V

    goto :goto_3

    .line 500
    :pswitch_5
    const-string p1, "authType == RfbProto.AuthTLSNone, No authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateTLS()V

    .line 502
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateNone()V

    goto :goto_3

    .line 487
    :pswitch_6
    const-string p1, "authType == RfbProto.AuthPlain, Plain authentication needed "

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0, p3, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticatePlain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 495
    :cond_9
    const-string p1, "authType == RfbProto.AuthUltra, UltraVNC authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->prepareDH()V

    .line 497
    invoke-virtual {p0, p3, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticateDH(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 491
    :cond_a
    const-string p1, "authType == RfbProto.AuthVNC, VNC authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/RfbProto;->authenticateVNC(Ljava/lang/String;)V

    goto :goto_3

    .line 483
    :cond_b
    const-string p1, "authType == RfbProto.AuthNone, No authentication needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->authenticateNone()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCertificateAccepted()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->certificateAccepted:Z

    return v0
.end method

.method public isInNormalProtocol()Z
    .locals 1

    .line 1848
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    return v0
.end method

.method public kbitsPerSecond()J
    .locals 4

    .line 1658
    iget-wide v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timedKbits:J

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method negotiateAuthenticationTight()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 973
    :cond_0
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {p0, v2, v0}, Lcom/iiordanov/bVNC/RfbProto;->readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V

    const/4 v0, 0x0

    .line 974
    :goto_0
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/CapsContainer;->numEnabled()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 975
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->authCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {v2, v0}, Lcom/iiordanov/bVNC/CapsContainer;->getByOrder(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    return v2

    .line 981
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No suitable authentication scheme found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method negotiateSecurity(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/RfbProto;->selectSecurityType(II)I

    move-result p1

    return p1

    .line 590
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/RfbProto;->readSecurityType(I)I

    move-result p1

    return p1
.end method

.method prepareDH()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 860
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 861
    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iiordanov/bVNC/RfbProto;->dh_resp:J

    .line 863
    new-instance v4, Lcom/iiordanov/bVNC/DH;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/iiordanov/bVNC/DH;-><init>(JJ)V

    iput-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->dh:Lcom/iiordanov/bVNC/DH;

    .line 864
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/DH;->createInterKey()J

    move-result-wide v0

    .line 866
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/iiordanov/bVNC/DH;->longToBytes(J)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public processProtocol()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1932
    const-string v0, "Closing VNC Connection"

    const-string v1, "RfbProto"

    .line 1936
    :try_start_0
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RfbProto;->setEncodings()V

    .line 1937
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->writeFullUpdateRequest(Z)V

    .line 1942
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/iiordanov/bVNC/RfbProto;->maintainConnection:Z

    if-eqz v2, :cond_1a

    .line 1944
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget-boolean v2, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->useFull:Z

    if-nez v2, :cond_1

    .line 1945
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/RemoteCanvas;->syncScroll()V

    .line 1947
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readServerMessageType()I

    move-result v2

    .line 1948
    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->doneWaiting()V

    goto :goto_1

    .line 1950
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readServerMessageType()I

    move-result v2

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/16 v4, 0xb

    if-eq v2, v4, :cond_3

    const/16 v3, 0xe

    if-eq v2, v3, :cond_2

    .line 2057
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown RFB message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2054
    :cond_2
    new-instance v2, Lcom/iiordanov/bVNC/RfbProto$RfbUltraVncColorMapException;

    const-string v3, "Only 24bpp color supported with UltraVNC"

    invoke-direct {v2, p0, v3}, Lcom/iiordanov/bVNC/RfbProto$RfbUltraVncColorMapException;-><init>(Lcom/iiordanov/bVNC/RfbProto;Ljava/lang/String;)V

    throw v2

    .line 2046
    :cond_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readTextChatMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2047
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    goto :goto_0

    .line 2040
    :cond_4
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iput-boolean v5, v2, Lcom/iiordanov/bVNC/RemoteCanvas;->serverJustCutText:Z

    .line 2041
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readServerCutText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->setClipboardText(Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    :cond_5
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    const-string v4, "VNC Beep"

    invoke-virtual {v2, v4}, Lcom/iiordanov/bVNC/RemoteCanvas;->displayShortToastMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2033
    :cond_6
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Can\'t handle SetColourMapEntries message"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1955
    :cond_7
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readFramebufferUpdate()V

    move v2, v3

    move v6, v2

    .line 1957
    :goto_2
    iget v7, p0, Lcom/iiordanov/bVNC/RfbProto;->updateNRects:I

    if-ge v2, v7, :cond_18

    .line 1958
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readFramebufferUpdateRectHdr()V

    .line 1960
    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectEncoding:I

    const/16 v7, -0x137

    if-eq v10, v7, :cond_16

    const/16 v7, -0x134

    if-eq v10, v7, :cond_15

    const/16 v7, -0xe8

    if-eq v10, v7, :cond_14

    const/16 v7, 0x10

    if-eq v10, v7, :cond_13

    const/16 v7, 0x1a

    if-eq v10, v7, :cond_12

    const/16 v7, -0xf0

    if-eq v10, v7, :cond_11

    const/16 v7, -0xef

    if-eq v10, v7, :cond_11

    const/16 v7, -0xe0

    if-eq v10, v7, :cond_10

    const/16 v7, -0xdf

    if-eq v10, v7, :cond_f

    if-eqz v10, :cond_e

    if-eq v10, v5, :cond_d

    if-eq v10, v4, :cond_c

    const/4 v7, 0x4

    if-eq v10, v7, :cond_b

    const/4 v7, 0x5

    if-eq v10, v7, :cond_a

    const/4 v7, 0x6

    if-eq v10, v7, :cond_9

    const/4 v7, 0x7

    if-eq v10, v7, :cond_8

    .line 2012
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown RFB rectangle encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectEncoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectEncoding:I

    .line 2013
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2012
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1962
    :cond_8
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    const/4 v13, 0x0

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/iiordanov/bVNC/Decoder;->handleTightRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V

    goto/16 :goto_3

    .line 2002
    :cond_9
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleZlibRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1996
    :cond_a
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleHextileRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1993
    :cond_b
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleCoRRERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1990
    :cond_c
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleRRERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1979
    :cond_d
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleCopyRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1987
    :cond_e
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleRawRect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto/16 :goto_3

    .line 1982
    :cond_f
    iget v6, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v7, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    invoke-virtual {p0, v6, v7}, Lcom/iiordanov/bVNC/RfbProto;->setFramebufferSize(II)V

    .line 1983
    iget-object v6, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v6}, Lcom/iiordanov/bVNC/RemoteCanvas;->updateFBSize()V

    :cond_10
    move v6, v5

    goto :goto_3

    .line 1972
    :cond_11
    iget-object v8, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v13, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v14, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v9, p0

    invoke-virtual/range {v8 .. v14}, Lcom/iiordanov/bVNC/Decoder;->handleCursorShapeUpdate(Lcom/iiordanov/bVNC/RfbProto;IIIII)V

    goto :goto_3

    .line 1965
    :cond_12
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    const/4 v13, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/iiordanov/bVNC/Decoder;->handleTightRect(Lcom/iiordanov/bVNC/RfbProto;IIIIZ)V

    goto :goto_3

    .line 1999
    :cond_13
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v11, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v12, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/iiordanov/bVNC/Decoder;->handleZRLERect(Lcom/iiordanov/bVNC/RfbProto;IIII)V

    goto :goto_3

    .line 1968
    :cond_14
    iget-object v7, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    invoke-virtual {v7, v8, v9}, Lcom/iiordanov/bVNC/RemoteCanvas;->softCursorMove(II)V

    goto :goto_3

    .line 2008
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EncodingExtendedDesktopSize, wxh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-direct {p0}, Lcom/iiordanov/bVNC/RfbProto;->handleExtendedDesktopSize()V

    goto :goto_3

    .line 2005
    :cond_16
    iget v7, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    iget v8, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    iget v9, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    iget v10, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/iiordanov/bVNC/RfbProto;->readClientRedirect(IIII)V

    :goto_3
    if-eqz v6, :cond_17

    goto :goto_4

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2022
    :cond_18
    :goto_4
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/Decoder;->isChangedColorModel()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2023
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->decoder:Lcom/iiordanov/bVNC/Decoder;

    invoke-virtual {v2, p0}, Lcom/iiordanov/bVNC/Decoder;->setPixelFormat(Lcom/iiordanov/bVNC/RfbProto;)V

    .line 2025
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2, v3}, Lcom/iiordanov/bVNC/RemoteCanvas;->writeFullUpdateRequest(Z)V

    goto/16 :goto_0

    .line 2028
    :cond_19
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {v2, v5}, Lcom/iiordanov/bVNC/RemoteCanvas;->writeFullUpdateRequest(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2064
    :cond_1a
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    .line 2065
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    .line 2061
    :try_start_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    .line 2062
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
    :goto_5
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->closeSocket()V

    .line 2065
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    throw v2
.end method

.method readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 990
    new-array v0, v0, [B

    const/16 v1, 0x8

    .line 991
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 993
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 994
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 995
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 996
    new-instance v4, Lcom/iiordanov/bVNC/CapabilityInfo;

    invoke-direct {v4, v3, v0, v1}, Lcom/iiordanov/bVNC/CapabilityInfo;-><init>(I[B[B)V

    invoke-virtual {p1, v4}, Lcom/iiordanov/bVNC/CapsContainer;->enable(Lcom/iiordanov/bVNC/CapabilityInfo;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method readClientRedirect(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1573
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readU16()I

    move-result v0

    .line 1574
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1575
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/iiordanov/bVNC/RfbProto;->clientRedirect(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1578
    :cond_1
    :goto_0
    const-string p1, "RfbProto"

    const-string p2, "Ignoring ClientRedirect rect with non-zero position/size"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method readCompactLen()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method readConnFailedReason()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 844
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readConnFailedReason(Z)V

    return-void
.end method

.method readConnFailedReason(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 849
    new-array v0, v0, [B

    .line 850
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 851
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 852
    const-string v0, "RfbProto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 854
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method readCopyRect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->copyRectSrcX:I

    .line 1256
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->copyRectSrcY:I

    return-void
.end method

.method readFramebufferUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 1176
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateNRects:I

    return-void
.end method

.method readFramebufferUpdateRectHdr()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectX:I

    .line 1196
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectY:I

    .line 1197
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectW:I

    .line 1198
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectH:I

    .line 1199
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->updateRectEncoding:I

    return-void
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1666
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method readSecurityResult(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 821
    const-string v2, ": failed"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 834
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": unknown result "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :cond_0
    new-instance v0, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;-><init>(Lcom/iiordanov/bVNC/RfbProto;Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_1
    new-instance v0, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": failed, too many tries"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;-><init>(Lcom/iiordanov/bVNC/RfbProto;Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_2
    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 827
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readConnFailedReason(Z)V

    .line 828
    :cond_3
    new-instance v0, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/iiordanov/bVNC/RfbProto$RfbPasswordAuthenticationException;-><init>(Lcom/iiordanov/bVNC/RfbProto;Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method readSecurityType(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, -0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x71

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown security type from RFB server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readConnFailedReason()V

    const/4 p1, 0x0

    return p1

    :cond_3
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    return v0

    .line 612
    :cond_4
    new-instance p1, Lcom/iiordanov/bVNC/RfbProto$RfbUsernameRequiredException;

    const-string v0, "Username required."

    invoke-direct {p1, p0, v0}, Lcom/iiordanov/bVNC/RfbProto$RfbUsernameRequiredException;-><init>(Lcom/iiordanov/bVNC/RfbProto;Ljava/lang/String;)V

    throw p1
.end method

.method readServerCutText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1273
    new-array v0, v0, [B

    .line 1274
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1275
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1276
    new-array v0, v0, [B

    .line 1277
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1278
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method readServerInit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    const-string v0, "Reading server init."

    const-string v1, "RfbProto"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1044
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read framebuffer size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0, v0, v2}, Lcom/iiordanov/bVNC/RfbProto;->setFramebufferSize(II)V

    .line 1048
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->bitsPerPixel:I

    .line 1049
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->depth:I

    .line 1050
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->bigEndian:Z

    .line 1051
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/RfbProto;->trueColour:Z

    .line 1052
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->redMax:I

    .line 1053
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->greenMax:I

    .line 1054
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->blueMax:I

    .line 1055
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->redShift:I

    .line 1056
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->greenShift:I

    .line 1057
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->blueShift:I

    const/4 v0, 0x3

    .line 1058
    new-array v0, v0, [B

    .line 1059
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1060
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1061
    new-array v0, v0, [B

    .line 1062
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1063
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->desktopName:Ljava/lang/String;

    .line 1066
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->protocolTightVNC:Z

    if-eqz v0, :cond_2

    .line 1067
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1068
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1069
    iget-object v3, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 1070
    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 1071
    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {p0, v4, v0}, Lcom/iiordanov/bVNC/RfbProto;->readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V

    .line 1072
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMsgCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/RfbProto;->readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V

    .line 1073
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->encodingCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {p0, v0, v3}, Lcom/iiordanov/bVNC/RfbProto;->readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V

    .line 1076
    :cond_2
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    return-void
.end method

.method readServerMessageType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1720
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readU32()I

    move-result v0

    .line 1721
    sget v1, Lcom/iiordanov/bVNC/RfbProto;->maxStringLength:I

    if-gt v0, v1, :cond_0

    .line 1724
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1725
    invoke-virtual {p0, v1, v2, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([BII)V

    .line 1726
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1728
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1730
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v0

    .line 1722
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Max string length exceeded"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readTextChatMsg()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1767
    new-array v0, v0, [B

    .line 1768
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1769
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->writeOpenChat()V

    return-object v2

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    return-object v2

    :cond_2
    if-lez v0, :cond_3

    .line 1787
    new-array v0, v0, [B

    .line 1788
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    .line 1789
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_3
    return-object v2
.end method

.method final readU16()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1707
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method final readU32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method final readU8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method readVersionMsg()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xc

    .line 539
    new-array v0, v0, [B

    .line 541
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    const/4 v1, 0x0

    .line 543
    aget-byte v1, v0, v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v4, 0x39

    if-gt v2, v4, :cond_1

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    if-lt v5, v3, :cond_1

    if-gt v5, v4, :cond_1

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    if-lt v6, v3, :cond_1

    if-gt v6, v4, :cond_1

    const/4 v7, 0x7

    aget-byte v7, v0, v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_1

    const/16 v7, 0x8

    aget-byte v7, v0, v7

    if-lt v7, v3, :cond_1

    if-gt v7, v4, :cond_1

    const/16 v8, 0x9

    aget-byte v8, v0, v8

    if-lt v8, v3, :cond_1

    if-gt v8, v4, :cond_1

    const/16 v9, 0xa

    aget-byte v10, v0, v9

    if-lt v10, v3, :cond_1

    if-gt v10, v4, :cond_1

    const/16 v4, 0xb

    aget-byte v4, v0, v4

    if-ne v4, v9, :cond_1

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    sub-int/2addr v5, v3

    mul-int/2addr v5, v9

    add-int/2addr v2, v5

    sub-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 553
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMajor:I

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x64

    sub-int/2addr v8, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sub-int/2addr v10, v3

    add-int/2addr v7, v10

    .line 554
    iput v7, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMinor:I

    if-lt v2, v1, :cond_0

    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "RFB server does not support protocol version 3"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "RfbProto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iiordanov/bVNC/RfbProto;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an RFB server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestResolution(II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestResolution, wxh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RfbProto"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-virtual/range {p0 .. p2}, Lcom/iiordanov/bVNC/RfbProto;->setPreferredFramebufferSize(II)V

    .line 2135
    iget-boolean v3, v0, Lcom/iiordanov/bVNC/RfbProto;->isExtendedDesktopSizeSupported:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    int-to-byte v1, v1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    int-to-byte v2, v2

    .line 2162
    iget v6, v0, Lcom/iiordanov/bVNC/RfbProto;->screenId:I

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    shr-int/lit8 v8, v6, 0x10

    int-to-byte v8, v8

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    int-to-byte v6, v6

    .line 2182
    iget v10, v0, Lcom/iiordanov/bVNC/RfbProto;->screenFlags:I

    shr-int/lit8 v11, v10, 0x18

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    int-to-byte v10, v10

    const/16 v14, 0x18

    .line 2185
    new-array v14, v14, [B

    const/4 v15, -0x5

    const/16 v16, 0x0

    aput-byte v15, v14, v16

    const/4 v15, 0x1

    aput-byte v16, v14, v15

    const/16 v17, 0x2

    aput-byte v3, v14, v17

    const/16 v17, 0x3

    aput-byte v1, v14, v17

    const/16 v17, 0x4

    aput-byte v5, v14, v17

    const/16 v17, 0x5

    aput-byte v2, v14, v17

    const/16 v17, 0x6

    aput-byte v15, v14, v17

    const/4 v15, 0x7

    aput-byte v16, v14, v15

    const/16 v15, 0x8

    aput-byte v7, v14, v15

    const/16 v7, 0x9

    aput-byte v8, v14, v7

    const/16 v7, 0xa

    aput-byte v9, v14, v7

    const/16 v7, 0xb

    aput-byte v6, v14, v7

    const/16 v6, 0xc

    aput-byte v16, v14, v6

    const/16 v6, 0xd

    aput-byte v16, v14, v6

    const/16 v6, 0xe

    aput-byte v16, v14, v6

    const/16 v6, 0xf

    aput-byte v16, v14, v6

    const/16 v6, 0x10

    aput-byte v3, v14, v6

    const/16 v3, 0x11

    aput-byte v1, v14, v3

    const/16 v1, 0x12

    aput-byte v5, v14, v1

    const/16 v1, 0x13

    aput-byte v2, v14, v1

    const/16 v1, 0x14

    aput-byte v11, v14, v1

    const/16 v1, 0x15

    aput-byte v12, v14, v1

    const/16 v1, 0x16

    aput-byte v13, v14, v1

    const/16 v1, 0x17

    aput-byte v10, v14, v1

    .line 2188
    :try_start_0
    iget-object v1, v0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2190
    :catch_0
    const-string v1, "Sending the ExtendedDesktopSize Frame failed"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public requestUpdate(Z)V
    .locals 6

    .line 1828
    iget v3, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferWidth:I

    iget v4, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/iiordanov/bVNC/RfbProto;->writeFramebufferUpdateRequest(IIIIZ)V

    return-void
.end method

.method selectSecurityType(II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    const-string v0, "(Re)Selecting security type."

    const-string v1, "RfbProto"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/RfbProto;->readConnFailedReason()V

    return v2

    .line 635
    :cond_0
    new-array v3, v0, [B

    .line 636
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/RfbProto;->readFully([B)V

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_2

    .line 640
    aget-byte v6, v3, v4

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 641
    iput-boolean v5, p0, Lcom/iiordanov/bVNC/RfbProto;->protocolTightVNC:Z

    .line 642
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    return v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    move v6, v4

    :goto_1
    if-ge v4, v0, :cond_b

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received security type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    const/16 v8, 0x12

    if-ne p2, v7, :cond_3

    .line 653
    aget-byte v7, v3, v4

    if-ne v7, v8, :cond_9

    :goto_2
    move v2, v7

    goto :goto_4

    :cond_3
    const/4 v7, 0x4

    const/16 v9, 0x13

    if-ne p2, v7, :cond_4

    .line 658
    aget-byte v7, v3, v4

    if-ne v7, v9, :cond_9

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    if-ne p2, v7, :cond_6

    .line 663
    aget-byte v8, v3, v4

    if-eq v8, v5, :cond_5

    if-eq v8, v7, :cond_5

    const/16 v7, 0x71

    if-eq v8, v7, :cond_5

    const/4 v7, -0x6

    if-ne v8, v7, :cond_9

    :cond_5
    move v2, v8

    goto :goto_4

    .line 669
    :cond_6
    aget-byte v10, v3, v4

    if-eq v10, v5, :cond_a

    if-eq v10, v7, :cond_a

    if-ne v10, v9, :cond_7

    goto :goto_3

    :cond_7
    if-ne v10, v8, :cond_8

    move v6, v5

    :cond_8
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_9

    const/16 v7, 0x1e

    if-ne v10, v7, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    move v2, v10

    :cond_b
    :goto_4
    if-nez v2, :cond_d

    if-eqz v6, :cond_c

    .line 696
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->error_anon_dh_unsupported:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 698
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_security_type:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->canvas:Lcom/iiordanov/bVNC/RemoteCanvas;

    .line 699
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/RemoteCanvas;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_pick_correct_item:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 701
    :goto_5
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 703
    :cond_d
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    return v2
.end method

.method public setCertificateAccepted(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/RfbProto;->certificateAccepted:Z

    return-void
.end method

.method setFramebufferSize(II)V
    .locals 2

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFramebufferSize, wxh: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RfbProto"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iput p1, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferWidth:I

    .line 1132
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferHeight:I

    return-void
.end method

.method public setIsInNormalProtocol(Z)V
    .locals 0

    .line 1843
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/RfbProto;->inNormalProtocol:Z

    return-void
.end method

.method setPreferredFramebufferSize(II)V
    .locals 2

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreferredFramebufferSize, wxh: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RfbProto"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iput p1, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferWidth:I

    .line 1144
    iput p2, p0, Lcom/iiordanov/bVNC/RfbProto;->preferredFramebufferHeight:I

    return-void
.end method

.method public setStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 1738
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    .line 1739
    iput-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    return-void
.end method

.method setupTunneling()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->tunnelCaps:Lcom/iiordanov/bVNC/CapsContainer;

    invoke-virtual {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->readCapabilityList(Lcom/iiordanov/bVNC/CapsContainer;I)V

    const/4 v0, 0x0

    .line 960
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    :cond_0
    return-void
.end method

.method public startTiming()V
    .locals 6

    const/4 v0, 0x1

    .line 1641
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timing:Z

    .line 1645
    iget-wide v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1646
    iget-wide v4, p0, Lcom/iiordanov/bVNC/RfbProto;->timedKbits:J

    mul-long/2addr v4, v2

    div-long/2addr v4, v0

    iput-wide v4, p0, Lcom/iiordanov/bVNC/RfbProto;->timedKbits:J

    .line 1647
    iput-wide v2, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    :cond_0
    return-void
.end method

.method public stopTiming()V
    .locals 8

    const/4 v0, 0x0

    .line 1652
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timing:Z

    .line 1653
    iget-wide v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    iget-wide v2, p0, Lcom/iiordanov/bVNC/RfbProto;->timedKbits:J

    const-wide/16 v4, 0x2

    div-long v6, v2, v4

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 1654
    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    :cond_0
    return-void
.end method

.method public timeWaited()J
    .locals 2

    .line 1662
    iget-wide v0, p0, Lcom/iiordanov/bVNC/RfbProto;->timeWaitedIn100us:J

    return-wide v0
.end method

.method public declared-synchronized writeChatMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1796
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1797
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1798
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1799
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1800
    const-string v0, "8859_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1802
    array-length v0, p1

    const/16 v2, 0x1000

    if-le v0, v2, :cond_0

    .line 1803
    new-array v0, v2, [B

    .line 1804
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 1806
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V

    .line 1807
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeClientCutText(Ljava/lang/String;)V
    .locals 2

    .line 1834
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeClientCutText(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1836
    const-string v0, "RfbProto"

    const-string v1, "Could not write text to VNC server clipboard."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method declared-synchronized writeClientCutText(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1432
    :try_start_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->viewOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1433
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x8

    .line 1435
    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1437
    aput-byte v1, v0, v2

    .line 1438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    .line 1439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v0, v4

    .line 1440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 1443
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v2, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1445
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method writeClientInit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->shareDesktop:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method declared-synchronized writeCloseChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1752
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1753
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1754
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, -0x2

    .line 1755
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method writeCtrlAltDel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1507
    :try_start_0
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    const/16 v1, 0x1002

    .line 1508
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V

    const/4 v2, 0x1

    const v3, 0xffff

    .line 1509
    invoke-direct {p0, v3, v2}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    .line 1510
    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget v5, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1513
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    .line 1514
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V

    .line 1515
    invoke-direct {p0, v3, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    .line 1518
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V

    .line 1519
    iget-object v1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget v3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1521
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method declared-synchronized writeFinishedChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1759
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1760
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1761
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1762
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, -0x3

    .line 1763
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized writeFixColourMapEntries(II[I[I[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    mul-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, 0x6

    .line 1384
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1386
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    .line 1387
    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 1388
    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x4

    .line 1389
    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x5

    .line 1390
    aput-byte p1, v0, v1

    :goto_0
    if-ge v2, p2, :cond_0

    mul-int/lit8 p1, v2, 0x6

    add-int/lit8 v1, p1, 0x6

    .line 1393
    aget v3, p3, v2

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, p1, 0x7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1394
    aput-byte v3, v0, v1

    add-int/lit8 v1, p1, 0x8

    .line 1395
    aget v3, p4, v2

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, p1, 0x9

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1396
    aput-byte v3, v0, v1

    add-int/lit8 v1, p1, 0xa

    .line 1397
    aget v3, p5, v2

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 p1, p1, 0xb

    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 1398
    aput-byte v1, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized writeFramebufferUpdateRequest(IIIIZ)V
    .locals 3

    monitor-enter p0

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->framebufferUpdateRequest:[B

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v2, 0x1

    int-to-byte p5, p5

    .line 1322
    aput-byte p5, v0, v2

    shr-int/lit8 p5, p1, 0x8

    and-int/lit16 p5, p5, 0xff

    int-to-byte p5, p5

    const/4 v2, 0x2

    .line 1323
    aput-byte p5, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1324
    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p5, 0x4

    .line 1325
    aput-byte p1, v0, p5

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x5

    .line 1326
    aput-byte p1, v0, p2

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    .line 1327
    aput-byte p1, v0, p2

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 1328
    aput-byte p1, v0, p2

    shr-int/lit8 p1, p4, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x8

    .line 1329
    aput-byte p1, v0, p2

    and-int/lit16 p1, p4, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x9

    .line 1330
    aput-byte p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :try_start_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1335
    :try_start_2
    const-string p2, "RfbProto"

    const-string p3, "Could not write framebuffer update request."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1338
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->writeIntBuffer:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 1008
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 1009
    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 1010
    aput-byte p1, v0, v1

    .line 1011
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public declared-synchronized writeKeyEvent(IIZ)V
    .locals 1

    monitor-enter p0

    .line 1531
    :try_start_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->viewOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1532
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1534
    :try_start_1
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    if-eqz p3, :cond_1

    .line 1536
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V

    :cond_1
    if-lez p1, :cond_2

    .line 1538
    invoke-direct {p0, p1, p3}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_2
    if-nez p3, :cond_3

    .line 1542
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget p3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1548
    :try_start_3
    const-string p2, "RfbProto"

    const-string p3, "Failed to write key event to VNC server."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1551
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method writeModifierKeyEvents(I)V
    .locals 5

    and-int/lit16 v0, p1, 0x1000

    .line 1607
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/lit16 v1, v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v1, 0xffe3

    .line 1608
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_1
    and-int/lit8 v0, p1, 0x1

    .line 1610
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/2addr v1, v3

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const v1, 0xffe1

    .line 1611
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_3
    and-int/lit8 v0, p1, 0x2

    .line 1613
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    const v1, 0xffe9

    .line 1614
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_5
    const/high16 v0, 0x20000

    and-int v1, p1, v0

    .line 1616
    iget v4, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/2addr v0, v4

    if-eq v1, v0, :cond_7

    if-eqz v1, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    const v1, 0xffeb

    .line 1617
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_7
    and-int/lit16 v0, p1, 0x4000

    .line 1619
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/lit16 v1, v1, 0x4000

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    const v1, 0xffe4

    .line 1620
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_9
    and-int/lit16 v0, p1, 0x80

    .line 1622
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/lit16 v1, v1, 0x80

    if-eq v0, v1, :cond_b

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    const v1, 0xffe2

    .line 1623
    invoke-direct {p0, v1, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    :cond_b
    and-int/lit8 v0, p1, 0x20

    .line 1625
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    and-int/lit8 v1, v1, 0x20

    if-eq v0, v1, :cond_e

    .line 1627
    sget-boolean v1, Lcom/iiordanov/bVNC/input/RemoteVncKeyboard;->rAltAsIsoL3Shift:Z

    if-eqz v1, :cond_c

    const v1, 0xfe03

    goto :goto_6

    :cond_c
    const v1, 0xffea

    :goto_6
    if-eqz v0, :cond_d

    move v2, v3

    .line 1629
    :cond_d
    invoke-direct {p0, v1, v2}, Lcom/iiordanov/bVNC/RfbProto;->writeKeyEvent(IZ)V

    .line 1632
    :cond_e
    iput p1, p0, Lcom/iiordanov/bVNC/RfbProto;->oldModifiers:I

    return-void
.end method

.method declared-synchronized writeOpenChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1744
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1745
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1746
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, -0x1

    .line 1747
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/RfbProto;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized writePointerEvent(IIIIZ)V
    .locals 4

    monitor-enter p0

    .line 1473
    :try_start_0
    iget-boolean p5, p0, Lcom/iiordanov/bVNC/RfbProto;->viewOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    .line 1474
    monitor-exit p0

    return-void

    :cond_0
    const/4 p5, 0x0

    .line 1476
    :try_start_1
    iput p5, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    .line 1477
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V

    .line 1479
    iget-object p3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    const/4 v2, 0x5

    aput-byte v2, p3, v0

    add-int/lit8 v2, v0, 0x2

    .line 1480
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    int-to-byte v3, p4

    aput-byte v3, p3, v1

    add-int/lit8 v1, v0, 0x3

    .line 1481
    iput v1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, v0, 0x4

    .line 1482
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p3, v1

    add-int/lit8 p1, v0, 0x5

    .line 1483
    iput p1, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x6

    .line 1484
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    if-nez p4, :cond_1

    .line 1491
    invoke-virtual {p0, p5}, Lcom/iiordanov/bVNC/RfbProto;->writeModifierKeyEvents(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBuf:[B

    iget p3, p0, Lcom/iiordanov/bVNC/RfbProto;->eventBufLen:I

    invoke-virtual {p1, p2, p5, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1497
    :try_start_3
    const-string p2, "RfbProto"

    const-string p3, "Failed to write pointer event to VNC server."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1500
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method declared-synchronized writeSetEncodings([II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 1410
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1412
    aput-byte v1, v0, v2

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1413
    aput-byte v3, v0, v1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    .line 1414
    aput-byte v1, v0, v3

    :goto_0
    if-ge v2, p2, :cond_0

    mul-int/lit8 v1, v2, 0x4

    add-int/lit8 v3, v1, 0x4

    .line 1417
    aget v4, p1, v2

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x5

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1418
    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1419
    aput-byte v5, v0, v3

    add-int/lit8 v1, v1, 0x7

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 1420
    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized writeSetPixelFormat(IIZZIIIIIIZ)V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x14

    .line 1349
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1351
    aput-byte v1, v0, v1

    const/4 v1, 0x4

    int-to-byte p1, p1

    .line 1352
    aput-byte p1, v0, v1

    const/4 p1, 0x5

    int-to-byte p2, p2

    .line 1353
    aput-byte p2, v0, p1

    int-to-byte p1, p3

    const/4 p2, 0x6

    .line 1354
    aput-byte p1, v0, p2

    int-to-byte p1, p4

    const/4 p2, 0x7

    .line 1355
    aput-byte p1, v0, p2

    shr-int/lit8 p1, p5, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x8

    .line 1356
    aput-byte p1, v0, p2

    and-int/lit16 p1, p5, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x9

    .line 1357
    aput-byte p1, v0, p2

    shr-int/lit8 p1, p6, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0xa

    .line 1358
    aput-byte p1, v0, p2

    and-int/lit16 p1, p6, 0xff

    int-to-byte p1, p1

    const/16 p2, 0xb

    .line 1359
    aput-byte p1, v0, p2

    shr-int/lit8 p1, p7, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0xc

    .line 1360
    aput-byte p1, v0, p2

    and-int/lit16 p1, p7, 0xff

    int-to-byte p1, p1

    const/16 p2, 0xd

    .line 1361
    aput-byte p1, v0, p2

    const/16 p1, 0xe

    int-to-byte p2, p8

    .line 1362
    aput-byte p2, v0, p1

    const/16 p1, 0xf

    int-to-byte p2, p9

    .line 1363
    aput-byte p2, v0, p1

    const/16 p1, 0x10

    int-to-byte p2, p10

    .line 1364
    aput-byte p2, v0, p1

    int-to-byte p1, p11

    const/16 p2, 0x11

    .line 1365
    aput-byte p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    :try_start_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1370
    :try_start_2
    const-string p2, "RfbProto"

    const-string p3, "Could not write setPixelFormat message to VNC server."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1373
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method declared-synchronized writeVersionMsg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    .line 567
    :try_start_0
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMajor:I

    .line 568
    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMajor:I

    const/16 v2, 0x8

    if-gt v1, v0, :cond_2

    iget v1, p0, Lcom/iiordanov/bVNC/RfbProto;->serverMinor:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 572
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    .line 573
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const-string v1, "RFB 003.007\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 575
    :cond_1
    iput v0, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    .line 576
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const-string v1, "RFB 003.003\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 569
    :cond_2
    :goto_0
    iput v2, p0, Lcom/iiordanov/bVNC/RfbProto;->clientMinor:I

    .line 570
    iget-object v0, p0, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    const-string v1, "RFB 003.008\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/RfbProto;->protocolTightVNC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
