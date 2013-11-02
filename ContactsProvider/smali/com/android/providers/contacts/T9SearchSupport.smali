.class public Lcom/android/providers/contacts/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$3;,
        Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;,
        Lcom/android/providers/contacts/T9SearchSupport$Operation;,
        Lcom/android/providers/contacts/T9SearchSupport$IdType;,
        Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;,
        Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;,
        Lcom/android/providers/contacts/T9SearchSupport$CachedResults;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;,
        Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;,
        Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

.field private static final NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

.field private static final NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

.field private static sInstance:Lcom/android/providers/contacts/T9SearchSupport;

.field private static sPhoneMimeTypeId:J

.field private static sQueryT9ItemSql:Ljava/lang/String;

.field private static sSipMimeTypeId:J


# instance fields
.field private mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field private mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field private mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInitializeLock:Ljava/lang/Object;

.field private mInitialized:Ljava/lang/Boolean;

.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSortedFlagArray:[Z

.field private mNameT9SearchItemListArray:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberSortedFlagArray:[Z

.field private mNumberT9SearchItemListArray:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

.field mPendingOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$Operation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSorted:Z

.field private mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1148
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    .line 1153
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    .line 1158
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    .line 1163
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "database"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2659
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    .line 1418
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    .line 1419
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1424
    iput-boolean v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1426
    new-array v1, v5, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    .line 1427
    .local v1, nameArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-array v3, v5, [Z

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    .line 1429
    new-array v2, v6, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/ArrayList;

    .line 1430
    .local v2, numberArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-array v3, v6, [Z

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    .line 1431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v0

    .line 1433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 1434
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1435
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1437
    :cond_0
    const/16 v0, 0xa

    :goto_1
    if-ge v0, v6, :cond_1

    .line 1438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 1439
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1441
    :cond_1
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .line 1442
    iput-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    .line 1445
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v3, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1446
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v3, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1448
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$1;

    invoke-direct {v3, p0}, Lcom/android/providers/contacts/T9SearchSupport$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v3}, Lcom/android/providers/contacts/T9SearchSupport$1;->start()V

    .line 1456
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/contacts/T9SearchSupport;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->updateItem(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/contacts/T9SearchSupport;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->updatePhotoId(JJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/providers/contacts/T9SearchSupport;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;)Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V

    return-void
.end method

.method private addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 1624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 1626
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->convertIndexToT9Char(I)C

    move-result v0

    .line 1629
    .local v0, digit:C
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1630
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1631
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v6, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1634
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1637
    :cond_0
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1638
    .local v2, index:I
    if-ltz v2, :cond_1

    .line 1639
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-direct {v3, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1641
    .local v3, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    .line 1642
    iget-object v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1643
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1644
    :try_start_1
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1646
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1647
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1624
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    .end local v2           #index:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1645
    .restart local v2       #index:I
    .restart local v3       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1651
    .end local v0           #digit:C
    .end local v2           #index:I
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_2
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v4

    :goto_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 1653
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->convertIndexToT9Char(I)C

    move-result v0

    .line 1654
    .restart local v0       #digit:C
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 1655
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1656
    :try_start_4
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v6, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1658
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1659
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1651
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1657
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 1662
    .end local v0           #digit:C
    :cond_4
    return-void
.end method

.method public static calculateMatchedLevel(Ljava/lang/String;I)I
    .locals 4
    .parameter "t9Key"
    .parameter "matchedCount"

    .prologue
    .line 1295
    const/4 v1, 0x0

    .line 1297
    .local v1, wordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1298
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_0

    .line 1299
    add-int/lit8 v1, v1, 0x1

    .line 1300
    if-le v1, p1, :cond_0

    .line 1301
    const/4 v2, 0x1

    .line 1305
    :goto_1
    return v2

    .line 1297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1305
    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method private clearItems()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1541
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1542
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1543
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1547
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1549
    :cond_1
    iput-boolean v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1550
    return-void
.end method

.method private closeStatements()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1479
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1481
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1485
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1489
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1491
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 1492
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1493
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1495
    :cond_3
    return-void
.end method

.method public static converDigitToInitial(C)C
    .locals 1
    .parameter "digit"

    .prologue
    .line 1283
    const/16 v0, 0x30

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0
.end method

.method public static convertIndexToT9Char(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 1238
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 1239
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1246
    :goto_0
    return v0

    .line 1242
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID INDEX"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :pswitch_0
    const/16 v0, 0x2b

    goto :goto_0

    .line 1246
    :pswitch_1
    const/16 v0, 0x2c

    goto :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertT9CharToIndex(C)I
    .locals 2
    .parameter "digit"

    .prologue
    const/16 v1, 0x30

    .line 1261
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1262
    sub-int v0, p0, v1

    .line 1269
    :goto_0
    return v0

    .line 1265
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 1269
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 1265
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1883
    const-string v0, "DROP TABLE IF EXISTS t9_lookup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1884
    const-string v0, "CREATE TABLE t9_lookup (data_id INTEGER REFERENCES contacts(_id) NOT NULL,contact_id INTEGER REFERENCES contacts(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER REFERENCES contacts(photo_id) NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id, t9_key));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1898
    return-void
.end method

.method private deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 2
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1755
    .local p1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->DataId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->RawContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_1

    .line 1766
    :cond_0
    return-void

    .line 1759
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1760
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1761
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1764
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1763
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 7
    .parameter
    .parameter "index"
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, listArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .local p3, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    aget-object v2, p1, p2

    .line 1717
    .local v2, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    monitor-enter v2

    .line 1718
    :try_start_0
    aget-object v3, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1719
    .end local v2           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .local v3, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1720
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$3;->$SwitchMap$com$android$providers$contacts$T9SearchSupport$IdType:[I

    invoke-virtual {p4}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1743
    :cond_0
    aput-object v1, p1, p2

    .line 1744
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1745
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1746
    return-void

    .line 1722
    :pswitch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1723
    .local v4, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1724
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1744
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1729
    .restart local v1       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :pswitch_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1730
    .restart local v4       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1731
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1736
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :pswitch_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1737
    .restart local v4       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1738
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1744
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .restart local v2       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :catchall_1
    move-exception v5

    move-object v3, v2

    .end local v2           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v3       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    goto :goto_1

    .line 1720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static extendCandidates(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2039
    .local v0, curSize:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2040
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 2041
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2039
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2044
    .end local v2           #j:I
    :cond_1
    return-void
.end method

.method private static filterNonLetterAndDigit(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "builder"
    .parameter "input"

    .prologue
    .line 1330
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1331
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1332
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1333
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generateT9Key(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2054
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 2060
    .local v1, originalTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    .local v10, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v2, 0x2

    .line 2066
    .local v2, keyType:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move v4, v2

    .end local v2           #keyType:I
    .local v4, keyType:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/HanziToPinyin$Token;

    .line 2068
    .local v3, t:Lmiui/util/HanziToPinyin$Token;
    iget v2, v3, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move v2, v4

    .end local v4           #keyType:I
    .restart local v2       #keyType:I
    :goto_2
    move v4, v2

    .line 2083
    .end local v2           #keyType:I
    .restart local v4       #keyType:I
    goto :goto_0

    .line 2070
    :pswitch_0
    const/4 v2, 0x1

    .line 2071
    .end local v4           #keyType:I
    .restart local v2       #keyType:I
    iget-object v4, v3, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2072
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v3, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v7, v4, v6

    iput-object v4, v3, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 2074
    :cond_1
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2079
    .end local v2           #keyType:I
    .restart local v4       #keyType:I
    :pswitch_1
    iget-object v2, v3, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/providers/contacts/T9SearchSupport;->filterNonLetterAndDigit(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 2080
    iget-object v2, v3, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2081
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2088
    .end local v3           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2089
    .local v6, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-ne v4, v1, :cond_a

    .line 2091
    .end local v1           #i$:Ljava/util/Iterator;
    new-instance p0, Ljava/util/ArrayList;

    .end local p0
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2092
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 2094
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/HanziToPinyin$Token;

    .line 2095
    .local v8, t:Lmiui/util/HanziToPinyin$Token;
    const/4 v3, 0x0

    .line 2096
    .local v3, tokenTarget:Ljava/lang/String;
    iget v1, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v1, :pswitch_data_1

    :cond_3
    move-object v1, v3

    .line 2093
    .end local v3           #tokenTarget:Ljava/lang/String;
    .local v1, tokenTarget:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 2098
    .restart local v3       #tokenTarget:Ljava/lang/String;
    :pswitch_2
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->extendCandidates(Ljava/util/ArrayList;I)V

    .line 2099
    const/4 v1, 0x0

    .local v1, j:I
    move v12, v1

    .end local v1           #j:I
    .local v12, j:I
    move-object v1, v3

    .end local v3           #tokenTarget:Ljava/lang/String;
    .local v1, tokenTarget:Ljava/lang/String;
    move v3, v12

    .end local v12           #j:I
    .local v3, j:I
    :goto_4
    iget-object v7, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_4

    .line 2100
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .end local v1           #tokenTarget:Ljava/lang/String;
    aget-object v1, v1, v3

    .line 2101
    .restart local v1       #tokenTarget:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #tokenTarget:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 2105
    .local v9, tokenTarget:Ljava/lang/String;
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v7, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v7, v7

    div-int v7, v1, v7

    .line 2106
    .local v7, oldSize:I
    mul-int v1, v7, v3

    .line 2107
    .local v1, from:I
    add-int/lit8 v11, v3, 0x1

    mul-int/2addr v7, v11

    .line 2108
    .local v7, to:I
    move v1, v1

    .local v1, k:I
    :goto_6
    if-ge v1, v7, :cond_6

    .line 2109
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    aput-object v9, v11, v2

    .line 2108
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2101
    .end local v7           #to:I
    .end local v9           #tokenTarget:Ljava/lang/String;
    .local v1, tokenTarget:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .end local v1           #tokenTarget:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_5

    .line 2099
    .local v1, k:I
    .restart local v7       #to:I
    .restart local v9       #tokenTarget:Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v3, 0x1

    .end local v3           #j:I
    .local v1, j:I
    move v3, v1

    .end local v1           #j:I
    .restart local v3       #j:I
    move-object v1, v9

    .end local v9           #tokenTarget:Ljava/lang/String;
    .local v1, tokenTarget:Ljava/lang/String;
    goto :goto_4

    .line 2114
    .end local v1           #tokenTarget:Ljava/lang/String;
    .end local v7           #to:I
    .local v3, tokenTarget:Ljava/lang/String;
    :pswitch_3
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2115
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    .line 2116
    .end local v3           #tokenTarget:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tokenTarget:Ljava/lang/String;
    move-object v3, v1

    .line 2125
    .end local v1           #tokenTarget:Ljava/lang/String;
    .restart local v3       #tokenTarget:Ljava/lang/String;
    :goto_7
    const/4 v1, 0x0

    .local v1, k:I
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 2126
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aput-object v3, v7, v2

    .line 2125
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2119
    .end local v1           #k:I
    .end local v3           #tokenTarget:Ljava/lang/String;
    :cond_7
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .local v1, tokenTarget:Ljava/lang/String;
    move-object v3, v1

    .end local v1           #tokenTarget:Ljava/lang/String;
    .restart local v3       #tokenTarget:Ljava/lang/String;
    goto :goto_7

    .line 2123
    :cond_8
    iget-object v1, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .end local v3           #tokenTarget:Ljava/lang/String;
    .restart local v1       #tokenTarget:Ljava/lang/String;
    move-object v3, v1

    .end local v1           #tokenTarget:Ljava/lang/String;
    .restart local v3       #tokenTarget:Ljava/lang/String;
    goto :goto_7

    .line 2131
    .end local v3           #tokenTarget:Ljava/lang/String;
    .end local v8           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_9
    const/4 v1, 0x0

    .end local v2           #i:I
    .local v1, i:I
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 2132
    const-string v3, ""

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2136
    .end local v1           #i:I
    .local p0, name:Ljava/lang/String;
    :cond_a
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    .end local p0           #name:Ljava/lang/String;
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v6           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2141
    .local v6, thisName:Ljava/lang/String;
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2142
    const/4 p0, 0x0

    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .restart local v2       #i:I
    :goto_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v2, p0, :cond_e

    .line 2143
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 2144
    .local p0, c:C
    invoke-static {p0}, Lmiui/util/HanziToPinyin;->formatCharToT9(C)C

    move-result v1

    .line 2145
    .local v1, digit:C
    if-nez v1, :cond_c

    .line 2147
    const/16 p0, 0x20

    .line 2154
    .end local v1           #digit:C
    .local p0, digit:C
    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2142
    add-int/lit8 p0, v2, 0x1

    .end local v2           #i:I
    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .restart local v2       #i:I
    goto :goto_b

    .line 2148
    .restart local v1       #digit:C
    .local p0, c:C
    :cond_c
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    .end local p0           #c:C
    if-nez p0, :cond_d

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    sub-int p0, v2, p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p0

    if-nez p0, :cond_10

    .line 2152
    :cond_d
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result p0

    .end local v1           #digit:C
    .local p0, digit:C
    goto :goto_c

    .line 2158
    .end local p0           #digit:C
    :cond_e
    new-instance p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    .line 2159
    .local p0, info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    iput v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    .line 2160
    iput-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    .line 2161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    .line 2162
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2165
    .end local v2           #i:I
    .end local v6           #thisName:Ljava/lang/String;
    .end local p0           #info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_f
    return-object v5

    .restart local v1       #digit:C
    .restart local v2       #i:I
    .restart local v6       #thisName:Ljava/lang/String;
    :cond_10
    move p0, v1

    .end local v1           #digit:C
    .local p0, digit:C
    goto :goto_c

    .line 2068
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2096
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1
    .parameter "database"

    .prologue
    .line 1197
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    if-nez v0, :cond_1

    .line 1200
    if-nez p0, :cond_0

    .line 1204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1208
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    .line 1213
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1214
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    return-object v0
.end method

.method private getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 9
    .parameter "key"
    .parameter "cachedResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/T9SearchSupport$CachedResults;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, basicListArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2184
    .local v4, minLen:I
    const/4 v2, -0x1

    .line 2185
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_1

    move v3, v8

    .line 2190
    .local v3, matched:Z
    :goto_1
    const/4 v0, 0x0

    .line 2191
    .local v0, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    if-ltz v2, :cond_2

    .line 2193
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v0, v5, v2

    .line 2194
    if-nez v0, :cond_2

    .line 2198
    const/4 v3, 0x0

    .line 2199
    sub-int v1, v2, v8

    :goto_2
    if-ltz v1, :cond_2

    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v0, v5, v1

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    .end local v3           #matched:Z
    :cond_1
    move v3, v7

    .line 2189
    goto :goto_1

    .line 2203
    .restart local v0       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    .restart local v3       #matched:Z
    :cond_2
    if-ltz v2, :cond_3

    if-nez v0, :cond_4

    .line 2206
    :cond_3
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v0           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->convertT9CharToIndex(C)I

    move-result v5

    aget-object v5, p3, v5

    invoke-direct {v0, v5, v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2207
    .restart local v0       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aput-object v0, v5, v7

    .line 2208
    const/4 v2, 0x0

    .line 2209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_6

    move v3, v8

    .line 2212
    :cond_4
    :goto_3
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2213
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2215
    :cond_5
    iput-object p1, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 2216
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_6
    move v3, v7

    .line 2209
    goto :goto_3
.end method

.method private getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;
    .locals 1
    .parameter "operator"

    .prologue
    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    packed-switch p1, :pswitch_data_0

    .line 3022
    :goto_0
    return-object v0

    .line 2998
    :pswitch_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2999
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3001
    :pswitch_1
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3002
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3004
    :pswitch_2
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3005
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3007
    :pswitch_3
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3008
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3010
    :pswitch_4
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3011
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3013
    :pswitch_5
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3014
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3016
    :pswitch_6
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3017
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 3019
    :pswitch_7
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_0

    .line 2996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 6
    .parameter "db"

    .prologue
    .line 1218
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1220
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 1221
    .local v0, dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    .line 1222
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    .line 1224
    const-string v1, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%d OR data.mimetype_id=%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "%s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    .line 1227
    .end local v0           #dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    return-object v1
.end method

.method private incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J
    .locals 7
    .parameter "timesContacted"
    .parameter
    .parameter "isListSorted"
    .parameter "index"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;[ZIJ)J"
        }
    .end annotation

    .prologue
    .local p3, listArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v6, 0x0

    .line 1815
    aget-object v2, p3, p5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1816
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 1819
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1821
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    const-wide/16 v4, 0x1

    add-long p1, v2, v4

    .line 1823
    :cond_1
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p1, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1824
    aput-boolean v6, p4, p5

    .line 1825
    iput-boolean v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    goto :goto_0

    .line 1828
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_2
    return-wide p1
.end method

.method private incTimesContacted(J)V
    .locals 8
    .parameter "contactId"

    .prologue
    .line 1837
    const-wide/16 v1, -0x1

    .line 1838
    .local v1, timesContacted:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 1839
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1838
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1842
    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 1843
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1842
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1846
    :cond_1
    return-void
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8
    .parameter "self"
    .parameter "db"
    .parameter "whereClause"

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1971
    .local v2, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    if-nez p0, :cond_2

    :try_start_0
    const-string v5, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move-object v2, v5

    .line 1974
    :goto_0
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1976
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1977
    .local v3, item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1978
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 1979
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 1980
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 1981
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1982
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeNumber(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 1984
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 1985
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    .line 1986
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1987
    invoke-static {p0, v2, v3}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1989
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1990
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "T9SearchSupport"

    const-string v6, "failed to get t9 search item to add"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    if-eqz v0, :cond_0

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_0
    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1999
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    return-void

    .line 1971
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v5

    goto :goto_0

    .line 1992
    .restart local v3       #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .restart local v4       #sql:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_4
    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    .line 1992
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_5
    if-eqz v2, :cond_6

    if-nez p0, :cond_6

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v5
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 6
    .parameter "self"
    .parameter "insertStatement"
    .parameter "item"

    .prologue
    .line 2008
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/contacts/T9SearchSupport;->generateT9Key(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2009
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    .line 2010
    .local v1, info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    .line 2011
    iget v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    int-to-long v3, v3

    iput-wide v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    .line 2012
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    .line 2013
    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2014
    const/4 v3, 0x2

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2015
    const/4 v3, 0x3

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2016
    const/4 v3, 0x4

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2017
    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2018
    const/4 v3, 0x6

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2019
    const/4 v3, 0x7

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2020
    const/16 v3, 0x8

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2021
    const/16 v3, 0x9

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2022
    const/16 v3, 0xa

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2023
    const/16 v3, 0xb

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2025
    if-eqz p0, :cond_0

    .line 2026
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {v3, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_0

    .line 2029
    .end local v1           #info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_1
    return-void
.end method

.method private insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 4
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1941
    .local v0, columnName:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$3;->$SwitchMap$com$android$providers$contacts$T9SearchSupport$IdType:[I

    invoke-virtual {p2}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1954
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1959
    :cond_0
    :goto_1
    return-void

    .line 1943
    :pswitch_0
    const-string v0, "raw_contacts._id"

    .line 1944
    goto :goto_0

    .line 1946
    :pswitch_1
    const-string v0, "data._id"

    .line 1947
    goto :goto_0

    .line 1949
    :pswitch_2
    const-string v0, "view_contacts._id"

    goto :goto_0

    .line 1958
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 1941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I
    .locals 9
    .parameter "pattern"
    .parameter "pstart"
    .parameter "key"
    .parameter "kstart"
    .parameter "matchedChars"

    .prologue
    .line 2234
    const/4 v6, 0x1

    .line 2237
    .local v6, countOfMatchedWord:I
    add-int/lit8 v2, p2, 0x1

    .line 2238
    .local v2, nextInitialCharIndex:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2239
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 2244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 2248
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2           #nextInitialCharIndex:I
    sub-int/2addr v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2249
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2312
    :goto_1
    return v0

    .line 2238
    .restart local v2       #nextInitialCharIndex:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2252
    .end local v2           #nextInitialCharIndex:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2259
    .restart local v2       #nextInitialCharIndex:I
    :cond_3
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2260
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p4, 0x2

    if-ne v0, v1, :cond_4

    .line 2261
    add-int/lit8 v6, v6, 0x1

    .line 2263
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    .line 2264
    invoke-virtual {p5, v2}, Ljava/util/BitSet;->set(I)V

    move v0, v6

    .line 2265
    goto :goto_1

    .line 2268
    :cond_4
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v6, v0

    .line 2270
    const/4 v0, 0x1

    if-le v6, v0, :cond_5

    .line 2271
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    move v0, v6

    .line 2272
    goto :goto_1

    .line 2277
    :cond_5
    sub-int v8, v2, p2

    .line 2278
    .local v8, spanLength:I
    const/4 v0, 0x1

    sub-int v7, v2, v0

    .local v7, i:I
    :goto_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2281
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt v0, v8, :cond_8

    .line 2285
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2           #nextInitialCharIndex:I
    sub-int/2addr v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2286
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2287
    goto :goto_1

    .line 2289
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 2292
    .restart local v2       #nextInitialCharIndex:I
    :cond_8
    add-int v0, p4, v8

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_a

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    const/4 v3, 0x1

    sub-int v3, v8, v3

    invoke-virtual {p1, v0, p3, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2298
    add-int v0, p4, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 2300
    add-int/lit8 v6, v6, 0x1

    .line 2301
    add-int v0, p2, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2302
    goto/16 :goto_1

    .line 2305
    :cond_9
    add-int v4, p4, v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v6, v0

    .line 2307
    const/4 v0, 0x1

    if-le v6, v0, :cond_a

    .line 2308
    add-int v0, p2, v8

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    .line 2309
    add-int/lit8 v0, v6, 0x1

    goto/16 :goto_1

    .line 2312
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private matchT9Name(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I
    .locals 10
    .parameter "pattern"
    .parameter "key"
    .parameter "matchedChars"

    .prologue
    const/4 v4, 0x0

    .line 2327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v4

    .line 2351
    :goto_0
    return v0

    .line 2331
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v6

    .line 2333
    .local v6, first:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2334
    .local v8, maxLength:I
    const/4 v9, 0x0

    .line 2335
    .local v9, startIndex:I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 2337
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2338
    .local v2, index:I
    if-gez v2, :cond_1

    move v0, v4

    .line 2340
    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 2343
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v7

    .line 2344
    .local v7, matchedCount:I
    if-lez v7, :cond_2

    move v0, v7

    .line 2346
    goto :goto_0

    .line 2349
    :cond_2
    add-int/lit8 v9, v2, 0x1

    .line 2350
    goto :goto_1

    .end local v2           #index:I
    .end local v7           #matchedCount:I
    :cond_3
    move v0, v4

    .line 2351
    goto :goto_0
.end method

.method private matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .locals 3
    .parameter "result"
    .parameter "item"
    .parameter "key"

    .prologue
    .line 2363
    if-nez p1, :cond_1

    .line 2365
    new-instance p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    .end local p1
    invoke-direct {p1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 2372
    .restart local p1
    :goto_0
    iget-object v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I

    move-result v0

    .line 2373
    .local v0, countOfMatchedWord:I
    if-lez v0, :cond_0

    .line 2375
    iget-object v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    .line 2377
    :cond_0
    return-object p1

    .line 2368
    .end local v0           #countOfMatchedWord:I
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->setItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_0
.end method

.method public static normalizeNumber(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "mimeTypeId"

    .prologue
    .line 1317
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    move v0, v1

    .line 1318
    .local v0, phoneType:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1317
    .end local v0           #phoneType:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private prepareStatements()V
    .locals 2

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->closeStatements()V

    .line 1503
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1504
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET data=?, normalized_data=? WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1507
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1509
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1513
    return-void
.end method

.method public static rebuildAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1908
    const-string v2, "DELETE FROM t9_lookup"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move v1, v2

    .line 1913
    .local v1, usingTransaction:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1914
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1916
    :cond_0
    const/4 v2, 0x0

    const-string v3, "raw_contacts.deleted=0"

    invoke-static {v2, p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1917
    if-eqz v1, :cond_1

    .line 1918
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :cond_1
    if-eqz v1, :cond_2

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1930
    :cond_2
    :goto_1
    return-void

    .line 1910
    .end local v1           #usingTransaction:Z
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 1920
    .restart local v1       #usingTransaction:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1921
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "T9SearchSupport"

    const-string v3, "rebuild t9 search database failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    if-eqz v1, :cond_2

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1923
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v2
.end method

.method private sortAllItems()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, ""

    .line 1670
    iget-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1671
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1672
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1674
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1675
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1678
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 1679
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1680
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1681
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1682
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1671
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1675
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1681
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1685
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1686
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_3

    .line 1687
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1688
    :try_start_4
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1689
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1690
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1685
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1689
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 1695
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1696
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v2, ""

    iput-object v7, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 1697
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1698
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v2, ""

    iput-object v7, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 1700
    iput-boolean v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1705
    .end local v0           #i:I
    :cond_5
    return-void
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "database"

    .prologue
    .line 1521
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq p1, v1, :cond_0

    .line 1522
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1525
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1530
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V

    goto :goto_0
.end method

.method private updateItem(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "dataId"
    .parameter "data"
    .parameter "normalizedData"

    .prologue
    .line 1796
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .local v6, arr$:[Ljava/util/ArrayList;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1797
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->updateItem(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V

    .line 1796
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1799
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_0
    return-void
.end method

.method private updateItem(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "dataId"
    .parameter "data"
    .parameter "normalizedData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1778
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1779
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 1780
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1781
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p5, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    goto :goto_0

    .line 1784
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_1
    return-void
.end method

.method private updatePhotoId(JJ)V
    .locals 9
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 1872
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .local v6, arr$:[Ljava/util/ArrayList;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1873
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->updatePhotoId(Ljava/util/ArrayList;JJ)V

    .line 1872
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1875
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_0
    return-void
.end method

.method private updatePhotoId(Ljava/util/ArrayList;JJ)V
    .locals 4
    .parameter
    .parameter "contactId"
    .parameter "photoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1856
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1857
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 1858
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    goto :goto_0

    .line 1861
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_1
    return-void
.end method

.method private waitForInitialized()V
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2385
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2387
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2388
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2391
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 2392
    return-void

    .line 2391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public load()V
    .locals 25

    .prologue
    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 1557
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1558
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1561
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1562
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1616
    :goto_0
    return-void

    .line 1558
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1569
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v21

    .line 1570
    .local v21, alreadyInTransaction:Z
    if-nez v21, :cond_1

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1575
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->clearItems()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1577
    const/16 v22, 0x0

    .line 1580
    .local v22, cursor:Landroid/database/Cursor;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "t9_lookup"

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1583
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1584
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    move-object/from16 v0, v22

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x3

    move-object/from16 v0, v22

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    move-object/from16 v0, v22

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    move-object/from16 v0, v22

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x7

    move-object/from16 v0, v22

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x9

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-direct/range {v3 .. v20}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1596
    :catch_0
    move-exception v3

    move-object/from16 v23, v3

    .line 1597
    .local v23, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v3, "T9SearchSupport"

    const-string v4, "failed to load t9 search items from database"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1599
    if-eqz v22, :cond_2

    .line 1600
    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1605
    .end local v23           #e:Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1609
    if-nez v21, :cond_3

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1615
    :cond_3
    monitor-exit v24

    goto/16 :goto_0

    .end local v21           #alreadyInTransaction:Z
    .end local v22           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 1599
    .restart local v21       #alreadyInTransaction:Z
    .restart local v22       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v22, :cond_2

    .line 1600
    :try_start_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1599
    :catchall_2
    move-exception v3

    if-eqz v22, :cond_5

    .line 1600
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public loadAsync()V
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    monitor-exit v0

    .line 1474
    :goto_0
    return-void

    .line 1467
    :cond_0
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$2;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/T9SearchSupport$2;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$2;->start()V

    .line 1473
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onContactIdUpdated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 3033
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3036
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactDeleted(J)V

    .line 3037
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactInserted(J)V

    goto :goto_0
.end method

.method public onDataDeleted(JJJ)V
    .locals 5
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const-wide/16 v3, 0x0

    .line 3144
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_1

    .line 3147
    :cond_0
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    cmp-long v1, p3, v3

    if-gtz v1, :cond_2

    .line 3155
    :cond_1
    :goto_0
    return-void

    .line 3151
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3152
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3153
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDataInserted(JJJLjava/lang/String;)V
    .locals 5
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v3, 0x0

    .line 3166
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_1

    .line 3169
    :cond_0
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    cmp-long v1, p3, v3

    if-gtz v1, :cond_2

    .line 3177
    :cond_1
    :goto_0
    return-void

    .line 3173
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3174
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3175
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDataUpdated(JJJLjava/lang/String;)V
    .locals 6
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x5

    .line 3118
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3119
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 3134
    :cond_0
    :goto_0
    return-void

    .line 3123
    :cond_1
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_2

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 3126
    :cond_2
    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    cmp-long v1, p3, v4

    if-lez v1, :cond_0

    .line 3130
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3131
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    invoke-direct {v1, p5, p6, p7}, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3132
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    invoke-virtual {v1, v3, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDisplayNameUpdated(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    .line 3082
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 3089
    :goto_0
    return-void

    .line 3086
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3087
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3088
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPhotoUpdated(JJ)V
    .locals 3
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 3100
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 3107
    :goto_0
    return-void

    .line 3104
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3105
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3106
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRawContactDeleted(J)V
    .locals 3
    .parameter "rawContactId"

    .prologue
    .line 3048
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 3055
    :goto_0
    return-void

    .line 3052
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3053
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3054
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRawContactInserted(J)V
    .locals 3
    .parameter "rawContactId"

    .prologue
    .line 3065
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 3072
    :goto_0
    return-void

    .line 3069
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3070
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3071
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTimesContactedChanged(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    .line 3187
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 3194
    :goto_0
    return-void

    .line 3191
    :cond_0
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3192
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3193
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTransactionBegin()V
    .locals 3

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2959
    return-void
.end method

.method public onTransactionEnd()V
    .locals 3

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2968
    return-void
.end method

.method public onTranscationCommit()V
    .locals 3

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2977
    return-void
.end method

.method public onTranscationRollback()V
    .locals 3

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2986
    return-void
.end method

.method public queryT9Name(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11
    .parameter "key"
    .parameter "options"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 2403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x100

    if-ge v7, v8, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2404
    :cond_0
    sget-object v7, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2451
    .end local p0
    :goto_0
    return-object v7

    .line 2407
    .restart local p0
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    .line 2409
    const/4 v1, 0x0

    .line 2412
    .local v1, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v7, v8}, Lcom/android/providers/contacts/T9SearchSupport;->getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v4

    .line 2414
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;Ljava/lang/Boolean;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2417
    .local v2, fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    .local v5, partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v6, 0x0

    .line 2420
    .local v6, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 2421
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2422
    .local v0, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v7, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v6

    .line 2423
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v10, :cond_3

    .line 2424
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    const/4 v6, 0x0

    goto :goto_1

    .line 2426
    :cond_3
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v9, :cond_2

    .line 2427
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    const/4 v6, 0x0

    goto :goto_1

    .line 2433
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2445
    :goto_2
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v1, v2, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2447
    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v7, v7, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    aput-object v1, v7, v8

    .end local v2           #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .end local p0
    :goto_3
    move-object v7, v1

    .line 2451
    goto :goto_0

    .line 2435
    .restart local v2       #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v5       #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v6       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .restart local p0
    :cond_5
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2436
    .restart local v0       #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v7, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v6

    .line 2437
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-eq v7, v10, :cond_6

    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v9, :cond_7

    .line 2439
    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 2443
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_8
    sget-object v7, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 2449
    .end local v2           #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_9
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object p0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_3
.end method

.method public queryT9Number(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "key"
    .parameter "options"

    .prologue
    .line 2463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-lt v5, v6, :cond_1

    .line 2464
    :cond_0
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2489
    .end local p0
    :goto_0
    return-object v5

    .line 2467
    .restart local p0
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    .line 2469
    const/4 v1, 0x0

    .line 2472
    .local v1, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v3

    .line 2474
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;Ljava/lang/Boolean;>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2476
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2478
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v5}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2479
    .local v0, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 2480
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2483
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_3
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v1, v4, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2485
    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v5, v5, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aput-object v1, v5, v6

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local p0
    :goto_2
    move-object v5, v1

    .line 2489
    goto :goto_0

    .line 2487
    .restart local p0
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_2
.end method
