.class abstract Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DataRowHandler"
.end annotation


# instance fields
.field protected final mMimetype:Ljava/lang/String;

.field protected mMimetypeId:J

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mimetype"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->mMimetype:Ljava/lang/String;

    .line 1142
    return-void
.end method

.method private fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getMimeTypeId()J

    move-result-wide v13

    .line 1219
    .local v13, mimeTypeId:J
    const-wide/16 v15, -0x1

    .line 1220
    .local v15, primaryId:J
    const/16 v17, -0x1

    .line 1221
    .local v17, primaryType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v2, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1222
    const-string v3, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id=? AND mimetype_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v2, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    move-wide v5, v15

    .line 1228
    .end local v15           #primaryId:J
    .local v5, primaryId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1229
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1230
    .local v11, dataId:J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1231
    .local v18, type:I
    const/4 v2, -0x1

    move/from16 v0, v17

    move v1, v2

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getTypeRank(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getTypeRank(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1232
    :cond_1
    move-wide v5, v11

    .line 1233
    move/from16 v17, v18

    goto :goto_0

    .line 1237
    .end local v11           #dataId:J
    .end local v18           #type:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1239
    const-wide/16 v2, -0x1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v2, v0

    move-wide/from16 v3, p2

    move-wide v7, v13

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setIsPrimary(JJJ)V
    invoke-static/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V

    .line 1242
    :cond_3
    return-void

    .line 1237
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 10
    .parameter "db"
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 1204
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1205
    .local v1, dataId:J
    const/4 v6, 0x2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1206
    .local v4, rawContactId:J
    const/4 v6, 0x3

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v3, v6

    .line 1207
    .local v3, primary:Z
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1208
    const-string v6, "data"

    const-string v7, "_id=?"

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1209
    .local v0, count:I
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1210
    const-string v6, "presence"

    const-string v7, "presence_raw_contact_id=?"

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1211
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 1212
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1214
    :cond_0
    return v0

    .end local v0           #count:I
    .end local v3           #primary:Z
    :cond_1
    move v3, v9

    .line 1206
    goto :goto_0
.end method

.method protected fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->isNewRawContact(J)Z
    invoke-static {v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->access$500(Lcom/android/providers/contacts/ContactsProvider2;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1255
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1257
    :cond_0
    return-void
.end method

.method public getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 19
    .parameter "db"
    .parameter "dataId"
    .parameter "update"

    .prologue
    .line 1266
    const/4 v11, 0x0

    .line 1267
    .local v11, changing:Z
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1268
    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v3, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1269
    const-string v4, "data"

    const/4 v5, 0x0

    const-string v6, "_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v3, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1272
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1273
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 1274
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v14

    .line 1275
    .local v14, key:Ljava/lang/String;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1276
    .local v17, value:Ljava/lang/String;
    if-nez v11, :cond_0

    move-object/from16 v0, p4

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1277
    move-object/from16 v0, p4

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1278
    .local v16, newValue:Ljava/lang/Object;
    if-nez v16, :cond_1

    const/4 v3, 0x0

    move-object v15, v3

    .line 1279
    .local v15, newString:Ljava/lang/String;
    :goto_1
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    or-int/2addr v11, v3

    .line 1281
    .end local v15           #newString:Ljava/lang/String;
    .end local v16           #newValue:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1278
    .restart local v16       #newValue:Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v15, v3

    goto :goto_1

    .line 1279
    .restart local v15       #newString:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1285
    .end local v13           #i:I
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #newString:Ljava/lang/String;
    .end local v16           #newValue:Ljava/lang/Object;
    .end local v17           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1287
    if-nez v11, :cond_4

    .line 1288
    const/4 v3, 0x0

    .line 1292
    :goto_3
    return-object v3

    .line 1285
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1291
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    move-object/from16 v3, v18

    .line 1292
    goto :goto_3
.end method

.method protected getMimeTypeId()J
    .locals 4

    .prologue
    .line 1145
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->mMimetypeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->mMimetypeId:J

    .line 1148
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->mMimetypeId:J

    return-wide v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 8
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1155
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1157
    .local v3, dataId:J
    const-string v0, "is_primary"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1158
    .local v7, primary:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getMimeTypeId()J

    move-result-wide v5

    move-wide v1, p2

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setIsPrimary(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V

    .line 1162
    :cond_0
    return-wide v3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 19
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1173
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1174
    .local v8, dataId:J
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1176
    .local v6, rawContactId:J
    const-string v5, "is_super_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "is_super_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getMimeTypeId()J

    move-result-wide v10

    .line 1178
    .local v10, mimeTypeId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setIsSuperPrimary(JJJ)V
    invoke-static/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->access$200(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setIsPrimary(JJJ)V
    invoke-static/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V

    .line 1182
    const-string v5, "is_super_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1183
    const-string v5, "is_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1191
    .end local v10           #mimeTypeId:J
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .end local v8           #dataId:J
    aput-object v8, v5, v10

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/contacts/ContactsProvider2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "data"

    const-string v9, "_id =?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v10, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v10

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1196
    :cond_1
    if-nez p4, :cond_2

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setRawContactDirty(J)V
    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->access$400(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1200
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 1184
    .restart local v8       #dataId:J
    :cond_3
    const-string v5, "is_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "is_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getMimeTypeId()J

    move-result-wide v17

    move-wide v13, v6

    move-wide v15, v8

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->setIsPrimary(JJJ)V
    invoke-static/range {v12 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->access$100(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V

    .line 1188
    const-string v5, "is_primary"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method
