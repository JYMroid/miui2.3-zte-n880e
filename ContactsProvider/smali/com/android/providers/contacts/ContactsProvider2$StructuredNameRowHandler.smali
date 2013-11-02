.class public Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StructuredNameRowHandler"
.end annotation


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 3
    .parameter
    .parameter "splitter"

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1307
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1378
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 1308
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 1309
    return-void
.end method

.method private fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "augmented"
    .parameter "update"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "data1"

    const-string v10, "data11"

    const-string v9, "data10"

    .line 1390
    const-string v6, "data1"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1392
    .local v5, unstruct:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v8

    .line 1393
    .local v3, touchedUnstruct:Z
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    invoke-static {p2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$1000(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v8

    .line 1395
    .local v2, touchedStruct:Z
    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1396
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1397
    .local v1, name:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1, v5}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->toValues(Landroid/content/ContentValues;)V

    .line 1427
    .end local v1           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    :goto_2
    return-void

    .end local v2           #touchedStruct:Z
    .end local v3           #touchedUnstruct:Z
    :cond_1
    move v3, v7

    .line 1392
    goto :goto_0

    .restart local v3       #touchedUnstruct:Z
    :cond_2
    move v2, v7

    .line 1393
    goto :goto_1

    .line 1399
    .restart local v2       #touchedStruct:Z
    :cond_3
    if-nez v3, :cond_5

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    invoke-static {p2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$1100(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1405
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1406
    .restart local v1       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 1408
    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 1409
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 1410
    iget v4, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 1411
    .local v4, unadjustedFullNameStyle:I
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    iput v6, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 1412
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1, v8}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, joined:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p2, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v6, "data10"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    const-string v6, "data11"

    iget v6, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1417
    .end local v0           #joined:Ljava/lang/String;
    .end local v1           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v4           #unadjustedFullNameStyle:I
    :cond_5
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1418
    const-string v6, "data10"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1419
    const-string v6, "data10"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1422
    :cond_6
    const-string v6, "data11"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1423
    const-string v6, "data11"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1364
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1365
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1367
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 1369
    .local v0, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1370
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1371
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v5, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1372
    return v0
.end method

.method public bridge synthetic getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1303
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 16
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1313
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1315
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v6

    .line 1317
    .local v6, dataId:J
    const-string v3, "data1"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1318
    .local v8, name:Ljava/lang/String;
    const-string v3, "data10"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1319
    .local v15, fullNameStyle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v3, v0

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/NameSplitter;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v4

    move v9, v4

    :goto_0
    move-wide/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForStructuredName(JJLjava/lang/String;I)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v9, v0

    move-wide/from16 v10, p2

    move-wide v12, v6

    move-object/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 1324
    invoke-virtual/range {p0 .. p3}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p2

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1326
    return-wide v6

    .line 1319
    :cond_0
    const/4 v4, 0x0

    move v9, v4

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 18
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1332
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1333
    .local v8, dataId:J
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1335
    .local v6, rawContactId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v16

    .line 1336
    .local v16, augmented:Landroid/content/ContentValues;
    if-nez v16, :cond_0

    .line 1337
    const/4 v5, 0x0

    .line 1359
    :goto_0
    return v5

    .line 1340
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1342
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 1343
    const-string v5, "data1"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data9"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data8"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data7"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1347
    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1348
    const-string v5, "data1"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1349
    .local v10, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v5, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1350
    const-string v5, "data10"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1351
    .local v17, fullNameStyle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v11, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;
    invoke-static {v11}, Lcom/android/providers/contacts/ContactsProvider2;->access$700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/NameSplitter;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v11

    :goto_1
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForStructuredName(JJLjava/lang/String;I)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v11, v0

    move-wide v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 1357
    .end local v10           #name:Ljava/lang/String;
    .end local v17           #fullNameStyle:Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v5, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1359
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1351
    .restart local v10       #name:Ljava/lang/String;
    .restart local v17       #fullNameStyle:Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method
