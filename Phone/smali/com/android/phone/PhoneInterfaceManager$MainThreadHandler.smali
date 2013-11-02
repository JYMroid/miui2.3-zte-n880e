.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v22

    .line 196
    .local v22, sub:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 444
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local p0
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 199
    .local v19, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg2:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 200
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 201
    .local v16, phone:Lcom/android/internal/telephony/Phone;
    const-string v4, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_HANDLE_PIN_MMI: sub :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 205
    monitor-enter v19

    .line 206
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 211
    .end local v16           #phone:Lcom/android/internal/telephony/Phone;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 212
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 214
    .local v12, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v12}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 218
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 219
    .local v13, ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 220
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 227
    :goto_1
    monitor-enter v19

    .line 228
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 229
    monitor-exit v19

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 224
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 233
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 237
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 241
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 242
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v15, 0x0

    .line 243
    .local v15, hungUp:Z
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ending call on subscription ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 248
    .restart local v16       #phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 249
    .local v17, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xuyang phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 254
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v15

    .line 269
    :goto_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 271
    monitor-enter v19

    .line 272
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit v19

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 255
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 257
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v15

    goto :goto_2

    .line 259
    :cond_3
    const/4 v4, 0x3

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const-string v5, "xuyang end sip call"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v15

    goto :goto_2

    .line 266
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    .end local v15           #hungUp:Z
    .end local v16           #phone:Lcom/android/internal/telephony/Phone;
    .end local v17           #phoneType:I
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p1
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 278
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 279
    .restart local v12       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 283
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 284
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 285
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object v0, v13

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 287
    monitor-enter v19

    .line 288
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit v19

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v4

    .line 293
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 294
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_0

    .line 298
    .end local v13           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 299
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 300
    .local v23, subscription:I
    const/16 v4, 0xb

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 301
    .restart local v12       #onCompleted:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ProxyManager;->getInstance()Lcom/android/internal/telephony/ProxyManager;

    move-result-object v18

    .line 302
    .local v18, proxyManager:Lcom/android/internal/telephony/ProxyManager;
    if-eqz v18, :cond_5

    .line 303
    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ProxyManager;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 307
    :cond_5
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 308
    monitor-enter v19

    .line 309
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v19

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v4

    .line 315
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v18           #proxyManager:Lcom/android/internal/telephony/ProxyManager;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v23           #subscription:I
    .restart local p1
    :pswitch_a
    const/16 v21, 0x0

    .line 316
    .local v21, retStatus:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 317
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 319
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 320
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    .line 321
    .local v20, result:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;
    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->SUCCESS:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    move-object/from16 v0, v20

    move-object v1, v4

    if-ne v0, v1, :cond_6

    .line 322
    const/16 v21, 0x1

    .line 325
    .end local v20           #result:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 328
    monitor-enter v19

    .line 329
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 330
    monitor-exit v19

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v4

    .line 334
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v21           #retStatus:Z
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 335
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 337
    const-string v4, "RadioSmscSetting"

    const-string v5, "update success"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 345
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 347
    .local v14, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 349
    .restart local v12       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget v5, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    iget v6, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    iget v7, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    iget v8, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    iget v9, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    iget v10, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    iget-object v11, v14, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v4 .. v12}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 355
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v14           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 356
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 357
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 358
    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 373
    .end local p1
    :cond_7
    :goto_3
    monitor-enter v19

    .line 374
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 375
    monitor-exit v19

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v4

    .line 361
    .restart local p1
    :cond_8
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/16 p1, 0x0

    check-cast p1, [B

    .end local p1
    move-object v0, v4

    move v1, v5

    move v2, v6

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 364
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_7

    .line 366
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_7

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_3

    .line 378
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p1
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 379
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v4, 0x10

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 381
    .restart local v12       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 385
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 386
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 387
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    iget-object v4, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 388
    new-instance v4, Ljava/lang/Integer;

    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 408
    :cond_9
    :goto_4
    monitor-enter v19

    .line 409
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 410
    monitor-exit v19

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v4

    .line 391
    .restart local p1
    :cond_a
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 393
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_9

    .line 395
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_b

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_4

    .line 400
    :cond_b
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_9

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_4

    .line 413
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p1
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 414
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v4, 0x12

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 416
    .restart local v12       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v12}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 421
    .end local v12           #onCompleted:Landroid/os/Message;
    .end local v19           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 422
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 423
    .restart local v19       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_d

    .line 424
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 438
    .end local p1
    :cond_c
    :goto_5
    monitor-enter v19

    .line 439
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 440
    monitor-exit v19

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v4

    .line 427
    .restart local p1
    :cond_d
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 429
    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_c

    iget-object v4, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_c

    .line 431
    move-object v0, v13

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_c

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object v4, v0

    const/4 v5, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->access$302(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_5

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
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
    .end packed-switch
.end method
