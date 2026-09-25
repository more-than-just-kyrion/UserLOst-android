.class Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond;
.super Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FroyoAndBeyond"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iiordanov/pubkeygenerator/EastAsianWidth-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond;-><init>()V

    return-void
.end method


# virtual methods
.method public measure([CII[BLandroid/graphics/Paint;I)V
    .locals 0

    sub-int/2addr p3, p2

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/text/AndroidCharacter;->getEastAsianWidths([CII[B)V

    return-void
.end method
