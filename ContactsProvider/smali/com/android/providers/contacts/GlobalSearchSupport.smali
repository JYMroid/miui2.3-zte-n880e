.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;,
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestionQuery;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

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


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mItemClickAction:I

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdOrganization:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdSipPhone:J

.field private mMimeTypeIdStructuredName:J

.field private mMimeTypeIdsLoaded:Z

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "_id"

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 150
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "calls._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contactid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_count"

    const-string v2, "COUNT(calls._id)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "missed_count"

    const-string v2, "SUM(type=3)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "firewall_type"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "key_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "match_detail"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_string"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 5
    .parameter "contactsProvider"

    .prologue
    const/4 v3, 0x0

    const-string v4, "dialer_click_setting"

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput v3, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    .line 279
    new-instance v1, Lcom/android/providers/contacts/GlobalSearchSupport$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$1;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mSettingObserver:Landroid/database/ContentObserver;

    .line 290
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 299
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dialer_click_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    const-string v1, "dialer_click_setting"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    .line 304
    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/contacts/GlobalSearchSupport;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/GlobalSearchSupport;)Lcom/android/providers/contacts/ContactsProvider2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    return-object v0
.end method

.method private appendMimeTypeFilter(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    const-string v3, ","

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND +mimetype_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdEmail:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdOrganization:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdPhone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdStructuredName:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    return-void
.end method

.method private buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "searchClause"
    .parameter "projection"

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 490
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 492
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v2, -0x7

    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 494
    const/4 v2, -0x6

    const v3, 0x7f030005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 496
    const/16 v2, -0x9

    const v3, 0x7f030007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 498
    return-object v0
.end method

.method private buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 25
    .parameter "db"
    .parameter "selection"
    .parameter "projection"
    .parameter "searchClause"
    .parameter "limit"
    .parameter "mode"

    .prologue
    .line 562
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v23, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v24, suggestionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;>;"
    const/4 v4, 0x1

    const-string v5, "data  JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)  JOIN contacts ON (raw_contacts.contact_id = contacts._id) JOIN raw_contacts AS name_raw_contact ON (name_raw_contact_id=name_raw_contact._id)"

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "contacts.times_contacted DESC, display_name COLLATE LOCALIZED ASC"

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p5

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 568
    .local v13, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 569
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 570
    .local v14, contactId:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    .line 571
    .local v22, suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    if-nez v22, :cond_1

    .line 572
    new-instance v22, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    .end local v22           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, v22

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(J)V

    .line 573
    .restart local v22       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_1
    const/4 v3, 0x5

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move/from16 v18, v3

    .line 579
    .local v18, isSuperPrimary:Z
    :goto_1
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 580
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 583
    :cond_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_3

    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 584
    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 587
    :cond_3
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 588
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 591
    :cond_4
    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 593
    .local v19, mimetype:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdStructuredName:J

    move-wide v3, v0

    cmp-long v3, v19, v3

    if-nez v3, :cond_7

    .line 594
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->titleIsName:Z

    .line 627
    :cond_5
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    move-object v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x7

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 633
    .end local v14           #contactId:J
    .end local v18           #isSuperPrimary:Z
    .end local v19           #mimetype:J
    .end local v22           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 577
    .restart local v14       #contactId:J
    .restart local v22       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_6
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_1

    .line 595
    .restart local v18       #isSuperPrimary:Z
    .restart local v19       #mimetype:J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdOrganization:J

    move-wide v3, v0

    cmp-long v3, v19, v3

    if-nez v3, :cond_9

    .line 596
    if-nez v18, :cond_8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 597
    :cond_8
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->organization:Ljava/lang/String;

    goto :goto_2

    .line 599
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdEmail:J

    move-wide v3, v0

    cmp-long v3, v19, v3

    if-nez v3, :cond_b

    .line 600
    if-nez v18, :cond_a

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 601
    :cond_a
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->email:Ljava/lang/String;

    goto :goto_2

    .line 603
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdPhone:J

    move-wide v3, v0

    cmp-long v3, v19, v3

    if-nez v3, :cond_5

    .line 604
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 605
    .local v21, number:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 606
    and-int/lit8 v3, p6, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 608
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_c

    .line 609
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 610
    :cond_c
    if-eqz v18, :cond_d

    .line 611
    const-string v3, "%s|%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 614
    :cond_d
    const-string v3, "%s|%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 617
    :cond_e
    and-int/lit8 v3, p6, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 620
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 621
    :cond_f
    if-nez v18, :cond_10

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 622
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 633
    .end local v14           #contactId:J
    .end local v18           #isSuperPrimary:Z
    .end local v19           #mimetype:J
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_11
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 636
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12

    and-int/lit8 v3, p6, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 649
    .end local p0
    :goto_3
    return-object v3

    .line 640
    .restart local p0
    :cond_12
    if-nez p3, :cond_13

    .line 641
    sget-object p3, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    .line 644
    :cond_13
    new-instance v16, Landroid/database/MatrixCursor;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 645
    .local v16, cursor:Landroid/database/MatrixCursor;
    const/16 v17, 0x0

    .end local p0
    .local v17, i:I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_14

    .line 646
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 645
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_14
    move-object/from16 v3, v16

    .line 649
    goto :goto_3
.end method

.method private buildCursorForSearchSuggestionsBasedOnName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "db"
    .parameter "searchClause"
    .parameter "limit"
    .parameter "mode"

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->ensureMimetypeIdsLoaded()V

    .line 525
    invoke-direct {p0, p2, p4}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildSelection(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, selection:Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "searchClause"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "tel:"

    .line 452
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 456
    .local v4, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const v6, 0x609003f

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, s:Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 460
    .local v3, i:I
    if-gez v3, :cond_0

    .line 461
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :goto_0
    const v6, 0x6020049

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const v6, 0x7f030006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const v6, 0x602004c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v6, "_-1"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v1, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 482
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 483
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 485
    return-object v1

    .line 464
    .end local v0           #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :cond_0
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private buildSelection(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "searchClause"
    .parameter "mode"

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContactsRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->appendMimeTypeFilter(Ljava/lang/StringBuilder;)V

    .line 533
    const-string v1, " AND data.raw_contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 542
    :goto_0
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 543
    const-string v1, " AND has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeCursorIfNotNull(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_0
    return-void
.end method

.method private ensureMimetypeIdsLoaded()V
    .locals 3

    .prologue
    .line 307
    iget-boolean v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdsLoaded:Z

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 310
    .local v0, dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdStructuredName:J

    .line 311
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdOrganization:J

    .line 312
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdPhone:J

    .line 313
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdEmail:J

    .line 314
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdSipPhone:J

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mMimeTypeIdsLoaded:Z

    .line 317
    .end local v0           #dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :cond_0
    return-void
.end method

.method private getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 410
    const-string v2, " calls LEFT OUTER JOIN contacts ON (calls.contactid = contacts._id) "

    sget-object v3, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "normalized_number"

    move-object v7, v0

    :goto_0
    const-string v8, "date DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 413
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 416
    :cond_0
    return-object v10

    .line 410
    .end local v10           #c:Landroid/database/Cursor;
    :cond_1
    const-string v0, "contactid"

    move-object v7, v0

    goto :goto_0
.end method

.method private mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "number"
    .parameter "name"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 502
    array-length v2, p4

    new-array v1, v2, [Ljava/lang/Object;

    .line 503
    .local v1, list:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 505
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 506
    aget-object v2, p4, v0

    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 505
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    aget-object v2, p4, v0

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    aput-object p2, v1, v0

    goto :goto_1

    .line 510
    :cond_1
    aget-object v2, p4, v0

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    aput-object p3, v1, v0

    goto :goto_1

    .line 512
    :cond_2
    aget-object v2, p4, v0

    const-string v3, "call_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 515
    :cond_3
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 519
    :cond_4
    return-object v1
.end method

.method private queryT9(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "tables"
    .parameter
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "sortOrder"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 388
    .local p3, projectionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 389
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 391
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 393
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private queryT9Name(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 403
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->queryT9Name(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 397
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mItemClickAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->queryT9Number(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "lookupKey"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->ensureMimetypeIdsLoaded()V

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 444
    .local v7, contactId:J
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v10, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContactsRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/GlobalSearchSupport;->appendMimeTypeFilter(Ljava/lang/StringBuilder;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND contacts._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 441
    .end local v7           #contactId:J
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 442
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v7, -0x1

    .restart local v7       #contactId:J
    goto :goto_0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "db"
    .parameter "uri"
    .parameter "limit"

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v4, :cond_0

    .line 321
    const/4 v2, 0x0

    .line 330
    :goto_0
    return-object v2

    .line 324
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, searchClause:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 326
    .local v0, digitsOnly:Z
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 327
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 330
    :cond_1
    if-eqz v0, :cond_2

    move v2, v4

    :goto_1
    invoke-direct {p0, p1, v1, p3, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public handleT9SearchQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 336
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/T9SearchSupport;->loadAsync()V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 340
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/GlobalSearchSupport;->getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 383
    :goto_0
    return-object v5

    .line 343
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 345
    .local v14, searchClause:Ljava/lang/String;
    const/4 v11, 0x0

    .line 346
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    aget-char v5, v5, v6

    const/16 v6, 0x23

    if-ne v5, v6, :cond_2

    .line 347
    new-instance v12, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    move-object v0, v12

    move-object/from16 v1, p3

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 348
    .local v12, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v5, -0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v14

    move-object v3, v6

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 352
    move-object v11, v12

    .end local v12           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_1
    :goto_1
    move-object v5, v11

    .line 383
    goto :goto_0

    .line 353
    :cond_2
    if-eqz v14, :cond_4

    const-string v5, "#"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, searchForNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v15

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 359
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    .line 361
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 362
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1

    .line 365
    .end local v15           #searchForNumber:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Name(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 367
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 368
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 372
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    .line 374
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 375
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_1

    .line 377
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 380
    .local v13, numberCusor:Landroid/database/Cursor;
    invoke-static {v11, v13}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->merge(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_1
.end method
