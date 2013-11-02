.class public Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1629
    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v1, "data2"

    const-string v2, "data3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1669
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1670
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1672
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 1674
    .local v0, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1675
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1676
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v5, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1677
    return v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1682
    packed-switch p1, :pswitch_data_0

    .line 1687
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 1683
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1684
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1685
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1686
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1682
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1634
    const-string v0, "data1"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1636
    .local v5, email:Ljava/lang/String;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v3

    .line 1638
    .local v3, dataId:J
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1639
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1640
    .local v6, address:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1643
    :cond_0
    return-wide v3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "data1"

    .line 1649
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1664
    :goto_0
    return v0

    .line 1653
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1655
    .local v3, dataId:J
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1657
    .local v1, rawContactId:J
    const-string v0, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1658
    .local v5, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1659
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    .line 1660
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1661
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .end local v1           #rawContactId:J
    .end local v3           #dataId:J
    .end local v5           #address:Ljava/lang/String;
    :cond_1
    move v0, v7

    .line 1664
    goto :goto_0
.end method
