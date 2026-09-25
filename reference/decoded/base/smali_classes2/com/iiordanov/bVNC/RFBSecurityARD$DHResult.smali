.class Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;
.super Ljava/lang/Object;
.source "RFBSecurityARD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/RFBSecurityARD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHResult"
.end annotation


# instance fields
.field private privateKey:[B

.field private publicKey:[B

.field private secretKey:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetpublicKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;)[B
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->publicKey:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;)[B
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->secretKey:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputprivateKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V
    .locals 0

    iput-object p1, p0, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->privateKey:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpublicKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V
    .locals 0

    iput-object p1, p0, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->publicKey:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsecretKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V
    .locals 0

    iput-object p1, p0, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->secretKey:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iiordanov/bVNC/RFBSecurityARD-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;-><init>()V

    return-void
.end method
