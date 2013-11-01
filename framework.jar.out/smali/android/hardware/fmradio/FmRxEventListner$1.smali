.class Landroid/hardware/fmradio/FmRxEventListner$1;
.super Ljava/lang/Thread;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmRxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-string v5, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    const-string v8, "FMRadio"

    const-string v5, "FMRadio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x0

    .local v3, index:I
    const/4 v4, 0x0

    .local v4, state:I
    const/16 v5, 0x40

    :try_start_0
    new-array v0, v5, [B

    .local v0, buff:[B
    iget v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .local v1, eventCount:I
    if-ltz v1, :cond_1

    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received event. Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v5, v0, v3

    packed-switch v5, :pswitch_data_0

    const-string v5, "FMRadio"

    const-string v6, "Unknown event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_0
    const-string v5, "FMRadio"

    const-string v6, "Got READY_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : FMRxStarting ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvEnableReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "FMRadio"

    const-string v5, "RunningThread InterruptedException"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #buff:[B
    .restart local v1       #eventCount:I
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : FMTurningOff ---> NEW-STATE : FMOff"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/dev/radio0"

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvDisableReceiver()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :pswitch_1
    const-string v5, "FMRadio"

    const-string v6, "Got TUNE_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v6, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioTuneStatus(I)V

    goto :goto_2

    :pswitch_2
    const-string v5, "FMRadio"

    const-string v6, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/fmradio/FmReceiver;->getSearchState()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_3
    goto :goto_2

    :pswitch_4
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v6, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchComplete(I)V

    goto/16 :goto_2

    :pswitch_5
    const-string v5, "FMRadio"

    const-string v6, "Current state is SRCH_ABORTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "FMRadio"

    const-string v6, "Aborting on-going search command..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchCancelled()V

    goto/16 :goto_2

    :pswitch_6
    const-string v5, "FMRadio"

    const-string v6, "Got SCAN_NEXT_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchInProgress()V

    goto/16 :goto_2

    :pswitch_7
    const-string v5, "FMRadio"

    const-string v6, "Got RAW_RDS_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsGroupData()V

    goto/16 :goto_2

    :pswitch_8
    const-string v5, "FMRadio"

    const-string v6, "Got RT_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsRtInfo()V

    goto/16 :goto_2

    :pswitch_9
    const-string v5, "FMRadio"

    const-string v6, "Got PS_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsPsInfo()V

    goto/16 :goto_2

    :pswitch_a
    const-string v5, "FMRadio"

    const-string v6, "Got ERROR_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_b
    const-string v5, "FMRadio"

    const-string v6, "Got BELOW_TH_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    :pswitch_c
    const-string v5, "FMRadio"

    const-string v6, "Got ABOVE_TH_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    :pswitch_d
    const-string v5, "FMRadio"

    const-string v6, "Got STEREO_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    :pswitch_e
    const-string v5, "FMRadio"

    const-string v6, "Got MONO_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    :pswitch_f
    const-string v5, "FMRadio"

    const-string v6, "Got RDS_AVAL_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    :pswitch_10
    const-string v5, "FMRadio"

    const-string v6, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    :pswitch_11
    const-string v5, "FMRadio"

    const-string v6, "Got NEW_SRCH_LIST"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/fmradio/FmReceiver;->getSearchState()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :pswitch_12
    goto/16 :goto_2

    :pswitch_13
    const-string v5, "FMRadio"

    const-string v6, "FmRxEventListener: Current state is AUTO_PRESET_INPROGRESS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchListComplete()V

    goto/16 :goto_2

    :pswitch_14
    const-string v5, "FMRadio"

    const-string v6, "Current state is SRCH_ABORTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "FMRadio"

    const-string v6, "Aborting on-going SearchList command..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchCancelled()V

    goto/16 :goto_2

    :pswitch_15
    const-string v5, "FMRadio"

    const-string v6, "Got NEW_AF_LIST"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsAfInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    .end local v3           #index:I
    .end local v4           #state:I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_14
    .end packed-switch
.end method
