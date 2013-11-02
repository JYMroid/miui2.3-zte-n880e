.class public Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1752
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const-string v1, "data2"

    const-string v2, "data3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    return-void
.end method

.method private computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 1828
    const/4 v0, 0x0

    .line 1829
    .local v0, normalizedNumber:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1830
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    :cond_0
    return-object v0
.end method

.method private fixNumberType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "number"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    const-string v3, "data2"

    .line 1836
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$1200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    const-string v1, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1841
    const-string v1, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1842
    .local v0, type:I
    if-eq v0, v4, :cond_0

    .line 1843
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1847
    .end local v0           #type:I
    :cond_2
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "number"
    .parameter "normalizedNumber"

    .prologue
    const-string v4, "phone_lookup"

    .line 1854
    if-eqz p6, :cond_0

    .line 1855
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1856
    .local v0, phoneValues:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1857
    const-string v1, "data_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1858
    const-string v1, "normalized_number"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v1, "min_match"

    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v1, "phone_lookup"

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1867
    .end local v0           #phoneValues:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1864
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1865
    const-string v1, "phone_lookup"

    const-string v1, "data_id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 18
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1814
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1815
    .local v8, dataId:J
    const/4 v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1817
    .local v6, rawContactId:J
    invoke-super/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v17

    .line 1819
    .local v17, count:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v15

    move-wide v11, v8

    move-wide v13, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1822
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v4, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1824
    return v17
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1871
    packed-switch p1, :pswitch_data_0

    .line 1880
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 1872
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1873
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1874
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1875
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1876
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1877
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1878
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1879
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 20
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1758
    const-string v4, "data1"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1759
    const-string v4, "data1"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1760
    .local v10, number:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->fixNumberType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1761
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1762
    .local v11, normalizedNumber:Ljava/lang/String;
    const-string v4, "data4"

    move-object/from16 v0, p4

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v4, "data1"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .local v8, dataId:J
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    .line 1766
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p0 .. p3}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1768
    if-eqz v11, :cond_0

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p2

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1771
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v17

    move-wide v13, v8

    move-wide/from16 v15, p2

    move-object/from16 v19, v10

    invoke-virtual/range {v12 .. v19}, Lcom/android/providers/contacts/T9SearchSupport;->onDataInserted(JJJLjava/lang/String;)V

    .line 1776
    .end local v10           #number:Ljava/lang/String;
    .end local v11           #normalizedNumber:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1777
    return-wide v8

    .line 1773
    .end local v8           #dataId:J
    :cond_1
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .restart local v8       #dataId:J
    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 20
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1783
    const/4 v10, 0x0

    .line 1784
    .local v10, number:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1785
    .local v11, normalizedNumber:Ljava/lang/String;
    const-string v4, "data1"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1786
    const-string v4, "data1"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1787
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->fixNumberType(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1788
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1789
    const-string v4, "data4"

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    const-string v4, "data1"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    :cond_0
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1794
    const/4 v4, 0x0

    .line 1809
    :goto_0
    return v4

    .line 1797
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1798
    .local v6, rawContactId:J
    const-string v4, "data1"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1799
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .local v8, dataId:J
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1800
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v4, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1803
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v17

    move-wide v13, v8

    move-wide v15, v6

    move-object/from16 v19, v10

    invoke-virtual/range {v12 .. v19}, Lcom/android/providers/contacts/T9SearchSupport;->onDataUpdated(JJJLjava/lang/String;)V

    .line 1808
    .end local v8           #dataId:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1809
    const/4 v4, 0x1

    goto :goto_0

    .line 1805
    :cond_2
    invoke-super/range {p0 .. p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    goto :goto_1
.end method
