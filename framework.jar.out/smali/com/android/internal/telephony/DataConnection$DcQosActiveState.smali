.class Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcQosActiveState"
.end annotation


# instance fields
.field private qosSpec:Lcom/android/internal/telephony/QosSpec;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method

.method private getAsyncException(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .local v1, ex:Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    .end local p0
    :cond_0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    iget-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method protected exit()V
    .locals 0

    .prologue
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .local v5, retVal:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DcQosActiveState nothandled msg.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    .end local p0
    :goto_0
    :pswitch_1
    return v5

    .restart local p0
    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_ENABLE"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/QosSpec;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->onQosSetup(Lcom/android/internal/telephony/QosSpec;)V

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_DISABLE"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, qosId:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/DataConnection;->onQosRelease(I)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v3           #qosId:I
    :pswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    .restart local v3       #qosId:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatus(I)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v3           #qosId:I
    :pswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_IND"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/DataConnection;->onQosStateChangedInd(Landroid/os/AsyncResult;)V

    const/4 v5, 0x1

    goto :goto_0

    .restart local p0
    :pswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_ENABLE_DONE"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .local v2, error:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .local v4, responses:[Ljava/lang/String;
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, userData:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v6, v4, v2}, Lcom/android/internal/telephony/DataConnection;->onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #error:Ljava/lang/String;
    .end local v4           #responses:[Ljava/lang/String;
    .end local v6           #userData:I
    :pswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_DISABLE_DONE"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #error:Ljava/lang/String;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v7, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #qosId:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v3, v2}, Lcom/android/internal/telephony/DataConnection;->onQosReleaseDone(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v8}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/DataConnection;->access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    :cond_0
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v2           #error:Ljava/lang/String;
    .end local v3           #qosId:I
    :pswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS_DONE"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #error:Ljava/lang/String;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget-object v7, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #qosId:I
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {v8, v3, v7, v2}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v8}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/DataConnection;->access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v2           #error:Ljava/lang/String;
    .end local v3           #qosId:I
    :pswitch_9
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v8, "DcQosActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownQos()V
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$2600(Lcom/android/internal/telephony/DataConnection;)V

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v7, p1}, Lcom/android/internal/telephony/DataConnection;->access$2700(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
