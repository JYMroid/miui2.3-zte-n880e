.class Lcom/broadcom/bt/service/fm/FmReceiverService$1;
.super Landroid/os/Handler;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    const-string v2, "FmReceiverService"

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling UNKNOWN CALLBACK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->logTimeOut(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    const/4 v1, 0x1

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V
    invoke-static {v0, v1, v2, v3, v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V

    goto :goto_0

    :cond_2
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_2
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_STATUS_EVENT_CALLBACK: calls sendStatusEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    .local v10, st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStFreq:I
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v1

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRssi:I
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$600(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v2

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRadioIsOn:Z
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$700(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z

    move-result v3

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramType:I
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$800(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v4

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramService:Ljava/lang/String;
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$900(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsRadioText:Ljava/lang/String;
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1000(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStRdsProgramTypeName:Ljava/lang/String;
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1100(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v7

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->mStIsMute:Z
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1200(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    invoke-static/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .end local v10           #st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    :pswitch_3
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_SEARCH_EVENT_CALLBACK: calls sendSeekCompleteEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    .local v10, st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStFreq:I
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1300(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I

    move-result v1

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStRssi:I
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1400(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I

    move-result v2

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->mStSeekSuccess:Z
    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)Z

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V

    goto/16 :goto_0

    .end local v10           #st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    :pswitch_4
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_RDS_EVENT_CALLBACK: calls sendRdsModeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V
    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_RDS_DATA_EVENT_CALLBACK: calls sendRdsDataEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V

    goto/16 :goto_0

    .restart local p0
    :pswitch_6
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_AUDIO_MODE_EVENT_CALLBACK: calls sendAudioModeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_AUDIO_PATH_EVENT_CALLBACK: calls sendAudioPathEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_REGION_EVENT_CALLBACK: calls sendWorldRegionEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_NFE_EVENT_CALLBACK: calls sendEstimateNflEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_LIVE_AUDIO_EVENT_CALLBACK: calls sendLiveAudioQualityEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_VOLUME_EVENT_CALLBACK: calls sendVolumeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V
    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
