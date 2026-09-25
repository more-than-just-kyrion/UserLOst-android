.class Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;
.super Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreFroyo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo$Holder;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private mWidths:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth;-><init>()V

    const/16 v0, 0x1000

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;->mWidths:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/iiordanov/pubkeygenerator/EastAsianWidth-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;-><init>()V

    return-void
.end method


# virtual methods
.method public measure([CII[BLandroid/graphics/Paint;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;->mWidths:[F

    invoke-virtual {p5, p1, p2, p3, v0}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    sub-int/2addr p3, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    .line 58
    iget-object p2, p0, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;->mWidths:[F

    aget p2, p2, p1

    float-to-int p2, p2

    if-eq p2, p6, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :cond_0
    const/4 p2, 0x4

    :goto_1
    int-to-byte p2, p2

    .line 60
    aput-byte p2, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
