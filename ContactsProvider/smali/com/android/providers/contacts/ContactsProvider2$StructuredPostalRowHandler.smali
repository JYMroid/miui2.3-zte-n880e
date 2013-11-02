.class public Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StructuredPostalRowHandler"
.end annotation


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private mSplitter:Lcom/android/providers/contacts/PostalSplitter;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/PostalSplitter;)V
    .locals 3
    .parameter
    .parameter "splitter"

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1434
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1461
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 1435
    iput-object p2, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 1436
    return-void
.end method

.method private fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "augmented"
    .parameter "update"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "data1"

    .line 1474
    const-string v5, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, unstruct:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v7

    .line 1477
    .local v3, touchedUnstruct:Z
    :goto_0
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    invoke-static {p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$1000(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v7

    .line 1479
    .local v2, touchedStruct:Z
    :goto_1
    new-instance v1, Lcom/android/providers/contacts/PostalSplitter$Postal;

    invoke-direct {v1}, Lcom/android/providers/contacts/PostalSplitter$Postal;-><init>()V

    .line 1481
    .local v1, postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1482
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1, v4}, Lcom/android/providers/contacts/PostalSplitter;->split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/PostalSplitter$Postal;->toValues(Landroid/content/ContentValues;)V

    .line 1491
    :cond_0
    :goto_2
    return-void

    .end local v1           #postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    .end local v2           #touchedStruct:Z
    .end local v3           #touchedUnstruct:Z
    :cond_1
    move v3, v6

    .line 1476
    goto :goto_0

    .restart local v3       #touchedUnstruct:Z
    :cond_2
    move v2, v6

    .line 1477
    goto :goto_1

    .line 1484
    .restart local v1       #postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    .restart local v2       #touchedStruct:Z
    :cond_3
    if-nez v3, :cond_0

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->STRUCTURED_FIELDS:[Ljava/lang/String;

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    invoke-static {p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->access$1100(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1487
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/PostalSplitter$Postal;->fromValues(Landroid/content/ContentValues;)V

    .line 1488
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1}, Lcom/android/providers/contacts/PostalSplitter;->join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, joined:Ljava/lang/String;
    const-string v5, "data1"

    invoke-virtual {p2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1430
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
    .line 1430
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 1440
    invoke-direct {p0, p4, p4}, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1441
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x0

    .line 1447
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1448
    .local v1, dataId:J
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1449
    .local v0, augmented:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return v3

    .line 1453
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1454
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 1455
    const/4 v3, 0x1

    goto :goto_0
.end method
