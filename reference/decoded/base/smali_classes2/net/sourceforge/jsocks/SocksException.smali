.class public Lnet/sourceforge/jsocks/SocksException;
.super Ljava/io/IOException;
.source "SocksException.java"


# static fields
.field static final UNASSIGNED_ERROR_MESSAGE:Ljava/lang/String; = "Unknown error message"

.field static final localErrorMessage:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x5539ded35b5a9b15L

.field static final serverReplyMessage:[Ljava/lang/String;


# instance fields
.field public errCode:I

.field errString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x9

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Succeeded"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "General SOCKS server failure"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Connection not allowed by ruleset"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Network unreachable"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "Host unreachable"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "Connection refused"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "TTL expired"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const-string v9, "Command not supported"

    aput-object v9, v0, v1

    const/16 v1, 0x8

    const-string v9, "Address type not supported"

    aput-object v9, v0, v1

    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    .line 18
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "SOCKS server not specified"

    aput-object v1, v0, v2

    const-string v1, "Unable to contact SOCKS server"

    aput-object v1, v0, v3

    const-string v1, "IO error"

    aput-object v1, v0, v4

    const-string v1, "None of Authentication methods are supported"

    aput-object v1, v0, v5

    const-string v1, "Authentication failed"

    aput-object v1, v0, v6

    const-string v1, "General SOCKS fault"

    aput-object v1, v0, v7

    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 35
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    shr-int/lit8 v0, p1, 0x10

    .line 36
    const-string v1, "Unknown error message"

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    array-length v2, v0

    if-gt p1, v2, :cond_0

    aget-object v1, v0, p1

    .line 39
    :cond_0
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    sget-object p1, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    array-length v2, p1

    if-gt v0, v2, :cond_2

    aget-object v1, p1, v0

    .line 44
    :cond_2
    iput-object v1, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 57
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 58
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 67
    iget v0, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-object v0
.end method
