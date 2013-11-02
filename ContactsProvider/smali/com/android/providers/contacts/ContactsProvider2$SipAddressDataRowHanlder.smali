.class public Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SipAddressDataRowHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1958
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1959
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 8
    .parameter "db"
    .parameter "c"

    .prologue
    .line 1984
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1985
    .local v3, rawContactId:J
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1986
    .local v1, dataId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v7

    .line 1987
    .local v7, count:I
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;->getMimeTypeId()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 1988
    return v7
.end method

.method public bridge synthetic getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1956
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
    .line 1963
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v1

    .line 1964
    .local v1, dataId:J
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;->getMimeTypeId()J

    move-result-wide v5

    const-string v3, "data1"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->onDataInserted(JJJLjava/lang/String;)V

    .line 1966
    return-wide v1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1972
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1973
    .local v3, rawContactId:J
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1974
    .local v1, dataId:J
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 1979
    :goto_0
    return v0

    .line 1977
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;->getMimeTypeId()J

    move-result-wide v5

    const-string v7, "data1"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->onDataUpdated(JJJLjava/lang/String;)V

    move v0, v8

    .line 1979
    goto :goto_0
.end method
