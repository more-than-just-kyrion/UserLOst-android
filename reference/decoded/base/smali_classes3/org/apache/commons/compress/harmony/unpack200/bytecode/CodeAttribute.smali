.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.source "CodeAttribute.java"


# static fields
.field private static attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field public attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public byteCodeOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public byteCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;",
            ">;"
        }
    .end annotation
.end field

.field public codeLength:I

.field public exceptionTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field public maxLocals:I

.field public maxStack:I


# direct methods
.method public constructor <init>(II[BLorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Lorg/apache/commons/compress/harmony/unpack200/Segment;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;",
            ">;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    .line 47
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->maxLocals:I

    .line 48
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->maxStack:I

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    .line 50
    iput-object p6, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    .line 51
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, p1

    .line 53
    :goto_0
    array-length p6, p3

    if-ge p1, p6, :cond_3

    .line 54
    aget-byte p6, p3, p1

    and-int/lit16 p6, p6, 0xff

    invoke-static {p6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCode(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    move-result-object p6

    .line 57
    invoke-virtual {p6, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeIndex(I)V

    add-int/lit8 v0, p2, 0x1

    .line 59
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    invoke-virtual {p6, p5, p4, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->extractOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;Lorg/apache/commons/compress/harmony/unpack200/Segment;I)V

    .line 60
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    invoke-virtual {p6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    .line 62
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    invoke-virtual {p6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->hasMultipleByteCodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_0
    move p2, v0

    .line 73
    :goto_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    invoke-virtual {p6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    invoke-virtual {p6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result p6

    const/16 v0, 0xc4

    if-ne p6, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    .line 88
    invoke-virtual {p2, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->applyByteCodeTargetFixup(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic lambda$renumber$0(Ljava/util/List;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;)V
    .locals 0

    .line 138
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->renumber(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$resolve$1(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;)V
    .locals 0

    .line 144
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method static synthetic lambda$resolve$2(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method static synthetic lambda$resolve$3(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;)V
    .locals 0

    .line 146
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    return-void
.end method

.method public static setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    .line 31
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;->setCodeLength(I)V

    .line 97
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;->setCodeLength(I)V

    :cond_1
    return-void
.end method

.method protected getLength()I
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 106
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->getLengthIncludingHeader()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    add-int/lit8 v0, v0, 0xa

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;

    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->getCatchType()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object v0
.end method

.method protected getStartPCs()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->maxStack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 157
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->maxLocals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 159
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->codeLength:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    .line 161
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 165
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->exceptionTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;

    .line 166
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;->write(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 171
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->write(Ljava/io/DataOutputStream;)V

    goto :goto_2

    :cond_2
    return-void
.end method
