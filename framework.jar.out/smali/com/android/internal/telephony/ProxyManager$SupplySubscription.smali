.class public Lcom/android/internal/telephony/ProxyManager$SupplySubscription;
.super Ljava/lang/Thread;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupplySubscription"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPendingActivateEvents:I

.field private mPendingDeactivateEvents:I

.field private mSubResult:[Ljava/lang/String;

.field private prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field private subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field final synthetic this$0:Lcom/android/internal/telephony/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ProxyManager;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mContext:Landroid/content/Context;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    new-instance v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    new-instance v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$308(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->processSetUiccSubscriptionDone(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    return v0
.end method

.method private isSubscriptionInUse(Lcom/android/internal/telephony/ProxyManager$Subscription;)Z
    .locals 4
    .parameter "sub"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v2, v0

    .local v1, prev:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-ne v2, v3, :cond_8

    iget v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    if-ne v2, v3, :cond_8

    iget v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    iget v2, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const/4 v2, 0x1

    .end local v1           #prev:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :goto_1
    return v2

    .restart local v1       #prev:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v1           #prev:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private processPendingActivateRequests()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-string v8, "PROXY"

    const-string v0, "PROXY"

    const-string v0, "processPendingActivateRequests()"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->isSubscriptionInUse(Lcom/android/internal/telephony/ProxyManager$Subscription;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PROXY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activating subscriptionData on SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, callback:Landroid/os/Message;
    const-string v0, "PROXY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setSubscription on CommandsInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .end local v5           #callback:Landroid/os/Message;
    .end local v7           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "ACTIVATE FAILED"

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private processSetUiccSubscriptionDone(ILandroid/os/AsyncResult;)V
    .locals 11
    .parameter "phoneIndex"
    .parameter "ar"

    .prologue
    const/4 v3, 0x1

    const-string v1, "PROXY"

    const-string v0, "PROXY"

    const-string v0, "processSetUiccSubscriptionDone()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_DONE failed, phone index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, notSupported:Z
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    .local v7, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v7, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v0, :cond_0

    const/4 v8, 0x1

    .end local v7           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-nez v0, :cond_5

    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevSubscription of SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Deactivate Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "DEACTIVATE NOT SUPPORTED"

    aput-object v1, v0, p1

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "ACTIVATE FAILED"

    aput-object v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->processPendingActivateRequests()V

    .end local v8           #notSupported:Z
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    if-nez v0, :cond_3

    const-string v0, "PROXY"

    const-string v1, "Set UICC Subscriptions Completed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->sendSetSubscriptionCallback()V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->copyFrom(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager;->broadcastSubStateChangedIntent()V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    #calls: Lcom/android/internal/telephony/ProxyManager;->updateSubPreferences(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->access$1100(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit p0

    return-void

    .restart local v8       #notSupported:Z
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "DEACTIVATE FAILED"

    aput-object v1, v0, p1

    goto :goto_0

    .end local v8           #notSupported:Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v8       #notSupported:Z
    :cond_5
    :try_start_1
    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription of SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Activate Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "ACTIVATE NOT SUPPORTED"

    aput-object v1, v0, p1

    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "ACTIVATE FAILED"

    aput-object v1, v0, p1

    goto :goto_2

    .end local v8           #notSupported:Z
    :cond_7
    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_DONE success, phone index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-nez v0, :cond_c

    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevSubscription of SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Deactivated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "DEACTIVATE SUCCESS"

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const v1, 0x1869f

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const v1, 0x1869f

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$700(Lcom/android/internal/telephony/ProxyManager;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->processPendingActivateRequests()V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$800(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v6, v0, p1

    .local v6, currentPhone:Lcom/android/internal/telephony/Phone;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/Phone;->setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, p1

    #calls: Lcom/android/internal/telephony/ProxyManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/ProxyManager$Subscription;)V
    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/ProxyManager;->access$1000(Lcom/android/internal/telephony/ProxyManager;ILcom/android/internal/telephony/ProxyManager$Subscription;)V

    goto/16 :goto_1

    .end local v6           #currentPhone:Lcom/android/internal/telephony/Phone;
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    if-ne v3, v0, :cond_9

    if-ne v3, p1, :cond_9

    sget-boolean v0, Lcom/android/internal/telephony/ProxyManager;->mdcData_done:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, setUiccSubCompleteMsg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v10, 0x0

    aget-object v4, v4, v10

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_3

    .end local v5           #setUiccSubCompleteMsg:Landroid/os/Message;
    .end local v9           #str:Ljava/lang/String;
    :cond_c
    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription of SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Activated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    const-string v1, "ACTIVATE SUCCESS"

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$800(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v6, v0, p1

    .restart local v6       #currentPhone:Lcom/android/internal/telephony/Phone;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/Phone;->setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v1

    #setter for: Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->access$902(Lcom/android/internal/telephony/ProxyManager;I)I

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I
    invoke-static {v1}, Lcom/android/internal/telephony/ProxyManager;->access$900(Lcom/android/internal/telephony/ProxyManager;)I

    move-result v1

    if-ne v0, v1, :cond_a

    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active DDS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method private sendSetSubscriptionCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ProxyManager;->getInstance()Lcom/android/internal/telephony/ProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProxyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "PROXY"

    const-string v1, "sendSetSubscriptionCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$1300(Lcom/android/internal/telephony/ProxyManager;)Landroid/os/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager;->access$1300(Lcom/android/internal/telephony/ProxyManager;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription$1;-><init>(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setSubscription(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V
    .locals 27
    .parameter "userSubData"

    .prologue
    monitor-enter p0

    const/16 v24, 0x0

    .local v24, string:[Ljava/lang/String;
    const/16 v17, 0x1

    .local v17, done:Z
    const/4 v3, 0x0

    :try_start_0
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "NO CHANGE IN SUBSCRIPTION"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mSubResult:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    const-string v5, "NO CHANGE IN SUBSCRIPTION"

    aput-object v5, v3, v4

    const-string v3, "PROXY"

    const-string v4, "In setSubscription"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v18

    .local v18, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v18           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_3
    const-string v3, "PROXY"

    const-string v4, "Copying the subscriptionData from the userSubData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->copyFrom(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionData.getLength() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$1200(Lcom/android/internal/telephony/ProxyManager;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    const/4 v3, 0x2

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_4

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevSubscriptionData.subscription["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionData.subscription["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v19

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->equals(Lcom/android/internal/telephony/ProxyManager$Subscription;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevSubscriptionData.subscription["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] != subscriptionData.subscription["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move/from16 v26, v0

    .local v26, subId:I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .local v25, sub:Ljava/lang/String;
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to deactivate prevSubscription on SUB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$900(Lcom/android/internal/telephony/ProxyManager;)I

    move-result v3

    move v0, v3

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const-string v3, "PROXY"

    const-string v4, "Deactivate all the data calls if there is any"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0xb

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .local v15, allDataCleanedUpMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$800(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, v26

    invoke-interface {v3, v15}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity(Landroid/os/Message;)Z

    .end local v15           #allDataCleanedUpMsg:Landroid/os/Message;
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    .end local v25           #sub:Ljava/lang/String;
    .end local v26           #subId:I
    :cond_1
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .restart local v25       #sub:Ljava/lang/String;
    .restart local v26       #subId:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, setUiccSubCompleteMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v19

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v19

    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v19

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v19

    iget v7, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_2

    .end local v8           #setUiccSubCompleteMsg:Landroid/os/Message;
    .end local v25           #sub:Ljava/lang/String;
    .end local v26           #subId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingDeactivateEvents:I

    move v3, v0

    if-nez v3, :cond_a

    const/16 v19, 0x0

    :goto_4
    const/4 v3, 0x2

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activating subscription on SUB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mPendingActivateEvents:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .local v23, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .local v14, callback:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v9, v3, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v10, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v12, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v19

    iget v13, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    const/16 v17, 0x0

    .end local v14           #callback:Landroid/os/Message;
    .end local v23           #str:Ljava/lang/String;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .end local v19           #i:I
    :cond_6
    const/16 v22, 0x0

    .local v22, numSubsciptions:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    .local v16, arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v25, v16, v20

    .local v25, sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move v3, v0

    const v4, 0x1869f

    if-eq v3, v4, :cond_8

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    move v3, v0

    const v4, 0x1869f

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    move v3, v0

    const v4, 0x1869f

    if-eq v3, v4, :cond_8

    :cond_7
    add-int/lit8 v22, v22, 0x1

    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .end local v25           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_9
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling setSubscriptionMode with numSubsciptions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .restart local v14       #callback:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    #getter for: Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager;->access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v0, v3

    move/from16 v1, v22

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->this$0:Lcom/android/internal/telephony/ProxyManager;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/ProxyManager;->access$1202(Lcom/android/internal/telephony/ProxyManager;Z)Z

    const/16 v17, 0x0

    .end local v14           #callback:Landroid/os/Message;
    .end local v16           #arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v20           #i$:I
    .end local v21           #len$:I
    .end local v22           #numSubsciptions:I
    :cond_a
    if-eqz v17, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->sendSetSubscriptionCallback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    monitor-exit p0

    return-void
.end method
