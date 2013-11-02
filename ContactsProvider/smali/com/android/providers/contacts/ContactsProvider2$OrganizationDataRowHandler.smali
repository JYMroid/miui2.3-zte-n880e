.class public Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrganizationDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .parameter

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1543
    const-string v0, "vnd.android.cursor.item/organization"

    const-string v1, "data2"

    const-string v2, "data3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1605
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1606
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1608
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 1609
    .local v0, count:I
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1610
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1611
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1612
    return v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1617
    packed-switch p1, :pswitch_data_0

    .line 1621
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 1618
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1619
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1620
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1548
    const-string v0, "data1"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1549
    .local v5, company:Ljava/lang/String;
    const-string v0, "data4"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1551
    .local v6, title:Ljava/lang/String;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v3

    .line 1553
    .local v3, dataId:J
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1554
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1556
    return-wide v3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1562
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1563
    const/4 v0, 0x0

    .line 1600
    :goto_0
    return v0

    .line 1566
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 1567
    .local v7, containsCompany:Z
    const-string v0, "data4"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    .line 1568
    .local v8, containsTitle:Z
    if-nez v7, :cond_1

    if-eqz v8, :cond_2

    .line 1569
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1570
    .local v3, dataId:J
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1574
    .local v1, rawContactId:J
    if-eqz v7, :cond_3

    .line 1575
    const-string v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .local v5, company:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_4

    .line 1586
    const-string v0, "data4"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1595
    .end local v7           #containsCompany:Z
    .local v6, title:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1596
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1598
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1600
    .end local v1           #rawContactId:J
    .end local v3           #dataId:J
    .end local v5           #company:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1577
    .restart local v1       #rawContactId:J
    .restart local v3       #dataId:J
    .restart local v7       #containsCompany:Z
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1578
    const-string v0, "SELECT data1 FROM data WHERE _id=?"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v5}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #company:Ljava/lang/String;
    goto :goto_1

    .line 1588
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #containsCompany:Z
    aput-object v7, v0, v6

    .line 1589
    const-string v0, "SELECT data4 FROM data WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v0, v6}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #title:Ljava/lang/String;
    goto :goto_2
.end method
