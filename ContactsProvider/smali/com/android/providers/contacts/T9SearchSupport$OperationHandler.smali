.class Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
.super Landroid/os/Handler;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2555
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2550
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 2577
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;

    .line 2579
    .local v3, threadOperation:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2639
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2584
    :pswitch_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, v4, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2585
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, v4, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2592
    :pswitch_2
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, v4, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2593
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$Operation;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2595
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport;->loadAsync()V

    .line 2596
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$700(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2597
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2599
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$Operation;

    .line 2600
    .local v1, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2604
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 2602
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2604
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #getter for: Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2608
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2609
    :cond_2
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$900(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto/16 :goto_0

    .line 2620
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$Operation;>;"
    :pswitch_3
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, v4, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2625
    :pswitch_4
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v4, v4, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mThreadId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2626
    .restart local v2       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$Operation;>;"
    if-nez v2, :cond_4

    .line 2627
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$700(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2630
    iget-object v4, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mOperation:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->apply()V

    .line 2631
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2632
    :cond_3
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->this$0:Lcom/android/providers/contacts/T9SearchSupport;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V
    invoke-static {v4}, Lcom/android/providers/contacts/T9SearchSupport;->access$900(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto/16 :goto_0

    .line 2635
    :cond_4
    iget-object v4, v3, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->mOperation:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;
    .locals 4
    .parameter "what"
    .parameter "operation"

    .prologue
    .line 2649
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;JLcom/android/providers/contacts/T9SearchSupport$Operation;)V

    .line 2651
    .local v1, threadOperation:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;
    invoke-virtual {p0, p1, v1}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2652
    .local v0, msg:Landroid/os/Message;
    return-object v0
.end method
