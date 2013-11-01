.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, action:Ljava/lang/String;
    const-string v22, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .local v10, device:Landroid/bluetooth/BluetoothDevice;
    const-string v22, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "android.bluetooth.adapter.extra.STATE"

    const/high16 v23, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .local v20, state:I
    packed-switch v20, :pswitch_data_0

    .end local v20           #state:I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local v20       #state:I
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .end local v20           #state:I
    :cond_1
    const-string v22, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v23, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, bondState:I
    if-nez v10, :cond_2

    const-string v22, "BluetoothA2dpService"

    const-string v23, "Error! device is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    packed-switch v8, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move-object v1, v10

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move-object v1, v10

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .end local v8           #bondState:I
    :cond_3
    const-string v22, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    monitor-enter p0

    if-nez v10, :cond_4

    :try_start_0
    const-string v22, "BluetoothA2dpService"

    const-string v23, "Error! device is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_0

    .end local p1
    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .restart local p1
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .restart local v20       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v10

    move/from16 v2, v20

    move/from16 v3, v23

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .end local v20           #state:I
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .restart local p1
    :cond_6
    const-string v22, "android.media.VOLUME_CHANGED_ACTION"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const-string v22, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .local v21, streamType:I
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    .local v19, sinks:[Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v19, v23

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x0

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .local v6, address:Ljava/lang/String;
    const-string v22, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .local v15, newVolLevel:I
    const-string v22, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .local v16, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, path:Ljava/lang/String;
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v6           #address:Ljava/lang/String;
    .end local v15           #newVolLevel:I
    .end local v16           #oldVolLevel:I
    .end local v17           #path:Ljava/lang/String;
    .end local v19           #sinks:[Landroid/bluetooth/BluetoothDevice;
    .end local v21           #streamType:I
    :cond_8
    const-string v22, "com.android.music.metachanged"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    const-string v22, "id"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .local v11, extra:J
    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_c

    const-wide/16 v11, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "ListSize"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_d

    const-wide/16 v11, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "duration"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_e

    const-wide/16 v11, 0x0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "position"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_f

    const-wide/16 v11, 0x0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v11

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    const-string v22, "BluetoothA2dpService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Meta data info is trackname: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " artist: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "BluetoothA2dpService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mMediaNumber: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mediaCount "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "BluetoothA2dpService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mPostion "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " album: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "duration "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v14, v7

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_0

    aget-object v17, v7, v13

    .restart local v17       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-wide/from16 v3, v24

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v11           #extra:J
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #path:Ljava/lang/String;
    :cond_10
    const-string v22, "com.android.music.playstatechanged"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const-string v22, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, currentTrackName:Ljava/lang/String;
    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v9

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    :cond_13
    const-string v22, "id"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .restart local v11       #extra:J
    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_14

    const-wide/16 v11, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "ListSize"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_15

    const-wide/16 v11, 0x0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "duration"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_16

    const-wide/16 v11, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    const-string v22, "position"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_17

    const-wide/16 v11, 0x0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v11

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v7

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v14, v7

    .restart local v14       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_2
    if-ge v13, v14, :cond_18

    aget-object v17, v7, v13

    .restart local v17       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v11           #extra:J
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #path:Ljava/lang/String;
    :cond_18
    const-string v22, "playing"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .local v18, playStatus:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "position"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v24}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v24}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-wide/from16 v2, v24

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v23

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;I)I

    const-string v22, "BluetoothA2dpService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PlayState changed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v7

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v14, v7

    .restart local v14       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_3
    if-ge v13, v14, :cond_0

    aget-object v17, v7, v13

    .restart local v17       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-wide/from16 v3, v24

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #currentTrackName:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #path:Ljava/lang/String;
    .end local v18           #playStatus:Z
    :cond_1a
    const-string v22, "com.android.music.playstatusresponse"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, "BluetoothA2dpService"

    const-string v23, "Received PLAYSTATUS_RESPONSE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "duration"

    const-wide/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .restart local v11       #extra:J
    const-wide/16 v22, 0x0

    cmp-long v22, v11, v22

    if-gez v22, :cond_1b

    const-wide/16 v11, 0x0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$1802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-string v23, "position"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v24}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v22}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v22 .. v24}, Landroid/server/BluetoothA2dpService;->access$1902(Landroid/server/BluetoothA2dpService;J)J

    :cond_1c
    const-string v22, "playing"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .restart local v18       #playStatus:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v24, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v24 .. v24}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-wide/from16 v2, v24

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v23

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;I)I

    const-string v22, "BluetoothA2dpService"

    const-string v23, "Sending Playstatus"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v23, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v23

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
