.class Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo$Holder;
.super Ljava/lang/Object;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;
    .locals 1

    sget-object v0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo$Holder;->sInstance:Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;-><init>(Lcom/iiordanov/pubkeygenerator/EastAsianWidth-IA;)V

    sput-object v0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo$Holder;->sInstance:Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
