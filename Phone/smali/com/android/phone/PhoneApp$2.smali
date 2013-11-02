.class Lcom/android/phone/PhoneApp$2;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "PhoneApp"

    .line 358
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->checkPhoneType()V

    .line 359
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 529
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 366
    .restart local p0
    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 372
    :sswitch_2
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 374
    const-string v6, "PhoneApp"

    const-string v6, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 384
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 385
    .local v4, sub:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 387
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    if-nez v6, :cond_2

    .line 388
    const-string v6, "PhoneApp"

    const-string v6, "ndpPanel==null"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v6, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show network deperso panel for sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    new-instance v7, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    .line 397
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v6}, Lcom/android/phone/IccDepersonalizationPanel;->show()V

    goto :goto_0

    .line 399
    :cond_2
    const-string v6, "PhoneApp"

    const-string v6, "ndpPanel!=null"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #sub:I
    :sswitch_3
    const-string v6, "PhoneApp"

    const-string v6, "- updating in-call notification from handler..."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 416
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 420
    :sswitch_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    .line 424
    :sswitch_6
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v6, p0}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 428
    .restart local p0
    :sswitch_7
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 437
    :sswitch_8
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 439
    .local v3, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_4

    .line 440
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v6

    if-nez v6, :cond_4

    .line 441
    :cond_3
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_5

    .line 443
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 452
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v3}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 455
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 456
    const/16 v6, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/PhoneApp$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/PhoneApp$2;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 447
    :cond_5
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 464
    .end local v3           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v7, "READY"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 469
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 470
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v6, v10}, Lcom/android/phone/PhoneApp;->access$502(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 472
    :cond_6
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 473
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 474
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6, v10}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 486
    :sswitch_a
    const/4 v1, 0x0

    .line 487
    .local v1, inDockMode:Z
    sget v6, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eq v6, v9, :cond_7

    sget v6, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 489
    :cond_7
    const/4 v1, 0x1

    .line 491
    :cond_8
    const-string v6, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 495
    .restart local v3       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 498
    :cond_9
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 500
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 501
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    goto/16 :goto_0

    .line 509
    .end local v1           #inDockMode:Z
    .end local v3           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_b
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 510
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v5

    .line 514
    .local v5, ttyMode:I
    :goto_2
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 512
    .end local v5           #ttyMode:I
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #ttyMode:I
    goto :goto_2

    .line 518
    .end local v5           #ttyMode:I
    :sswitch_c
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 522
    :sswitch_d
    iget-object v6, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
