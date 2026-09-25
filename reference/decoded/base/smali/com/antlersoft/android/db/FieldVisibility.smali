.class public final enum Lcom/antlersoft/android/db/FieldVisibility;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/antlersoft/android/db/FieldVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/antlersoft/android/db/FieldVisibility;

.field public static final enum DEFAULT:Lcom/antlersoft/android/db/FieldVisibility;

.field public static final enum PRIVATE:Lcom/antlersoft/android/db/FieldVisibility;

.field public static final enum PROTECTED:Lcom/antlersoft/android/db/FieldVisibility;

.field public static final enum PUBLIC:Lcom/antlersoft/android/db/FieldVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/antlersoft/android/db/FieldVisibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/antlersoft/android/db/FieldVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antlersoft/android/db/FieldVisibility;->PUBLIC:Lcom/antlersoft/android/db/FieldVisibility;

    new-instance v1, Lcom/antlersoft/android/db/FieldVisibility;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/antlersoft/android/db/FieldVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/antlersoft/android/db/FieldVisibility;->PROTECTED:Lcom/antlersoft/android/db/FieldVisibility;

    new-instance v2, Lcom/antlersoft/android/db/FieldVisibility;

    const-string v3, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/antlersoft/android/db/FieldVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/antlersoft/android/db/FieldVisibility;->DEFAULT:Lcom/antlersoft/android/db/FieldVisibility;

    new-instance v3, Lcom/antlersoft/android/db/FieldVisibility;

    const-string v4, "PRIVATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/antlersoft/android/db/FieldVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/antlersoft/android/db/FieldVisibility;->PRIVATE:Lcom/antlersoft/android/db/FieldVisibility;

    filled-new-array {v0, v1, v2, v3}, [Lcom/antlersoft/android/db/FieldVisibility;

    move-result-object v0

    sput-object v0, Lcom/antlersoft/android/db/FieldVisibility;->$VALUES:[Lcom/antlersoft/android/db/FieldVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/antlersoft/android/db/FieldVisibility;
    .locals 1

    const-class v0, Lcom/antlersoft/android/db/FieldVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/antlersoft/android/db/FieldVisibility;

    return-object p0
.end method

.method public static values()[Lcom/antlersoft/android/db/FieldVisibility;
    .locals 1

    sget-object v0, Lcom/antlersoft/android/db/FieldVisibility;->$VALUES:[Lcom/antlersoft/android/db/FieldVisibility;

    invoke-virtual {v0}, [Lcom/antlersoft/android/db/FieldVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antlersoft/android/db/FieldVisibility;

    return-object v0
.end method
