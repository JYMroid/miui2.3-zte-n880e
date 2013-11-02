.class public Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupMembershipRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1888
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1889
    return-void
.end method

.method private resolveGroupSourceIdInValues(JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 10
    .parameter "rawContactId"
    .parameter "db"
    .parameter "values"
    .parameter "isInsert"

    .prologue
    .line 1928
    const-string v0, "group_sourceid"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 1929
    .local v7, containsGroupSourceId:Z
    const-string v0, "data1"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 1930
    .local v6, containsGroupId:Z
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1936
    :cond_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    .line 1937
    if-eqz p5, :cond_2

    .line 1938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1946
    :cond_1
    if-eqz v7, :cond_2

    .line 1947
    const-string v0, "group_sourceid"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1948
    .local v4, sourceId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/providers/contacts/ContactsProvider2;->access$1300(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    move-object v1, p3

    move-wide v2, p1

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J
    invoke-static/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$1400(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1950
    .local v8, groupId:J
    const-string v0, "group_sourceid"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1951
    const-string v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1953
    .end local v4           #sourceId:Ljava/lang/String;
    .end local v8           #groupId:J
    :cond_2
    return-void
.end method

.method private updateVisibility(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1920
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1921
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1922
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(J)V

    .line 1924
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1913
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1914
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 1915
    .local v0, count:I
    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->updateVisibility(J)V

    .line 1916
    return v0
.end method

.method public bridge synthetic getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1885
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 8
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1893
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->resolveGroupSourceIdInValues(JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 1894
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v6

    .line 1895
    .local v6, dataId:J
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->updateVisibility(J)V

    .line 1896
    return-wide v6
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1902
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, rawContactId:J
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 1903
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->resolveGroupSourceIdInValues(JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 1904
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 1908
    :goto_0
    return v0

    .line 1907
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;->updateVisibility(J)V

    move v0, v6

    .line 1908
    goto :goto_0
.end method
