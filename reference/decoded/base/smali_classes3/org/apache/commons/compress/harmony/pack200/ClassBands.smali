.class public Lorg/apache/commons/compress/harmony/pack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "ClassBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;
    }
.end annotation


# static fields
.field private static final EMPTY_LONG_ARRAY:[J


# instance fields
.field private anySyntheticClasses:Z

.field private anySyntheticFields:Z

.field private anySyntheticMethods:Z

.field private final attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field private final classAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private classInnerClassesNameRUN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private classInnerClassesOuterRCN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final classReferencesInnerClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private final classSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final classSourceFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private class_InnerClasses_F:[I

.field private class_InnerClasses_N:[I

.field private class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private class_attr_calls:[I

.field private final class_field_count:[I

.field private final class_flags:[J

.field private final class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_interface_count:[I

.field private final class_method_count:[I

.field private final class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final codeAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final codeFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCatchPO:Ljava/util/List;

.field private final codeHandlerClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeHandlerEndPO:Ljava/util/List;

.field private final codeHandlerStartP:Ljava/util/List;

.field private codeHeaders:[I

.field private final codeLineNumberTableBciP:Ljava/util/List;

.field private final codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableBciP:Ljava/util/List;

.field private final codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableBciP:Ljava/util/List;

.field private final codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTypeTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private code_attr_calls:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fieldAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldConstantValueKQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final fieldSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private field_attr_calls:[I

.field private final field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final field_flags:[[J

.field private index:I

.field private final major_versions:[I

.field private final methodAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final methodSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private method_attr_calls:[I

.field private final method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final method_flags:[[J

.field private numMethodArgs:I

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private final stripDebug:Z

.field private final tempFieldDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFieldFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

.field private tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [J

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    .line 128
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 129
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    .line 143
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    .line 146
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 147
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 148
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    .line 155
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    .line 157
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 158
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    .line 163
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 164
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    .line 170
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    .line 214
    iput-boolean p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    .line 215
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 216
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 217
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    .line 218
    new-array p1, p2, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 219
    new-array p1, p2, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 220
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    .line 221
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 222
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    .line 223
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    .line 224
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 225
    new-array p1, p2, [[J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    .line 226
    new-array p1, p2, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 227
    new-array p1, p2, [[J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 229
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    aput-object v0, p4, p1

    .line 230
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    aput-object v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    .line 234
    new-array p1, p2, [J

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    .line 236
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 237
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x0

    move-object v5, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 238
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x1

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 239
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 240
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVA"

    const/4 v2, 0x2

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 241
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIA"

    const/4 v7, 0x2

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 242
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "RVPA"

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 243
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v6, "RIPA"

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 244
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "AD"

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->createNewAttributeBands()V

    return-void
.end method

.method protected static countArgs(Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0x28

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x29

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-lt v1, v0, :cond_8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v0, v1, :cond_7

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v5, :cond_0

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_0

    move v5, v3

    move v6, v5

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_2

    :cond_1
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    goto :goto_2

    :cond_4
    const/16 v8, 0x44

    if-eq v7, v8, :cond_6

    const/16 v8, 0x4a

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v4

    .line 81
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNewAttributeBands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getClassAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 559
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getMethodAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 562
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 564
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getFieldAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 565
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 567
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getCodeAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 568
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-void
.end method

.method private getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I
    .locals 4

    .line 837
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 839
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 840
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v3

    aput v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isInnerClass(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x24

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z
    .locals 2

    .line 863
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClass(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 865
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 868
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic lambda$currentClassReferencesInnerClass$1(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Ljava/util/Set;
    .locals 0

    .line 576
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$finaliseBands$2(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)I
    .locals 0

    .line 795
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1078
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1079
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1082
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1083
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1084
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1085
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1093
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1094
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1095
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1098
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1099
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1100
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1103
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1111
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1115
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1116
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1117
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1118
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1119
    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private sum([I)I
    .locals 4

    .line 1126
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private writeClassAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1133
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi()Z

    move-result v5

    const-string v1, "class_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1134
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from class_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1146
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classSourceFile"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1150
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from classSourceFile["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_enclosing_method_RC"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1154
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_enclosing_method_RC["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_EnclosingMethod_RDN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1158
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_EnclosingMethod_RDN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_Signature_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1162
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_Signature_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1166
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1168
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1169
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_RC"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1173
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_RC["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_F"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1177
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_F["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_outer_RCN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1181
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_outer_RCN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_InnerClasses_name_RUN"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1185
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_InnerClasses_name_RUN["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classFileVersionMinor"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1189
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from classFileVersionMinor["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "classFileVersionMajor"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1193
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from classFileVersionMajor["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1197
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCodeAttributeBands(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->longListToArray(Ljava/util/List;)[J

    move-result-object v3

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi()Z

    move-result v6

    const-string v2, "codeFlags"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1203
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from codeFlags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1209
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1213
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1217
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LineNumberTable_line"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1221
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LineNumberTable_line["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1225
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1229
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_span_O"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1233
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_span_O["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_name_RU"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1237
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_name_RU["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_type_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1241
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_type_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTable_slot"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1245
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTable_slot["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_N"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1249
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_N["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_bci_P"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1253
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_bci_P["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_span_O"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1257
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_span_O["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_name_RU"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1261
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_name_RU["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_type_RS"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1265
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from code_LocalVariableTypeTable_type_RS["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "code_LocalVariableTypeTable_slot"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1269
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from code_LocalVariableTypeTable_slot["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1273
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCodeBands(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "codeHeaders"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1279
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from codeHeaders["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeMaxStack"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1283
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeMaxStack["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeMaxLocals"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1287
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeMaxLocals["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerCount"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1291
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerCount["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerStartP"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerStartP["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerEndPO"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerEndPO["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerCatchPO"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1303
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from codeHandlerCatchPO["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "codeHandlerClass"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1307
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from codeHandlerClass["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeAttributeBands(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeFieldAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1314
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi()Z

    move-result v5

    const-string v1, "field_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1315
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from field_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "field_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1321
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from field_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "fieldConstantValueKQ"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1325
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from fieldConstantValueKQ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "fieldSignature"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1329
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from fieldSignature["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1333
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1334
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1335
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMethodAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1340
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi()Z

    move-result v5

    const-string v1, "method_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1341
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from method_flags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "method_attr_calls"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1347
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from method_attr_calls["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodExceptionNumber"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1351
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from methodExceptionNumber["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodExceptionClasses"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1355
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from methodExceptionClasses["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "methodSignature"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1359
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes from methodSignature["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1363
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1364
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1365
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1366
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1367
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1368
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_8

    const/high16 v2, 0x200000

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_2

    .line 295
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v6 .. v14}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 296
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 302
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 304
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 305
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 307
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_1

    .line 309
    :cond_3
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 311
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v3

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_4
    if-eqz p3, :cond_6

    .line 274
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 275
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 277
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_2

    .line 279
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 281
    :goto_2
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 283
    :cond_6
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 284
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 286
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_3

    .line 288
    :cond_7
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 290
    :goto_3
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/2addr v1, v3

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    const-wide/16 v1, 0x0

    if-eqz p3, :cond_a

    .line 255
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 256
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x200000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 257
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 259
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 260
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v3, v1, v2

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    goto :goto_4

    .line 263
    :cond_a
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 264
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x400000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_b

    .line 265
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 267
    :cond_b
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 268
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v3, v1, v2

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    :goto_4
    return-void
.end method

.method public addAnnotationDefault(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 319
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 320
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 321
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x2000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p3

    aput-object p3, v0, v1

    .line 326
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p5

    aput-object p5, p3, v0

    .line 327
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    iget p5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    array-length v0, p6

    aput v0, p3, p5

    .line 328
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v0, p6

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v0, p3, p5

    .line 329
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/ClassBands;[Ljava/lang/String;)V

    invoke-static {v0, p3}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 330
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    iget p5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput p1, p3, p5

    .line 331
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    int-to-long v0, p2

    aput-wide v0, p1, p5

    .line 332
    iget-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    if-nez p1, :cond_0

    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p2, "Synthetic"

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    :cond_0
    if-eqz p4, :cond_1

    .line 341
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide p5, p1, p2

    const-wide/32 v0, 0x80000

    or-long/2addr p5, v0

    aput-wide p5, p1, p2

    .line 342
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 6

    .line 348
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 350
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 352
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 353
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const/4 v4, 0x1

    shl-int p1, v4, p1

    int-to-long v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCode()V
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 362
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_0
    return-void
.end method

.method public addCodeAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 369
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 371
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 373
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 374
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 375
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 379
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 384
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 390
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 392
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    :cond_0
    if-eqz p5, :cond_1

    .line 400
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x20000

    or-int/2addr p1, p2

    .line 403
    :cond_1
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    if-nez p2, :cond_2

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 404
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p3, "Synthetic"

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 405
    iput-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    .line 407
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    int-to-long p3, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFieldAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 411
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 413
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 415
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 416
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 417
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 421
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHandler(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 426
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 427
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 5

    .line 434
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 442
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 443
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 448
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 449
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 451
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 454
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 456
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 463
    :cond_1
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 464
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p4, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public addMaxStack(II)V
    .locals 4

    .line 472
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 473
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 476
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 479
    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    sub-int/2addr p2, p1

    .line 480
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object p2

    .line 485
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 487
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    :cond_0
    if-eqz p5, :cond_2

    .line 491
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    array-length p4, p5

    invoke-virtual {p2, p4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 492
    array-length p2, p5

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    aget-object v0, p5, p4

    .line 493
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    or-int/2addr p1, p2

    :cond_2
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-eqz p2, :cond_3

    const p2, -0x20001

    and-int/2addr p1, p2

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    .line 501
    :cond_3
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    int-to-long p4, p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->countArgs(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    .line 503
    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    if-nez p2, :cond_4

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 504
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string p2, "Synthetic"

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    :cond_4
    return-void
.end method

.method public addMethodAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 7

    .line 510
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 512
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 514
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result p1

    .line 515
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 516
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-int p1, v2, p1

    int-to-long v5, p1

    or-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 520
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No suitable definition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameterAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    if-eqz p3, :cond_1

    .line 527
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_0

    .line 528
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 529
    invoke-virtual/range {v2 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 531
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 532
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x800000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_2

    .line 535
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 536
    invoke-virtual/range {v2 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 538
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 539
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addSourceFile(Ljava/lang/String;)V
    .locals 5

    .line 544
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v1, p1, v0

    const-wide/32 v3, 0x20000

    or-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public currentClassReferencesInnerClass(Lorg/apache/commons/compress/harmony/pack200/CPClass;)V
    .locals 3

    .line 573
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 574
    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public doBciRenumbering(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 8
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

    .line 582
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 583
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 584
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 585
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 586
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 587
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 588
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 589
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 591
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 592
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 595
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_1

    .line 597
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 598
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_2

    .line 600
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 601
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public endOfClass()V
    .locals 6

    .line 607
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 608
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v0, v1, v2

    .line 609
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    new-array v3, v0, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v1, v2

    .line 610
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    new-array v3, v0, [J

    aput-object v3, v1, v2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 612
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v3, v2

    .line 613
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 616
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v0, v2, v3

    .line 617
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    new-array v4, v0, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v2, v3

    .line 618
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    new-array v4, v0, [J

    aput-object v4, v2, v3

    :goto_1
    if-ge v1, v0, :cond_1

    .line 620
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v2, v1

    .line 621
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 623
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 624
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    return-void
.end method

.method public endOfMethod()V
    .locals 14

    .line 631
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 632
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 635
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-eqz v0, :cond_1

    .line 638
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 641
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 643
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 644
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 645
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    const-wide/16 v3, 0x4

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 647
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 648
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public finaliseBands()V
    .locals 10

    .line 659
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->getDefaultMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 660
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 661
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    aget v4, v4, v2

    if-eq v4, v0, :cond_0

    .line 663
    aget-wide v5, v3, v2

    const-wide/32 v7, 0x1000000

    or-long/2addr v5, v7

    aput-wide v5, v3, v2

    .line 664
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 665
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    move v0, v1

    move v2, v0

    .line 671
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 672
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    .line 673
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v5

    .line 674
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v6

    const/16 v7, 0x91

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    const/16 v9, 0xd1

    if-eq v3, v8, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v5, v6

    add-int/2addr v5, v9

    const/16 v3, 0x100

    if-ge v5, v3, :cond_5

    const/4 v3, 0x7

    if-ge v6, v3, :cond_5

    .line 693
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    goto :goto_2

    :cond_3
    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    if-ge v5, v9, :cond_5

    const/16 v3, 0x8

    if-ge v6, v3, :cond_5

    .line 686
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    goto :goto_2

    :cond_4
    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    if-ge v5, v7, :cond_5

    const/16 v3, 0xc

    if-ge v6, v3, :cond_5

    .line 679
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v5, v3, v0

    .line 700
    :cond_5
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aget v3, v3, v0

    if-eqz v3, :cond_6

    .line 703
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 704
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 705
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 707
    :cond_6
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags()Z

    move-result v3

    if-nez v3, :cond_7

    .line 708
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 713
    :cond_8
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 715
    :goto_4
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v5, v4

    if-ge v3, v5, :cond_d

    .line 716
    aget-object v4, v4, v3

    .line 717
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_c

    .line 720
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getInnerClassesForOuter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 722
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 723
    iget-object v6, v6, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 726
    :cond_9
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 727
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getIcTuple(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 728
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_a

    .line 730
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    .line 735
    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 736
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aget-wide v5, v4, v3

    const-wide/32 v7, 0x800000

    or-long/2addr v5, v7

    aput-wide v5, v4, v3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 740
    :cond_d
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    .line 741
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 742
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    move v0, v1

    .line 745
    :goto_7
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    .line 746
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 747
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v5, v4, v0

    .line 748
    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-nez v4, :cond_e

    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    if-nez v4, :cond_e

    .line 749
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    aput v1, v3, v0

    goto :goto_9

    .line 751
    :cond_e
    iget v4, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    if-nez v4, :cond_f

    .line 752
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    const/high16 v5, 0x10000

    aput v5, v4, v0

    goto :goto_8

    .line 754
    :cond_f
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    iget v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    aput v5, v4, v0

    .line 756
    :goto_8
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    iget-object v5, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    iget-object v3, v3, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 761
    :cond_10
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 762
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 763
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 764
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 766
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 767
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 769
    :cond_11
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 770
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 772
    :cond_12
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 773
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 775
    :cond_13
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 776
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 778
    :cond_14
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 779
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 781
    :cond_15
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 782
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 784
    :cond_16
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 785
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 787
    :cond_17
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 788
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 790
    :cond_18
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 791
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 795
    :cond_19
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;-><init>()V

    .line 796
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 797
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 798
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 799
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 801
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 802
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 803
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_a
    if-ge v8, v7, :cond_1a

    aget v9, v6, v8

    .line 804
    invoke-virtual {v0, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 808
    :cond_1b
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 809
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 810
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_b
    if-ge v8, v7, :cond_1c

    aget v9, v6, v8

    .line 811
    invoke-virtual {v3, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 815
    :cond_1d
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 816
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 817
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_c
    if-ge v8, v7, :cond_1e

    aget v9, v6, v8

    .line 818
    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 822
    :cond_1f
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 823
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 824
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_d
    if-ge v8, v7, :cond_20

    aget v9, v6, v8

    .line 825
    invoke-virtual {v4, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 830
    :cond_21
    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    .line 831
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    .line 832
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    .line 833
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    return-void
.end method

.method public isAnySyntheticClasses()Z
    .locals 1

    .line 847
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    return v0
.end method

.method public isAnySyntheticFields()Z
    .locals 1

    .line 851
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    return v0
.end method

.method public isAnySyntheticMethods()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    return v0
.end method

.method synthetic lambda$addClass$0$org-apache-commons-compress-harmony-pack200-ClassBands([Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    return-object p1
.end method

.method public numClassesProcessed()I
    .locals 1

    .line 874
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 879
    const-string v0, "Writing class bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "class_this"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 882
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes from class_this["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v0

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_super"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 886
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_super["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_interface_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 890
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_interface_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 894
    new-array v3, v0, [I

    .line 896
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v9, v4, v7

    if-eqz v9, :cond_0

    .line 898
    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    .line 899
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v12

    aput v12, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 905
    :cond_1
    const-string v4, "class_interface"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 906
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from class_interface["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_field_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 910
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_field_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_method_count"

    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 914
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes from class_method_count["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 918
    new-array v3, v0, [I

    move v4, v6

    move v5, v4

    .line 920
    :goto_2
    iget v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v4, v7, :cond_3

    move v7, v6

    .line 921
    :goto_3
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v8, v8, v4

    array-length v9, v8

    if-ge v7, v9, :cond_2

    .line 922
    aget-object v8, v8, v7

    .line 923
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 928
    :cond_3
    const-string v4, "field_descr"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 929
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes from field_descr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeFieldAttributeBands(Ljava/io/OutputStream;)V

    .line 934
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v0

    .line 935
    new-array v3, v0, [I

    move v4, v6

    move v5, v4

    .line 937
    :goto_4
    iget v7, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v4, v7, :cond_5

    move v7, v6

    .line 938
    :goto_5
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v8, v8, v4

    array-length v9, v8

    if-ge v7, v9, :cond_4

    .line 939
    aget-object v8, v8, v7

    .line 940
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 945
    :cond_5
    const-string v4, "method_descr"

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v3, v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 946
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from method_descr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeMethodAttributeBands(Ljava/io/OutputStream;)V

    .line 950
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeClassAttributeBands(Ljava/io/OutputStream;)V

    .line 951
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeBands(Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeCurrentClass()V
    .locals 20

    move-object/from16 v0, p0

    .line 960
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v4, 0x20000

    and-long v1, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 963
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v8, 0x40000

    and-long v1, v2, v8

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 965
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 967
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v10, 0x80000

    and-long v1, v2, v10

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 970
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v12, 0x200000

    and-long v1, v2, v12

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 971
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 973
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v14, 0x400000

    and-long v1, v2, v14

    cmp-long v1, v1, v6

    if-eqz v1, :cond_4

    .line 974
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 976
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 977
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long v16, v2, v10

    cmp-long v16, v16, v6

    if-eqz v16, :cond_5

    .line 979
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    and-long v8, v2, v4

    cmp-long v8, v8, v6

    if-eqz v8, :cond_6

    .line 982
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    and-long v8, v2, v12

    cmp-long v8, v8, v6

    if-eqz v8, :cond_7

    .line 985
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_7
    and-long/2addr v2, v14

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 988
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_8
    const-wide/32 v8, 0x40000

    goto :goto_0

    .line 991
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 992
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long v18, v8, v10

    cmp-long v2, v18, v6

    if-eqz v2, :cond_a

    .line 994
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    const-wide/32 v10, 0x40000

    and-long v16, v8, v10

    cmp-long v2, v16, v6

    if-eqz v2, :cond_b

    .line 997
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v16

    add-int/lit8 v10, v16, -0x1

    invoke-virtual {v2, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_b

    .line 999
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    and-long v2, v8, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 1003
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1004
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1005
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_c

    .line 1007
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1008
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1009
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1010
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1011
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1013
    :cond_c
    iget-boolean v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v2, :cond_f

    .line 1014
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1015
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_d

    .line 1017
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1018
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1020
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1021
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1022
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v11, v11, 0x1

    const-wide/32 v4, 0x20000

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    .line 1025
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_e

    .line 1027
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1028
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1030
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1031
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1032
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v11, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 1036
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_f

    .line 1038
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1039
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1040
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    and-long v2, v8, v12

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    .line 1046
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_10
    and-long v2, v8, v14

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    .line 1049
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_11
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_12

    .line 1052
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_12
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13

    .line 1055
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_13
    const-wide/32 v2, 0x2000000

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_14

    .line 1058
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    :cond_14
    const-wide/32 v4, 0x20000

    const-wide/32 v10, 0x80000

    goto/16 :goto_1

    .line 1061
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1062
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v3, v1, v2

    .line 1063
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 1064
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v3, v1, v2

    .line 1065
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    aput v4, v1, v2

    .line 1066
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aput-wide v6, v1, v2

    .line 1067
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1068
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1069
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1070
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1071
    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-lez v1, :cond_16

    add-int/lit8 v1, v1, -0x1

    .line 1072
    iput v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    :cond_16
    return-void
.end method
