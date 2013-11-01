.class Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;
.super Landroid/os/Handler;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    const/16 v17, 0x0

    .local v17, phoneIndex:I
    const/4 v15, 0x0

    .local v15, ar:Landroid/os/AsyncResult;
    const/16 v18, 0x0

    .local v18, string:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    .end local v15           #ar:Landroid/os/AsyncResult;
    check-cast v15, Landroid/os/AsyncResult;

    .restart local v15       #ar:Landroid/os/AsyncResult;
    move-object v0, v15

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #string:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .restart local v18       #string:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on Subscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #string:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .restart local v18       #string:Ljava/lang/String;
    goto :goto_0

    :sswitch_0
    const-string v3, "PROXY"

    const-string v4, "EVENT_SET_SUBSCRIPTION_MODE_DONE:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    .local v16, index:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v19, v3, v16

    .local v19, sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move v3, v0

    const v4, 0x1869f

    if-eq v3, v4, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    move v3, v0

    const v4, 0x1869f

    if-ne v3, v4, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    move v3, v0

    const v4, 0x1869f

    if-eq v3, v4, :cond_5

    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .local v20, subId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$200(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, msgSetUiccSubDone:Landroid/os/Message;
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling setSubscription on CommandsInterface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$308(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v3, v3, v16

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move v4, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    move v7, v0

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .end local v8           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v20           #subId:Ljava/lang/String;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v16

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    goto :goto_3

    .end local v16           #index:I
    .end local v19           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    move-object v2, v15

    #calls: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->processSetUiccSubscriptionDone(ILandroid/os/AsyncResult;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$500(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;ILandroid/os/AsyncResult;)V

    goto/16 :goto_1

    :sswitch_2
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v4, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I
    invoke-static {v4}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$600(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)I

    move-result v4

    if-ne v3, v4, :cond_6

    if-nez v17, :cond_6

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/ProxyManager;->mdcData_done:Z

    const-string v3, "PROXY"

    const-string v4, "dengchao need to do deactive slot1 sub1 first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CLEANUP_DATA_CONNECTION_DONE: on sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Deactivate now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v17

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$200(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .local v14, setUiccSubCompleteMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v9, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v17

    iget v10, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v17

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v17

    iget v12, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;->this$1:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v17

    iget v13, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method
