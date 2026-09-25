.class public Lcom/trilead/ssh2/packets/Packets;
.super Ljava/lang/Object;
.source "Packets.java"


# static fields
.field public static final SSH_DISCONNECT_AUTH_CANCELLED_BY_USER:I = 0xd

.field public static final SSH_DISCONNECT_BY_APPLICATION:I = 0xb

.field public static final SSH_DISCONNECT_COMPRESSION_ERROR:I = 0x6

.field public static final SSH_DISCONNECT_CONNECTION_LOST:I = 0xa

.field public static final SSH_DISCONNECT_HOST_KEY_NOT_VERIFIABLE:I = 0x9

.field public static final SSH_DISCONNECT_HOST_NOT_ALLOWED_TO_CONNECT:I = 0x1

.field public static final SSH_DISCONNECT_ILLEGAL_USER_NAME:I = 0xf

.field public static final SSH_DISCONNECT_KEY_EXCHANGE_FAILED:I = 0x3

.field public static final SSH_DISCONNECT_MAC_ERROR:I = 0x5

.field public static final SSH_DISCONNECT_NO_MORE_AUTH_METHODS_AVAILABLE:I = 0xe

.field public static final SSH_DISCONNECT_PROTOCOL_ERROR:I = 0x2

.field public static final SSH_DISCONNECT_PROTOCOL_VERSION_NOT_SUPPORTED:I = 0x8

.field public static final SSH_DISCONNECT_RESERVED:I = 0x4

.field public static final SSH_DISCONNECT_SERVICE_NOT_AVAILABLE:I = 0x7

.field public static final SSH_DISCONNECT_TOO_MANY_CONNECTIONS:I = 0xc

.field public static final SSH_EXTENDED_DATA_STDERR:I = 0x1

.field public static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field public static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field public static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field public static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field public static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field public static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field public static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field public static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field public static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field public static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field public static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field public static final SSH_MSG_DEBUG:I = 0x4

.field public static final SSH_MSG_DISCONNECT:I = 0x1

.field public static final SSH_MSG_EXT_INFO:I = 0x7

.field public static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field public static final SSH_MSG_IGNORE:I = 0x2

.field public static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field public static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field public static final SSH_MSG_KEXINIT:I = 0x14

.field public static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field public static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field public static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST_OLD:I = 0x1e

.field public static final SSH_MSG_NEWKEYS:I = 0x15

.field public static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field public static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field public static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field public static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field public static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field public static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field public static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field public static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field public static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d

.field public static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field public static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34

.field public static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field public static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field public static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field public static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field private static final reverseNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x65

    .line 78
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 84
    const-string v2, "SSH_MSG_DISCONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 85
    const-string v2, "SSH_MSG_IGNORE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 86
    const-string v2, "SSH_MSG_UNIMPLEMENTED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 87
    const-string v2, "SSH_MSG_DEBUG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 88
    const-string v2, "SSH_MSG_SERVICE_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 89
    const-string v2, "SSH_MSG_SERVICE_ACCEPT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 90
    const-string v2, "SSH_MSG_EXT_INFO"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 92
    const-string v2, "SSH_MSG_KEXINIT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 93
    const-string v2, "SSH_MSG_NEWKEYS"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 95
    const-string v2, "SSH_MSG_KEXDH_INIT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 96
    const-string v2, "SSH_MSG_KEXDH_REPLY/SSH_MSG_KEX_DH_GEX_GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 97
    const-string v2, "SSH_MSG_KEX_DH_GEX_INIT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 98
    const-string v2, "SSH_MSG_KEX_DH_GEX_REPLY"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 99
    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 101
    const-string v2, "SSH_MSG_USERAUTH_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 102
    const-string v2, "SSH_MSG_USERAUTH_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 103
    const-string v2, "SSH_MSG_USERAUTH_SUCCESS"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 104
    const-string v2, "SSH_MSG_USERAUTH_BANNER"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 106
    const-string v2, "SSH_MSG_USERAUTH_INFO_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 107
    const-string v2, "SSH_MSG_USERAUTH_INFO_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 109
    const-string v2, "SSH_MSG_GLOBAL_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 110
    const-string v2, "SSH_MSG_REQUEST_SUCCESS"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 111
    const-string v2, "SSH_MSG_REQUEST_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 113
    const-string v2, "SSH_MSG_CHANNEL_OPEN"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 114
    const-string v2, "SSH_MSG_CHANNEL_OPEN_CONFIRMATION"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 115
    const-string v2, "SSH_MSG_CHANNEL_OPEN_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 116
    const-string v2, "SSH_MSG_CHANNEL_WINDOW_ADJUST"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 117
    const-string v2, "SSH_MSG_CHANNEL_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 118
    const-string v2, "SSH_MSG_CHANNEL_EXTENDED_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 119
    const-string v2, "SSH_MSG_CHANNEL_EOF"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 120
    const-string v2, "SSH_MSG_CHANNEL_CLOSE"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 121
    const-string v2, "SSH_MSG_CHANNEL_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 122
    const-string v2, "SSH_MSG_CHANNEL_SUCCESS"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 123
    const-string v2, "SSH_MSG_CHANNEL_FAILURE"

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessageName(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 130
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 132
    aget-object v0, v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN MSG "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
