.class Lcom/android/phone/BluetoothHeadsetService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 258
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 259
    .local v2, currDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v7, 0x0

    .line 260
    .local v7, state:I
    if-eqz v2, :cond_0

    .line 261
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {p1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v7

    .line 264
    :cond_0
    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    :cond_1
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 269
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :cond_2
    :goto_0
    return-void

    .line 271
    :cond_3
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 272
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mSlcWaitingDevices:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 276
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->adjustPriorities()V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 277
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 278
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    goto :goto_0

    .line 281
    :pswitch_1
    if-eqz v2, :cond_4

    .line 284
    :try_start_1
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 289
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 292
    const-string v9, "BT HSHFP"

    const-string v10, "HSP/HFP profile has been disconnected."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v5, i:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.PROFILE"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v5, v10}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v5           #i:Landroid/content/Intent;
    :catch_0
    move-exception v9

    move-object v4, v9

    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "BT HSHFP"

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v9, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 299
    const-string v9, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, bondState:I
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 308
    :pswitch_3
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v10, -0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v9, v3, v10}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 303
    :pswitch_4
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v9, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 304
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/16 v10, 0x64

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v9, v3, v10}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 311
    .end local v1           #bondState:I
    :cond_6
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 312
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 313
    .local v8, streamType:I
    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    .line 314
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    const-string v10, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    goto/16 :goto_0

    .line 318
    .end local v8           #streamType:I
    :cond_7
    const-string v9, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 319
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 321
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v9, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 323
    :cond_8
    const-string v9, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 324
    const-string v9, "android.bluetooth.headset.extra.STATE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 325
    .local v6, newState:I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 326
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->removeSlcTimer(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v9, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 270
    .end local v6           #newState:I
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 301
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
