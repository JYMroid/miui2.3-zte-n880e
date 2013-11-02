.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchCursor"
.end annotation


# instance fields
.field private mIndex:I

.field private mInternalResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchOptions:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 439
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    .line 440
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V
    .locals 1
    .parameter "cursor"
    .parameter "searchOptions"

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iget v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    if-ne p2, v0, :cond_0

    .line 447
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    .line 448
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 449
    iput p2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->construct(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "searchOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->construct(Ljava/util/ArrayList;I)V

    .line 461
    return-void
.end method

.method private checkBoundary()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v0, :cond_0

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    move v0, v2

    .line 432
    :goto_0
    return v0

    .line 428
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    move v0, v2

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private construct(Ljava/util/ArrayList;I)V
    .locals 8
    .parameter
    .parameter "searchOptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v7, 0x1

    .line 467
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    .line 469
    if-ne p2, v7, :cond_2

    .line 470
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 471
    .local v0, contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v4

    .line 472
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 473
    .local v3, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    iput v7, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    .line 490
    .end local v0           #contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 491
    return-void

    .line 480
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v1, dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v4

    .line 482
    :try_start_2
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 483
    .restart local v3       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 484
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 487
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    goto :goto_1
.end method

.method public static merge(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v10, 0x0

    .line 366
    instance-of v8, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-eqz v8, :cond_0

    instance-of v8, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-nez v8, :cond_1

    :cond_0
    move-object v8, v10

    .line 417
    :goto_0
    return-object v8

    .line 370
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    move-object v4, v0

    .line 371
    .local v4, f:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    move-object v0, p1

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    move-object v7, v0

    .line 373
    .local v7, s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget v8, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    iget v9, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    if-eq v8, v9, :cond_2

    move-object v8, v10

    .line 374
    goto :goto_0

    .line 377
    :cond_2
    iget-object v8, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 378
    new-instance v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v8}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    goto :goto_0

    .line 381
    :cond_3
    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    .line 382
    .local v2, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget v8, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    iput v8, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    .line 383
    iget v8, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mSearchOptions:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 384
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 385
    .local v1, contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v8, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v8

    .line 386
    :try_start_0
    iget-object v9, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 387
    .local v6, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v9, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v9, v9, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 388
    iget-object v9, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    iget-object v8, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v8

    .line 393
    :try_start_2
    iget-object v9, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 394
    .restart local v6       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v9, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v9, v9, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 395
    iget-object v9, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 398
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    :cond_7
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1           #contactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_3
    move-object v8, v2

    .line 417
    goto/16 :goto_0

    .line 400
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v3, dataIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v8, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v8

    .line 402
    :try_start_4
    iget-object v9, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 403
    .restart local v6       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v9, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v9, v9, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 404
    iget-object v9, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 407
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_2
    move-exception v9

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v9

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 408
    iget-object v8, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    monitor-enter v8

    .line 409
    :try_start_6
    iget-object v9, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 410
    .restart local v6       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v9, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v9, v9, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 411
    iget-object v9, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 414
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_3
    move-exception v9

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v9

    :cond_c
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 858
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public commitUpdates()Z
    .locals 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 866
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteRow()Z
    .locals 2

    .prologue
    .line 609
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 666
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 617
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 618
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 622
    :goto_1
    return v1

    .line 617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 631
    .local v0, index:I
    if-gez v0, :cond_0

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 642
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 742
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 734
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "columnIndex"

    .prologue
    const-wide/16 v2, 0x0

    .line 716
    sparse-switch p1, :sswitch_data_0

    move-wide v0, v2

    .line 726
    .end local p0
    :goto_0
    return-wide v0

    .line 719
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    goto :goto_0

    .line 721
    .restart local p0
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    goto :goto_0

    .line 723
    .restart local p0
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    goto :goto_0

    .restart local p0
    :cond_0
    move-wide v0, v2

    goto :goto_0

    .line 716
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 674
    sparse-switch p1, :sswitch_data_0

    .line 684
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .line 676
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    goto :goto_0

    .line 678
    .restart local p0
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 680
    .restart local p0
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->getMatchedDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    .restart local p0
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    goto :goto_0

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xc -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 601
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 585
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 5
    .parameter "columnIndex"

    .prologue
    const/4 v4, 0x0

    .line 750
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 754
    .end local p0
    :goto_0
    return v0

    .line 752
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 523
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 524
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 542
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mInternalResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 551
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 560
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 532
    iput p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 533
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 569
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 897
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 911
    return-void
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 874
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 948
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 925
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 904
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 918
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDouble(ID)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFloat(IF)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateInt(II)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 802
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateLong(IJ)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 810
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateShort(IS)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 794
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 2
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 786
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateToNull(I)Z
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 834
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
