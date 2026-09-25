.class public abstract Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;
.super Lcom/antlersoft/android/dbimpl/IdImplementationBase;
.source "AbstractMetaKeyBean.java"

# interfaces
.implements Lcom/iiordanov/bVNC/input/IMetaKey;


# static fields
.field public static final GEN_COUNT:I = 0x8

.field public static GEN_CREATE:Ljava/lang/String; = "CREATE TABLE META_KEY (_id INTEGER PRIMARY KEY AUTOINCREMENT,METALISTID INTEGER,KEYDESC TEXT,METAFLAGS INTEGER,MOUSECLICK INTEGER,MOUSEBUTTONS INTEGER,KEYSYM INTEGER,SHORTCUT TEXT)"

.field public static final GEN_FIELD_KEYDESC:Ljava/lang/String; = "KEYDESC"

.field public static final GEN_FIELD_KEYSYM:Ljava/lang/String; = "KEYSYM"

.field public static final GEN_FIELD_METAFLAGS:Ljava/lang/String; = "METAFLAGS"

.field public static final GEN_FIELD_METALISTID:Ljava/lang/String; = "METALISTID"

.field public static final GEN_FIELD_MOUSEBUTTONS:Ljava/lang/String; = "MOUSEBUTTONS"

.field public static final GEN_FIELD_MOUSECLICK:Ljava/lang/String; = "MOUSECLICK"

.field public static final GEN_FIELD_SHORTCUT:Ljava/lang/String; = "SHORTCUT"

.field public static final GEN_FIELD__ID:Ljava/lang/String; = "_id"

.field public static final GEN_ID_KEYDESC:I = 0x2

.field public static final GEN_ID_KEYSYM:I = 0x6

.field public static final GEN_ID_METAFLAGS:I = 0x3

.field public static final GEN_ID_METALISTID:I = 0x1

.field public static final GEN_ID_MOUSEBUTTONS:I = 0x5

.field public static final GEN_ID_MOUSECLICK:I = 0x4

.field public static final GEN_ID_SHORTCUT:I = 0x7

.field public static final GEN_ID__ID:I = 0x0

.field public static final GEN_TABLE_NAME:Ljava/lang/String; = "META_KEY"


# instance fields
.field private gen__Id:J

.field private gen_keyDesc:Ljava/lang/String;

.field private gen_keySym:I

.field private gen_metaFlags:I

.field private gen_metaListId:J

.field private gen_mouseButtons:I

.field private gen_mouseClick:Z

.field private gen_shortcut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/antlersoft/android/dbimpl/IdImplementationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public Gen_columnIndices(Landroid/database/Cursor;)[I
    .locals 4

    const/16 v0, 0x8

    .line 90
    new-array v0, v0, [I

    .line 91
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 94
    const-string v1, "_ID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    .line 96
    :cond_0
    const-string v1, "METALISTID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 97
    const-string v1, "KEYDESC"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 98
    const-string v1, "METAFLAGS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 99
    const-string v1, "MOUSECLICK"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 100
    const-string v1, "MOUSEBUTTONS"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 101
    const-string v1, "KEYSYM"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 102
    const-string v1, "SHORTCUT"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x7

    aput p1, v0, v1

    return-object v0
.end method

.method public Gen_getValues()Landroid/content/ContentValues;
    .locals 3

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    iget-wide v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen__Id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-wide v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaListId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "METALISTID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "KEYDESC"

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keyDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "METAFLAGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseClick:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "MOUSECLICK"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseButtons:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MOUSEBUTTONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keySym:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEYSYM"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "SHORTCUT"

    iget-object v2, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_shortcut:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public Gen_populate(Landroid/content/ContentValues;)V
    .locals 2

    .line 140
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen__Id:J

    .line 141
    const-string v0, "METALISTID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaListId:J

    .line 142
    const-string v0, "KEYDESC"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keyDesc:Ljava/lang/String;

    .line 143
    const-string v0, "METAFLAGS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaFlags:I

    .line 144
    const-string v0, "MOUSECLICK"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseClick:Z

    .line 145
    const-string v0, "MOUSEBUTTONS"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseButtons:I

    .line 146
    const-string v0, "KEYSYM"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keySym:I

    .line 147
    const-string v0, "SHORTCUT"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_shortcut:Ljava/lang/String;

    return-void
.end method

.method public Gen_populate(Landroid/database/Cursor;[I)V
    .locals 4

    const/4 v0, 0x0

    .line 110
    aget v1, p2, v0

    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    aget v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen__Id:J

    :cond_0
    const/4 v1, 0x1

    .line 113
    aget v2, p2, v1

    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    aget v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaListId:J

    :cond_1
    const/4 v2, 0x2

    .line 116
    aget v3, p2, v2

    if-ltz v3, :cond_2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keyDesc:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x3

    .line 119
    aget v3, p2, v2

    if-ltz v3, :cond_3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaFlags:I

    :cond_3
    const/4 v2, 0x4

    .line 122
    aget v3, p2, v2

    if-ltz v3, :cond_5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 123
    aget v2, p2, v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseClick:Z

    :cond_5
    const/4 v0, 0x5

    .line 125
    aget v1, p2, v0

    if-ltz v1, :cond_6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 126
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseButtons:I

    :cond_6
    const/4 v0, 0x6

    .line 128
    aget v1, p2, v0

    if-ltz v1, :cond_7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 129
    aget v0, p2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keySym:I

    :cond_7
    const/4 v0, 0x7

    .line 131
    aget v1, p2, v0

    if-ltz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 132
    aget p2, p2, v0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_shortcut:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public Gen_tableName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "META_KEY"

    return-object v0
.end method

.method public getKeyDesc()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keyDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySym()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keySym:I

    return v0
.end method

.method public getMetaFlags()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaFlags:I

    return v0
.end method

.method public getMetaListId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaListId:J

    return-wide v0
.end method

.method public getMouseButtons()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseButtons:I

    return v0
.end method

.method public getShortcut()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_shortcut:Ljava/lang/String;

    return-object v0
.end method

.method public get_Id()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen__Id:J

    return-wide v0
.end method

.method public isMouseClick()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseClick:Z

    return v0
.end method

.method public setKeyDesc(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keyDesc:Ljava/lang/String;

    return-void
.end method

.method public setKeySym(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_keySym:I

    return-void
.end method

.method public setMetaFlags(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaFlags:I

    return-void
.end method

.method public setMetaListId(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_metaListId:J

    return-void
.end method

.method public setMouseButtons(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseButtons:I

    return-void
.end method

.method public setMouseClick(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_mouseClick:Z

    return-void
.end method

.method public setShortcut(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen_shortcut:Ljava/lang/String;

    return-void
.end method

.method public set_Id(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->gen__Id:J

    return-void
.end method
