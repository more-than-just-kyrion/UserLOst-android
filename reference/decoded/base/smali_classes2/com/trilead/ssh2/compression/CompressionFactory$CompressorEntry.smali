.class Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/compression/CompressionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompressorEntry"
.end annotation


# instance fields
.field compressorClass:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/compression/CompressionFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
