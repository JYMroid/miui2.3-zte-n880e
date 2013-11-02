.class public Lcom/android/providers/contacts/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactAggregator$1;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneNumberQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    }
.end annotation


# static fields
.field private static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mAggregationExceptionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAggregationExceptionIdsValid:Z

.field private mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

.field private mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mEnabled:Z

.field private mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field private mMatcher:Lcom/android/providers/contacts/ContactMatcher;

.field private mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdPhoto:J

.field private mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactsMarkedForAggregation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsQueryByContactId:Ljava/lang/String;

.field private mRawContactsQueryByRawContactId:Ljava/lang/String;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSelectionArgs3:[Ljava/lang/String;

.field private mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    .line 87
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 92
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;)V
    .locals 9
    .parameter "contactsProvider"
    .parameter "contactsDatabaseHelper"
    .parameter "photoPriorityResolver"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 129
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 130
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 131
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 138
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 139
    new-instance v2, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    .line 140
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    .line 141
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    .line 817
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    .line 215
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 216
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 217
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 219
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 243
    .local v1, replaceAggregatePresenceSql:Ljava/lang/String;
    const-string v2, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 245
    const-string v2, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 251
    const-string v2, "DELETE FROM contacts WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 255
    const-string v2, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 259
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 265
    const-string v2, "UPDATE contacts SET photo_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 270
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 275
    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 280
    const-string v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 290
    const-string v2, "UPDATE contacts SET primary_number=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 301
    const-string v2, "UPDATE contacts SET number_count=(SELECT COUNT(DISTINCT data1) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 310
    const-string v2, "UPDATE contacts SET company=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 321
    const-string v2, "UPDATE contacts SET nickname=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 332
    const-string v2, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 338
    const-string v2, "UPDATE contacts SET custom_call_incoming_photo=(SELECT custom_call_incoming_photo FROM raw_contacts WHERE contact_id=contacts._id) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 344
    const-string v2, "UPDATE contacts SET miliao_status=(SELECT (CASE WHEN COUNT(data1)=0 THEN 0 ELSE 1 END) FROM contact_entities_view WHERE mimetype=\'vnd.android.cursor.item/vnd.com.xiaomi.channel.profile\' AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 350
    const-string v2, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 356
    const-string v2, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 361
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 366
    const-string v2, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 371
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, single_is_restricted=?, lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 372
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, single_is_restricted, lookup, in_visible_group)  VALUES (?,?,?,?,?,?,?,?,?,?,0)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 374
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    .line 375
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    .line 376
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    .line 379
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 383
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private declared-synchronized aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V
    .locals 17
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "currentContactId"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "values"

    .prologue
    .line 587
    monitor-enter p0

    const/4 v12, 0x0

    .line 589
    .local v12, aggregationMode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 590
    .local v11, aggModeObject:Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 591
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 594
    :cond_0
    const-wide/16 v7, -0x1

    .line 595
    .local v7, contactId:J
    const-wide/16 v13, -0x1

    .line 597
    .local v13, contactIdToSplit:J
    if-nez v12, :cond_7

    .line 598
    invoke-virtual/range {p8 .. p8}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 599
    invoke-virtual/range {p9 .. p9}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v7

    .line 602
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 603
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    .end local v7           #contactId:J
    move-result-wide v7

    .line 608
    .restart local v7       #contactId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-eqz v5, :cond_1

    cmp-long v5, v7, p6

    if-eqz v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 610
    move-wide v13, v7

    .line 611
    const-wide/16 v7, -0x1

    .line 618
    :cond_1
    const-wide/16 v15, 0x0

    .line 620
    .local v15, currentContactContentsCount:J
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_2

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v15

    .line 628
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-ne v12, v5, :cond_4

    .line 632
    :cond_3
    move-wide/from16 v7, p6

    .line 635
    :cond_4
    cmp-long v5, v7, p6

    if-nez v5, :cond_8

    .line 637
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->markAggregated(J)V

    .line 663
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateCalls(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 664
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_6

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->splitAutomaticallyAggregatedRawContacts(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    .end local v15           #currentContactContentsCount:J
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 614
    :cond_7
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1

    goto :goto_1

    .line 638
    .restart local v15       #currentContactContentsCount:J
    :cond_8
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_9

    .line 640
    :try_start_1
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 641
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-lez v5, :cond_5

    .line 642
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 587
    .end local v7           #contactId:J
    .end local v11           #aggModeObject:Ljava/lang/Integer;
    .end local v13           #contactIdToSplit:J
    .end local v15           #currentContactContentsCount:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 646
    .restart local v7       #contactId:J
    .restart local v11       #aggModeObject:Ljava/lang/Integer;
    .restart local v13       #contactIdToSplit:J
    .restart local v15       #currentContactContentsCount:J
    :cond_9
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-nez v5, :cond_a

    .line 648
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 655
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 659
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "db"
    .parameter "contactId"
    .parameter "statement"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1351
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1352
    return-void
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 44
    .parameter "db"
    .parameter "sql"
    .parameter "sqlArgs"
    .parameter "statement"

    .prologue
    .line 1359
    const-wide/16 v26, -0x1

    .line 1360
    .local v26, currentRawContactId:J
    const-wide/16 v17, -0x1

    .line 1361
    .local v17, bestPhotoId:J
    const/16 v30, 0x0

    .line 1362
    .local v30, foundSuperPrimaryPhoto:Z
    const/16 v37, -0x1

    .line 1363
    .local v37, photoPriority:I
    const/16 v43, 0x0

    .line 1364
    .local v43, totalRowCount:I
    const/16 v23, 0x0

    .line 1365
    .local v23, contactSendToVoicemail:I
    const/16 v20, 0x0

    .line 1366
    .local v20, contactCustomRingtone:Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 1367
    .local v21, contactLastTimeContacted:J
    const/16 v25, 0x0

    .line 1368
    .local v25, contactTimesContacted:I
    const/16 v24, 0x0

    .line 1369
    .local v24, contactStarred:I
    const/16 v40, 0x1

    .line 1370
    .local v40, singleIsRestricted:I
    const/16 v31, 0x0

    .line 1372
    .local v31, hasPhoneNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1375
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1377
    .local v19, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1378
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1379
    .local v5, rawContactId:J
    cmp-long v4, v5, v26

    if-eqz v4, :cond_7

    .line 1380
    move-wide/from16 v26, v5

    .line 1381
    add-int/lit8 v43, v43, 0x1

    .line 1384
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1385
    .local v7, displayName:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1386
    .local v8, displayNameSource:I
    const/16 v4, 0xc

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1387
    .local v36, nameVerified:I
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1388
    .local v16, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v9

    if-eqz v36, :cond_9

    const/4 v4, 0x1

    move v10, v4

    :goto_1
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1393
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1394
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move/from16 v39, v4

    .line 1396
    .local v39, sendToVoicemail:Z
    :goto_2
    if-eqz v39, :cond_1

    .line 1397
    add-int/lit8 v23, v23, 0x1

    .line 1401
    .end local v39           #sendToVoicemail:Z
    :cond_1
    if-nez v20, :cond_2

    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1403
    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1406
    :cond_2
    const/16 v4, 0x8

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1407
    .local v33, lastTimeContacted:J
    cmp-long v4, v33, v21

    if-lez v4, :cond_3

    .line 1408
    move-wide/from16 v21, v33

    .line 1411
    :cond_3
    const/16 v4, 0x9

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 1412
    .local v42, timesContacted:I
    move/from16 v0, v42

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 1413
    move/from16 v25, v42

    .line 1416
    :cond_4
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1417
    const/16 v24, 0x1

    .line 1421
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v43

    move v1, v4

    if-le v0, v1, :cond_b

    .line 1423
    const/16 v40, 0x0

    .line 1433
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v9, v0

    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide v12, v5

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1441
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    :cond_7
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1442
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1443
    .local v28, dataId:J
    const/16 v4, 0xe

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1444
    .local v35, mimetypeId:I
    const/16 v4, 0xf

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move/from16 v41, v4

    .line 1445
    .local v41, superPrimary:Z
    :goto_4
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    move-wide v11, v0

    cmp-long v4, v9, v11

    if-nez v4, :cond_d

    .line 1446
    if-nez v30, :cond_0

    .line 1447
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1448
    .restart local v16       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v38

    .line 1449
    .local v38, priority:I
    if-nez v41, :cond_8

    move/from16 v0, v38

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    .line 1450
    :cond_8
    move/from16 v37, v38

    .line 1451
    move-wide/from16 v17, v28

    .line 1452
    or-int v30, v30, v41

    goto/16 :goto_0

    .line 1388
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v38           #priority:I
    .end local v41           #superPrimary:Z
    .restart local v7       #displayName:Ljava/lang/String;
    .restart local v8       #displayNameSource:I
    .restart local v36       #nameVerified:I
    :cond_9
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_1

    .line 1394
    :cond_a
    const/4 v4, 0x0

    move/from16 v39, v4

    goto/16 :goto_2

    .line 1425
    .restart local v33       #lastTimeContacted:J
    .restart local v42       #timesContacted:I
    :cond_b
    const/16 v4, 0xb

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1427
    .local v32, isRestricted:I
    if-nez v32, :cond_6

    .line 1429
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 1444
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v32           #isRestricted:I
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    .restart local v28       #dataId:J
    .restart local v35       #mimetypeId:I
    :cond_c
    const/4 v4, 0x0

    move/from16 v41, v4

    goto :goto_4

    .line 1455
    .restart local v41       #superPrimary:Z
    :cond_d
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    move-wide v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v9, v11

    if-nez v4, :cond_0

    .line 1456
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1461
    .end local v5           #rawContactId:J
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v41           #superPrimary:Z
    :cond_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1464
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v5, v0

    iget-wide v9, v5, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1467
    const-wide/16 v9, -0x1

    cmp-long v4, v17, v9

    if-eqz v4, :cond_f

    .line 1468
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1473
    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v43

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const-wide/16 v9, 0x1

    :goto_6
    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1475
    const/4 v4, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1477
    const/4 v4, 0x5

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1479
    const/4 v4, 0x6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1481
    const/4 v4, 0x7

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1483
    const/16 v4, 0x8

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1485
    const/16 v4, 0x9

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1487
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1489
    return-void

    .line 1461
    :catchall_0
    move-exception v4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1470
    :cond_f
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 1473
    :cond_10
    const-wide/16 v9, 0x0

    goto :goto_6
.end method

.method private containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "db"
    .parameter "contactId"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 676
    if-nez p4, :cond_0

    .line 677
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type IS NULL  AND account_name IS NULL "

    .line 681
    .local v2, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 682
    .local v0, args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 693
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 695
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 696
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 698
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    .line 684
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=?"

    .line 688
    .restart local v2       #query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 689
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 690
    aput-object p4, v0, v5

    .line 691
    const/4 v3, 0x2

    aput-object p5, v0, v3

    goto :goto_0

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    move v3, v4

    .line 696
    goto :goto_1

    .line 698
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 759
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 760
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 762
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 763
    .local v0, contactId:J
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 764
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setPresenceContactId(JJ)V

    .line 765
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 766
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 767
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V

    .line 768
    return-void
.end method

.method private findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1940
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-direct {v8, v4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 1941
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 1944
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V

    .line 1946
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1949
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 1951
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1955
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1958
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "structuredNameBased"

    .prologue
    .line 1013
    invoke-virtual {p4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1014
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1015
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v0, "raw_contact_id=? AND name_type IN (0,1,2)"

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1021
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1023
    .local v9, normalizedName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1024
    .local v10, type:I
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1027
    .end local v9           #normalizedName:Ljava/lang/String;
    .end local v10           #type:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1015
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "raw_contact_id=?"

    move-object v3, v0

    goto :goto_0

    .line 1027
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1029
    return-void
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 12
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x2

    const-string v11, ","

    .line 1185
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1186
    .local v9, firstLetters:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$100(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 1187
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1188
    .local v7, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 1189
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1190
    .local v8, firstLetter:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(normalized_name GLOB \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, selection:Ljava/lang/String;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1186
    .end local v2           #selection:Ljava/lang/String;
    .end local v8           #firstLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1204
    .end local v7           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    :cond_1
    return-void
.end method

.method private markAggregated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 785
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V

    .line 786
    return-void
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "selection"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "algorithm"
    .parameter "limit"

    .prologue
    .line 1226
    const-string v1, "name_lookup INNER JOIN raw_contacts ON (name_lookup.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1230
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1232
    .local v11, contactId:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1238
    .local v5, nameType:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$100(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 1239
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1240
    .local v10, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v4, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v0, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1245
    .end local v5           #nameType:I
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    .end local v11           #contactId:Ljava/lang/Long;
    .end local v12           #i:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1247
    return-void

    .line 1245
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v3, -0x1

    .line 945
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 946
    .local v0, bestMatch:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    move-wide v2, v3

    .line 957
    :goto_0
    return-wide v2

    .line 949
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 951
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 952
    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    move-wide v2, v3

    .line 953
    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 957
    goto :goto_0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 17
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    move v3, v0

    if-nez v3, :cond_0

    .line 881
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    move-object v3, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 887
    const-wide/16 v3, -0x1

    .line 924
    :goto_0
    return-wide v3

    .line 890
    :cond_1
    const-string v4, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id1="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " OR "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "raw_contact_id2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 897
    .local v11, c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 898
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 899
    .local v16, type:I
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 900
    .local v14, rawContactId1:J
    const-wide/16 v12, -0x1

    .line 901
    .local v12, contactId:J
    cmp-long v3, p2, v14

    if-nez v3, :cond_4

    .line 902
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 904
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 912
    :cond_3
    :goto_2
    const-wide/16 v3, -0x1

    cmp-long v3, v12, v3

    if-eqz v3, :cond_2

    .line 913
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 914
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 921
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 907
    .restart local v12       #contactId:J
    .restart local v14       #rawContactId1:J
    .restart local v16       #type:I
    :cond_4
    const/4 v3, 0x3

    :try_start_1
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 909
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto :goto_2

    .line 916
    :cond_5
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 921
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 924
    const/16 v3, 0x64

    const/4 v4, 0x1

    move-object/from16 v0, p4

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v3

    goto/16 :goto_0
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 10
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 968
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 970
    .local v8, secondaryContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 971
    :cond_0
    const-wide/16 v0, -0x1

    .line 992
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 974
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 976
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 977
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 979
    if-eqz v7, :cond_2

    .line 980
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 987
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 992
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v9}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 831
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 832
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 837
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 839
    .local v9, rawContactId1:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 840
    .local v11, rawContactId2:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 844
    .end local v9           #rawContactId1:J
    .end local v11           #rawContactId2:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 847
    iput-boolean v13, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 848
    return-void
.end method

.method private processDisplayNameCanditate(JLjava/lang/String;IZZ)V
    .locals 5
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "writableAccount"
    .parameter "verified"

    .prologue
    .line 1499
    const/4 v0, 0x0

    .line 1500
    .local v0, replace:Z
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1502
    const/4 v0, 0x1

    .line 1525
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 1527
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1528
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput p4, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 1529
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 1530
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 1532
    :cond_1
    return-void

    .line 1503
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    .line 1506
    const/4 v0, 0x1

    goto :goto_0

    .line 1507
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-ne v1, p6, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ge v1, p4, :cond_4

    .line 1510
    const/4 v0, 0x1

    goto :goto_0

    .line 1511
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v1, p4, :cond_0

    .line 1512
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-nez v1, :cond_5

    if-eqz p5, :cond_5

    .line 1513
    const/4 v0, 0x1

    goto :goto_0

    .line 1514
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-ne v1, p5, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/android/providers/contacts/NameNormalizer;->compareComplexity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1518
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1847
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1848
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1851
    move-object/from16 v0, p6

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1852
    if-eqz v3, :cond_0

    .line 1853
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1850
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1860
    const-string v3, " AND _id IN "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1865
    :cond_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1866
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1869
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1870
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1873
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1877
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1878
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1879
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    .line 1880
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1881
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1886
    :cond_5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    move/from16 v1, p7

    if-le v0, v1, :cond_a

    .line 1887
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    .line 1891
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1892
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1895
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1896
    if-eqz v3, :cond_6

    .line 1897
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1894
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1901
    :cond_7
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id"

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1907
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1908
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1909
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1912
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1915
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1916
    const/4 v6, 0x0

    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 1917
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v7

    .line 1918
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aput v7, v5, v6

    .line 1916
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1921
    :cond_9
    new-instance v4, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v4, v3, v5}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v4

    :cond_a
    move-object/from16 v12, p6

    goto/16 :goto_3
.end method

.method private setContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 775
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 776
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 777
    return-void
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 793
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 794
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 795
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V

    .line 796
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 800
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 801
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 802
    return-void
.end method

.method private splitAutomaticallyAggregatedRawContacts(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    .line 707
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 708
    const-string v6, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 712
    .local v0, count:I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v3, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 733
    .local v3, query:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 736
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x1

    sub-int v6, v0, v6

    if-ge v2, v6, :cond_2

    .line 737
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 743
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 745
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 750
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_0

    .line 751
    invoke-virtual {p0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V

    goto :goto_0

    .line 740
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 741
    .local v4, rawContactId:J
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 748
    .end local v4           #rawContactId:J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private updateAggregatedPresence(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 575
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 576
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 577
    return-void
.end method

.method private updateCalls(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1989
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 1990
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1991
    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhoneNumberQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND contacts._id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1994
    if-nez v0, :cond_1

    .line 2019
    :cond_0
    return-void

    .line 2000
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 2001
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2002
    if-nez v2, :cond_2

    .line 2003
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2005
    :cond_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2008
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2011
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2012
    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    const-string v2, "contactid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2015
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2016
    const-string v2, "PHONE_NUMBERS_EQUAL(number,?)"

    .line 2017
    const-string v3, "calls"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p0, v4, v8

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1710
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1711
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1712
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1713
    return-void
.end method

.method private updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(J)V

    .line 1724
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1725
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1726
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1727
    return-void
.end method

.method private updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1717
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1718
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1719
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1720
    return-void
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v4, -0x1

    .line 1037
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1038
    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-virtual {p5, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 1039
    .local v0, bestMatch:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    move-wide v2, v0

    .line 1046
    :goto_0
    return-wide v2

    .line 1043
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1044
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    move-wide v2, v4

    .line 1046
    goto :goto_0
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1121
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1122
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v6, 0x2

    iget-wide v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    .line 1123
    const-string v4, "data dataA JOIN data dataB ON (dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1127
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1129
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithEmailMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1132
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1134
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 1077
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1081
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1083
    .local v1, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1085
    .local v3, nameTypeA:I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1086
    .local v5, nameTypeB:I
    const/4 v7, 0x0

    move-object v0, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1088
    if-ne v3, v10, :cond_0

    if-ne v5, v10, :cond_0

    .line 1090
    invoke-virtual {p4, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1094
    .end local v1           #contactId:J
    .end local v3           #nameTypeA:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameTypeB:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1096
    return-void
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1164
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1165
    const-string v4, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1169
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1171
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithPhoneNumberMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1174
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1177
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 1967
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1968
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1969
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1970
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 1971
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 1972
    return-void
.end method

.method private updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 7
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v6, "vnd.android.cursor.item/phone_v2"

    .line 1680
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1681
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1682
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1683
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1684
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1685
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1686
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1687
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1688
    return-void
.end method


# virtual methods
.method public aggregateContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 522
    const-wide/16 v10, 0x0

    .line 523
    .local v10, contactId:J
    const/4 v8, 0x0

    .line 524
    .local v8, accountName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 525
    .local v9, accountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 526
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 530
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 532
    .end local v10           #contactId:J
    .local v6, contactId:J
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 533
    .end local v9           #accountType:Ljava/lang/String;
    .local v4, accountType:Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 536
    .end local v8           #accountName:Ljava/lang/String;
    .local v5, accountName:Ljava/lang/String;
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 538
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;J)V

    .line 539
    return-void

    .line 536
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #contactId:J
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v10       #contactId:J
    :catchall_0
    move-exception v0

    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    move-wide v6, v10

    .end local v10           #contactId:J
    .restart local v6       #contactId:J
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v4           #accountType:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #contactId:J
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v10       #contactId:J
    :cond_0
    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    move-object v5, v8

    .end local v8           #accountName:Ljava/lang/String;
    .restart local v5       #accountName:Ljava/lang/String;
    move-wide v6, v10

    .end local v10           #contactId:J
    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "currentContactId"

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 550
    :cond_0
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 551
    .local v8, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 552
    .local v9, matcher:Lcom/android/providers/contacts/ContactMatcher;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, values:Landroid/content/ContentValues;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 554
    invoke-direct/range {v0 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public aggregateInTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 32
    .parameter "db"

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v18

    .line 415
    .local v18, count:I
    if-nez v18, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 420
    .local v30, start:J
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_2

    .line 421
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move/from16 v0, v18

    neg-int v0, v0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 426
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 428
    .local v29, selectionArgs:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 429
    .local v23, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "SELECT _id,contact_id, account_type,account_name FROM raw_contacts WHERE _id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 432
    .local v26, rawContactId:J
    if-lez v23, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v24, v23, 0x1

    .end local v23           #index:I
    .local v24, index:I
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v29, v23

    move/from16 v23, v24

    .end local v24           #index:I
    .restart local v23       #index:I
    goto :goto_1

    .line 439
    .end local v26           #rawContactId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v28, v0

    .line 442
    .local v28, rawContactIds:[J
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 443
    .local v17, contactIds:[J
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 444
    .local v15, accountTypes:[Ljava/lang/String;
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 445
    .local v14, accountNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 447
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 448
    const/16 v23, 0x0

    .line 449
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v28, v23

    .line 451
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v17, v23

    .line 452
    const/4 v3, 0x2

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v23

    .line 453
    const/4 v3, 0x3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 457
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 460
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 461
    aget-wide v5, v28, v21

    aget-object v7, v15, v21

    aget-object v8, v14, v21

    aget-wide v9, v17, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    move-object v13, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    .line 460
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 457
    .end local v21           #i:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 465
    .restart local v21       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v19, v3, v30

    .line 466
    .local v19, elapsedTime:J
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 468
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_0

    .line 469
    if-nez v18, :cond_7

    const-string v3, ""

    move-object/from16 v25, v3

    .line 470
    .local v25, performance:Ljava/lang/String;
    :goto_4
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 469
    .end local v25           #performance:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v4, v0

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms per contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_4
.end method

.method public clearPendingAggregations()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    return-void
.end method

.method public invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 822
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public markForAggregation(JIZ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"
    .parameter "force"

    .prologue
    .line 483
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    if-nez p3, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 491
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public markNewForAggregation(JI)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public onRawContactInsert(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 502
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 503
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 504
    .local v0, contactId:J
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactId(JJ)V

    .line 505
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 506
    return-void
.end method

.method public queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "qb"
    .parameter "projection"
    .parameter "contactId"
    .parameter "maxSuggestions"
    .parameter "filter"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1827
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v6

    .local v6, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p2

    move v7, p5

    move-object v8, p6

    .line 1828
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 390
    return-void
.end method

.method public updateAggregateData(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    .line 559
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 564
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 565
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 566
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 569
    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 570
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V

    goto :goto_0
.end method

.method protected updateCallIncomingPhoto(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1801
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1802
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1808
    :goto_0
    return-void

    .line 1806
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1807
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateCompany(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1691
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1692
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1696
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1624
    .line 1626
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1628
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1629
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move v8, v9

    .line 1632
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1634
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1635
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1636
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1637
    const/4 v5, 0x5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1639
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_0

    move v6, v10

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1644
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v8

    move v8, v0

    .line 1645
    goto :goto_0

    :cond_0
    move v6, v9

    .line 1639
    goto :goto_1

    .line 1647
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1650
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1652
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v11, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1653
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1656
    :cond_2
    if-eqz v8, :cond_3

    .line 1657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1659
    :cond_3
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->onDisplayNameUpdated(J)V

    .line 1660
    return-void

    .line 1647
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1615
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1616
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1620
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1667
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1668
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1677
    :goto_0
    return-void

    .line 1672
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1673
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1674
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1675
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1676
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1755
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1756
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1757
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const-string v7, "_id"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1760
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1769
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1772
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1777
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v9, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1779
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1780
    return-void

    .line 1775
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1746
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1747
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1751
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method protected updateMiliaoStatus(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 1811
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1816
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1817
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateNickname(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1700
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1701
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1705
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v11

    .line 1549
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1553
    :cond_0
    const-wide/16 v13, -0x1

    .line 1554
    const/4 v15, -0x1

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    .line 1558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contacts JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT NULL))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1564
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move v4, v15

    move-wide v5, v13

    .line 1567
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1568
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1569
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 1570
    :goto_2
    if-eqz v9, :cond_3

    move-wide v4, v7

    .line 1583
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1586
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1591
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1593
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v3

    invoke-virtual {v3, v11, v12, v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->onPhotoUpdated(JJ)V

    goto/16 :goto_0

    .line 1569
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 1575
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v10, v0

    invoke-virtual {v10, v9}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 1577
    if-le v9, v4, :cond_1

    move v4, v9

    move-wide v5, v7

    .line 1579
    goto :goto_1

    .line 1583
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1589
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    :cond_5
    move-wide v4, v5

    goto :goto_3
.end method

.method protected updateStarred(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1787
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1788
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1794
    :goto_0
    return-void

    .line 1792
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1793
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method
