.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, -0x1

    const/4 v9, 0x1

    const-string v13, "0"

    const-string v8, "BluetoothService"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    :pswitch_3
    const-string v6, "BluetoothService"

    const-string v6, "Registering hfag record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "hfag"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_4
    const-string v6, "BluetoothService"

    const-string v6, "Registering hsag record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "hsag"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_5
    const-string v6, "BluetoothService"

    const-string v6, "Registering opush record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "opush"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_6
    const-string v6, "BluetoothService"

    const-string v6, "Registering pbap record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "pbap"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_7
    const-string v6, "BluetoothService"

    const-string v6, "Registering map record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "map"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_8
    const-string v6, "BluetoothService"

    const-string v6, "Registering map record instance id 1"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "mapOne"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v7, v9, v8, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mSAPenable:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v6

    if-ne v6, v9, :cond_0

    const-string v6, "BluetoothService"

    const-string v6, "Registering SAP record"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "sapd"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v6, "BluetoothService"

    const-string v6, "Received MESSAGE_FINISH_DISABLE"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDisableSaveSetting:Z
    invoke-static {v7}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Z

    move-result v7

    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v6, v7}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #address:Ljava/lang/String;
    :pswitch_c
    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, mode:I
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v7, 0x15

    invoke-virtual {v6, v7, v10}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .end local v3           #mode:I
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/16 v7, 0xd

    invoke-virtual {v6, v0, v7, v9}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v0           #address:Ljava/lang/String;
    :pswitch_e
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mSAPenable:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v6

    if-ne v6, v9, :cond_1

    const-string v6, "BluetoothService"

    const-string v6, "Starting BT-SAP server"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "bt-sap"

    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :cond_1
    :pswitch_f
    const-string v6, "BluetoothService"

    const-string v6, "Received BT_BOOTUP message"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "service.brcm.bt.soft_onoff"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, soft_onoff_prop:Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v6, "0"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "service.brcm.bt.hcid_active"

    const-string v7, "0"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "service.brcm.bt.srv_active"

    const-string v7, "0"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "service.brcm.bt.btld"

    const-string v7, "0"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "service.brcm.bt.activation"

    const-string v7, "0"

    invoke-static {v6, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, bluetoothOn:I
    if-lez v1, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v9}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .end local v1           #bluetoothOn:I
    .end local v5           #soft_onoff_prop:Ljava/lang/String;
    :pswitch_10
    const-string v6, "BluetoothService"

    const-string v6, "discoverable change timeout"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getAllProperties()V

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v4

    .local v4, newMode:I
    const/16 v6, 0x17

    if-ne v4, v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #newMode:I
    :pswitch_11
    const-string v6, "BluetoothService"

    const-string v6, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "service.brcm.bt.avrcp_pass_thru"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    const-string v6, "BluetoothService"

    const-string v6, "Oops: Received MESSAGE_PROFILE_DISCONNECT_TIMEOUT"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "BluetoothService"

    const-string v6, "Oops: Force to disable BT even though HSP/HFP is yet to be disconnected"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BluetoothService"

    const-string v6, "Oops: Force to disable BT even though A2DP is yet to be disconnected"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "BluetoothService"

    const-string v6, "Oops: Force to disable BT even though HID is yet to be disconnected"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Oops: mAclLinkCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v7}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", for BT down"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    move v7, v9

    :goto_1
    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v6, v7}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
