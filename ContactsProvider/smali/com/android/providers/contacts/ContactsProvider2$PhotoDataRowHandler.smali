.class public Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1995
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1996
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "c"

    .prologue
    .line 2021
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2022
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    .line 2023
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v3}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2024
    return v0
.end method

.method public bridge synthetic getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1992
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 3
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 2000
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 2001
    .local v0, dataId:J
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->isNewRawContact(J)Z
    invoke-static {v2, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->access$500(Lcom/android/providers/contacts/ContactsProvider2;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2002
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2004
    :cond_0
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x1

    .line 2010
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2011
    .local v0, rawContactId:J
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2012
    const/4 v2, 0x0

    .line 2016
    :goto_0
    return v2

    .line 2015
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsProvider2;->access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 2016
    goto :goto_0
.end method
