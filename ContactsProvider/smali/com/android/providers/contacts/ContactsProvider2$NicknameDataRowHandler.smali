.class public Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NicknameDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .parameter

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1695
    const-string v0, "vnd.android.cursor.item/nickname"

    const-string v1, "data2"

    const-string v2, "data3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1736
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1737
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1739
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 1741
    .local v0, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1742
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1743
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1744
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v5, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1745
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1700
    const-string v0, "data1"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1701
    .local v5, nickname:Ljava/lang/String;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v3

    .line 1703
    .local v3, dataId:J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1705
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForNickname(JJLjava/lang/String;)V

    .line 1706
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1707
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1709
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

    .line 1715
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1716
    .local v3, dataId:J
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1718
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1731
    :goto_0
    return v0

    .line 1722
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    const-string v0, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1724
    .local v5, nickname:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V
    invoke-static {v0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .line 1725
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForNickname(JJLjava/lang/String;)V

    .line 1726
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1727
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1728
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V

    .end local v5           #nickname:Ljava/lang/String;
    :cond_1
    move v0, v7

    .line 1731
    goto :goto_0
.end method
