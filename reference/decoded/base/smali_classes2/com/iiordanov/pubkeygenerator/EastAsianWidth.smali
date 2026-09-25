.class public abstract Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
.super Ljava/lang/Object;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;,
        Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/iiordanov/pubkeygenerator/EastAsianWidth;
    .locals 1

    .line 29
    sget-boolean v0, Lcom/iiordanov/pubkeygenerator/PreferenceConstants;->PRE_FROYO:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo$Holder;->-$$Nest$sfgetsInstance()Lcom/iiordanov/pubkeygenerator/EastAsianWidth$PreFroyo;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond$Holder;->-$$Nest$sfgetsInstance()Lcom/iiordanov/pubkeygenerator/EastAsianWidth$FroyoAndBeyond;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract measure([CII[BLandroid/graphics/Paint;I)V
.end method
