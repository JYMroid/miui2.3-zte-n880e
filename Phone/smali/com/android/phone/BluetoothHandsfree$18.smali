.class Lcom/android/phone/BluetoothHandsfree$18;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 14
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-string v13, "Unexpected phone type: "

    const-string v12, "OK"

    .line 2243
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2244
    .local v2, phoneType:I
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2245
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2246
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2248
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    array-length v7, p1

    if-lt v7, v9, :cond_14

    .line 2249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CHLD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2250
    aget-object v7, p1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2252
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z
    invoke-static {v7, v9}, Lcom/android/phone/BluetoothHandsfree;->access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2253
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2254
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 2258
    .local v3, result:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 2259
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2378
    .end local v3           #result:Z
    :goto_1
    return-object v7

    .line 2256
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .restart local v3       #result:Z
    goto :goto_0

    .line 2261
    :cond_1
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2263
    .end local v3           #result:Z
    :cond_2
    aget-object v7, p1, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2264
    if-ne v2, v10, :cond_4

    .line 2265
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2266
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2271
    const-string v7, "CHLD:1 use hangupRingAndActive interface"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2273
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 2285
    :goto_2
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2282
    :cond_3
    const-string v7, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_2

    .line 2286
    :cond_4
    if-ne v2, v9, :cond_8

    .line 2287
    const/4 v3, 0x0

    .line 2288
    .restart local v3       #result:Z
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z
    invoke-static {v7, v9}, Lcom/android/phone/BluetoothHandsfree;->access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CHLD:1 active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ringing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " held: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2300
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 2308
    :goto_3
    if-eqz v3, :cond_7

    .line 2309
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2301
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2302
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_3

    .line 2304
    :cond_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2305
    const/4 v3, 0x1

    goto :goto_3

    .line 2311
    :cond_7
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2314
    .end local v3           #result:Z
    :cond_8
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2316
    :cond_9
    aget-object v7, p1, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2317
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2318
    if-ne v2, v10, :cond_c

    .line 2324
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2325
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2326
    const-string v7, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2327
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2328
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2330
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v7, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2345
    :cond_a
    :goto_4
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2331
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_a

    .line 2334
    const-string v7, "CHLD:2 Swap Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2335
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2337
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_4

    .line 2339
    :cond_c
    if-ne v2, v9, :cond_d

    .line 2340
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2341
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_4

    .line 2343
    :cond_d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2346
    :cond_e
    aget-object v7, p1, v11

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2347
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2348
    if-ne v2, v10, :cond_12

    .line 2349
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 2352
    .local v5, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    const-string v7, "service.brcm.bt.3way_support"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2353
    .local v6, threeWaySupport:Ljava/lang/String;
    if-eqz v6, :cond_f

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    .line 2354
    const-string v7, "3 way call not supported"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2355
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2357
    :cond_f
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2358
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 2359
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v7, :cond_11

    .line 2360
    const-string v7, "CHLD:3 Merge Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2361
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 2375
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v6           #threeWaySupport:Ljava/lang/String;
    :cond_10
    :goto_5
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 2362
    .restart local v5       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v6       #threeWaySupport:Ljava/lang/String;
    :cond_11
    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v7, :cond_10

    .line 2365
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v7

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_5

    .line 2367
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v6           #threeWaySupport:Ljava/lang/String;
    :cond_12
    if-ne v2, v9, :cond_13

    .line 2368
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v8, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v7, v12}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2369
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2370
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_5

    .line 2373
    :cond_13
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2378
    :cond_14
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2382
    const-string v1, "service.brcm.bt.3way_support"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, threeWaySupport:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2384
    const-string v1, "3 way call not supported"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2385
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+CHLD: (0,1,2)"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 2400
    :goto_0
    return-object v1

    .line 2388
    :cond_0
    const-string v1, "3 way call supported"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 2389
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2390
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "+CHLD: (0,1,2,3)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2391
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2392
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2393
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2394
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2400
    :cond_1
    :goto_1
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2395
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2397
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_1
.end method
