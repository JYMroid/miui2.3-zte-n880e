.class Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1605
    .local v3, action:Ljava/lang/String;
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Action intent recieved:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const-string v14, "phone_subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v15

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1608
    .local v13, subscription:I
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1614
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1615
    .local v6, enabled:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    if-ge v7, v14, :cond_2

    .line 1616
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    if-nez v6, :cond_0

    const/4 v15, 0x1

    :goto_1
    invoke-interface {v14, v15}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1615
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1616
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 1619
    .end local v6           #enabled:Z
    .end local v7           #i:I
    :cond_1
    const-string v14, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const-string v15, "android.bluetooth.headset.extra.STATE"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 1622
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==> new state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1746
    :cond_2
    :goto_2
    return-void

    .line 1625
    :cond_3
    const-string v14, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const-string v15, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 1629
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==> new state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto :goto_2

    .line 1632
    :cond_4
    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1633
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "- reason: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/4 v4, 0x0

    .line 1642
    .local v4, disconnectedDueToRoaming:Z
    const-string v14, "DISCONNECTED"

    const-string v15, "state"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1643
    const-string v14, "reason"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1644
    .local v11, reason:Ljava/lang/String;
    const-string v14, "roamingOn"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1648
    const/4 v4, 0x1

    .line 1651
    .end local v11           #reason:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_6

    const/16 v15, 0xa

    :goto_3
    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_6
    const/16 v15, 0xb

    goto :goto_3

    .line 1654
    .end local v4           #disconnectedDueToRoaming:Z
    :cond_7
    const-string v14, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1655
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "state"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const-string v15, "state"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    :goto_4
    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v14, v15}, Lcom/android/phone/PhoneApp;->access$1102(Lcom/android/phone/PhoneApp;Z)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x7

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1658
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 1660
    :cond_9
    const-string v14, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1661
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: ACTION_BATTERY_LOW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_2

    .line 1663
    :cond_a
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x8

    const-string v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1673
    :cond_b
    const-string v14, "ss"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1674
    .local v8, iccState:Ljava/lang/String;
    const-string v14, "reason"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1675
    .restart local v11       #reason:Ljava/lang/String;
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "iccState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",reason = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #calls: Lcom/android/phone/PhoneApp;->handleSimStateChange()V
    invoke-static {v14}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)V

    .line 1685
    const-string v14, "PUK"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #calls: Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;
    invoke-static {v14, v13}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;I)Lcom/android/phone/SinglePhone;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    .line 1691
    :goto_5
    if-eqz v11, :cond_2

    const-string v14, "LOCKED"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090001

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1694
    const-string v14, "PhoneApp"

    const-string v15, "Ignoring ICC Perso Locked event not showing Depersonalization screen for PIN entry"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1688
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #calls: Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;
    invoke-static {v14, v13}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;I)Lcom/android/phone/SinglePhone;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    goto :goto_5

    .line 1697
    :cond_d
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received SIM_STATE_CHANGED intent for Perso Locked on sub="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #calls: Lcom/android/phone/PhoneApp;->showDepersonalizationScreen(Ljava/lang/String;I)V
    invoke-static {v14, v11, v13}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1702
    .end local v8           #iccState:Ljava/lang/String;
    .end local v11           #reason:Ljava/lang/String;
    :cond_e
    const-string v14, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1703
    const-string v14, "phoneName"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1704
    .local v9, newPhone:Ljava/lang/String;
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Radio technology switched. Now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is active."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1706
    .end local v9           #newPhone:Ljava/lang/String;
    :cond_f
    const-string v14, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1707
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 1708
    .local v10, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v10

    #calls: Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2

    .line 1709
    .end local v10           #phone:Lcom/android/internal/telephony/Phone;
    :cond_10
    const-string v14, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1710
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 1711
    .restart local v10       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_11

    .line 1712
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Emergency Callback Mode arrived in PhoneApp on Sub ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string v14, "phoneinECMState"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1716
    new-instance v5, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/EmergencyCallbackModeService;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1717
    .local v5, ecbmIntent:Landroid/content/Intent;
    const-string v14, "Subscription"

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 1721
    .end local v5           #ecbmIntent:Landroid/content/Intent;
    :cond_11
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error! Emergency Callback Mode not supported for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " phones"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1724
    .end local v10           #phone:Lcom/android/internal/telephony/Phone;
    :cond_12
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1725
    const-string v14, "android.intent.extra.DOCK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 1727
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ACTION_DOCK_EVENT -> mDockState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/phone/PhoneApp;->mDockState:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xd

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1729
    :cond_13
    const-string v14, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    const-string v15, "ttyPreferredMode"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v14, v15}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;I)I

    .line 1732
    const-string v14, "PhoneApp"

    const-string v15, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    mode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xe

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1735
    :cond_14
    const-string v14, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1736
    const-string v14, "android.media.EXTRA_RINGER_MODE"

    const/4 v15, 0x2

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1738
    .local v12, ringerMode:I
    if-nez v12, :cond_2

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v14}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_2

    .line 1741
    .end local v12           #ringerMode:I
    :cond_15
    const-string v14, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1742
    const-string v14, "PhoneApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Default subscription changed, subscription: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    #setter for: Lcom/android/phone/PhoneApp;->mDefaultSubscription:I
    invoke-static {v14, v13}, Lcom/android/phone/PhoneApp;->access$1602(Lcom/android/phone/PhoneApp;I)I

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    invoke-virtual {v14, v13}, Lcom/android/phone/PhoneApp;->setDefaultPhone(I)V

    goto/16 :goto_2
.end method
