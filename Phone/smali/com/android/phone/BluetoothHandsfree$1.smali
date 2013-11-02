.class Lcom/android/phone/BluetoothHandsfree$1;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x4

    const-string v0, "BT HS/HF"

    .line 1148
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 1149
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1232
    .end local p0
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1233
    return-void

    .line 1151
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/bluetooth/ScoSocket;

    invoke-virtual {p0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1152
    const-string v0, "BT HS/HF"

    const-string v2, "Closing Rejected incoming SCO (50ms delay)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1155
    .restart local p0
    :pswitch_1
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1158
    const-string v0, "BT HS/HF"

    const-string v2, "Routing audio for incoming SCO connection"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1160
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastCallStateChange(I)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;I)V

    .line 1171
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1172
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->accept()Z

    goto :goto_0

    .line 1163
    :cond_3
    const-string v0, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting incoming SCO connection: mAudioPossible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alllowAudioAnytime(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mScoConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v2, 0x7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1175
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1177
    const-string v0, "Routing audio for outgoing SCO conection"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1179
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastCallStateChange(I)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;I)V

    .line 1186
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 1181
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 1182
    const-string v0, "Rejecting new connected outgoing SCO socket"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1184
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    goto :goto_2

    .line 1189
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    if-ne v2, v0, :cond_6

    .line 1192
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1193
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1194
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1195
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastCallStateChange(I)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;I)V

    goto/16 :goto_0

    .line 1196
    :cond_6
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    if-ne v2, v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1198
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 1202
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1204
    const-string v0, "BT HS/HF"

    const-string v2, "Timeout waiting for call to start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1212
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1214
    const-string v0, "BT HS/HF"

    const-string v2, "Timeout waiting for voice recognition to start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const-string v0, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Starting SCO anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1223
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1226
    :cond_7
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 1228
    :cond_8
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
