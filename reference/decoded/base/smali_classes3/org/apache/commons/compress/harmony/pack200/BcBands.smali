.class public Lorg/apache/commons/compress/harmony/pack200/BcBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "BcBands.java"


# static fields
.field private static final ALOAD_0:I = 0x2a

.field private static final IINC:I = 0x84

.field private static final INVOKEINTERFACE:I = 0xb9

.field private static final LOOKUPSWITCH:I = 0xab

.field private static final MULTIANEWARRAY:I = 0xc5

.field private static final TABLESWITCH:I = 0xaa

.field private static final WIDE:I = 0xc4

.field private static final endMarker:I = 0xff


# instance fields
.field private final bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcClassRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcDoubleRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final bcFieldRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final bcFloatRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPFloat;",
            ">;"
        }
    .end annotation
.end field

.field private final bcIMethodRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private bcInitRef:Ljava/util/List;

.field private final bcIntref:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
            ">;"
        }
    .end annotation
.end field

.field private final bcLabel:Ljava/util/List;

.field private final bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcLongRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
            ">;"
        }
    .end annotation
.end field

.field private final bcMethodRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field private final bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final bcStringRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPString;",
            ">;"
        }
    .end annotation
.end field

.field private final bcSuperField:Ljava/util/List;

.field private bcSuperMethod:Ljava/util/List;

.field private bcThisField:Ljava/util/List;

.field private bcThisMethod:Ljava/util/List;

.field private final bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private byteCodeOffset:I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private currentClass:Ljava/lang/String;

.field private currentNewClass:Ljava/lang/String;

.field private final labelsToOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private renumberedOffset:I

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private superClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/Segment;I)V
    .locals 1

    .line 85
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 47
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 48
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 49
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 50
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 51
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 52
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 55
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    .line 56
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIntref:Ljava/util/List;

    .line 57
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFloatRef:Ljava/util/List;

    .line 58
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLongRef:Ljava/util/List;

    .line 59
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcDoubleRef:Ljava/util/List;

    .line 60
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcStringRef:Ljava/util/List;

    .line 61
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFieldRef:Ljava/util/List;

    .line 64
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcMethodRef:Ljava/util/List;

    .line 65
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIMethodRef:Ljava/util/List;

    .line 68
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    .line 70
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperField:Ljava/util/List;

    .line 71
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    .line 72
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    .line 73
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    .line 77
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 79
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->labelsToOffsets:Ljava/util/Map;

    .line 82
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 86
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 87
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    return-void
.end method

