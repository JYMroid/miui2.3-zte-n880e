.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 420
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 421
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handler: ignoring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; we\'re destroyed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 628
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 424
    .restart local p0
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 425
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handler: handling message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " while not in foreground"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 433
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 434
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 477
    :sswitch_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v6, p0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 436
    .restart local p0
    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v6, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 440
    .restart local p0
    :sswitch_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v6, p0}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 444
    .restart local p0
    :sswitch_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v6, p0}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 456
    .restart local p0
    :sswitch_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 457
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v10, :cond_3

    .line 460
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->isTouchLocked()Z
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 461
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    .line 467
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 468
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallTouchUi;->resetSpeaker()V

    .line 469
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallTouchUi;->resetHangUp()V

    .line 473
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 481
    :sswitch_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel(Lcom/android/internal/telephony/Phone;)V
    invoke-static {v6, p0}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 492
    .restart local p0
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 493
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 494
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 496
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 497
    .local v5, phoneType:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 498
    invoke-static {v4, v0, v3, v11, v11}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 499
    :cond_5
    if-ne v5, v10, :cond_0

    .line 500
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v6, v7, :cond_0

    .line 501
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "Got MMI_COMPLETE, finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 503
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v6, v9, v10}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 505
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 511
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    .end local v5           #phoneType:I
    :sswitch_7
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-char v7, v7

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v6, p0, v7}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 515
    .restart local p0
    :sswitch_8
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 519
    :sswitch_9
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 523
    :sswitch_a
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    invoke-static {v6, p0}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 528
    .restart local p0
    :sswitch_b
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6, v10}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 532
    :sswitch_c
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 541
    :sswitch_d
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 546
    :sswitch_e
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 552
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 556
    :sswitch_f
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 557
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 560
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 563
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    .line 564
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 569
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_10
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 570
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_0

    .line 573
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v9}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 576
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 581
    :sswitch_11
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v6, :cond_0

    .line 582
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v6, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 587
    .restart local p0
    :sswitch_12
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v6, :cond_0

    .line 588
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v6}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 593
    :sswitch_13
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v6, :cond_0

    .line 594
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v6}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 599
    :sswitch_14
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 600
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 601
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 602
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/phone/InCallScreen;->access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 607
    :sswitch_15
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v6, v9}, Lcom/android/phone/InCallScreen;->access$1902(Lcom/android/phone/InCallScreen;Z)Z

    .line 608
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 612
    :sswitch_16
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 616
    :sswitch_17
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "DELAYED_CDMA_HOLD_HANDLE"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(I)V

    .line 618
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    .line 619
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mNotUpdateMenu:Z
    invoke-static {v6, v9}, Lcom/android/phone/InCallScreen;->access$2202(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_0

    .line 624
    :sswitch_18
    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->showExitingECMDialog()V
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_1
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7a -> :sswitch_16
        0x7b -> :sswitch_17
        0x7c -> :sswitch_18
    .end sparse-switch
.end method
