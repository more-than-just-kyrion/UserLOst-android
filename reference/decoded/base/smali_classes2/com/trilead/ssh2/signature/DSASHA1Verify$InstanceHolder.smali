.class Lcom/trilead/ssh2/signature/DSASHA1Verify$InstanceHolder;
.super Ljava/lang/Object;
.source "DSASHA1Verify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/DSASHA1Verify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/trilead/ssh2/signature/DSASHA1Verify;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/trilead/ssh2/signature/DSASHA1Verify;
    .locals 1

    sget-object v0, Lcom/trilead/ssh2/signature/DSASHA1Verify$InstanceHolder;->sInstance:Lcom/trilead/ssh2/signature/DSASHA1Verify;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;-><init>(Lcom/trilead/ssh2/signature/DSASHA1Verify-IA;)V

    sput-object v0, Lcom/trilead/ssh2/signature/DSASHA1Verify$InstanceHolder;->sInstance:Lcom/trilead/ssh2/signature/DSASHA1Verify;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
