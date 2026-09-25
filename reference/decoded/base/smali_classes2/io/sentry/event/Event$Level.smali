.class public final enum Lio/sentry/event/Event$Level;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/event/Event$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/event/Event$Level;

.field public static final enum DEBUG:Lio/sentry/event/Event$Level;

.field public static final enum ERROR:Lio/sentry/event/Event$Level;

.field public static final enum FATAL:Lio/sentry/event/Event$Level;

.field public static final enum INFO:Lio/sentry/event/Event$Level;

.field public static final enum WARNING:Lio/sentry/event/Event$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 385
    new-instance v0, Lio/sentry/event/Event$Level;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/event/Event$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/event/Event$Level;->FATAL:Lio/sentry/event/Event$Level;

    .line 389
    new-instance v1, Lio/sentry/event/Event$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/sentry/event/Event$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/sentry/event/Event$Level;->ERROR:Lio/sentry/event/Event$Level;

    .line 393
    new-instance v2, Lio/sentry/event/Event$Level;

    const-string v3, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/sentry/event/Event$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/sentry/event/Event$Level;->WARNING:Lio/sentry/event/Event$Level;

    .line 397
    new-instance v3, Lio/sentry/event/Event$Level;

    const-string v4, "INFO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/sentry/event/Event$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/sentry/event/Event$Level;->INFO:Lio/sentry/event/Event$Level;

    .line 401
    new-instance v4, Lio/sentry/event/Event$Level;

    const-string v5, "DEBUG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/sentry/event/Event$Level;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/sentry/event/Event$Level;->DEBUG:Lio/sentry/event/Event$Level;

    .line 381
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/sentry/event/Event$Level;

    move-result-object v0

    sput-object v0, Lio/sentry/event/Event$Level;->$VALUES:[Lio/sentry/event/Event$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/event/Event$Level;
    .locals 1

    .line 381
    const-class v0, Lio/sentry/event/Event$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/event/Event$Level;

    return-object p0
.end method

.method public static values()[Lio/sentry/event/Event$Level;
    .locals 1

    .line 381
    sget-object v0, Lio/sentry/event/Event$Level;->$VALUES:[Lio/sentry/event/Event$Level;

    invoke-virtual {v0}, [Lio/sentry/event/Event$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/event/Event$Level;

    return-object v0
.end method
