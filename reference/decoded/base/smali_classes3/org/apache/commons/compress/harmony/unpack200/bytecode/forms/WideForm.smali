.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;
.source "WideForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextWideByteCode()I

    move-result v0

    const/16 v1, 0x84

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;->setByteCodeOperandsFormat2(ILorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;->setByteCodeOperandsFormat1(ILorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V

    :goto_0
    return-void
.end method

.method protected setByteCodeOperandsFormat1(ILorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 2

    .line 65
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLocal()I

    move-result p3

    const/4 p4, 0x4

    .line 73
    new-array p4, p4, [I

    .line 78
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    const/4 v0, 0x1

    .line 81
    aput p1, p4, v0

    const/4 p1, 0x2

    .line 84
    invoke-virtual {p0, p3, p1, p4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;->setRewrite2Bytes(II[I)V

    .line 87
    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method

.method protected setByteCodeOperandsFormat2(ILorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 3

    .line 101
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLocal()I

    move-result p4

    .line 102
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextShort()I

    move-result p3

    const/4 v0, 0x6

    .line 110
    new-array v0, v0, [I

    .line 115
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 118
    aput p1, v0, v1

    const/4 p1, 0x2

    .line 121
    invoke-virtual {p0, p4, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;->setRewrite2Bytes(II[I)V

    const/4 p1, 0x4

    .line 125
    invoke-virtual {p0, p3, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/WideForm;->setRewrite2Bytes(II[I)V

    .line 129
    invoke-virtual {p2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method
