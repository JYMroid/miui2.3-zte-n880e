.class public Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;
.super Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonDataRowHandler"
.end annotation


# instance fields
.field private final mLabelColumn:Ljava/lang/String;

.field private final mTypeColumn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "mimetype"
    .parameter "typeColumn"
    .parameter "labelColumn"

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 1500
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 1501
    iput-object p3, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mTypeColumn:Ljava/lang/String;

    .line 1502
    iput-object p4, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mLabelColumn:Ljava/lang/String;

    .line 1503
    return-void
.end method

.method private enforceTypeAndLabel(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "augmented"
    .parameter "update"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1529
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v4

    .line 1530
    .local v1, hasType:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 1532
    .local v0, hasLabel:Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 1534
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be specified when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #hasLabel:Z
    .end local v1           #hasType:Z
    :cond_0
    move v1, v3

    .line 1529
    goto :goto_0

    .restart local v1       #hasType:Z
    :cond_1
    move v0, v3

    .line 1530
    goto :goto_1

    .line 1537
    .restart local v0       #hasLabel:Z
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1494
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
    .line 1494
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
    .line 1507
    invoke-direct {p0, p4, p4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->enforceTypeAndLabel(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1508
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

    .line 1514
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1515
    .local v1, dataId:J
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1516
    .local v0, augmented:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 1520
    :goto_0
    return v3

    .line 1519
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;->enforceTypeAndLabel(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1520
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    goto :goto_0
.end method
