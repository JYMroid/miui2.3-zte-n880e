.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# static fields
.field private static final PHONE_CDMA_CALL_WAITING:I = 0x4

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x2

.field private static final RING:I = 0x3

.field private static final SERVICE_STATE_CHANGED:I = 0x1


# instance fields
.field private mBattchg:I

.field private mCall:I

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 421
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 395
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 592
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 426
    invoke-direct {p0, v2, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    .line 427
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 429
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 435
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 437
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    #calls: Lcom/android/phone/BluetoothHandsfree;->configureVirtualCallFromProperty()V
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)V

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ignoreRing()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V

    return-void
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 569
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13
    .parameter "signalStrength"

    .prologue
    const/4 v12, 0x7

    .line 514
    const/4 v6, 0x0

    .line 515
    .local v6, levelDbm:I
    const/4 v7, 0x0

    .line 516
    .local v7, levelEcio:I
    const/4 v2, 0x0

    .line 517
    .local v2, cdmaIconLevel:I
    const/4 v4, 0x0

    .line 518
    .local v4, evdoIconLevel:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 519
    .local v0, cdmaDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 521
    .local v1, cdmaEcio:I
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    .line 528
    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    .line 534
    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    .line 536
    :goto_2
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    .line 540
    .local v3, evdoEcio:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    .line 541
    .local v5, evdoSnr:I
    const/4 v8, 0x0

    .line 542
    .local v8, levelEvdoEcio:I
    const/4 v9, 0x0

    .line 545
    .local v9, levelEvdoSnr:I
    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    .line 551
    :goto_3
    if-le v5, v12, :cond_f

    const/4 v9, 0x4

    .line 557
    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    .line 560
    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    move v10, v2

    :goto_6
    return v10

    .line 522
    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    .line 523
    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    .line 524
    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 525
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 529
    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    .line 530
    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    .line 531
    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    .line 532
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    .line 534
    goto :goto_2

    .line 546
    .restart local v3       #evdoEcio:I
    .restart local v5       #evdoSnr:I
    .restart local v8       #levelEvdoEcio:I
    .restart local v9       #levelEvdoSnr:I
    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    .line 547
    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    .line 548
    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    .line 549
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 552
    :cond_f
    const/4 v10, 0x5

    if-le v5, v10, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    .line 553
    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    .line 554
    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    .line 555
    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    .line 557
    goto :goto_5

    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_14
    move v10, v4

    .line 560
    goto :goto_6
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I
    .locals 2
    .parameter "currState"
    .parameter "prevState"

    .prologue
    .line 1045
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_1

    .line 1046
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p2, v1, :cond_0

    .line 1047
    const/4 v0, 0x0

    .line 1058
    .local v0, callheld:I
    :goto_0
    return v0

    .line 1049
    .end local v0           #callheld:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1052
    .end local v0           #callheld:I
    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    .line 1053
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1056
    .end local v0           #callheld:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #callheld:I
    goto :goto_0
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 1122
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 497
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 498
    .local v0, asu:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v1, 0x5

    .line 503
    :goto_0
    return v1

    .line 499
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    move v1, v4

    goto :goto_0

    .line 500
    :cond_1
    if-lt v0, v4, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 501
    :cond_2
    if-lt v0, v3, :cond_3

    move v1, v3

    goto :goto_0

    .line 502
    :cond_3
    if-lt v0, v2, :cond_4

    move v1, v2

    goto :goto_0

    .line 503
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .locals 26
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 715
    monitor-enter p0

    const/4 v6, 0x0

    .line 716
    .local v6, call:I
    const/4 v9, 0x0

    .line 717
    .local v9, callsetup:I
    const/4 v7, 0x0

    .line 718
    .local v7, callheld:I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v16, v0

    .line 719
    .local v16, prevCallsetup:I
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 720
    .local v18, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 721
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 722
    .local v4, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 724
    .local v19, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v22, "updatePhoneState()"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v14

    .line 732
    .local v14, newState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 733
    new-instance v13, Landroid/content/Intent;

    const-string v22, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$2602(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 735
    sget-object v22, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)V

    .line 747
    const-string v22, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/16 v23, 0x1

    move-object v0, v13

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "android.permission.BLUETOOTH"

    move-object/from16 v0, v22

    move-object v1, v13

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 752
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 754
    .local v12, forgroundstate:Lcom/android/internal/telephony/Call$State;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Foreground call state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 756
    sget-object v22, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_1

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 803
    :cond_2
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    .line 805
    .local v20, ringingstate:Lcom/android/internal/telephony/Call$State;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ringing call state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 807
    sget-object v22, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_2

    .line 823
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 825
    .local v5, backgroundstate:Lcom/android/internal/telephony/Call$State;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Background call state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 827
    sget-object v22, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_3

    .line 846
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const-string v23, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 851
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_6

    .line 852
    const/16 v22, 0x1

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 861
    :cond_4
    if-nez v6, :cond_5

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 867
    :cond_5
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 868
    if-eqz p1, :cond_6

    .line 869
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "+CIEV: 2,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 872
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v9

    if-eq v0, v1, :cond_9

    .line 879
    if-nez v6, :cond_7

    if-nez v9, :cond_7

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 885
    :cond_7
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 886
    if-eqz p1, :cond_9

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_9

    .line 895
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "+CIEV: 3,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 900
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 901
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 902
    .local v3, app:Lcom/android/phone/PhoneApp;
    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 903
    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 905
    .local v10, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v17

    .line 908
    .local v17, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CDMA call state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " prev state:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v7

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v10

    if-eq v0, v1, :cond_c

    .line 918
    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object v0, v10

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 922
    if-eqz p1, :cond_a

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_a

    .line 924
    const-string v22, "+CIEV: 3,2"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 926
    const-string v22, "+CIEV: 4,1"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 927
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 928
    const-string v22, "+CIEV: 3,3"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 929
    const-string v22, "+CIEV: 3,0"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 936
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)V

    .line 944
    :cond_b
    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object v0, v10

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 949
    if-eqz p1, :cond_c

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_c

    .line 951
    const-string v22, "+CIEV: 2,1"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 952
    const-string v22, "+CIEV: 3,0"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 957
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    move-object v0, v10

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 963
    .end local v3           #app:Lcom/android/phone/PhoneApp;
    .end local v10           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v17           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v8

    .line 974
    .local v8, callsSwitched:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v22, v0

    move/from16 v0, v22

    move v1, v7

    if-ne v0, v1, :cond_e

    if-eqz v8, :cond_f

    .line 975
    :cond_e
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 976
    if-eqz p1, :cond_f

    .line 977
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "+CIEV: 4,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 981
    :cond_f
    const/16 v22, 0x1

    move v0, v9

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_14

    .line 983
    const/4 v15, 0x0

    .line 984
    .local v15, number:Ljava/lang/String;
    const/16 v21, 0x80

    .line 986
    .local v21, type:I
    if-nez p2, :cond_10

    .line 987
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 988
    if-nez p2, :cond_10

    .line 989
    const-string v22, "BT HS/HF"

    const-string v23, "Could not get a handle on Connection object for new incoming call"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_10
    if-eqz p2, :cond_11

    .line 994
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 995
    if-eqz v15, :cond_11

    .line 996
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v21

    .line 999
    :cond_11
    if-nez v15, :cond_12

    .line 1000
    const-string v15, ""

    .line 1002
    :cond_12
    if-nez v6, :cond_13

    if-eqz v7, :cond_18

    :cond_13
    if-eqz p1, :cond_18

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_14

    .line 1005
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "+CCWA: \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1006
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "+CIEV: 3,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1032
    .end local v15           #number:Ljava/lang/String;
    .end local v21           #type:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1035
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CallSetup: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1036
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Call: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V

    .line 1037
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CallHeld: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :goto_5
    monitor-exit p0

    return-void

    .line 737
    .end local v5           #backgroundstate:Lcom/android/internal/telephony/Call$State;
    .end local v8           #callsSwitched:Z
    .end local v12           #forgroundstate:Lcom/android/internal/telephony/Call$State;
    .end local v20           #ringingstate:Lcom/android/internal/telephony/Call$State;
    .restart local v13       #intent:Landroid/content/Intent;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 738
    const-string v22, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/16 v23, 0x0

    move-object v0, v13

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 715
    .end local v4           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v11           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v16           #prevCallsetup:I
    .end local v18           #result:Landroid/bluetooth/AtCommandResult;
    .end local v19           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 758
    .restart local v4       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v11       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #forgroundstate:Lcom/android/internal/telephony/Call$State;
    .restart local v14       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v16       #prevCallsetup:I
    .restart local v18       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v19       #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_2
    const/4 v6, 0x1

    .line 759
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 762
    :pswitch_3
    const/4 v9, 0x2

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->terminateVirtualVoiceCall()Z

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_1

    .line 784
    :pswitch_4
    const/4 v9, 0x3

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 795
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move v6, v0

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move v9, v0

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move v7, v0

    .line 798
    goto/16 :goto_1

    .line 810
    .restart local v20       #ringingstate:Lcom/android/internal/telephony/Call$State;
    :pswitch_6
    const/4 v9, 0x1

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->terminateVirtualVoiceCall()Z

    goto/16 :goto_2

    .line 817
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move v6, v0

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move v9, v0

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move v7, v0

    goto/16 :goto_2

    .line 829
    .restart local v5       #backgroundstate:Lcom/android/internal/telephony/Call$State;
    :pswitch_8
    const/16 v22, 0x1

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 830
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 832
    :cond_15
    const/4 v6, 0x1

    .line 833
    const/4 v7, 0x2

    .line 835
    goto/16 :goto_3

    .line 839
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move v6, v0

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move v9, v0

    .line 841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move v7, v0

    goto/16 :goto_3

    .line 967
    :cond_16
    const/16 v22, 0x1

    move v0, v7

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_17

    const/16 v22, 0x1

    move/from16 v8, v22

    .line 970
    .restart local v8       #callsSwitched:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v23

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v22 .. v24}, Lcom/android/phone/BluetoothHandsfree;->access$3402(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_4

    .line 967
    .end local v8           #callsSwitched:Z
    :cond_17
    const/16 v22, 0x0

    move/from16 v8, v22

    goto :goto_6

    .line 1010
    .restart local v8       #callsSwitched:Z
    .restart local v15       #number:Ljava/lang/String;
    .restart local v21       #type:I
    :cond_18
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 1011
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 1012
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1013
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v22

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_19

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1019
    :cond_19
    if-eqz p1, :cond_1a

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1022
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v22

    if-eqz v22, :cond_1b

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1027
    :cond_1b
    const-string v22, "Ring() == 0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 807
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 827
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized ignoreRing()V
    .locals 3

    .prologue
    .line 1128
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1130
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CIEV: 3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    :cond_0
    monitor-exit p0

    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1065
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1066
    :cond_0
    const-string v2, "RING"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CLIP: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1071
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1072
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object v2, v1

    .line 1075
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendClipUpdate()Z
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mClip:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRingUpdate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 479
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 486
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 482
    goto :goto_0

    :cond_1
    move v0, v3

    .line 484
    goto :goto_0

    :cond_2
    move v0, v2

    .line 486
    goto :goto_0
.end method

.method private sendUpdate()Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private signalToRssi(I)I
    .locals 1
    .parameter "signal"

    .prologue
    const/4 v0, 0x0

    .line 580
    packed-switch p1, :pswitch_data_0

    .line 588
    :goto_0
    :pswitch_0
    return v0

    .line 582
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 583
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 584
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 585
    :pswitch_4
    const/16 v0, 0x13

    goto :goto_0

    .line 586
    :pswitch_5
    const/16 v0, 0x1f

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopRing()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 491
    return-void
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .locals 6

    .prologue
    const-string v4, ","

    .line 1090
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1092
    .local v2, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1096
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, call:I
    const/4 v1, 0x1

    .line 1107
    .local v1, call_setup:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, status:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    monitor-exit p0

    return-object v2

    .line 1099
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v3           #status:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1100
    const/4 v0, 0x1

    .line 1101
    .restart local v0       #call:I
    const/4 v1, 0x0

    .restart local v1       #call_setup:I
    goto :goto_0

    .line 1104
    .end local v0           #call:I
    .end local v1           #call_setup:I
    :cond_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1105
    .restart local v0       #call:I
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #call_setup:I
    goto :goto_0

    .line 1090
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v2           #result:Landroid/bluetooth/AtCommandResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1079
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1115
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-object v0

    .line 1114
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 641
    monitor-enter p0

    :try_start_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 642
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 643
    .local v1, scale:I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 653
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 646
    :cond_1
    mul-int/lit8 v2, v0, 0x5

    :try_start_1
    div-int v0, v2, v1

    .line 647
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_0

    .line 648
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 649
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 452
    const-string v0, "BT HS/HF"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method private declared-synchronized updateCallHeld()V
    .locals 2

    .prologue
    .line 1083
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1085
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :cond_0
    monitor-exit p0

    return-void

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .locals 7
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 680
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_3

    move v2, v5

    .line 681
    .local v2, service:I
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v5

    .line 683
    .local v1, roam:I
    :goto_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 684
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v4, p2}, Lcom/android/phone/BluetoothHandsfree;->access$1402(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 685
    if-nez v2, :cond_5

    .line 686
    const/4 v3, 0x0

    .line 691
    .local v3, stat:I
    :goto_2
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v4, :cond_0

    .line 692
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 693
    if-eqz p1, :cond_0

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 697
    :cond_0
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v4, :cond_1

    .line 698
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 699
    if-eqz p1, :cond_1

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 703
    :cond_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v4, :cond_2

    .line 704
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 705
    if-eqz p1, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 710
    :cond_2
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :cond_3
    move v2, v6

    .line 680
    goto :goto_0

    .restart local v2       #service:I
    :cond_4
    move v1, v6

    .line 681
    goto :goto_1

    .line 688
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v1       #roam:I
    :cond_5
    if-ne v1, v5, :cond_6

    const/4 v4, 0x5

    move v3, v4

    .restart local v3       #stat:I
    :goto_3
    goto :goto_2

    .end local v3           #stat:I
    :cond_6
    move v3, v5

    goto :goto_3

    .line 680
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 677
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 662
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 665
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_2

    .line 666
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 667
    .local v0, signal:I
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 668
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_0

    .line 669
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 670
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 658
    .end local v0           #signal:I
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 675
    .restart local v1       #signalStrength:Landroid/telephony/SignalStrength;
    :cond_2
    :try_start_2
    const-string v2, "BT HS/HF"

    const-string v3, "Signal Strength null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
