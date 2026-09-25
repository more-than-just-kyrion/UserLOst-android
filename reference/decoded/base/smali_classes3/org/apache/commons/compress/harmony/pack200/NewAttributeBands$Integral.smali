.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Integral"
.end annotation


# instance fields
.field private final band:Ljava/util/List;

.field private final defaultCodec:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field private previousIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

.field private previousPValue:I

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    .line 166
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    .line 167
    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->defaultCodec:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    .line 171
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    .line 172
    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$100(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->defaultCodec:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 173
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    return-void
.end method

.method private renumberOffsetBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 256
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 257
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v3, "FB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v3, "SB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p1, v1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p1

    goto/16 :goto_6

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v3, "H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "FH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 186
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "SH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p1, v3, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p1

    goto/16 :goto_6

    .line 188
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "I"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "FI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "SI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 190
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v4, "V"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v5, "FV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v5, "SV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    .line 192
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v5, "PO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v5, "OS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 199
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v3, "P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v4

    .line 201
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 202
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {v1, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLabel(I)Lorg/objectweb/asm/Label;

    move-result-object v2

    .line 204
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousPValue:I

    goto :goto_1

    .line 205
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v3, "O"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v4

    .line 207
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 208
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {v1, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p2

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    iget v0, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousPValue:I

    add-int/2addr p2, v0

    .line 210
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLabel(I)Lorg/objectweb/asm/Label;

    move-result-object v2

    .line 211
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousPValue:I

    goto :goto_1

    .line 193
    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v4

    .line 194
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->getLength(C)I

    move-result v0

    .line 195
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {v1, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p2

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    iget v0, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousPValue:I

    add-int/2addr p2, v0

    .line 197
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLabel(I)Lorg/objectweb/asm/Label;

    move-result-object v2

    .line 198
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousPValue:I

    :goto_1
    move p1, p2

    goto :goto_6

    :cond_9
    :goto_2
    move p1, v4

    goto :goto_6

    .line 189
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    const/4 v0, 0x4

    invoke-static {p1, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p1

    goto :goto_6

    .line 185
    :cond_b
    :goto_4
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p1, v3, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    goto :goto_6

    .line 181
    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-static {p1, v1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    :goto_6
    if-nez v2, :cond_d

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 216
    :cond_d
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public latestValue()I
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 229
    const-string v0, "Writing new attribute bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->defaultCodec:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Wrote "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "PO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->tag:Ljava/lang/String;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 241
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 242
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 245
    :cond_1
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 248
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 238
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->previousIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->band:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->renumberOffsetBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method
