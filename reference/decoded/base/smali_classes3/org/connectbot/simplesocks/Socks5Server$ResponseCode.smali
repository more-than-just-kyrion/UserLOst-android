.class public final enum Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;
.super Ljava/lang/Enum;
.source "Socks5Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/simplesocks/Socks5Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum ADDRESS_TYPE_NOT_SUPPORTED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum COMMAND_NOT_SUPPORTED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum CONNECTION_REFUSED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum GENERAL_FAILURE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum HOST_UNREACHABLE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum NETWORK_UNREACHABLE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum RULESET_DENIED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum SUCCESS:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

.field public static final enum TTL_EXPIRED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 98
    new-instance v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->SUCCESS:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 102
    new-instance v1, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v2, "GENERAL_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->GENERAL_FAILURE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 106
    new-instance v2, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v3, "RULESET_DENIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->RULESET_DENIED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 110
    new-instance v3, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v4, "NETWORK_UNREACHABLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->NETWORK_UNREACHABLE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 114
    new-instance v4, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v5, "HOST_UNREACHABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->HOST_UNREACHABLE:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 118
    new-instance v5, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v6, "CONNECTION_REFUSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->CONNECTION_REFUSED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 122
    new-instance v6, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v7, "TTL_EXPIRED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v6, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->TTL_EXPIRED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 126
    new-instance v7, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v8, "COMMAND_NOT_SUPPORTED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->COMMAND_NOT_SUPPORTED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 130
    new-instance v8, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    const-string v9, "ADDRESS_TYPE_NOT_SUPPORTED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;-><init>(Ljava/lang/String;IB)V

    sput-object v8, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->ADDRESS_TYPE_NOT_SUPPORTED:Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    .line 94
    filled-new-array/range {v0 .. v8}, [Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    move-result-object v0

    sput-object v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->$VALUES:[Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-byte p3, p0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;
    .locals 1

    .line 94
    const-class v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    return-object p0
.end method

.method public static values()[Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;
    .locals 1

    .line 94
    sget-object v0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->$VALUES:[Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    invoke-virtual {v0}, [Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 139
    iget-byte v0, p0, Lorg/connectbot/simplesocks/Socks5Server$ResponseCode;->code:B

    return v0
.end method
