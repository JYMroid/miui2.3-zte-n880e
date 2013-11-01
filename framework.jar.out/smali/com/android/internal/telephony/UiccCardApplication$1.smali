.class Lcom/android/internal/telephony/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "m"
    .parameter "e"

    .prologue
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "Error in change icc app password with exception"

    const-string v9, "EVENT_CHANGE_FACILITY_LOCK_DONE: ZTE_PLATFORMmPin1RetryCount= "

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    :goto_1
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    goto :goto_1

    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, -0x1

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$102(Lcom/android/internal/telephony/UiccCardApplication;I)I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    goto :goto_1

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnAvailable(Landroid/os/AsyncResult;)V
    invoke-static {v4, v1}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CHANGE_FACILITY_LOCK_DONE: ZTE_PLATFORMmPin1RetryCount= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v4, v4, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "EVENT_CHANGE_FACILITY_LOCK_DONE "

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error change facility sim lock with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v5

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$602(Lcom/android/internal/telephony/UiccCardApplication;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v4, v4, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CHANGE_FACILITY_FDN_DONE: Enabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$600(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error change facility fdn with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[IccCard] linan-- EVENT_GET_PINPUK_RETRIES_DONE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .local v2, intArray:[I
    array-length v3, v2

    .local v3, length:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget v4, v2, v7

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    aget v5, v2, v7

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] linan--mPin1RetryCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    aget v5, v2, v8

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    goto :goto_4

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #intArray:[I
    .end local v3           #length:I
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in change icc app password with exception"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    :cond_b
    :goto_5
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v4, v4, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CHANGE_FACILITY_LOCK_DONE: ZTE_PLATFORMmPin1RetryCount= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_5

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in change icc app password with exception"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v1, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    :cond_d
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in SIM access with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object p0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object p0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
