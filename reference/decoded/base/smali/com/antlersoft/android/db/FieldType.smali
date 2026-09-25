.class public final enum Lcom/antlersoft/android/db/FieldType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/antlersoft/android/db/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/antlersoft/android/db/FieldType;

.field public static final enum BLOB:Lcom/antlersoft/android/db/FieldType;

.field public static final enum DEFAULT:Lcom/antlersoft/android/db/FieldType;

.field public static final enum INTEGER:Lcom/antlersoft/android/db/FieldType;

.field public static final enum INTEGER_PRIMARY_KEY:Lcom/antlersoft/android/db/FieldType;

.field public static final enum REAL:Lcom/antlersoft/android/db/FieldType;

.field public static final enum TEXT:Lcom/antlersoft/android/db/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/antlersoft/android/db/FieldType;

    const-string v1, "INTEGER_PRIMARY_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antlersoft/android/db/FieldType;->INTEGER_PRIMARY_KEY:Lcom/antlersoft/android/db/FieldType;

    new-instance v1, Lcom/antlersoft/android/db/FieldType;

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/antlersoft/android/db/FieldType;->INTEGER:Lcom/antlersoft/android/db/FieldType;

    new-instance v2, Lcom/antlersoft/android/db/FieldType;

    const-string v3, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/antlersoft/android/db/FieldType;->TEXT:Lcom/antlersoft/android/db/FieldType;

    new-instance v3, Lcom/antlersoft/android/db/FieldType;

    const-string v4, "BLOB"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/antlersoft/android/db/FieldType;->BLOB:Lcom/antlersoft/android/db/FieldType;

    new-instance v4, Lcom/antlersoft/android/db/FieldType;

    const-string v5, "REAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/antlersoft/android/db/FieldType;->REAL:Lcom/antlersoft/android/db/FieldType;

    new-instance v5, Lcom/antlersoft/android/db/FieldType;

    const-string v6, "DEFAULT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/antlersoft/android/db/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/antlersoft/android/db/FieldType;->DEFAULT:Lcom/antlersoft/android/db/FieldType;

    filled-new-array/range {v0 .. v5}, [Lcom/antlersoft/android/db/FieldType;

    move-result-object v0

    sput-object v0, Lcom/antlersoft/android/db/FieldType;->$VALUES:[Lcom/antlersoft/android/db/FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antlersoft/android/db/FieldType;
    .locals 1

    const-class v0, Lcom/antlersoft/android/db/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/antlersoft/android/db/FieldType;

    return-object p0
.end method

.method public static values()[Lcom/antlersoft/android/db/FieldType;
    .locals 1

    sget-object v0, Lcom/antlersoft/android/db/FieldType;->$VALUES:[Lcom/antlersoft/android/db/FieldType;

    invoke-virtual {v0}, [Lcom/antlersoft/android/db/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antlersoft/android/db/FieldType;

    return-object v0
.end method
