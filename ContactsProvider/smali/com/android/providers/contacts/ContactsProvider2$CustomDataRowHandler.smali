.class public Lcom/android/providers/contacts/ContactsProvider2$CustomDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mimetype"

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$CustomDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1300
    return-void
.end method


# virtual methods
.method public bridge synthetic delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1296
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1296
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1296
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1296
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method
