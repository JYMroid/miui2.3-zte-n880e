.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .local v11, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .local v18, dockState:I
    packed-switch v18, :pswitch_data_0

    const/16 v16, 0x0

    .local v16, config:I
    :goto_0
    const/4 v3, 0x3

    move v0, v3

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .end local v16           #config:I
    .end local v18           #dockState:I
    .end local p1
    :cond_0
    :goto_1
    return-void

    .restart local v18       #dockState:I
    .restart local p1
    :pswitch_0
    const/16 v16, 0x7

    .restart local v16       #config:I
    goto :goto_0

    .end local v16           #config:I
    :pswitch_1
    const/16 v16, 0x6

    .restart local v16       #config:I
    goto :goto_0

    .end local v16           #config:I
    .end local v18           #dockState:I
    :cond_1
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .local v25, state:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .local v15, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .local v12, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move/from16 v19, v3

    .local v19, isConnected:Z
    :goto_2
    if-eqz v19, :cond_4

    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_4

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v3, v12}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1

    .end local v19           #isConnected:Z
    :cond_2
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_2

    .restart local v19       #isConnected:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v12}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-nez v19, :cond_0

    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x4

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_0

    :cond_5
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v3, v12}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v3, v12}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static {v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_3

    .end local v12           #address:Ljava/lang/String;
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v19           #isConnected:Z
    .end local v25           #state:I
    .restart local p1
    :cond_8
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "android.bluetooth.headset.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .restart local v25       #state:I
    const/16 v17, 0x10

    .local v17, device:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .restart local v15       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v12, 0x0

    .restart local v12       #address:Ljava/lang/String;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v14

    .local v14, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .end local v14           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    move/from16 v19, v3

    .restart local v19       #isConnected:Z
    :goto_5
    if-eqz v19, :cond_b

    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_b

    const/4 v3, 0x0

    move/from16 v0, v17

    move v1, v3

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$2002(Landroid/media/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_1

    .end local v19           #isConnected:Z
    .restart local v14       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v17, 0x20

    goto :goto_4

    :sswitch_1
    const/16 v17, 0x40

    goto :goto_4

    .end local v14           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_a
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_5

    .restart local v19       #isConnected:Z
    :cond_b
    if-nez v19, :cond_0

    const/4 v3, 0x2

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    move-object v0, v4

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$2002(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .end local v12           #address:Ljava/lang/String;
    .end local v15           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v17           #device:I
    .end local v19           #isConnected:Z
    .end local v25           #state:I
    .restart local p1
    :cond_c
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .restart local v25       #state:I
    const-string v3, "microphone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .local v21, microphone:I
    const-string v3, "speaker"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .local v24, speaker:I
    const-string v3, "anc"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .local v13, anc:I
    const-string v3, "name"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, name:Ljava/lang/String;
    if-eqz v21, :cond_d

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    .restart local v19       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    .local v20, isancConnected:Z
    if-nez v25, :cond_f

    if-eqz v19, :cond_f

    if-nez v20, :cond_f

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v19           #isConnected:Z
    .end local v20           #isancConnected:Z
    :cond_d
    :goto_6
    if-eqz v21, :cond_e

    if-nez v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    .restart local v19       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    .restart local v20       #isancConnected:Z
    if-nez v25, :cond_12

    if-eqz v19, :cond_12

    const/high16 v3, 0x40

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v19           #isConnected:Z
    .end local v20           #isancConnected:Z
    :cond_e
    :goto_7
    if-nez v21, :cond_0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    .restart local v19       #isConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    .restart local v20       #isancConnected:Z
    if-nez v25, :cond_15

    if-eqz v19, :cond_15

    if-nez v20, :cond_15

    const-string v3, "AudioService"

    const-string v4, "if (state == 0 && isConnected && !isancConnected) {"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    if-nez v25, :cond_10

    if-eqz v20, :cond_10

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_d

    if-nez v19, :cond_d

    if-nez v20, :cond_d

    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    if-ne v13, v3, :cond_11

    const/16 v3, 0x1000

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v13, :cond_d

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_12
    if-nez v25, :cond_13

    if-eqz v20, :cond_13

    const/high16 v3, 0x100

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_13
    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_e

    if-nez v19, :cond_e

    if-nez v20, :cond_e

    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    if-ne v13, v3, :cond_14

    const/high16 v3, 0x100

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_14
    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v13, :cond_e

    const/high16 v3, 0x40

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_15
    if-nez v25, :cond_16

    if-eqz v20, :cond_16

    const-string v3, "AudioService"

    const-string v4, "} else if (state == 0 && isancConnected) {"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_16
    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_0

    if-nez v19, :cond_0

    if-nez v20, :cond_0

    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    if-ne v13, v3, :cond_17

    const/16 v3, 0x2000

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x2000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_17
    const-string v3, "Headset"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v13, :cond_0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v13           #anc:I
    .end local v19           #isConnected:Z
    .end local v20           #isancConnected:Z
    .end local v21           #microphone:I
    .end local v22           #name:Ljava/lang/String;
    .end local v24           #speaker:I
    .end local v25           #state:I
    :cond_18
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const-string v26, "off"

    .local v26, tty_mode:Ljava/lang/String;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tty_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v26           #tty_mode:Ljava/lang/String;
    :pswitch_2
    const-string v26, "full"

    .restart local v26       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v26           #tty_mode:Ljava/lang/String;
    :pswitch_3
    const-string v26, "vco"

    .restart local v26       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v26           #tty_mode:Ljava/lang/String;
    :pswitch_4
    const-string v26, "hco"

    .restart local v26       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v26           #tty_mode:Ljava/lang/String;
    :cond_19
    const-string v3, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .restart local v25       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    packed-switch v25, :pswitch_data_2

    const/16 v25, -0x1

    :goto_9
    const/4 v4, -0x1

    move/from16 v0, v25

    move v1, v4

    if-eq v0, v1, :cond_1a

    new-instance v23, Landroid/content/Intent;

    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v23, newIntent:Landroid/content/Intent;
    const-string v4, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v23

    move-object v1, v4

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v23           #newIntent:Landroid/content/Intent;
    :cond_1a
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_5
    const/16 v25, 0x1

    goto :goto_9

    :pswitch_6
    const/16 v25, 0x0

    goto :goto_9

    .end local v25           #state:I
    :cond_1b
    const-string v3, "HDMI_CONNECTED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "AudioService"

    const-string v4, "HDMI connected"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x400

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1c
    const-string v3, "HDMI_DISCONNECTED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "AudioService"

    const-string v4, "HDMI disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x400

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1d
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$5302(Landroid/media/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x9

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    new-instance v23, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v23       #newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v23           #newIntent:Landroid/content/Intent;
    :cond_1e
    const-string v3, "android.intent.action.FM"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "AudioService"

    const-string v4, "FM Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .restart local v25       #state:I
    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_1f

    const/16 v3, 0x800

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1f
    if-nez v25, :cond_0

    const/16 v3, 0x800

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v25           #state:I
    :cond_20
    const-string v3, "android.intent.action.FMTX"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .restart local v25       #state:I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FM Tx Intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    .restart local v19       #isConnected:Z
    const/4 v3, 0x1

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_21

    if-nez v19, :cond_21

    const/16 v3, 0x4000

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x4000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_21
    if-nez v25, :cond_0

    if-eqz v19, :cond_0

    const/16 v3, 0x4000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v3, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
