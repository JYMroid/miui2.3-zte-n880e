.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "duration"

    const-string v6, "date"

    const-string v5, "contactid"

    const-string v4, "_id"

    const-string v3, "call_log"

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v1, "calls"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v1, "calls/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v1, "calls/filter/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v1, "calls_query"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v1, "date"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v1, "duration"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactid"

    const-string v1, "contactid"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "firewalltype"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 269
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 271
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 272
    .local v2, matchedUriId:I
    packed-switch v2, :pswitch_data_0

    .line 281
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :pswitch_0
    const-string v3, "calls"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, count:I
    if-lez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->notifyChange()V

    .line 278
    :cond_0
    return v0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const-string v2, "vnd.android.cursor.dir/calls"

    .line 166
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 167
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/calls"

    move-object v1, v2

    .line 175
    :goto_0
    return-object v1

    .line 171
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/calls"

    move-object v1, v2

    goto :goto_0

    .line 175
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/calls"

    move-object v1, v2

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 24
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 183
    const-string v11, "contactid"

    .line 185
    .local v11, contactIdColumn:Ljava/lang/String;
    const-string v6, "normalized_number"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    const-string v6, "number"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 187
    .local v19, normalizedNumber:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v21

    .line 188
    .local v21, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v21, :cond_0

    .line 189
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v19

    .line 191
    :cond_0
    const-string v6, "normalized_number"

    move-object/from16 v0, p2

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v19           #normalizedNumber:Ljava/lang/String;
    .end local v21           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 200
    :cond_2
    const-string v6, "number"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 201
    .local v20, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lmiui/telephony/PhoneNumberUtils;->formatNumberWithoutIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 204
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 205
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    .line 207
    const-string v17, "contacts_view._id"

    .line 208
    .local v17, idColumn:Ljava/lang/String;
    const-string v14, "contacts_view.display_name"

    .line 209
    .local v14, displayNameColumn:Ljava/lang/String;
    const/16 v18, 0x0

    .line 210
    .local v18, idIndex:I
    const/4 v15, 0x1

    .line 212
    .local v15, displayNameColumnIndex:I
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    .line 214
    .local v5, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 217
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    move-object v0, v12

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 219
    .local v16, id:Ljava/lang/Long;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 221
    .local v13, displayName:Ljava/lang/String;
    const-string v6, "contactid"

    move-object/from16 v0, p2

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v6, "name"

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v13           #displayName:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/Long;
    :goto_0
    if-eqz v12, :cond_3

    .line 228
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #displayNameColumn:Ljava/lang/String;
    .end local v15           #displayNameColumnIndex:I
    .end local v17           #idColumn:Ljava/lang/String;
    .end local v18           #idIndex:I
    .end local v20           #number:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v22

    .line 234
    .local v22, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v22, v6

    if-lez v6, :cond_6

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/CallLogProvider;->notifyChange()V

    .line 236
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 238
    :goto_1
    return-object v6

    .line 224
    .end local v22           #rowId:J
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #displayNameColumn:Ljava/lang/String;
    .restart local v15       #displayNameColumnIndex:I
    .restart local v17       #idColumn:Ljava/lang/String;
    .restart local v18       #idIndex:I
    .restart local v20       #number:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "contactid"

    invoke-static/range {v20 .. v20}, Lmiui/provider/CallLog;->makeFakeId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v6

    if-eqz v12, :cond_5

    .line 228
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6

    .line 238
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #displayNameColumn:Ljava/lang/String;
    .end local v15           #displayNameColumnIndex:I
    .end local v17           #idColumn:Ljava/lang/String;
    .end local v18           #idIndex:I
    .end local v20           #number:Ljava/lang/String;
    .restart local v22       #rowId:J
    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 288
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 290
    return-void
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 93
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 94
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "calls"

    invoke-direct {v2, v1, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 100
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 111
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 112
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 113
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 114
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 154
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :pswitch_0
    const-string v4, "calls"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 117
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 157
    .end local p1
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 158
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v4, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    move-object v12, v11

    .line 161
    .end local v11           #c:Landroid/database/Cursor;
    .local v12, c:Landroid/database/Cursor;
    :goto_1
    return-object v12

    .line 122
    .end local v12           #c:Landroid/database/Cursor;
    .restart local p1
    :pswitch_1
    const-string v4, "calls"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 123
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 124
    const-string v4, "calls._id="

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    .restart local p1
    :pswitch_2
    const-string v4, "calls"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 133
    .local v14, phoneNumber:Ljava/lang/String;
    const-string v4, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2, v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v4, :cond_1

    const-string v4, ", 1)"

    :goto_2
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v4, ", 0)"

    goto :goto_2

    .line 141
    .end local v14           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    if-eqz p5, :cond_3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 146
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT *,count(_id) FROM calls GROUP BY contactid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 147
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v4, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    move-object v12, v11

    .line 150
    .end local v11           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 144
    .end local v12           #c:Landroid/database/Cursor;
    :cond_3
    const-string p5, ""

    goto :goto_3

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 245
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 246
    .local v2, matchedUriId:I
    packed-switch v2, :pswitch_data_0

    .line 257
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :pswitch_0
    move-object v3, p3

    .line 260
    .local v3, where:Ljava/lang/String;
    :goto_0
    const-string v4, "calls"

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, count:I
    if-lez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->notifyChange()V

    .line 264
    :cond_0
    return v0

    .line 252
    .end local v0           #count:I
    .end local v3           #where:Ljava/lang/String;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
