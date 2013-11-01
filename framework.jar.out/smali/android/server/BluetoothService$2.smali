.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .local v3, action:Ljava/lang/String;
    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "BluetoothService"

    const-string v16, " Received BOOT_COMPLETED message"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0xbb8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string v15, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .local v10, extras:Landroid/os/Bundle;
    const-string v15, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/16 v16, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, state:I
    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Got Call State change - new call state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "service.brcm.bt.call_active"

    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const-string v16, "1"

    :goto_1
    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0xb

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    const-string v15, "service.brcm.bt.avrcp_pass_thru"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0xb

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/16 v17, 0x1

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const-wide/16 v17, 0x1388

    :goto_2
    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    const-string v16, "0"

    goto :goto_1

    :cond_4
    const-wide/16 v17, 0x1388

    goto :goto_2

    .end local v10           #extras:Landroid/os/Bundle;
    .end local v13           #state:I
    :cond_5
    const-string v15, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .local v12, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x1

    move v9, v15

    .local v9, enabled:Z
    :goto_3
    const-string v15, "bluetooth_on"

    const/16 v16, 0x0

    move-object v0, v12

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_0

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .end local v9           #enabled:Z
    :cond_6
    const/4 v15, 0x0

    move v9, v15

    goto :goto_3

    .restart local v9       #enabled:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .end local v9           #enabled:Z
    .end local v12           #resolver:Landroid/content/ContentResolver;
    :cond_8
    const-string v15, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v15, "android.intent.extra.DOCK_STATE"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_9

    const/4 v15, 0x0

    invoke-static {v15}, Landroid/server/BluetoothService;->access$3602(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/server/BluetoothService;->access$3702(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v15

    const-string v16, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dock_bluetooth_address"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/server/BluetoothService;->access$3600()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #state:I
    :cond_a
    const-string v15, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    invoke-static {v15}, Landroid/server/BluetoothService;->access$1008(Landroid/server/BluetoothService;)I

    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ACL connected, mAclLinkCount = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v15, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    invoke-static {v15}, Landroid/server/BluetoothService;->access$1010(Landroid/server/BluetoothService;)I

    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ACL disconnected, mAclLinkCount = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0xc8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_c
    const-string v15, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .restart local v10       #extras:Landroid/os/Bundle;
    const-string v15, "android.bluetooth.device.extra.PROFILE"

    const/16 v16, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .local v11, profile:I
    const/4 v14, 0x0

    .local v14, waitingForThisProfile:Z
    const-string v15, "BluetoothService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received profile "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " disconnected intent."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v11, :pswitch_data_0

    :goto_4
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mDisableSaveSetting:Z
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Z

    move-result v16

    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static/range {v15 .. v16}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static/range {v15 .. v16}, Landroid/server/BluetoothService;->access$602(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static/range {v15 .. v16}, Landroid/server/BluetoothService;->access$702(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v15}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static/range {v15 .. v16}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Z)Z

    goto/16 :goto_4

    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #profile:I
    .end local v14           #waitingForThisProfile:Z
    :cond_d
    const-string v15, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, audioState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$3800(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v15

    const/16 v16, 0x1

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    :goto_5
    invoke-virtual/range {v15 .. v16}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_e
    const/16 v16, 0x0

    goto :goto_5

    .end local v6           #audioState:I
    :cond_f
    const-string v15, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    new-instance v7, Landroid/bluetooth/BluetoothA2dp;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .local v7, btA2dp:Landroid/bluetooth/BluetoothA2dp;
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$3800(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v15

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->isPlayingSink()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v15, "BluetoothService"

    const-string v16, "BluetoothA2dp service not available"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #btA2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_11
    const-string v15, "com.android.bluetooth.sap.accessallowed"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const-string v15, "BluetoothService"

    const-string v16, "Received SAP_ACCESS_ALLOWED_ACTION"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "address"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, address:Ljava/lang/String;
    const-string v15, "com.android.bluetooth.sap.alwaysallowed"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, alwaysAllow:Z
    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    if-eqz v5, :cond_0

    const-string v15, "BluetoothService"

    const-string v16, "Setting trust state to true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_12
    const-string v15, "BluetoothService"

    const-string v16, "address is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #address:Ljava/lang/String;
    .end local v5           #alwaysAllow:Z
    :cond_13
    const-string v15, "com.android.bluetooth.sap.accessdisallowed"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "BluetoothService"

    const-string v16, "Received SAP_ACCESS_DISALLOWED_ACTION"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "address"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #address:Ljava/lang/String;
    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_14
    const-string v15, "BluetoothService"

    const-string v16, "address is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
