.class public final enum Lorg/connectbot/simplesocks/Socks5Server$Command;
.super Ljava/lang/Enum;
.source "Socks5Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/simplesocks/Socks5Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/connectbot/simplesocks/Socks5Server$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/connectbot/simplesocks/Socks5Server$Command;

.field public static final enum BIND:Lorg/connectbot/simplesocks/Socks5Server$Command;

.field public static final enum CONNECT:Lorg/connectbot/simplesocks/Socks5Server$Command;


# instance fields
.field private final commandNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lorg/connectbot/simplesocks/Socks5Server$Command;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/connectbot/simplesocks/Socks5Server$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/connectbot/simplesocks/Socks5Server$Command;->CONNECT:Lorg/connectbot/simplesocks/Socks5Server$Command;

    .line 71
    new-instance v1, Lorg/connectbot/simplesocks/Socks5Server$Command;

    const-string v2, "BIND"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/connectbot/simplesocks/Socks5Server$Command;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/connectbot/simplesocks/Socks5Server$Command;->BIND:Lorg/connectbot/simplesocks/Socks5Server$Command;

    .line 63
    filled-new-array {v0, v1}, [Lorg/connectbot/simplesocks/Socks5Server$Command;

    move-result-object v0

    sput-object v0, Lorg/connectbot/simplesocks/Socks5Server$Command;->$VALUES:[Lorg/connectbot/simplesocks/Socks5Server$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lorg/connectbot/simplesocks/Socks5Server$Command;->commandNumber:I

    return-void
.end method

.method public static fromCommandNumber(I)Lorg/connectbot/simplesocks/Socks5Server$Command;
    .locals 2

    .line 74
    sget-object v0, Lorg/connectbot/simplesocks/Socks5Server$Command;->CONNECT:Lorg/connectbot/simplesocks/Socks5Server$Command;

    invoke-virtual {v0}, Lorg/connectbot/simplesocks/Socks5Server$Command;->commandNumber()I

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lorg/connectbot/simplesocks/Socks5Server$Command;->BIND:Lorg/connectbot/simplesocks/Socks5Server$Command;

    invoke-virtual {v0}, Lorg/connectbot/simplesocks/Socks5Server$Command;->commandNumber()I

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/connectbot/simplesocks/Socks5Server$Command;
    .locals 1

    .line 63
    const-class v0, Lorg/connectbot/simplesocks/Socks5Server$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/connectbot/simplesocks/Socks5Server$Command;

    return-object p0
.end method

.method public static values()[Lorg/connectbot/simplesocks/Socks5Server$Command;
    .locals 1

    .line 63
    sget-object v0, Lorg/connectbot/simplesocks/Socks5Server$Command;->$VALUES:[Lorg/connectbot/simplesocks/Socks5Server$Command;

    invoke-virtual {v0}, [Lorg/connectbot/simplesocks/Socks5Server$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/connectbot/simplesocks/Socks5Server$Command;

    return-object v0
.end method


# virtual methods
.method public commandNumber()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/connectbot/simplesocks/Socks5Server$Command;->commandNumber:I

    return v0
.end method
