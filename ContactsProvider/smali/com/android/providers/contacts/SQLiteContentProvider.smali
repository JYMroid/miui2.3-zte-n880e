.class public abstract Lcom/android/providers/contacts/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 194
    const/4 v5, 0x0

    .line 195
    .local v5, ypCount:I
    const/4 v2, 0x0

    .line 196
    .local v2, opCount:I
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 197
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 199
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 201
    .local v1, numOperations:I
    new-array v4, v1, [Landroid/content/ContentProviderResult;

    .line 202
    .local v4, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 203
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x1f4

    if-lt v2, v6, :cond_0

    .line 204
    new-instance v6, Landroid/content/OperationApplicationException;

    const-string v7, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v6, v7, v5}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v4           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 222
    iget-object v7, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    throw v6

    .line 209
    .restart local v0       #i:I
    .restart local v1       #numOperations:I
    .restart local v4       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 210
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 212
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v7, 0xfa0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    add-int/lit8 v5, v5, 0x1

    .line 216
    :cond_1
    invoke-virtual {v3, p0, v4, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v4, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 222
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    return-object v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 116
    array-length v1, p2

    .line 117
    .local v1, numValues:I
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    :try_start_0
    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/providers/contacts/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v2           #result:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    .line 133
    return v1

    .line 129
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 168
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 170
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 172
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 173
    if-lez v1, :cond_0

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 181
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    .line 188
    :cond_1
    :goto_0
    return v1

    .line 178
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 183
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 184
    if-lez v1, :cond_1

    .line 185
    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 91
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 95
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    .line 111
    :cond_1
    :goto_0
    return-object v1

    .line 101
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onBeginTransaction()V

    .line 229
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->onTransactionBegin()V

    .line 242
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 233
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->onTranscationCommit()V

    .line 234
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 56
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->notifyChange()V

    .line 252
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->onTransactionEnd()V

    .line 253
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->onTranscationRollback()V

    .line 238
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 140
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 144
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 145
    if-lez v1, :cond_0

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    invoke-virtual {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onEndTransaction()V

    .line 161
    :cond_1
    :goto_0
    return v1

    .line 150
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 155
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    if-lez v1, :cond_1

    .line 157
    iput-boolean v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