.method private getIndexInClass(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BcBands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private getIndexInClassForConstructor(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BcBands$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private updateRenumbering()V
    .locals 3

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 214
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    .line 215
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method


# virtual methods
.method public finaliseBands()V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->getIndexInClass(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->getIndexInClass(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->getIndexInClass(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->getIndexInClassForConstructor(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 111
    const-string v0, "Writing byte code bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "bcCodes"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from bcCodes["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcCaseCount"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcCaseCount["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcCaseValue"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcCaseValue["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcByte"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcByte["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcShort"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcShort["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcLocal"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcLocal["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcLabel"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcLabel["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIntref:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcIntref"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcIntref["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIntref:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFloatRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcFloatRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcFloatRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFloatRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLongRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcLongRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcLongRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLongRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcDoubleRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcDoubleRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcDoubleRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcDoubleRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcStringRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcStringRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcStringRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcStringRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcClassRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcClassRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFieldRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcFieldRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcFieldRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFieldRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcMethodRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcMethodRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcMethodRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcMethodRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIMethodRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcIMethodRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcIMethodRef["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIMethodRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcThisField"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcThisField["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperField:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcSuperField"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcSuperField["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperField:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcThisMethod"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcThisMethod["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcSuperMethod"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from bcSuperMethod["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "bcInitRef"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from bcInitRef["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->currentClass:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->superClass:Ljava/lang/String;

    return-void
.end method

.method public visitEnd()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 222
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 223
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 224
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 225
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    if-eqz v1, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 229
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 232
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 233
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 234
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 237
    :cond_2
    instance-of v3, v2, Lorg/objectweb/asm/Label;

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->labelsToOffsets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 240
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    .line 241
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 244
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 245
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->labelsToOffsets:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->doBciRenumbering(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 246
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bciRenumbering:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->clear()V

    .line 247
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->labelsToOffsets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 248
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 249
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->renumberedOffset:I

    goto :goto_3

    .line 230
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mistake made with renumbering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 254
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 255
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    .line 257
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    const/16 v1, 0x2a

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 261
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x7

    .line 265
    :cond_1
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->currentClass:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x18

    .line 267
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisField:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, -0x7

    .line 274
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 278
    :cond_3
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFieldRef:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 3

    const/16 v0, 0x84

    const/16 v1, 0xff

    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 293
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 294
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 295
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 287
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 288
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 290
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 297
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void
.end method

.method public visitInsn(I)V
    .locals 1

    const/16 v0, 0xca

    if-ge p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 305
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 306
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-standard bytecode instructions not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitIntInsn(II)V
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 313
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcShort:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 314
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 319
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 320
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 322
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 327
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 329
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 330
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->labelsToOffsets:Ljava/util/Map;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->lastConstantHadWideIndex()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 364
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 366
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIntref:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 367
    :cond_1
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 369
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFloatRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 370
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 372
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcStringRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 373
    :cond_3
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-eqz v0, :cond_a

    .line 374
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 375
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 340
    :cond_4
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 341
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xed

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 343
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIntref:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_5
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xee

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 346
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcFloatRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_6
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    if-eqz v0, :cond_7

    .line 348
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 349
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLongRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_7
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    if-eqz v0, :cond_8

    .line 351
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 352
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcDoubleRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    :cond_8
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    if-eqz v0, :cond_9

    .line 354
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 355
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcStringRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :cond_9
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-eqz v0, :cond_b

    .line 357
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 358
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void

    .line 360
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Constant should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 3

    .line 382
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 385
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    const/4 p1, 0x0

    move v0, p1

    .line 386
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 387
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 388
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, p3, 0x1

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p3, 0x1

    rem-int/lit8 p1, p1, 0x4

    rsub-int/lit8 p1, p1, 0x4

    :goto_1
    add-int/lit8 p1, p1, 0x9

    .line 392
    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p3, p1

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 393
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 397
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x5

    .line 445
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 446
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPIMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p1

    .line 447
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcIMethodRef:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 p2, 0xb9

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto/16 :goto_2

    .line 403
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    const/16 v1, 0x2a

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 408
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->currentClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "<init>"

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x18

    .line 412
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcf

    if-ne p1, v0, :cond_1

    .line 414
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe6

    goto/16 :goto_1

    .line 416
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcThisMethod:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->superClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p1, p1, 0x26

    .line 421
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xdd

    if-ne p1, v0, :cond_3

    .line 423
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe7

    goto :goto_1

    .line 425
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcSuperMethod:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 p1, p1, -0x7

    .line 430
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 435
    :cond_5
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->currentNewClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcInitRef:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe8

    goto :goto_1

    .line 439
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcMethodRef:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 451
    :goto_2
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2

    .line 455
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 456
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    .line 457
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 458
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcByte:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 2

    .line 463
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v0, 0xaa

    invoke-virtual {p2, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 464
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 466
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseValue:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 467
    array-length p1, p4

    .line 468
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCaseCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 470
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabel:Ljava/util/List;

    aget-object v1, p4, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLabelRelativeOffsets:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 473
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    rem-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    rem-int/lit8 p2, p1, 0x4

    rsub-int/lit8 p2, p2, 0x4

    :goto_1
    add-int/lit8 p2, p2, 0xc

    .line 474
    array-length p3, p4

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 475
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2

    .line 480
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 481
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    .line 482
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 483
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcClassRef:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    .line 485
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->currentNewClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    .line 492
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 493
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 494
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 495
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 521
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x11

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 517
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0xe

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 513
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0xb

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 509
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 505
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x5

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    .line 497
    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->byteCodeOffset:I

    .line 498
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcCodes:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 499
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->bcLocal:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 525
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->updateRenumbering()V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
