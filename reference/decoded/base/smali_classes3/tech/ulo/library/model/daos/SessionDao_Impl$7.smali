.class Ltech/ulo/library/model/daos/SessionDao_Impl$7;
.super Ljava/lang/Object;
.source "SessionDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/model/daos/SessionDao_Impl;->findActiveSessions()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ltech/ulo/library/model/entities/Session;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Ltech/ulo/library/model/daos/SessionDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1105
    iput-object p1, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    iput-object p2, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Session;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1108
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__db(Ltech/ulo/library/model/daos/SessionDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1110
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1111
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1112
    const-string v6, "filesystemId"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 1113
    const-string v7, "filesystemName"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1114
    const-string v8, "active"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1115
    const-string v9, "username"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1116
    const-string v10, "password"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1117
    const-string v11, "vncPassword"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1118
    const-string v12, "serviceType"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1119
    const-string v13, "port"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1120
    const-string v14, "pid"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1121
    const-string v15, "geometry"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1122
    const-string v3, "isAppsSession"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1123
    const-string v4, "isProtected"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    .line 1124
    const-string v4, "displayOrientation"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    .line 1125
    const-string v4, "displayLocked"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    .line 1126
    const-string v4, "displayScaling"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    .line 1127
    const-string v4, "displayRemember"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    .line 1128
    const-string v4, "soundSupport"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    .line 1129
    const-string v4, "micSupport"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    .line 1130
    const-string v4, "serviceTypeRemember"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    .line 1131
    const-string v4, "executionType"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    .line 1132
    const-string v4, "shareStorage"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    .line 1133
    const-string v4, "memoryMb"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    .line 1134
    const-string v4, "cpuAllCores"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    .line 1135
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1136
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1139
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1141
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v32, 0x0

    goto :goto_1

    .line 1144
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    .line 1147
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1149
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v35, 0x0

    goto :goto_2

    .line 1152
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    .line 1156
    :goto_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v29, 0x1

    if-eqz v3, :cond_2

    move/from16 v36, v29

    goto :goto_3

    :cond_2
    const/16 v36, 0x0

    .line 1159
    :goto_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v37, 0x0

    goto :goto_4

    .line 1162
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    .line 1165
    :goto_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v38, 0x0

    goto :goto_5

    .line 1168
    :cond_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v38, v3

    .line 1171
    :goto_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v39, 0x0

    goto :goto_6

    .line 1174
    :cond_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    .line 1178
    :goto_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v60, v0

    const/4 v3, 0x0

    goto :goto_7

    .line 1181
    :cond_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v60, v0

    .line 1183
    :goto_7
    iget-object v0, v1, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v0}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__serviceTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ServiceTypeConverter;

    move-result-object v0

    invoke-virtual {v0, v3}, Ltech/ulo/library/model/entities/ServiceTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ServiceType;

    move-result-object v40

    .line 1185
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1187
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 1189
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, v28

    const/16 v45, 0x0

    goto :goto_8

    .line 1192
    :cond_7
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    move/from16 v0, v28

    .line 1196
    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v3, v16

    move/from16 v46, v29

    goto :goto_9

    :cond_8
    move/from16 v3, v16

    const/16 v46, 0x0

    .line 1200
    :goto_9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v28, v0

    move/from16 v0, v17

    if-eqz v16, :cond_9

    move/from16 v47, v29

    goto :goto_a

    :cond_9
    const/16 v47, 0x0

    .line 1203
    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v17, v0

    move/from16 v0, v18

    .line 1206
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v18, v0

    move/from16 v0, v19

    if-eqz v16, :cond_a

    move/from16 v49, v29

    goto :goto_b

    :cond_a
    const/16 v49, 0x0

    .line 1209
    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v50

    move/from16 v19, v0

    move/from16 v0, v20

    .line 1212
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v20, v0

    move/from16 v0, v21

    if-eqz v16, :cond_b

    move/from16 v51, v29

    goto :goto_c

    :cond_b
    const/16 v51, 0x0

    .line 1216
    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v21, v0

    move/from16 v0, v22

    if-eqz v16, :cond_c

    move/from16 v52, v29

    goto :goto_d

    :cond_c
    const/16 v52, 0x0

    .line 1220
    :goto_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v22, v0

    move/from16 v0, v23

    if-eqz v16, :cond_d

    move/from16 v53, v29

    goto :goto_e

    :cond_d
    const/16 v53, 0x0

    .line 1224
    :goto_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v23, v0

    move/from16 v0, v24

    if-eqz v16, :cond_e

    move/from16 v54, v29

    goto :goto_f

    :cond_e
    const/16 v54, 0x0

    .line 1228
    :goto_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v24, v0

    move/from16 v16, v3

    const/4 v0, 0x0

    goto :goto_10

    .line 1231
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v16, v3

    .line 1233
    :goto_10
    iget-object v3, v1, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->this$0:Ltech/ulo/library/model/daos/SessionDao_Impl;

    invoke-static {v3}, Ltech/ulo/library/model/daos/SessionDao_Impl;->-$$Nest$fget__executionTypeConverter(Ltech/ulo/library/model/daos/SessionDao_Impl;)Ltech/ulo/library/model/entities/ExecutionTypeConverter;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltech/ulo/library/model/entities/ExecutionTypeConverter;->fromString(Ljava/lang/String;)Ltech/ulo/library/model/entities/ExecutionType;

    move-result-object v55

    move/from16 v0, v25

    .line 1236
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_10

    move/from16 v3, v26

    move/from16 v56, v29

    goto :goto_11

    :cond_10
    move/from16 v3, v26

    const/16 v56, 0x0

    .line 1239
    :goto_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 v25, v0

    move/from16 v0, v27

    .line 1242
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v27, v0

    if-eqz v26, :cond_11

    move/from16 v59, v29

    goto :goto_12

    :cond_11
    const/16 v59, 0x0

    .line 1244
    :goto_12
    new-instance v0, Ltech/ulo/library/model/entities/Session;

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v59}, Ltech/ulo/library/model/entities/Session;-><init>(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ulo/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ulo/library/model/entities/ExecutionType;ZJZ)V

    .line 1245
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v26, v3

    move/from16 v0, v60

    goto/16 :goto_0

    .line 1249
    :cond_12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1250
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 1255
    iget-object v0, p0, Ltech/ulo/library/model/daos/SessionDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
